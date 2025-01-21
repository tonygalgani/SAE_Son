library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
ENTITY CTU IS
PORT (
	H : IN STD_LOGIC;
	S : BUFFER INTEGER range 0 to 255;
	H200K : OUT STD_LOGIC
	);
END CTU;
ARCHITECTURE ARCHI OF CTU IS
BEGIN
	 PROCESS (H)
	 BEGIN
		IF (H'EVENT and H='1') THEN --Front montant d'horloge
			IF (S=255) THEN 
				S<=0;						 --RAZ du compteur
				H200K<='1';				 --Horloge 200k à 1
			else 
				S<=S+1;					 --Incrémentation du compteur
				H200K<='0';				 --Horloge 200k à 0
			END IF;
		END IF;
	 END PROCESS;
END ARCHI;
	
		