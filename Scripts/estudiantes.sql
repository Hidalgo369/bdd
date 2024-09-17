create table estudiantes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_de_nacimiento date not null,
	constraint estudiantes_pk primary key (cedula)
)

insert into estudiantes (cedula, nombre, apellido, email, fecha_de_nacimiento)
values ('1000000001', 'Juan', 'Pérez', 'juan.perez@example.com', '1995-04-10')
insert into estudiantes (cedula, nombre, apellido, email, fecha_de_nacimiento)
values ('1000000002', 'María', 'González', 'maria.gonzalez@example.com', '1997-06-25')
insert into estudiantes (cedula, nombre, apellido, email, fecha_de_nacimiento)
values ('1000000003', 'Carlos', 'Ramírez', 'carlos.ramirez@example.com', '1994-12-15')
insert into estudiantes (cedula, nombre, apellido, email, fecha_de_nacimiento)
values ('1000000004', 'Ana', 'López', 'ana.lopez@example.com', '1996-08-30')
insert into estudiantes (cedula, nombre, apellido, email, fecha_de_nacimiento)
values ('1000000005', 'Luis', 'Martínez', 'luis.martinez@example.com', '1995-02-17')
insert into estudiantes (cedula, nombre, apellido, email, fecha_de_nacimiento)
values ('1000000006', 'Sofía', 'Vega', 'sofia.vega@example.com', '1998-11-05')
insert into estudiantes (cedula, nombre, apellido, email, fecha_de_nacimiento)
values ('1000000007', 'David', 'Morales', 'david.morales@example.com', '1993-03-22')
insert into estudiantes (cedula, nombre, apellido, email, fecha_de_nacimiento)
values ('1000000008', 'Laura', 'Torres', 'laura.torres@example.com', '1999-07-18')

select * from estudiantes