library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
ENTITY Volume is
PORT(
	E : IN STD_LOGIC_VECTOR (7 downto 0);
	SW: In std_logic_vector (6 downto 0);
	S : OUT STD_LOGIC_VECTOR (7 downto 0);
	H: In std_logic
	);
END Volume;
ARCHITECTURE archi OF Volume IS
signal tempo : STD_LOGIC_VECTOR (21 downto 0);
signal tempo2 : STD_LOGIC_VECTOR (10 downto 0);
BEGIN
	PROCESS (H)
	 BEGIN
	 if (H'event and H='1') then
		tempo2<=E&"000";
		if (SW(0)='1') THEN 
		tempo<=tempo2*"00000001001"; 
		tempo2<=tempo(13 downto 3);
		end if;
		if (SW(1)='1') THEN 
		tempo<=tempo2*"00000001010";
		tempo2<=tempo(13 downto 3); 
		end if;
		if (SW(2)='1') THEN 
		tempo<=tempo2*"00000001011"; 
		tempo2<=tempo(13 downto 3);
		end if;
		if (SW(3)='1') THEN
		tempo<=tempo2*"00000001100"; 
		tempo2<=tempo(13 downto 3);
		end if;
		if (SW(4)='1') THEN 
		tempo<=tempo2*"00000001101"; 
		tempo2<=tempo(13 downto 3);
		end if;
		if (SW(5)='1') THEN 
		tempo<=tempo2*"00000001110"; 
		tempo2<=tempo(13 downto 3);
		end if;
		if (SW(6)='1') THEN 
		tempo<=tempo2*"00000001111"; 
		tempo2<=tempo(13 downto 3);
		end if;
	   S<=tempo2(10 downto 3);
	 end if;
	 End process;
	 
end archi;
