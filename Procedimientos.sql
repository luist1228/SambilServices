CREATE OR REPLACE PROCEDURE Personaconmac(macadd varchar, sex varchar, age int, hora timestamp, camara int )
  
AS $$
declare
	n int;
	s int;
BEGIN

	INSERT INTO public.persona(mac)
	VALUES (macadd);
	commit;
		

	SELECT e."id" INTO n
	from persona as e
	where e."mac"=macadd;
    	
	if n is not null then
 		INSERT INTO public.epersona(sexo, edad, fecha, fkpersona, fkcamara)
		VALUES (sex, age, hora, n, camara);
	end if; 

END;
$$ LANGUAGE plpgsql  ;




--------------------------------------------------------------------------------------------------



CREATE OR REPLACE PROCEDURE Clientenaconmac(ci int, tiempo timestamp, total real, tienda int)
  
AS $$
declare
	n int;
BEGIN

	SELECT e."id" INTO n
	from cliente as e
	where e."cedula"=ci;
    	
	
 	INSERT INTO public.compra(
	monto, fecha, fkcliente, fktienda)
	VALUES ( total, tiempo, n, tienda);
	 

END;
$$ LANGUAGE plpgsql  ;

--------------------------------------------------------------------------------------------------




CREATE OR REPLACE PROCEDURE Salidaconmac(macadd varchar, hora timestamp, camara int )
  
AS $$
declare
	n int;
BEGIN

	SELECT e."id" INTO n
	from persona as e
	where e."mac"=macadd;
    	
 	INSERT INTO public.spersona(fecha, fkpersona, fkcamara)
	VALUES (hora, n, camara);
	

END;
$$ LANGUAGE plpgsql;
