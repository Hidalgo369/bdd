--CREACION DE LAS TABLAS
create table ciudad(
	id int not null,
	nombre varchar(45) not null,
	constraint ciudad_pk primary key (id)
)

create table municipio(
	id int not null,
	nombre varchar(45) not null,
	ciudad_id int not null,
	constraint municipio_pk primary key (id),
	constraint municipio_fk foreign key (ciudad_id) references ciudad(id)
)

create table proyecto(
	id int not null,
	nombre varchar(25) not null,
	proyecto varchar(50) not null,
	monto money not null,
	fecha_inicio date not null,
	fecha_entrega date not null,
	constraint proyecto_pk primary key (id)
)

create table proyecto_municipio(
	municipio_id int not null,
	proyecto_id int not null,
	constraint municipio_fk foreign key (municipio_id) references ciudad(id),
	constraint proyecto_fk foreign key (proyecto_id) references proyecto(id),
	constraint proyecto_municipio_pk primary key (municipio_id, proyecto_id)
)

--INSERTANDO VALORES
insert into ciudad (id, nombre) 
values (1, 'Quito');
insert into ciudad (id, nombre) 
values (2, 'Guayaquil');
insert into ciudad (id, nombre) 
values (3, 'Cuenca');
insert into ciudad (id, nombre) 
values (4, 'Loja');
insert into ciudad (id, nombre) 
values (5, 'Machala');

insert into municipio (id, nombre, ciudad_id) 
values (1, 'GAD Quito', 1);
insert into municipio (id, nombre, ciudad_id) 
values (2, 'GAD Samborondón', 2);
insert into municipio (id, nombre, ciudad_id) 
values (3, 'GAD Cuenca', 3);
insert into municipio (id, nombre, ciudad_id) 
values (4, 'GAD Loja', 4);
insert into municipio (id, nombre, ciudad_id) 
values (5, 'GAD Machala', 5);

insert into proyecto (id, nombre, proyecto, monto, fecha_inicio, fecha_entrega) 
values (1, 'Metro', 'Construcción del Metro de Quito', 60000000, '2021-05-01', '2024-11-30');
insert into proyecto (id, nombre, proyecto, monto, fecha_inicio, fecha_entrega) 
values (2, 'Malecón', 'Rehabilitación del Malecón 2000', 30000000, '2022-06-15', '2023-12-01');
insert into proyecto (id, nombre, proyecto, monto, fecha_inicio, fecha_entrega) 
values (3, 'Tranvía', 'Extensión del tranvía de Cuenca', 25000000, '2023-02-01', '2025-08-20');
insert into proyecto (id, nombre, proyecto, monto, fecha_inicio, fecha_entrega) 
values (4, 'Mercado', 'Construcción de nuevo mercado en Loja', 12000000, '2023-07-01', '2024-09-30');
insert into proyecto (id, nombre, proyecto, monto, fecha_inicio, fecha_entrega) 
values (5, 'Puerto', 'Ampliación del puerto Bolívar', 50000000, '2024-03-10', '2026-06-15');

insert into proyecto_municipio (municipio_id, proyecto_id) 
values (1, 1); 
insert into proyecto_municipio (municipio_id, proyecto_id) 
values (2, 2);
insert into proyecto_municipio (municipio_id, proyecto_id) 
values (3, 3);
insert into proyecto_municipio (municipio_id, proyecto_id) 
values (4, 4);
insert into proyecto_municipio (municipio_id, proyecto_id) 
values (5, 5);

--CONSULTA
select mu.nombre nombre_municipio, pro.nombre nombre_proyecto from municipio mu, proyecto pro, proyecto_municipio pm
where (mu.id = pm.municipio_id) and (pro.id = pm.proyecto_id)
--SUBCONSULTA
select nombre nombre_proyecto from proyecto
where id in (select proyecto_id from proyecto_municipio where municipio_id = 1)
--FUNCIÓN DE AGREGACIÓN
select mu.nombre nombre_municipio, count(pm.proyecto_id)cantidad_proyecto from municipio mu, proyecto_municipio pm
where (mu.id = pm.municipio_id)
group by mu.nombre

--CONSULTA 2
select mu.nombre nombre_municipio, pro.nombre nombre_proyecto from municipio mu, proyecto pro, proyecto_municipio pm
where (mu.id = pm.municipio_id) and (pro.id = pm.proyecto_id) and (mu.nombre like '%GAD%')
--FUNCIÓN DE AGREGACIÓN 2
select mu.nombre nombre_municipio, min(pm.proyecto_id)minimo_id from municipio mu, proyecto_municipio pm
where (mu.id = pm.municipio_id)
group by mu.nombre

--CONSULTA 3
select mu.nombre nombre_municipio, ci.nombre nombre_ciudad from municipio mu, ciudad ci
where (mu.id = ci.id)
--SUBCONSULTA 3
select pro.nombre from proyecto pro, proyecto_municipio pm
where id in (select proyecto_id from proyecto_municipio where municipio_id = 3)
--FUNCIÓN DE AGREGACIÓN 3
select mu.nombre nombre_municipio, max(pm.proyecto_id)maximo_id from municipio mu, proyecto_municipio pm
where (mu.id = pm.municipio_id)
group by mu.nombre