library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SevenSegDisplay is
    port(
        BCD_IN  :   IN STD_LOGIC_VECTOR(3 DOWNTO 0);
             A  :   OUT STD_LOGIC;
             B  :   OUT STD_LOGIC;
             C  :   OUT STD_LOGIC;
             D  :   OUT STD_LOGIC;
             E  :   OUT STD_LOGIC;
             F  :   OUT STD_LOGIC;
             G  :   OUT STD_LOGIC;
            DP  :   OUT STD_LOGIC;
           CLK  :   IN STD_LOGIC;
           RST  :   IN STD_LOGIC
    );
end entity SevenSegDisplay;

architecture RTL of SevenSegDisplay is
    
begin
    main : process(CLK, RST) is
    begin
        if (RST = '1') then
            
        elsif rising_edge(CLK) then
            
        end if;
    end process main;
        
end architecture RTL;
