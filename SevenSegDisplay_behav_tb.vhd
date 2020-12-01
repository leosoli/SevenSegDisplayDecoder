-- Biblioteca
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all;

-- Entidade do testbench (sem lista de portas)
entity SevenSegDisplay_behav_tb is
end entity SevenSegDisplay_behav_tb;

-- Arquitetura do testbench - behavioral
architecture test_behavioral of SevenSegDisplay_behav_tb is
    component SevenSegDisplay
        port(
            BCD_IN      : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
            A, B, C, D  : OUT STD_LOGIC;
            E, F, G, DP : OUT STD_LOGIC;
            CLK         : IN  STD_LOGIC;
            RST         : IN  STD_LOGIC
        );
    end component SevenSegDisplay;

    constant T   : time      := 20 ns;  -- clock period 
    signal clock : std_logic := '0';    -- clock generator 
    signal reset : std_logic := '0';    -- reset generator

    signal data_in_tb  : std_logic_vector(3 downto 0);
    signal A_tb, B_tb  : std_logic;
    signal C_tb, D_tb  : std_logic;
    signal E_tb, F_tb  : std_logic;
    signal G_tb, DP_tb : std_logic;

    signal check : std_logic_vector(7 downto 0); -- compare to outputs
begin

    -- Mapeamento do componente
    SSD : entity work.SevenSegDisplay(bool)
        port map(
            BCD_IN => data_in_tb,
            A      => A_tb, B => B_tb,
            C      => C_tb, D => D_tb,
            E      => E_tb, F => F_tb,
            G      => G_tb, DP => DP_tb,
            CLK    => clock, RST => reset
        );

    -- Gerador de clock
    clk_gen : process
    begin
        clock <= '0';
        wait for T / 2;                 --  10 nsec of 0
        clock <= '1';
        wait for T / 2;                 --  10 nsec of 1, for 20 nsec period
    end process clk_gen;

    reset <= '1', '0' after T / 2;      --  10 nsec

    test_proc : process
        variable line_o          : line;
        variable out_concatenate : std_logic_vector(7 downto 0);
    begin
        wait until falling_edge(reset); --  wait for reset
        wait until falling_edge(clock); --  wait for a clock

        data_in_tb <= "0000";

        wait until falling_edge(clock);

        out_concatenate := A_tb & B_tb & C_tb & D_tb & E_tb & F_tb & G_tb & DP_tb;
        
        -- input 0
        data_in_tb <= "0000";
        check <= "11111101";
        wait until falling_edge(clock);
        if (out_concatenate /= check) then
            report "Display falhou em " & 
            time'image(now) & " com input = 0";
        else
            report "Display funcionou em " & 
            time'image(now) & " com input = 0";
        end if;
        
        -- input 1
        data_in_tb <= std_logic_vector(unsigned(data_in_tb) + 1);
        check <= "01100001";
        wait until falling_edge(clock);
        if (out_concatenate /= check) then
            report "Display falhou em " & 
            time'image(now) & " com input = 1";
        else
            report "Display funcionou em " & 
            time'image(now) & " com input = 1";
        end if;
        
        -- input 2
        data_in_tb <= std_logic_vector(unsigned(data_in_tb) + 1);
        check <= "11011011";
        wait until falling_edge(clock);
        if (out_concatenate /= check) then
            report "Display falhou em " & 
            time'image(now) & " com input = 2";
        else
            report "Display funcionou em " & 
            time'image(now) & " com input = 2";
        end if;
        
        -- input 2
        data_in_tb <= std_logic_vector(unsigned(data_in_tb) + 1);
        check <= "11011011";
        wait until falling_edge(clock);
        if (out_concatenate /= check) then
            report "Display falhou em " & 
            time'image(now) & " com input = 2";
        else
            report "Display funcionou em " & 
            time'image(now) & " com input = 2";
        end if;
        
        -- input 3
        data_in_tb <= std_logic_vector(unsigned(data_in_tb) + 1);
        check <= "11110011";
        wait until falling_edge(clock);
        if (out_concatenate /= check) then
            report "Display falhou em " & 
            time'image(now) & " com input = 3";
        else
            report "Display funcionou em " & 
            time'image(now) & " com input = 3";
        end if;
        
        -- input 4
        data_in_tb <= std_logic_vector(unsigned(data_in_tb) + 1);
        check <= "01100111";
        wait until falling_edge(clock);
        if (out_concatenate /= check) then
            report "Display falhou em " & 
            time'image(now) & " com input = 4";
        else
            report "Display funcionou em " & 
            time'image(now) & " com input = 4";
        end if;
        
        -- input 5
        data_in_tb <= std_logic_vector(unsigned(data_in_tb) + 1);
        check <= "10110111";
        wait until falling_edge(clock);
        if (out_concatenate /= check) then
            report "Display falhou em " & 
            time'image(now) & " com input = 5";
        else
            report "Display funcionou em " & 
            time'image(now) & " com input = 5";
        end if;
        
        -- input 6
        data_in_tb <= std_logic_vector(unsigned(data_in_tb) + 1);
        check <= "10111111";
        wait until falling_edge(clock);
        if (out_concatenate /= check) then
            report "Display falhou em " & 
            time'image(now) & " com input = 6";
        else
            report "Display funcionou em " & 
            time'image(now) & " com input = 6";
        end if;
        
        -- input 7
        data_in_tb <= std_logic_vector(unsigned(data_in_tb) + 1);
        check <= "11100001";
        wait until falling_edge(clock);
        if (out_concatenate /= check) then
            report "Display falhou em " & 
            time'image(now) & " com input = 7";
        else
            report "Display funcionou em " & 
            time'image(now) & " com input = 7";
        end if;
        
        -- input 8
        data_in_tb <= std_logic_vector(unsigned(data_in_tb) + 1);
        check <= "11111111";
        wait until falling_edge(clock);
        if (out_concatenate /= check) then
            report "Display falhou em " & 
            time'image(now) & " com input = 8";
        else
            report "Display funcionou em " & 
            time'image(now) & " com input = 8";
        end if;
        
        -- input 9
        data_in_tb <= std_logic_vector(unsigned(data_in_tb) + 1);
        check <= "11110111";
        wait until falling_edge(clock);
        if (out_concatenate /= check) then
            report "Display falhou em " & 
            time'image(now) & " com input = 9";
        else
            report "Display funcionou em " & 
            time'image(now) & " com input = 9";
        end if;
        
        
        -- Parando a simula��o
        wait;
        
    end process test_proc;

end architecture test_behavioral;
