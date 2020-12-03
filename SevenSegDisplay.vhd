-- Biblioteca
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

-- Entidade
entity SevenSegDisplay is
    port (
        BCD_IN      : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        A, B, C, D  : OUT STD_LOGIC;
        E, F, G, DP : OUT STD_LOGIC;
        CLK         : IN  STD_LOGIC;
        RST         : IN  STD_LOGIC
    );
end entity SevenSegDisplay;

-- Arquitetura 'bool'
architecture bool of SevenSegDisplay is
    component DFlipFlop
        port(
            clk : in  std_logic;
            rst : in  std_logic;
            d   : in  std_logic;
            q   : out std_logic
        );
    end component DFlipFlop;
    
    signal A_temp : std_logic;
    signal B_temp : std_logic;
    signal C_temp : std_logic;
    signal D_temp : std_logic;
    signal E_temp : std_logic;
    signal F_temp : std_logic;
    signal G_temp : std_logic;
    signal DP_temp : std_logic;
    
begin
    -- D-FLIP FLOPS
    D1 : DFlipFlop
        port map(clk => CLK, rst => RST, d => A_temp, q => A);
    D2 : DFlipFlop
        port map(clk => CLK, rst => RST, d => B_temp, q => B);
    D3 : DFlipFlop
        port map(clk => CLK, rst => RST, d => C_temp, q => C);
    D4 : DFlipFlop
        port map(clk => CLK, rst => RST, d => D_temp, q => D);
    D5 : DFlipFlop
        port map(clk => CLK, rst => RST, d => E_temp, q => E);
    D6 : DFlipFlop
        port map(clk => CLK, rst => RST, d => F_temp, q => F);
    D7 : DFlipFlop
        port map(clk => CLK, rst => RST, d => G_temp, q => G);
    D8 : DFlipFlop
        port map(clk => CLK, rst => RST, d => DP_temp, q => DP);
    
    -- Lógica combinatória
    A_temp <= ( BCD_IN(1) or BCD_IN(3) or ( BCD_IN(2) xnor BCD_IN(0) ) );
    B_temp <= ( not(BCD_IN(2)) or BCD_IN(3) or (BCD_IN(1) xnor BCD_IN(0) ) );
    C_temp <= ( BCD_IN(3) or BCD_IN(2) or not(BCD_IN(1)) or BCD_IN(0) );
    D_temp <= ( ( BCD_IN(1) and ( (not(BCD_IN(3)) and not(BCD_IN(2))) or 
                not(BCD_IN(0)) ) ) or BCD_IN(3) or ( not(BCD_IN(1)) and 
                    (BCD_IN(2) xnor BCD_IN(0)) ) );
    E_temp <= ( ( not(BCD_IN(0)) and ( BCD_IN(1) or not(BCD_IN(2)) ) ) or
                ( BCD_IN(3) and ( BCD_IN(1) or BCD_IN(2) ) ) );
    F_temp <= ( ( BCD_IN(2) and ( not(BCD_IN(0)) or not(BCD_IN(1)) ) ) or
                BCD_IN(3) or ( not(BCD_IN(1)) and not(BCD_IN(0)) ) );
    G_temp <= ( ( BCD_IN(1) and not(BCD_IN(0)) ) or BCD_IN(3) or
                ( BCD_IN(2) xor BCD_IN(1) ) );
    DP_temp <= '1';
    
end architecture bool;

-- Arquitetura 'behavioral'
architecture behavioral of SevenSegDisplay is
begin
    main : process(CLK, RST) is
    begin
        if (RST = '1') then
            A  <= '0'; B  <= '0'; C  <= '0'; D  <= '0';
            E  <= '0'; F  <= '0'; G  <= '0'; DP <= '0';
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