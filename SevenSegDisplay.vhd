
-- Biblioteca
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;

-- Entidade
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



-- Arquitetura 'bool'
architecture bool of SevenSegDisplay is
    
begin
    main : process(CLK, RST) is
    begin
        if (RST = '1') then
            
        elsif rising_edge(CLK) then
            
        end if;
    end process main;
        
end architecture bool;




-- Arquitetura 'behavioral'
architecture behavioral of SevenSegDisplay is
    
begin
    main : process(CLK, RST) is
    begin
        if (RST = '1') then
            A  <= '1';
            B  <= '1';
            C  <= '1';
            D  <= '1';
            E  <= '1';
            F  <= '1';
            G  <= '0';
            DP <= '1';
        elsif rising_edge(CLK) then
            case(BCD_IN) is 
                when "0000" =>  -- 0
                    A  <= '1'; B  <= '1'; C  <= '1'; D  <= '1';
                    E  <= '1'; F  <= '1'; G  <= '0'; DP <= '1';
                when "0001" =>  -- 1
                    A  <= '0'; B  <= '1'; C  <= '1'; D  <= '0';
                    E  <= '0'; F  <= '0'; G  <= '0'; DP <= '1';
                when "0010" =>  -- 2
                    A  <= '1'; B  <= '1'; C  <= '0'; D  <= '1';
                    E  <= '1'; F  <= '0'; G  <= '1'; DP <= '1';
                when "0011" =>  -- 3
                    A  <= '1'; B  <= '1'; C  <= '1'; D  <= '1';
                    E  <= '0'; F  <= '0'; G  <= '1'; DP <= '1';
                when "0100" =>  -- 4
                    A  <= '0'; B  <= '1'; C  <= '1'; D  <= '0';
                    E  <= '0'; F  <= '1'; G  <= '1'; DP <= '1';
                when "0101" =>  -- 5
                    A  <= '1'; B  <= '0'; C  <= '1'; D  <= '1';
                    E  <= '0'; F  <= '1'; G  <= '1'; DP <= '1';
                when "0110" =>  -- 6
                    A  <= '1'; B  <= '0'; C  <= '1'; D  <= '1';
                    E  <= '1'; F  <= '1'; G  <= '1'; DP <= '1';
                when "0111" =>  -- 7
                    A  <= '1'; B  <= '1'; C  <= '1'; D  <= '0';
                    E  <= '0'; F  <= '0'; G  <= '0'; DP <= '1';
                when "1000" =>  -- 8
                    A  <= '1'; B  <= '1'; C  <= '1'; D  <= '1';
                    E  <= '1'; F  <= '1'; G  <= '1'; DP <= '1';
                when "1001" =>  -- 9
                    A  <= '1'; B  <= '1'; C  <= '1'; D  <= '1';
                    E  <= '0'; F  <= '1'; G  <= '1'; DP <= '1';
                when others =>
                    
            end case;
        end if;
    end process main;
        
end architecture behavioral;

