library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DFlipFlop is
    port(
        clk : in std_logic;
        rst : in  std_logic;
        d   : in  std_logic;
        q   : out std_logic
    );
end entity DFlipFlop;

architecture DFF_arch of DFlipFlop is
    
begin
    clk_proc : process(clk, rst) is
    begin
        if (rst = '1') then
            q <= '0';
        elsif rising_edge(clk) then
            q <= d;
        end if;
    end process;
end architecture DFF_arch;
