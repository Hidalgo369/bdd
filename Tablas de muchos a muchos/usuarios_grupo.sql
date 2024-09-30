--CREACION DE LAS TABLAS
create table usuarios(
	id int not null,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	fecha_nacimiento date,
	constraint usuarios_pk primary key (id)
)

create table grupo(
	id int not null,
	nombre varchar(25) not null,
	descripcion varchar(75),
	fecha_creacion date,
	constraint grupo_pk primary key (id)
)

create table usuario_grupo(
	us_id int not null,
	gr_id int not null,
	constraint us_fk foreign key (us_id) references usuarios(id),
	constraint gr_fk foreign key (gr_id) references grupo(id),
	constraint us_gr_pk primary key (us_id,gr_id)
)

--INSERTANDO VALORES
insert into usuarios (id, nombre, apellido, fecha_nacimiento) 
values (1, 'Sofía', 'López', '1993-04-12');
insert into usuarios (id, nombre, apellido, fecha_nacimiento) 
values (2, 'Pedro', 'Gómez', '1987-09-05');
insert into usuarios (id, nombre, apellido, fecha_nacimiento) 
values (3, 'Lucía', 'Ramírez', '1991-07-22');
insert into usuarios (id, nombre, apellido, fecha_nacimiento) 
values (4, 'Fernando', 'Salazar', '1994-01-11');
insert into usuarios (id, nombre, apellido, fecha_nacimiento) 
values (5, 'Valeria', 'Moreno', '1996-03-30');

insert into grupo (id, nombre, descripcion, fecha_creacion) 
values (1, 'Finanzas', 'Equipo de finanzas corporativas', '2021-10-01');
insert into grupo (id, nombre, descripcion, fecha_creacion) 
values (2, 'Logística', 'Equipo de operaciones y logística', '2022-04-12');
insert into grupo (id, nombre, descripcion, fecha_creacion) 
values (3, 'Ventas', 'Equipo de ventas y relaciones con clientes', '2022-08-17');
insert into grupo (id, nombre, descripcion, fecha_creacion) 
values (4, 'Soporte', 'Equipo de soporte técnico', '2023-05-10');
insert into grupo (id, nombre, descripcion, fecha_creacion) 
values (5, 'Investigación', 'Equipo de investigación y desarrollo', '2023-02-15');

insert into usuario_grupo (us_id, gr_id) 
values (1, 5);
insert into usuario_grupo (us_id, gr_id) 
values (2, 4);
insert into usuario_grupo (us_id, gr_id) 
values (3, 3);
insert into usuario_grupo (us_id, gr_id) 
values (4, 2);
insert into usuario_grupo (us_id, gr_id) 
values (5, 1);

--CONSULTA
select u.nombre nombre_usuario, g.nombre nombre_grupo from usuarios u, grupo g, usuario_grupo ug
where (u.id = ug.us_id) and (g.id = ug.gr_id)
--SUBCONSULTA 
select nombre nombre_usuario from usuarios
where id in (select us_id from usuario_grupo where gr_id=1)
--FUNCIÓN DE AGREGACIÓN
select g.nombre, count(us_id)cantidad_usuarios from grupo g, usuario_grupo ug
where (g.id = ug.gr_id )
group by g.nombre

--CONSULTA 2
select u.nombre nombre_usuario, g.nombre nombre_grupo from usuarios u, grupo g, usuario_grupo ug
where (u.id = ug.us_id) and (g.id = ug.gr_id) and (g.nombre like '%intensivo%')
--SUBCONSULTA 2
select nombre nombre_usuario from usuarios
where id in (select us_id from usuario_grupo where gr_id=2)
--FUNCIÓN DE AGREGACIÓN 2
select g.nombre, max(ug.us_id)maximo_usuario from grupo g, usuario_grupo ug
where (g.id = ug.gr_id)
group by g.nombre

--CONSULTA 3
select u.nombre, g.fecha_creacion from usuarios u, grupo g, usuario_grupo ug
where (u.id = ug.us_id) and (g.id = ug.gr_id) and (g.fecha_creacion between '2020-03-08' and '2022-03-08')
--SUBCONSULTA 3
select nombre nombre_usuario from usuarios, usuario_grupo
where id in (select us_id from usuario_grupo where gr_id = 3)
--FUNCIÓN DE AGREGACIÓN 3
select g.descripcion descripcion_grupo, count(ug.us_id)cantidad_usuario from grupo g, usuario_grupo ug
where (g.id = ug.gr_id) and (g.descripcion like '%matutino%')
group by g.descripcion