library ieee;
use ieee.std_logic_1164.all;
entity half_subtractor is
    port(
      	A : in std_logic;
      	B : in std_logic;
      	D : out std_logic;
      	Bout : out std_logic
    );
end half_subtractor;
-----------------------------
architecture rtl of half_subtractor is
begin
    D <= A xor B;
    Bout <= (not A) and B;
end rtl;
