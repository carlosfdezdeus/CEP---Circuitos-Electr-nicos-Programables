library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Debounce_4 is Port(
    reset: in std_logic;
    clk: in std_logic;
    d: in std_logic_vector(4  downto 0);
    q: out std_logic_vector(4 downto 0));
    end Debounce_4;

architecture Behavioral of Debounce_4 is

begin

q <= (others => '0');
    process(reset, clk)
        begin
            if reset <= '1' then
                q <= "00000";
            elsif rising_edge(clk) then
                    q <= d;
            end if;
    end process;
end Behavioral;
