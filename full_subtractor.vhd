library ieee;
use ieee.std_logic_1164.all;
entity full_subtractor is
    port(
      	A : in std_logic;
      	B : in std_logic;
      	Bin : in std_logic;
      	D : out std_logic;
      	Bout : out std_logic
    );
end full_subtractor;
-----------------------------
architecture rtl of full_subtractor is
begin
    D <= A xor B xor Bin;
    Bout <= ((not A) and B) or (Bin and (not(A xor B)));
end rtl;
