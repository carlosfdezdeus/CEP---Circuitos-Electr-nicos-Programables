library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_ejemplo_basico_picoblaze_3_Nexys_4DDR is
    Port( reset:  in std_logic;
          clk_micro: in std_logic;
          BTNU: in std_logic;
          BTNR: in std_logic;
          BTND: in std_logic;
          BTNL: in std_logic;
          BTNC: in std_logic;
          INT: in std_logic_vector(15 downto 0);
          
          --LCD: out std_logic_vector(7 downto 0);
          LEDS: out std_logic_vector(15 downto 0);
          an0 : out std_logic; -- Anodo del visualizador 0 (menor peso)
          an1 : out std_logic; -- Anodo del visualizador 1
          an2 : out std_logic; -- Anodo del visualizador 2
          an3 : out std_logic; -- Anodo del visualizador 3
          an4 : out std_logic; -- Anodo del visualizador 4
          an5 : out std_logic; -- Anodo del visualizador 5
          an6 : out std_logic; -- Anodo del visualizador 6
          an7 : out std_logic; -- Anodo del visualizador 7 (mayor peso)			  
			         -- Segmentos comunes a los cuatro dí­gitos del visualizador
          A : out std_logic;
          B : out std_logic;
          C : out std_logic;
          D : out std_logic;
          E : out std_logic;
          F : out std_logic;
          G : out std_logic;
          DP : out std_logic;
          RxTx: out std_logic;
          SCL: inout std_logic;
          SDA: inout std_logic);
end top_ejemplo_basico_picoblaze_3_Nexys_4DDR;

architecture Behavioral of top_ejemplo_basico_picoblaze_3_Nexys_4DDR is

component Debounce_4 is Port(
    reset: in std_logic;
    clk: in std_logic;
    d: in std_logic_vector(4  downto 0);
    q: out std_logic_vector(4 downto 0));
end component;
    
component Debounce_15 is Port(
    reset: in std_logic;
    clk: in std_logic;
    d: in std_logic_vector(15  downto 0);
    q: out std_logic_vector(15 downto 0));
end component;

component Registro_8bits is Port(
    reset: in std_logic;
    clk: in std_logic;
    ce: in std_logic := '1';
    d: in std_logic_vector(7  downto 0);
    q: out std_logic_vector(7 downto 0));
end component;

component Generador_CE_1KHz is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ce_1KHz : out  STD_LOGIC);
end component;

component Control_visualizador_dinamico_8digitos_7seg is
    Port (
           ------------------- ENTRADAS 
           reset : in std_logic;    -- Puesta en estado inicial de todo el circuito
		   clk : in std_logic;      -- Reloj global
		   clk_en : in std_logic;   -- Señal de habilitación que controla la frecuencia de barrido de los dígitos
						-- Valores de los segmentos, activos a nivel uno, en orden A,B,C,D,E,F,G,DP
		   vis0_D : in std_logic_vector(7 downto 0); -- Segmentos correspondientes al dí­gito 0 (menor peso)
           vis1_D : in std_logic_vector(7 downto 0); -- Segmentos correspondientes al dí­gito 1
           vis2_D : in std_logic_vector(7 downto 0); -- Segmentos correspondientes al dí­gito 2
		   vis3_D : in std_logic_vector(7 downto 0); -- Segmentos correspondientes al dí­gito 3
		   vis4_D : in std_logic_vector(7 downto 0); -- Segmentos correspondientes al dí­gito 4
           vis5_D : in std_logic_vector(7 downto 0); -- Segmentos correspondientes al dí­gito 5
           vis6_D : in std_logic_vector(7 downto 0); -- Segmentos correspondientes al dí­gito 6
		   vis7_D : in std_logic_vector(7 downto 0); -- Segmentos correspondientes al dí­gito 7 (mayor peso)			  
			         -- Habilitaciones de los visualizadores
           gvis  : in std_logic :='1';  -- Habilitación global del visualizador de 4 dí­gitos
           gvis0 : in std_logic :='1'; -- Habilitación del dí­gito 0 (menor peso)
           gvis1 : in std_logic :='1'; -- Habilitación del dí­gito 1
           gvis2 : in std_logic :='1'; -- Habilitación del dí­gito 2
           gvis3 : in std_logic :='1'; -- Habilitación del dí­gito 3
           gvis4 : in std_logic :='1'; -- Habilitación del dí­gito 4
           gvis5 : in std_logic :='1'; -- Habilitación del dí­gito 5
           gvis6 : in std_logic :='1'; -- Habilitación del dí­gito 6
           gvis7 : in std_logic :='1'; -- Habilitación del dí­gito 7 (mayor peso)			  
			  ------------------- SALIDAS 
           an0 : out std_logic; -- Anodo del visualizador 0 (menor peso)
           an1 : out std_logic; -- Anodo del visualizador 1
           an2 : out std_logic; -- Anodo del visualizador 2
           an3 : out std_logic; -- Anodo del visualizador 3
           an4 : out std_logic; -- Anodo del visualizador 4
           an5 : out std_logic; -- Anodo del visualizador 5
           an6 : out std_logic; -- Anodo del visualizador 6
           an7 : out std_logic; -- Anodo del visualizador 7 (mayor peso)			  
			         -- Segmentos comunes a los cuatro dí­gitos del visualizador
           A : out std_logic;
           B : out std_logic;
           C : out std_logic;
           D : out std_logic;
           E : out std_logic;
           F : out std_logic;
           G : out std_logic;
           DP : out std_logic);
end component;    

component selec_16_entradas_con_reg_y_bypass is
    Port ( puerto_00_in : in std_logic_vector(7 downto 0);
           puerto_01_in : in std_logic_vector(7 downto 0);
		   puerto_02_in : in std_logic_vector(7 downto 0);
		   puerto_03_in : in std_logic_vector(7 downto 0);
		   puerto_04_in : in std_logic_vector(7 downto 0);
           puerto_05_in : in std_logic_vector(7 downto 0);
		   puerto_06_in : in std_logic_vector(7 downto 0);
		   puerto_07_in : in std_logic_vector(7 downto 0);
		   puerto_08_in : in std_logic_vector(7 downto 0);
           puerto_09_in : in std_logic_vector(7 downto 0);
		   puerto_0A_in : in std_logic_vector(7 downto 0);
		   puerto_0B_in : in std_logic_vector(7 downto 0);
		   puerto_0C_in : in std_logic_vector(7 downto 0);
           puerto_0D_in : in std_logic_vector(7 downto 0);
		   puerto_0E_in : in std_logic_vector(7 downto 0);
		   puerto_0F_in : in std_logic_vector(7 downto 0);
		   mem_in : in std_logic_vector(7 downto 0);
           port_id : in std_logic_vector(7 downto 0);
           reset : in std_logic;
           clk_micro : in std_logic;
           in_port : out std_logic_vector(7 downto 0));
end component;

component gestion_2_interrupciones is
    Port ( reset : in  STD_LOGIC;
           clk_micro : in  STD_LOGIC;
           peticion_int_0 : in  STD_LOGIC;
		   peticion_int_1 : in STD_LOGIC;
           interrupt_ack : in  STD_LOGIC;
           interrupt : out  STD_LOGIC;
           origen_int : out  STD_LOGIC);
end component;

component selec_16_salidas_con_reg_y_mem_esc_lec is
    Port ( port_id : in std_logic_vector(7 downto 0);
           write_strobe : in std_logic;
		   out_port: in std_logic_vector (7 downto 0);
           sel_puerto_00_out : out std_logic;
           sel_puerto_01_out : out std_logic;
           sel_puerto_02_out : out std_logic;
		   sel_puerto_03_out : out std_logic;
           sel_puerto_04_out : out std_logic;
		   sel_puerto_05_out : out std_logic;
           sel_puerto_06_out : out std_logic;
		   sel_puerto_07_out : out std_logic;
           sel_puerto_08_out : out std_logic;
           sel_puerto_09_out : out std_logic;
           sel_puerto_0A_out : out std_logic;
		   sel_puerto_0B_out : out std_logic;
           sel_puerto_0C_out : out std_logic;
	       sel_puerto_0D_out : out std_logic;
           sel_puerto_0E_out : out std_logic;
		   sel_puerto_0F_out : out std_logic;
		   sel_mem_out : out std_logic;
		   out_port_reg: out std_logic_vector (7 downto 0);
		   address_mem: out std_logic_vector (6 downto 0);
		   reset : in std_logic;
           clk_micro : in std_logic);
end component;

component picoblaze3_empotrado_s7 is
port (port_id       : out std_logic_vector(7 downto 0);	-- Dirección del puerto de entrada o de salida
      write_strobe  : out std_logic;							-- Indicación de escritura en puerto de salida direccionado
      out_port      : out std_logic_vector(7 downto 0);	-- Salidas para escribir en el puerto de salida direccionado
      read_strobe   : out std_logic;							-- Indicación de lectura en el puerto de entrada direccionado
      in_port       : in std_logic_vector(7 downto 0);	-- Entradas para leer del puerto de entrada direccionado
      interrupt     : in std_logic;								-- Entrada de petición de interrupción
      interrupt_ack : out std_logic;							-- Salida de aceptación de interrupción
      reset         : in std_logic;								-- Entrada de puesta en estado inicial del microcontrolador
	  clk       	: in std_logic          				-- Reloj principal. Su frecuencia máxima depende de la FPGA en que se implemente
      );
end component;

component uart_rs232 is
	Port (            
		clk : in std_logic;
		-- Transmitter
		data_in_tx : in std_logic_vector(7 downto 0);
		write_buffer_tx : in std_logic;
		reset_buffer_tx : in std_logic;
		-- Receiver
		serial_in_rx : in std_logic;
		read_buffer_rx : in std_logic;
		reset_buffer_rx : in std_logic;
		-- Baud generator
		reset_generador_baudios : in std_logic;
		-- Transmitter		
		serial_out_tx : out std_logic;
		buffer_full_tx : out std_logic;
		buffer_half_full_tx : out std_logic;
		-- Receiver
		data_out_rx : out std_logic_vector(7 downto 0);
		buffer_data_present_rx : out std_logic;
		buffer_full_rx : out std_logic;
		buffer_half_full_rx : out std_logic
	);
end component;

component temporizador is
  Port (clk: in std_logic;
        reset: in std_logic;
        temp_interrupt: out std_logic
        );
end component;

-- IIC interface
component iic_simple_interface_ver_3
   port (
      clk              :  in  std_logic;  
      load_data        :  in  std_logic;  
      receive_byte     :  in  std_logic;  
      start            :  in  std_logic;  
      stop             :  in  std_logic;  
      sync_reset       :  in  std_logic;  
      transmit_byte    :  in  std_logic; 
      ack_master       :  in  STD_LOGIC;  -- The bit that will be sent by the IIC master as the ACK/NACK bit when the master receives data 
      data_to_transmit :  in  std_logic_vector(7 downto 0);
      busy             :  out  std_logic; 
      data_available   :  out  std_logic; 
      end_of_operation :  out  std_logic; 
      data_received    :  out  std_logic_vector(7 downto 0);
      ack_error        :  out STD_LOGIC; -- It is activated when the slave does not acknowledge the reception of data sent by the IIC master 
      scl_in           :  in  std_logic;
      sda_in           :  in  std_logic;
      scl_out          :  out  std_logic;
      sda_out          :  out  std_logic
   );
   end component;

--Buses auxiliares:
signal ce_1kHz: std_logic;
signal ce: std_logic := '1';
signal reset_inv: std_logic;


--Buses para gestion_2_interrupciones:
signal peticion_int_1: std_logic;
signal interrupt_ack: std_logic;
signal interrupt: std_logic;
signal origen_int: std_logic;
signal origen_int_vector: std_logic_vector(7 downto 0);
--------------------------------------

--Buses selector perifericos entrada
--IN:
signal INT_BUS_7_0: std_logic_vector (7 downto 0);
signal INT_BUS_15_8: std_logic_vector (7 downto 0);
signal PUL_BUS_OUT: std_logic_vector(7 downto 0);
signal Port_ID_BUS: std_logic_vector(7 downto 0);
signal data_out_rx_bus: std_logic_vector(7 downto 0);
--OUT:
signal IN_Port_BUS: std_logic_vector(7 downto 0);
-------------------------------------

--Buses selector perifericos salida
--IN:
signal OUT_PORT_BUS: std_logic_vector (7 downto 0);
signal WRITE_STROBE_BUS: std_logic;
--OUT:
signal DATO_PERIF_BUS: std_logic_vector(7 downto 0);
signal SEL_PERIF_00: std_logic;
signal SEL_PERIF_01: std_logic;
signal SEL_PERIF_02: std_logic;
signal SEL_PERIF_03: std_logic;
signal SEL_PERIF_04: std_logic;
signal SEL_PERIF_05: std_logic;
signal SEL_PERIF_06: std_logic;
signal SEL_PERIF_07: std_logic;
signal SEL_PERIF_08: std_logic;
signal SEL_PERIF_09: std_logic;
signal SEL_PERIF_0D: std_logic;
signal SEL_PERIF_0E: std_logic;

-------------------------------------

--Buses registros visualizador
--IN:
signal BUS_0: std_logic_vector(7 downto 0);
signal BUS_1: std_logic_vector(7 downto 0);
signal BUS_2: std_logic_vector(7 downto 0);
signal BUS_3: std_logic_vector(7 downto 0);
signal BUS_4: std_logic_vector(7 downto 0);
signal BUS_5: std_logic_vector(7 downto 0);
signal BUS_6: std_logic_vector(7 downto 0);
signal BUS_7: std_logic_vector(7 downto 0);


--Buses para memoria de programa
signal instruction_BUS: std_logic_vector( 17 downto 0);
signal address_bus: std_logic_vector(9 downto 0);

--Buses para uart
signal write_buf_bus: std_logic;


--Buses IIC:

signal data_received_bus: std_logic_vector(7 downto 0);
signal data_to_transmit_bus: std_logic_vector(7 downto 0);
signal I2C_status_bus: std_logic_vector(7 downto 0):=(others => '0');
signal I2C_control: std_logic_vector(7 downto 0):=(others => '0');
signal I2C_DATA: std_logic_vector(7 downto 0):=(others => '0');


--Buses SCL y SDA:
signal scl_in: std_logic;
signal scl_out: std_logic;
signal SDA_in: std_logic;
signal SDA_out: std_logic;

begin
--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||--
origen_int_vector <= "0000000" & origen_int;
reset_inv <= not reset;

scl <= scl_out when scl_out = '0' else 'Z';
scl_in <= scl;

sda <= sda_out when scl_out = '0' else 'Z';
sda_in <= sda;

--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||--
Gest_Interrupt: gestion_2_interrupciones port map( reset => reset_inv,
                                                   clk_micro => clk_micro,
                                                   peticion_int_0=>PUL_BUS_OUT(1),
                                                   peticion_int_1=>peticion_int_1,
                                                   interrupt_ack=>interrupt_ack,
                                                   interrupt => interrupt,
                                                   origen_int => origen_int);  --falta la señal interrupt_origen
                                                   
Inputs_select: selec_16_entradas_con_reg_y_bypass port map(reset => reset_inv,
                                                           clk_micro => clk_micro,
                                                           puerto_00_in => origen_int_vector,
                                                           puerto_01_in => INT_BUS_7_0,
                                                           puerto_02_in => INT_BUS_15_8,
                                                           puerto_03_in => PUL_BUS_OUT,
                                                           puerto_04_in => data_out_rx_bus,
                                                           puerto_05_in => (others => '0'),--temporizador
                                                           puerto_06_in => data_received_bus,
                                                           puerto_07_in => I2C_status_bus,
                                                           puerto_08_in => (others => '0'),
                                                           puerto_09_in => (others => '0'),
                                                           puerto_0A_in => (others => '0'),
                                                           puerto_0B_in => (others => '0'),
                                                           puerto_0C_in => (others => '0'),
                                                           puerto_0D_in => (others => '0'),
                                                           puerto_0E_in => (others => '0'),
                                                           puerto_0F_in => (others => '0'),
                                                           mem_in => (others => '0'),
                                                           port_id => Port_ID_BUS,
                                                           in_port => IN_port_BUS);
                                                           
                                                           
  
                                                                                                                      
Output_Select: selec_16_salidas_con_reg_y_mem_esc_lec Port map(reset => reset_inv,
                                                                clk_micro => clk_micro,
                                                                port_id => Port_ID_BUS,
                                                                out_port => OUT_PORT_BUS,
                                                                write_strobe => WRITE_STROBE_BUS,
                                                                sel_puerto_00_out => SEL_PERIF_00,  
                                                                sel_puerto_01_out => SEL_PERIF_01,
                                                                sel_puerto_02_out => SEL_PERIF_02,
                                                                sel_puerto_03_out => SEL_PERIF_03,
                                                                sel_puerto_04_out => SEL_PERIF_04,
                                                                sel_puerto_05_out => SEL_PERIF_05,
                                                                sel_puerto_06_out => SEL_PERIF_06,
                                                                sel_puerto_07_out => SEL_PERIF_07,
                                                                sel_puerto_08_out => SEL_PERIF_08,
                                                                sel_puerto_09_out => SEL_PERIF_09,
                                                                sel_puerto_0A_out => write_buf_bus,
                                                                sel_puerto_0D_out => SEL_PERIF_0D,
                                                                sel_puerto_0E_out => SEL_PERIF_0E,
                                                                out_port_reg => DATO_PERIF_BUS); 
                                                                                                                                
Reg_Pulsadores: Registro_8bits Port map(reset => reset_inv,
                                        clk => clk_micro,
                                        ce => ce_1kHz,
                                        d(7) => BTNU,
                                        D(6) => BTNR,
                                        D(5) => '0',
                                        D(4) => BTND,
                                        D(3) => '0',
                                        D(2) => BTNL,
                                        D(1) => BTNC,
                                        D(0) => '0',
                                        q => PUL_BUS_OUT);
                                                                                  
Reg_Interruprtores_0_7: Registro_8bits Port map(reset => reset_inv,
                                                clk => clk_micro,
                                                ce => ce_1kHz,
                                                d => INT(7 downto 0),
                                                q => INT_BUS_7_0);
                                                                                 
Reg_Interruprtores_8_15: Registro_8bits Port map(reset => reset_inv,
                                                 clk => clk_micro,
                                                 ce => ce_1kHz,
                                                 d => INT(15 downto 8),
                                                 q => INT_BUS_15_8);
                                         
Reg_LEDS_0_7: Registro_8bits Port map(reset => reset_inv,
                                      clk => clk_micro,
                                      ce => SEL_PERIF_00,
                                      d => DATO_PERIF_BUS,
                                      q => LEDS(7 downto 0));

Reg_LEDS_8_15: Registro_8bits Port map(reset => reset_inv,
                                       clk => clk_micro,
                                       ce => SEL_PERIF_01,
                                       d => DATO_PERIF_BUS,
                                       q => LEDS(15 downto 8));
                                         
Reg_SEG0: Registro_8bits Port map(reset => reset_inv,
                                  clk => clk_micro,
                                  ce => SEL_PERIF_02,
                                  d => DATO_PERIF_BUS,
                                  q => BUS_0);
                                  
Reg_SEG1: Registro_8bits Port map(reset => reset_inv,
                                  clk => clk_micro,
                                  ce => SEL_PERIF_03,
                                  d => DATO_PERIF_BUS,
                                  q => BUS_1);

Reg_SEG2: Registro_8bits Port map(reset => reset_inv,
                                  clk => clk_micro,
                                  ce => SEL_PERIF_04,
                                  d => DATO_PERIF_BUS,
                                  q => BUS_2);

Reg_SEG3: Registro_8bits Port map(reset => reset_inv,
                                  clk => clk_micro,
                                  ce => SEL_PERIF_05,
                                  d => DATO_PERIF_BUS,
                                  q => BUS_3);

Reg_SEG4: Registro_8bits Port map(reset => reset_inv,
                                  clk => clk_micro,
                                  ce => SEL_PERIF_06,
                                  d => DATO_PERIF_BUS,
                                  q => BUS_4);

Reg_SEG5: Registro_8bits Port map(reset => reset_inv,
                                  clk => clk_micro,
                                  ce => SEL_PERIF_07,
                                  d => DATO_PERIF_BUS,
                                  q => BUS_5);

Reg_SEG6: Registro_8bits Port map(reset => reset_inv,
                                  clk => clk_micro,
                                  ce => SEL_PERIF_08,
                                  d => DATO_PERIF_BUS,
                                  q => BUS_6);

Reg_SEG7: Registro_8bits Port map(reset => reset_inv,
                                  clk => clk_micro,
                                  ce => SEL_PERIF_09,
                                  d => DATO_PERIF_BUS,
                                  q => BUS_7);
                                  
Gen_CE_1kHz: Generador_CE_1KHz Port map(reset => reset_inv,
                                        clk => clk_micro,
                                        ce_1Khz => ce_1kHz);
  
Visualizador: Control_visualizador_dinamico_8digitos_7seg Port map(reset => reset_inv,
                                                                   clk => clk_micro,
                                                                   clk_en => ce_1kHz,
                                                                   vis0_D => BUS_0,
                                                                   vis1_D => BUS_1,     
                                                                   vis2_D => BUS_2,    
                                                                   vis3_D => BUS_3,
                                                                   vis4_D => BUS_4,
                                                                   vis5_D => BUS_5,     
                                                                   vis6_D => BUS_6,    
                                                                   vis7_D => BUS_7,
                                                                   an0 => an0,
                                                                   an1 => an1,
                                                                   an2 => an2,
                                                                   an3 => an3,
                                                                   an4 => an4,
                                                                   an5 => an5,
                                                                   an6 => an6,
                                                                   an7 => an7,
                                                                   A => A,
                                                                   B => B,
                                                                   C => C,
                                                                   D => D,
                                                                   E => E,
                                                                   F => F,
                                                                   G => G,
                                                                   DP => DP);
                                 
Picoblaze: Picoblaze3_empotrado_s7 Port map( port_id => Port_ID_BUS,
                                             write_strobe => WRITE_STROBE_BUS,
                                             read_strobe => open,
                                             out_port => out_port_BUS,
                                             in_port => IN_Port_BUS,
                                             interrupt => interrupt,
                                             reset => reset_inv,
                                             clk => clk_micro,
                                             interrupt_ack => interrupt_ack);
                                             

UART: uart_rs232 Port map(clk => clk_micro,
                            -- Transmitter
                          data_in_tx => DATO_PERIF_BUS,
                          write_buffer_tx => write_buf_bus,
                          reset_buffer_tx => reset_inv,
                            -- Receiver
                          serial_in_rx => '0',
                          read_buffer_rx => '0',
                          reset_buffer_rx => reset_inv,
                          -- Baud generator
                          reset_generador_baudios => reset_inv,
                            -- Transmitter		
                          serial_out_tx => RxTx,
                          buffer_full_tx => open,
                          buffer_half_full_tx => open,
                          -- Receiver
                          data_out_rx => data_out_rx_bus,
                          buffer_data_present_rx => open,
                          buffer_full_rx => open,
                          buffer_half_full_rx => open);


temp: temporizador Port map(clk => ce_1kHz,
                            reset => reset_inv,
                            temp_interrupt => peticion_int_1);                    

iic_simple_interface_ver_3_inst: iic_simple_interface_ver_3
   port map (
      clk              => clk_micro,
      ack_master       => I2C_control(4),                        
      load_data        => SEL_PERIF_0E,                  
      receive_byte     => I2C_control(3),               
      start            => I2C_CONTROL(0),                      
      stop             => I2C_control(1),                       
      sync_reset       => reset,                 
      transmit_byte    => I2C_control(2),              
      data_to_transmit => DATO_PERIF_BUS,
      busy             => I2C_status_bus(1),                       
      data_available   => open,             
      end_of_operation => open,           
      data_received    => data_received_bus,  
      ack_error        => I2C_status_bus(0),
      scl_in           => scl_in,                        
      sda_in           => sda_in,                        
      scl_out          => scl_out,                        
      sda_out          => sda_out);
   
Reg_IIC_CTR: Registro_8bits Port map(reset => reset_inv,
                                 clk => clk_micro,
                                 ce => SEL_PERIF_0D,
                                 d => DATO_PERIF_BUS,
                                 q => I2C_CONTROL);

--Reg_IIC_DATA: Registro_8bits Port map(reset => reset_inv,
--                                      clk => clk_micro,
--                                      ce => SEL_PERIF_0E,
--                                      d => DATO_PERIF_BUS,
--                                      q => I2C_DATA);

                                                    	            
                                                    	                     
end Behavioral;
