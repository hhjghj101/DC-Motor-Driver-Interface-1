library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ClockDivider is
   Port ( 
	  Clock       : in STD_LOGIC;
	  Reset       : in STD_LOGIC;
	  ClockDivOut : out STD_LOGIC);
end ClockDivider;

architecture Behavioral of ClockDivider is
   signal counter : integer:= 1;
   signal tmp : STD_LOGIC:= '0';

begin

process(Clock, Reset)
   begin
      if(Reset = '1') then
	 counter <= 1;
	 tmp <= '0';
      elsif(Clock'event and Clock ='1') then
	 counter <= counter + 1;
      if (counter = 2000) then 
	 tmp <= NOT tmp;
      elsif(counter = 4000) then
	 tmp <= NOT tmp;
	 counter <= 1;
      end if;	
   end if;
	
ClockDivOut <= tmp;
 
end process;
	      
end Behavioral;
