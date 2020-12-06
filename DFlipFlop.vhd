-- Biblioteca
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entidade 'DFlipFlop'
entity DFlipFlop is
    port(
        clk : in std_logic;  -- entrada de clock
        rst : in  std_logic; -- entrada de reset
        d   : in  std_logic; -- entrada d
        q   : out std_logic  -- saída q
    );
end entity DFlipFlop;

-- Arquitetura 'DFF_arch'
architecture DFF_arch of DFlipFlop is
    
begin
    clk_proc : process(clk, rst) is
    begin
        if (rst = '1') then -- reset das saídas
            q <= '0';
        elsif rising_edge(clk) then
            q <= d;
        end if;
    end process;
end architecture DFF_arch;
