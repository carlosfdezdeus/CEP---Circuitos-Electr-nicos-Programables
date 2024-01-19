# load_sw_Vivado_s7.tcl (version 1.0)

# Se pasa como parámetro la ruta (path) del archivo de configuración
# De ella se extrae el directorio y el nombre del archivo de configuración
set bitfile_path [lindex $argv 0]
set bitfile_dir [file dirname $bitfile_path]
set bitfile_name [file tail $bitfile_path]
set copy_file 0

# Si el nombre del archivo de configuración no tiene extensión se le añade .bit
if {[file extension $bitfile_name] == ""} {
	set bitfile_name "$bitfile_name.bit"
	set bitfile_path "$bitfile_path.bit"
}

# Si el directorio donde se encuentra el archivo de configuración no está vacío se asume que se trata de un proyecto
# En este caso se obtiene el nombre del proyecto, el directorio y el camino (path) completo (directorio/nombre_del_proyecto)
if {$bitfile_dir != "."} {
    set project_dir [file dirname $bitfile_dir]
    set project_name [file rootname [file tail $project_dir]].xpr
    set project_dir [file dirname $project_dir]
    set project_path "$project_dir/$project_name"

# Si no existe el archivo de configuración en el directorio de implementación del proyecto avisar al usuario      
	if {![file exist $bitfile_path]} {
        puts "ERROR: No existe el archivo $bitfile_path. Hay que generar el bitstream del proyecto $project_name"
        set copy_file 0
		return 0
# Si no existe el archivo de configuración en el directorio donde se encuentra este script o bien si su fecha no coincide 
# con la fecha del archivo de configuración de la carpeta de implementación del proyecto copiarlo de nuevo		
	} elseif {![file exist $bitfile_name]} {
        set copy_file 1  
    } elseif {[file mtime $bitfile_path] != [file mtime $bitfile_name]} {
        set copy_file 1
# En cual quier otro caso no es necesario copiar el archivo de configuración        
	} else {
	   set copy_file 0
    }
}

# Copia el archivo de configuración desde la carpeta de implementación del proyecto en la carpeta de este script
# Abre el proyecto y el diseño implementado para buscar la situación (LOC) de la memoria de programa del picoblaze
# Con esta información crea el archivo picocode_s7.bmm
if {$copy_file} {
    file copy -force $bitfile_path $bitfile_name
    puts "INFO: Copiando $bitfile_path en $bitfile_name"
    open_project $project_path
    open_run -quiet impl_1
    set loc_kcpsm6_rom [get_property loc [get_cells -hierarchical kcpsm6_rom]]
    set loc_kcpsm6_rom [string range $loc_kcpsm6_rom [string first "_" $loc_kcpsm6_rom]+1 end]
    set tfh [open picocode_s7.bmm w]
    set content [format "// BMM LOC annotation file.
//
// Release 14.6 -  P.20131013, build 3.0.10 Apr 3, 2013
// Copyright (c) 1995-2017 Xilinx, Inc.  All rights reserved.


///////////////////////////////////////////////////////////////////////////////
//
// Address space 'picocode_s7' 0x00000000:0x000003FF (1 KWwords).
//
///////////////////////////////////////////////////////////////////////////////

ADDRESS_SPACE picocode_s7 RAMB18 WORD_ADDRESSING [0x00000000:0x000003FF]
    BUS_BLOCK
        picoblaze3_empotrado_s7_inst/memoria_de_programa/kcpsm6_rom RAMB18 [17:0] [0:1023] PLACED = %s;
    END_BUS_BLOCK;
END_ADDRESS_SPACE;" $loc_kcpsm6_rom]
    
    puts $tfh $content
    close $tfh    
}

puts "INFO: Genera el fichero picocode_s7.coe"
puts "exec coe2mem picocode_s7.coe"
exec coe2mem picocode_s7.coe

puts "INFO: Genera el fichero [file rootname $bitfile_name]_sw.bit con el codigo del programa"
puts "exec data2mem -bm picocode_s7.bmm -bd picocode_s7.mem -bt $bitfile_name -o b [file rootname $bitfile_name]_sw.bit"
exec data2mem -bm picocode_s7.bmm -bd picocode_s7.mem -bt $bitfile_name -o b [file rootname $bitfile_name]_sw.bit

config_webtalk -user off
open_hw -quiet
connect_hw_server -quiet
open_hw_target -quiet
set_property PROGRAM.FILE [file rootname $bitfile_name]_sw.bit [get_hw_devices xc7a100t_0] -quiet
current_hw_device [get_hw_devices xc7a100t_0] -quiet
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices xc7a100t_0] 0] -quiet
puts "INFO: Programando la FPGA"
program_hw_devices [get_hw_devices xc7a100t_0] -quiet
refresh_hw_device [lindex [get_hw_devices xc7a100t_0] 0] -quiet
disconnect_hw_server -quiet
close_hw -quiet
