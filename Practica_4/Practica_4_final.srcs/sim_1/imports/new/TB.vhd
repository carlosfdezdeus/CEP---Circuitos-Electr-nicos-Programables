

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TB is
--  Port ( );
end TB;

architecture Behavioral of TB is

component top_ejemplo_basico_picoblaze_3_Nexys_4DDR is
    Port( reset:  in std_logic;
          clk_micro: in std_logic;
          BTNU: in std_logic;
          BTNR: in std_logic;
          BTND: in std_logic;
          BTNL: in std_logic;
          BTNC: in std_logic;
          INT: in std_logic_vector(15 downto 0) := "0000000000000000";
          
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
          RxTx: out std_logic);
end component;

constant period: time := 10ns;
constant period_signal: time := 1ms;

signal reset: std_logic;
signal clk_micro: std_logic;
signal BTNU: std_logic;
signal BTNR: std_logic;
signal BTND: std_logic;     
signal BTNL: std_logic;     
signal BTNC: std_logic;     
signal INT: std_logic_vector(15 downto 0);     
    
signal LEDS: std_logic_vector(15 downto 0);   
signal an0 :     std_logic;     
signal an1 :     std_logic;     
signal an2 :     std_logic;     
signal an3 :     std_logic;     
signal an4 :     std_logic;     
signal an5 :     std_logic;     
signal an6 :     std_logic;     
signal an7 :     std_logic;     
          
signal A :       std_logic;     
signal B :       std_logic;     
signal C :       std_logic;     
signal D :       std_logic;		
signal E :       std_logic;     
signal F :       std_logic;     
signal G :       std_logic;     
signal DP :      std_logic;     
signal RxTx:     std_logic;     
     
begin

uut: top_ejemplo_basico_picoblaze_3_Nexys_4DDR Port map(reset => reset,
                                                        clk_micro => clk_micro,
                                                        BTNU =>BTNU,
                                                        BTNR =>BTNR,
                                                        BTND =>BTND,
                                                        BTNL =>BTNL,
                                                        BTNC =>BTNC,
                                                        INT =>INT,
                                                             
                                                        LEDS =>LEDS,
                                                        an0  =>an0,
                                                        an1  =>an1,
                                                        an2  =>an2,
                                                        an3  =>an3,
                                                        an4  =>an4,
                                                        an5  =>an5,
                                                        an6  =>an6,
                                                        an7  =>an7,
                                                          
                                                        A =>A,
                                                        B =>B,
                                                        C =>C,
                                                        D =>D,
                                                        E =>E,
                                                        F =>F,
                                                        G =>G,
                                                        DP =>DP,
                                                        RxTx =>RxTx);   
     
 process
    begin
        clk_micro <= '0';
        wait for period/2;
        clk_micro <='1';
        wait for period/2;
end process;

process
    begin
        reset <= '1';
        BTNU <= '0';
        BTNR <= '0';
        BTND <= '0';
        BTNL <= '0';
        BTNC <= '0';
        INT <= "0000000000000000";
        wait for 200ns;
        reset <= '0';
        wait for 200ns;
        
        
        BTNC <= '1';
        wait for period_signal;
        BTNC <= '0';
        wait for period_signal;
        
        BTNC <= '1';
        wait for period_signal;
        BTNC <= '0';
        wait for period_signal;
        
        BTNC <= '1';
        wait for period_signal;
        BTNC <= '0';
        wait for period_signal;
        
        INT <= "0101010100000000";
        wait for period_signal;
        INT <="0000000000000000";
        wait for period_signal;
        
        INT <= "0000000000000011";
        wait for period_signal;
        INT <= "0000000000000000";
        wait for 5*period_signal;
        
        BTNL <= '1';
        wait for period_signal;
        BTNL <= '0';
        wait for 5*period_signal;
        
        BTND <= '1';
        wait for period_signal;
        BTND <= '0';
        wait for 5*period_signal;
        wait;
        
end process;

end Behavioral;
