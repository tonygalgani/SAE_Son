library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
ENTITY Comparateur8 is
PORT(
	A,B : IN INTEGER range 6 to 2048;
	S : out STD_LOGIC
	);
END Comparateur8;
ARCHITECTURE archi OF Comparateur8 IS

BEGIN

	S<='1' when (A<B) ELSE '0';

end archi;
