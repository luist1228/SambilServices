
CREATE OR REPLACE FUNCTION RegistroPersona()
RETURNS TRIGGER AS $$
declare
	n varchar(20);
BEGIN
		
			SELECT s."mac" into n 
			from persona as s
			where s."mac"=new.mac;
			
			if n is null then
			return new;
			else 
			return null;
			end if;		
END
$$ LANGUAGE plpgSQL;


CREATE TRIGGER RegistroPersonaT
BEFORE INSERT
ON persona
FOR EACH ROW
EXECUTE PROCEDURE RegistroPersona();


CREATE OR REPLACE FUNCTION RegistroCliente()
RETURNS TRIGGER AS $$
declare
	n int;
BEGIN
		
		if new.cedula is null then
			return new;
			
		else
			SELECT s."cedula" into n 
			from cliente as s
			where s."cedula"=new.cedula;
			
			if n is null then
				return new;
			else
				return null;
			end if;
			
		end if;
		
END
$$ LANGUAGE plpgSQL;


CREATE TRIGGER RegistroClienteT
BEFORE INSERT
ON Cliente
FOR EACH ROW
EXECUTE PROCEDURE RegistroCliente();





