library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Registro_8bits is Port(
    reset: in std_logic;
    clk: in std_logic;
    ce: in std_logic;
    d: in std_logic_vector(7  downto 0);
    q: out std_logic_vector(7 downto 0));
end Registro_8bits;

architecture Behavioral of Registro_8bits is

begin


    process(reset, clk)
        begin
            if reset = '1' then
                q <= (others => '0');
            elsif rising_edge(clk) then
                if ce = '1' then
                    q <= d;
                end if;
            end if;
    end process;
end Behavioral;