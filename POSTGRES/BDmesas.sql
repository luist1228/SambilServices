create table mesa(
	id serial primary key,
	sillas int,
	fkbeacon int REFERENCES beacon(id)
);

create table beacon(
	id serial primary key,
	modelo varchar(10)
);

create table iomesa(
	id serial primary key,
	fecha timestamp,
	io boolean,
	fkbeacon int references beacon(id),
	mac varchar(30)
);
