

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Registro_16 is Port(
    reset: in std_logic;
    clk: in std_logic;
    ce: in std_logic := '1';
    d: in std_logic_vector(15  downto 0);
    q: out std_logic_vector(15 downto 0));
    end Registro_16;

architecture Behavioral of Registro_16 is

begin

q <= (others => '0');
    process(reset, clk)
        begin
            if reset <= '1' then
                q <= "0000000000000000";
            elsif rising_edge(clk) then
                if ce = '1' then
                    q <= d;
                end if;
            end if;
    end process;
end Behavioral;
