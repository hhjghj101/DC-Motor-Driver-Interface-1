library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


entity CounterB is
    Port ( Clock: in STD_LOGIC; -- Clock Input
			  Reset: in STD_LOGIC; -- Reset Input
           CoutB: out STD_LOGIC_VECTOR(3 downto 0)); -- Output 4-bit Counter
end CounterB;

architecture Behavioral of CounterB is
	signal s_CountUp: std_logic_vector(3 downto 0);
	
begin -- Up Counter
	process(Clock, Reset) is
		begin
			if (Reset = '1') then
				s_CountUp <= "0000";
					elsif(rising_edge(Clock)) then
						if(s_CountUp="1111") then
					s_CountUp <= "0000";
				else
			s_CountUp <= s_CountUp + "1";
		 end if;
	end if;
end process;

CoutB <= s_CountUp;

end Behavioral;