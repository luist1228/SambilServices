create table beacon(
	id serial primary key,
	modelo varchar(20)
);

create table tienda (
	id serial primary key,
	nombre varchar(20),
	fkbeacon int references beacon(id)
);

create table cliente (
	id serial primary key,
	nombre varchar(30),
	apellido varchar(30),
	cedula bigint unique
);

create table compra(
	id serial primary key,
	monto float,
	fecha timestamp,
	fkcliente int references cliente(id),
	fktienda int references tienda (id)
);

create table iotienda(
	id serial primary key,
	fecha timestamp,
	io boolean,
	fkbeacon int references beacon(id),
	mac varchar(30)
);

