
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Micro_TB is
--  Port ( );
end Micro_TB;

architecture Behavioral of Micro_TB is

component picoblaze3_empotrado_s7 is
port (port_id       : out std_logic_vector(7 downto 0);	-- Dirección del puerto de entrada o de salida
      write_strobe  : out std_logic;							-- Indicación de escritura en puerto de salida direccionado
      out_port      : out std_logic_vector(7 downto 0);	-- Salidas para escribir en el puerto de salida direccionado
      read_strobe   : out std_logic;							-- Indicación de lectura en el puerto de entrada direccionado
      in_port       : in std_logic_vector(7 downto 0);	-- Entradas para leer del puerto de entrada direccionado
      interrupt     : in std_logic;								-- Entrada de petición de interrupción
      interrupt_ack : out std_logic;							-- Salida de aceptación de interrupción
      reset         : in std_logic;								-- Entrada de puesta en estado inicial del microcontrolador
		clk       	  : in std_logic           				-- Reloj principal. Su frecuencia máxima depende de la FPGA en que se implemente
      );
end component;

signal write_strobe, read_strobe, interrupt, interrupt_ack, reset, clk: std_logic;
signal port_id, out_port, in_port: std_logic_vector ( 7 downto 0);
constant period: time := 10ns;

begin

uut: picoblaze3_empotrado_s7 port map ( clk => clk, 
                                        write_strobe => write_strobe, 
                                        out_port=>out_port,
                                        read_strobe=>read_strobe, 
                                        in_port=>in_port, 
                                        interrupt => interrupt, 
                                        interrupt_ack => interrupt_ack,
                                        reset => reset );

process
    begin   
        clk <= '0';
        wait for period/2;
        clk <= '1';
        wait for period/2;
end process;

process
    begin
        reset <= '1';
        in_port <= "00000000";
        interrupt <= '0';
        wait for 20*period;
        reset <= '0';
        wait for 20*period;
        wait for 1ms;
        interrupt <= '1';
        wait for 2*period;
        interrupt <= '0';
        wait for 100*period;
        interrupt <= '1';
        wait for 2*period;
        interrupt <= '0';
        wait for 1ms;
   
end process;
    


end Behavioral;
