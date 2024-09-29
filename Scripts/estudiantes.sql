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

select nombre,cedula from estudiantes
select nombre,cedula from estudiantes
Where cedula like '17%'
select nombre,apellido from estudiantes
where nombre like 'A%'

delete from estudiantes
where cedula like '%05'

insert into estudiantes (cedula,nombre,apellido,email,fecha_de_nacimiento)
values (1235476801,'Raul','Martínez','raumart01@gmail.com','04/02/2003');
insert into estudiantes (cedula,nombre,apellido,email,fecha_de_nacimiento)
values (1735476802,'Mario','Guaman','MarioG25@gmail.com', '08/12/2000');
insert into estudiantes (cedula,nombre,apellido,email,fecha_de_nacimiento)
values (1235476803,'Roberto','Quishpe','RobQuishpe64@gmail.com','29/06/2005');
insert into estudiantes (cedula,nombre,apellido,email,fecha_de_nacimiento)
values (1735476804,'Paul','Noguera','PaulNog55@gmail.com','22/07/2002');
insert into estudiantes (cedula,nombre,apellido,email,fecha_de_nacimiento)
values (1235476805,'Marcelo','Ramos','MarceloR72@gmail.com','15/08/2008');
insert into estudiantes (cedula,nombre,apellido,email,fecha_de_nacimiento)
values (1735476806,'Anthony','Agual','KAgual22@gmail.com','25/03/2002');
insert into estudiantes (cedula,nombre,apellido,email,fecha_de_nacimiento)
values (1235476807,'Paula','Celi','PauCeli31@gmail.com','30/09/2010' );
insert into estudiantes (cedula,nombre,apellido,email,fecha_de_nacimiento)
values (1735476808,'Mónica','Martínez','MoniMar15@gmail.com','22/01/2001');
insert into estudiantes (cedula,nombre,apellido,email,fecha_de_nacimiento)
values (1235476809,'Anabel','Perlaza','WPerlaza18@gmail.com','12/04/2000');
insert into estudiantes (cedula,nombre,apellido,email,fecha_de_nacimiento)
values (1735476810,'Sofía','Jimenez','SofiJz22@gmail.com','22/01/2001');
insert into estudiantes (cedula,nombre,apellido,email,fecha_de_nacimiento)
values (3235476810,'Sofía','Jimenez','SofiJz22@gmail.com','22/01/2001');
insert into estudiantes (cedula,nombre,apellido,email,fecha_de_nacimiento)
values (3235476832,'Sofía','Jimenez','SofiJz22@gmail.com','22/01/2001');

select nombre,apellido from estudiantes
where (nombre like 'M%') 
or (apellido like '%z')
select nombre from estudiantes
where (cedula like '%32%')
and (cedula like '18%')
select nombre,apellido from estudiantes
where (cedula like '%06')
or (cedula like '17%')

--EJERCICIO DE RELACIONES
delete from estudiantes
alter table estudiantes
add column codigo_profesor int

create table profesores(
	codigo int not null,
	nombre varchar(50) not null,
	constraint profesores_pk primary key (codigo)
)

alter table estudiantes
add constraint estudiantes_fk foreign key (codigo_profesor) references profesores(codigo)

insert into profesores (codigo, nombre) 
values (1, 'Ana Martínez');
insert into profesores (codigo, nombre) 
values (2, 'Luis Gómez');
insert into profesores (codigo, nombre) 
values (3, 'María Rodríguez');
insert into profesores (codigo, nombre) 
values (4, 'Carlos Pérez');
insert into profesores (codigo, nombre) 
values (5, 'Sofía Torres');
insert into profesores (codigo, nombre) 
values (6, 'Jorge Díaz');
insert into profesores (codigo, nombre) 
values (7, 'Laura Fernández');
insert into profesores (codigo, nombre) 
values (8, 'Pedro Ramírez');
insert into profesores (codigo, nombre) 
values (9, 'Carmen López');
insert into profesores (codigo, nombre) 
values (10, 'Diego Sánchez');
select * from profesores

insert into estudiantes (cedula, nombre, apellido, email, fecha_de_nacimiento, codigo_profesor) 
values ('1234567890', 'Luis', 'Martínez', 'luis.martinez@example.com', '2000-01-15', 1);
insert into estudiantes (cedula, nombre, apellido, email, fecha_de_nacimiento, codigo_profesor) 
values ('2345678901', 'Ana', 'García', 'ana.garcia@example.com', '2001-02-20', 2);
insert into estudiantes (cedula, nombre, apellido, email, fecha_de_nacimiento, codigo_profesor) 
values ('3456789012', 'Carlos', 'López', 'carlos.lopez@example.com', '1999-03-25', 3);
insert into estudiantes (cedula, nombre, apellido, email, fecha_de_nacimiento, codigo_profesor) 
values ('4567890123', 'Sofía', 'Díaz', 'sofia.diaz@example.com', '2002-04-30', 4);
insert into estudiantes (cedula, nombre, apellido, email, fecha_de_nacimiento, codigo_profesor) 
values ('5678901234', 'Pedro', 'Ramírez', 'pedro.ramirez@example.com', '2003-05-10', 5);
insert into estudiantes (cedula, nombre, apellido, email, fecha_de_nacimiento, codigo_profesor) 
values ('6789012345', 'Carmen', 'Hernández', 'carmen.hernandez@example.com', '2000-06-15', 1);
insert into estudiantes (cedula, nombre, apellido, email, fecha_de_nacimiento, codigo_profesor) 
values ('7890123456', 'María', 'Sánchez', 'maria.sanchez@example.com', '2001-07-20', 2);
insert into estudiantes (cedula, nombre, apellido, email, fecha_de_nacimiento, codigo_profesor) 
values ('8901234567', 'Diego', 'Torres', 'diego.torres@example.com', '1998-08-25', 3);
insert into estudiantes (cedula, nombre, apellido, email, fecha_de_nacimiento, codigo_profesor) 
values ('9012345678', 'Laura', 'Fernández', 'laura.fernandez@example.com', '1997-09-30', 4);
insert into estudiantes (cedula, nombre, apellido, email, fecha_de_nacimiento, codigo_profesor) 
values ('0123456789', 'Jorge', 'González', 'jorge.gonzalez@example.com', '1996-10-05', 5);
select * from estudiantes

--EJERCICIO DE CONSULTAS Y SUBCONSULTAS
--CONSULTA: OBTENER EL CÓDIGO DE PROFESOR CON TODOS LOS NOMBRES Y APELLIDOS DE LOS ESTUDIANTES CUYO APELLIDO CONTIENE LA LETRA Ñ
select profe.codigo, es.nombre, es.apellido from profesores profe, estudiantes es
where (es.apellido like '%ñ%')
--SUBCONSULTA: ESTUDIANTES CUYO CÓDIGO DE PROFESOR CORRESPONDE AL NOMBRE DE "FRANCISCO"
select * from estudiantes es
where (es.codigo_profesor = any(select profe.codigo from profesores profe where profe.nombre='Francisco'))