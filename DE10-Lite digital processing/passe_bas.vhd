library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
ENTITY passe_bas IS
PORT (
	E : IN STD_LOGIC_VECTOR (7 downto 0);
	SW : IN STD_LOGIC;
	H : IN STD_LOGIC;
	S : BUFFER STD_LOGIC_VECTOR (7 downto 0)
	);
END passe_bas;
ARCHITECTURE ARCHI OF passe_bas IS
signal tempo13SP : STD_LOGIC_VECTOR (35 downto 0):="000000000000000000000000000000000000";
signal tempo13S : STD_LOGIC_VECTOR (64 downto 0);
signal tempo13E : STD_LOGIC_VECTOR (35 downto 0):="000000000000000000000000000000000000";
signal a : STD_LOGIC_VECTOR (28 downto 0);
signal b : STD_LOGIC_VECTOR (28 downto 0);
BEGIN
	 PROCESS (H)
	 BEGIN
		IF (H'EVENT and H='1') THEN
			IF (SW='1') THEN
			a<="00000000000000000000000000001";--Definition
			b<="10000000000000000000000000000";
			tempo13S<=(a*tempo13SP)+((b-a)*tempo13E);--Calcule de la nouvelle sortie
			tempo13SP<=S &"0000000000000000000000000000";--Enregistrement des valeurs t-1
			tempo13E<=E & "0000000000000000000000000000";
			S<=tempo13S(64 downto 57);
			else
			S<=E;
			tempo13SP<=S&"0000000000000000000000000000";--Enregistrement des valeurs t-1
			tempo13E<=E &"0000000000000000000000000000";
			END IF;
		END IF;
	 END PROCESS;
END ARCHI;
	
		