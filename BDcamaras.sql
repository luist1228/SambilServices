create table Entrada(
	id serial primary key,
	nombre varchar(20)
);

create table Camara(
	id serial primary key,
	fkEntrada int references Entrada(id),
	modelo varchar(20)
);

create table Persona (
	id serial primary key,
	mac varchar(30)
);

create table  ePersona (
	id serial primary key,
	sexo varchar(10),
	edad int,
	fecha timestamp,
	fkpersona int references Persona(id),
	fkCamara int references Camara(id)
);

create table sPersona (
	id serial primary key,
	fecha timestamp,
	fkpersona int references Persona(id),
	fkCamara int references Camara(id)
);


create table Carro(
	id serial primary key,
	placa varchar(20),
	mac varchar(30)
);

create table ecarro(
	id serial primary key,
	fecha timestamp,
	fkcamara int references Camara(id),
	fkcarro int references Carro(id)
);

create table scarro(
	id serial primary key,
	fecha timestamp,
	fkcamara int references Camara(id),
	fkcarro int references Carro(id)
);


