
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity temporizador is
  Port (clk: in std_logic;
        reset: in std_logic;
        temp_interrupt: out std_logic
        );
end temporizador;

architecture Behavioral of temporizador is
    signal contador : integer range 0 to 999 := 0;
begin
    process(clk, reset)
    begin
        if reset = '1' then
            contador <= 0;
        elsif rising_edge(clk) then
            if contador = 999 then
                contador <= 0;
                temp_interrupt <= '1'; -- Activa la salida durante un solo ciclo de reloj cada segundo
            else
                contador <= contador + 1;
                temp_interrupt <= '0';
            end if;
        end if;
    end process;
end Behavioral;