library ieee;
use ieee.std_logic_1164.all;
entity decoder is
     port(
	      e : in std_logic;
	      s : in std_logic_vector(2 downto 0);
	      o : out std_logic_vector(7 downto 0)
    );
end decoder;
--------------------------------------------
architecture rtl of decoder is
begin
    process(e, s)
    begin
	      if(e='1') then
	          if(s="000") then
		            o <= "00000001";
	          elsif(s="001") then
		            o <= "00000010";
	          elsif(s="010") then
		            o <= "00000100";
	          elsif(s="011") then
		            o <= "00001000";
	          elsif(s="100") then
		            o <= "00010000";
	          elsif(s="101") then
		            o <= "00100000";
	          elsif(s="110") then
		            o <= "01000000";
	          else
		            o <= "10000000";
	          end if;
	      else
	          o <= "00000000";
	      end if;
    end process;
end rtl;
