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
            BCD_IN      : IN  STD_LOGIC_VECTOR(3 DOWNTO 0); -- entrada BCD
            A, B, C, D  : OUT STD_LOGIC;  -- saídas A, B, C, D
            E, F, G, DP : OUT STD_LOGIC; -- saídas E, F, G, DP
            CLK         : IN  STD_LOGIC; -- entrada de clock
            RST         : IN  STD_LOGIC  -- entrada de reset
        );
    end component SevenSegDisplay;

    constant T   : time      := 20 ns;  -- período do clock
    signal clock : std_logic := '0';    -- gerador de clock
    signal reset : std_logic := '0';    -- gerador de reset

    signal data_in_tb  : std_logic_vector(3 downto 0) := "0000"; -- entrada testbench
    signal A_tb, B_tb  : std_logic; -- saídas do testbench
    signal C_tb, D_tb  : std_logic; -- saídas do testbench
    signal E_tb, F_tb  : std_logic; -- saídas do testbench
    signal G_tb, DP_tb : std_logic; -- saídas do testbench

    signal check : std_logic_vector(7 downto 0) := "00000000"; -- compararador das saídas
begin

    -- Mapeamento do componente
    SSD : entity work.SevenSegDisplay(behavioral) -- instanciação da arquitetura 'behavioral'
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
        wait for T / 2;                 --  10 ns de nível 0, para T=20ns
        clock <= '1';
        wait for T / 2;                 --  10 ns de nível 1, para T=20ns
    end process clk_gen;

    reset <= '1', '0' after T / 2;      --  '0' depois de 10 ns para T=20ns
    
    -- Simulação
    test_proc : process
        variable out_concatenate : std_logic_vector(7 downto 0);
    begin
        wait until falling_edge(reset); --  wait for reset
        wait until falling_edge(clock); --  wait for a clock
        
        -- input 0
        check <= "11111101";
        data_in_tb <= "0000";
        wait until rising_edge(clock);
        wait for 1 ns;
        out_concatenate := A_tb & B_tb & C_tb & D_tb & E_tb & F_tb & G_tb & DP_tb;
        if (out_concatenate /= check) then
            report "Display falhou em " & 
            time'image(now) & " com input = 0";
        else
            report "Display funcionou em " & 
            time'image(now) & " com input = 0";
        end if;
        
        wait for 2*T;
        
        -- input 1
        wait until falling_edge(clock);
        check <= "01100001";
        data_in_tb <= std_logic_vector(unsigned(data_in_tb) + 1);
        wait until rising_edge(clock);
        wait for 1 ns;
        out_concatenate := A_tb & B_tb & C_tb & D_tb & E_tb & F_tb & G_tb & DP_tb;
        if (out_concatenate /= check) then
            report "Display falhou em " & 
            time'image(now) & " com input = 1";
        else
            report "Display funcionou em " & 
            time'image(now) & " com input = 1";
        end if;
        
        wait for 2*T;
        
        -- input 2
        wait until falling_edge(clock);
        check <= "11011011";
        data_in_tb <= std_logic_vector(unsigned(data_in_tb) + 1);
        wait until rising_edge(clock);
        wait for 1 ns;
        out_concatenate := A_tb & B_tb & C_tb & D_tb & E_tb & F_tb & G_tb & DP_tb;
        if (out_concatenate /= check) then
            report "Display falhou em " & 
            time'image(now) & " com input = 2";
        else
            report "Display funcionou em " & 
            time'image(now) & " com input = 2";
        end if;
        
        wait for 2*T;
        
        -- input 3
        wait until falling_edge(clock);
        check <= "11110011";
        data_in_tb <= std_logic_vector(unsigned(data_in_tb) + 1);
        wait until rising_edge(clock);
        wait for 1 ns;
        out_concatenate := A_tb & B_tb & C_tb & D_tb & E_tb & F_tb & G_tb & DP_tb;
        if (out_concatenate /= check) then
            report "Display falhou em " & 
            time'image(now) & " com input = 3";
        else
            report "Display funcionou em " & 
            time'image(now) & " com input = 3";
        end if;
        
        wait for 2*T;
        
        -- input 4
        wait until falling_edge(clock);
        check <= "01100111";
        data_in_tb <= std_logic_vector(unsigned(data_in_tb) + 1);
        wait until rising_edge(clock);
        wait for 1 ns;
        out_concatenate := A_tb & B_tb & C_tb & D_tb & E_tb & F_tb & G_tb & DP_tb;
        if (out_concatenate /= check) then
            report "Display falhou em " & 
            time'image(now) & " com input = 4";
        else
            report "Display funcionou em " & 
            time'image(now) & " com input = 4";
        end if;
        
        wait for 2*T;
        
        -- input 5
        wait until falling_edge(clock);
        check <= "10110111";
        data_in_tb <= std_logic_vector(unsigned(data_in_tb) + 1);
        wait until rising_edge(clock);
        wait for 1 ns;
        out_concatenate := A_tb & B_tb & C_tb & D_tb & E_tb & F_tb & G_tb & DP_tb;
        if (out_concatenate /= check) then
            report "Display falhou em " & 
            time'image(now) & " com input = 5";
        else
            report "Display funcionou em " & 
            time'image(now) & " com input = 5";
        end if;
        
        wait for 2*T;
        
        -- input 6
        wait until falling_edge(clock);
        check <= "10111111";
        data_in_tb <= std_logic_vector(unsigned(data_in_tb) + 1);
        wait until rising_edge(clock);
        wait for 1 ns;
        out_concatenate := A_tb & B_tb & C_tb & D_tb & E_tb & F_tb & G_tb & DP_tb;
        if (out_concatenate /= check) then
            report "Display falhou em " & 
            time'image(now) & " com input = 6";
        else
            report "Display funcionou em " & 
            time'image(now) & " com input = 6";
        end if;
        
        wait for 2*T;
        
        -- input 7
        wait until falling_edge(clock);
        check <= "11100001";
        data_in_tb <= std_logic_vector(unsigned(data_in_tb) + 1);
        wait until rising_edge(clock);
        wait for 1 ns;
        out_concatenate := A_tb & B_tb & C_tb & D_tb & E_tb & F_tb & G_tb & DP_tb;
        if (out_concatenate /= check) then
            report "Display falhou em " & 
            time'image(now) & " com input = 7";
        else
            report "Display funcionou em " & 
            time'image(now) & " com input = 7";
        end if;
        
        wait for 2*T;
        
        -- input 8
        wait until falling_edge(clock);
        check <= "11111111";
        data_in_tb <= std_logic_vector(unsigned(data_in_tb) + 1);
        wait until rising_edge(clock);
        wait for 1 ns;
        out_concatenate := A_tb & B_tb & C_tb & D_tb & E_tb & F_tb & G_tb & DP_tb;
        if (out_concatenate /= check) then
            report "Display falhou em " & 
            time'image(now) & " com input = 8";
        else
            report "Display funcionou em " & 
            time'image(now) & " com input = 8";
        end if;
        
        wait for 2*T;
        
        -- input 9
        wait until falling_edge(clock);
        check <= "11110111";
        data_in_tb <= std_logic_vector(unsigned(data_in_tb) + 1);
        wait until rising_edge(clock);
        wait for 1 ns;
        out_concatenate := A_tb & B_tb & C_tb & D_tb & E_tb & F_tb & G_tb & DP_tb;
        if (out_concatenate /= check) then
            report "Display falhou em " & 
            time'image(now) & " com input = 9";
        else
            report "Display funcionou em " & 
            time'image(now) & " com input = 9";
        end if;
        
                
    end process test_proc;
    
    -- Encerramento da simulação
    finish : process
    begin
        wait for 650 ns;
        assert false Report "Simulação encerrada." severity failure;
    end process finish;

end architecture test_behavioral;
