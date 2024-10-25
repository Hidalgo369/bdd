create table estado_civil(
	codigo char(1) not null,
	descripcion varchar(25) not null,
	constraint estado_civil_pk primary key (codigo)
);

create table persona(
	cedula char(10) not null,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	estado_civil_codigo char(1) not null,
	numero_hijos int,
	estatura decimal(10,2),
	cantidad_ahorrada money,
	fecha_nacimiento date,
	hora_nacimiento time,
	constraint persona_pk primary key (cedula),
	constraint persona_fk foreign key (estado_civil_codigo) references estado_civil(codigo)
);

insert into estado_civil(codigo, descripcion)
values ('U', 'UNION LIBRE');
insert into estado_civil(codigo, descripcion)
values ('C', 'CASADO');
insert into estado_civil(codigo, descripcion)
values ('S', 'SOLTERO');

insert into persona(cedula, nombre, apellido, estado_civil_codigo, numero_hijos, estatura, cantidad_ahorrada, fecha_nacimiento, hora_nacimiento)
values ('0123456789', 'Nikola', 'Tesla', 'S', 0, 1.88, 369.00,'1856-07-10', ' 00:00:01');

select * from estado_civil;
select * from persona;

select p.cedula, p.nombre, p.apellido, p.estado_civil_codigo, ec.descripcion, p.numero_hijos, p.estatura, p.cantidad_ahorrada, p.fecha_nacimiento, p.hora_nacimiento from persona p, estado_civil ec
where (p.estado_civil_codigo = ec.codigo) and (cedula = ?)