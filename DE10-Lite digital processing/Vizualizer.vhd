library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
ENTITY Vizualizer is
PORT(
	Entre_viz : IN INTEGER range 0 to 255;
	S : out std_logic_vector (7 downto 0));
END Vizualizer;
ARCHITECTURE archi OF Vizualizer IS
signal tempo : INTEGER range 0 to 255;
BEGIN
	PROCESS (Entre_viz)
	 BEGIN
	 IF (Entre_viz>=127) THEN
		tempo<=Entre_viz;   
	 Else -- Si Entre_viz<127 Redressage 
		tempo<=255-Entre_viz;   
	 End if;
	 --IF (tempo> 127) and (tempo<143) THEN S<="00000001";end if;
	 --IF (tempo>=143) and (tempo<159) THEN S<="00000011";end if;
	 --IF (tempo>=159) and (tempo<175) THEN S<="00000111";end if;
	 --IF (tempo>=175) and (tempo<191) THEN S<="00001111";end if;
	 --IF (tempo>=191) and (tempo<207) THEN S<="00011111";end if;
	 --IF (tempo>=207) and (tempo<223) THEN S<="00111111";end if;
	 --IF (tempo>=223) and (tempo<239) THEN S<="01111111";end if;
	 --IF (tempo>=239) and (tempo<=255) THEN S<="11111111";end if;
	 
	 IF (tempo> 127) and (tempo<131) THEN S<="00000001";end if;
	 IF (tempo>=131) and (tempo<135) THEN S<="00000011";end if;
	 IF (tempo>=135) and (tempo<139) THEN S<="00000111";end if;
	 IF (tempo>=139) and (tempo<143) THEN S<="00001111";end if;
	 IF (tempo>=143) and (tempo<147) THEN S<="00011111";end if;
	 IF (tempo>=147) and (tempo<151) THEN S<="00111111";end if;
	 IF (tempo>=151) and (tempo<155) THEN S<="01111111";end if;
	 IF (tempo>=155) and (tempo<=159) THEN S<="11111111";end if;
	 
	 
	 
	   IF (tempo=127)					   THEN S<="00000000";end if;
		
	 End process;
	 
end archi;
