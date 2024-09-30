--CREACION DE LAS TABLAS
create table habitaciones(
	habitacion_numero int not null,
	precio_por_noche decimal(10,2) not null,
	piso int not null,
	max_personas int,
	constraint habitaciones_pk primary key (habitacion_numero)
)

create table huespedes(
	id int not null,
	nombres varchar(45) not null,
	apellidos varchar(45) not null,
	telefono char(10),
	correo varchar(45),
	direccion varchar(45),
	ciudad varchar(45),
	pais varchar(45),
	constraint huespedes_pk primary key (id)
)

create table reservas(
	inicio_fecha date not null,
	fin_fecha date not null,
	habitacion int not null,
	huesped_id int not null,
	constraint habitacion_fk foreign key (habitacion) references habitaciones(habitacion_numero),
	constraint huesped_fk foreign key (huesped_id) references huespedes(id),
	constraint habitacion_huesped_pk primary key (habitacion, huesped_id)
)

--INSERTANDO VALORES
insert into habitaciones (habitacion_numero, precio_por_noche, piso, max_personas) 
values (101, 80.50, 1, 2);
insert into habitaciones (habitacion_numero, precio_por_noche, piso, max_personas) 
values (202, 120.00, 2, 4);
insert into habitaciones (habitacion_numero, precio_por_noche, piso, max_personas) 
values (303, 150.75, 3, 3);
insert into habitaciones (habitacion_numero, precio_por_noche, piso, max_personas) 
values (404, 200.00, 4, 5);
insert into habitaciones (habitacion_numero, precio_por_noche, piso, max_personas) 
values (505, 250.25, 5, 2);

insert into huespedes (id, nombres, apellidos, telefono, correo, direccion, ciudad, pais) 
values (1, 'Gabriel', 'Díaz', '0987654321', 'gabriel.diaz@mail.com', 'Av. Central 123', 'Quito', 'Ecuador');
insert into huespedes (id, nombres, apellidos, telefono, correo, direccion, ciudad, pais) 
values (2, 'Laura', 'Vargas', '0987654322', 'laura.vargas@mail.com', 'Calle 5 No. 10', 'Bogotá', 'Colombia');
insert into huespedes (id, nombres, apellidos, telefono, correo, direccion, ciudad, pais) 
values (3, 'Jorge', 'Alonso', '0987654323', 'jorge.alonso@mail.com', 'Blvd. Reforma 250', 'Ciudad de México', 'México');
insert into huespedes (id, nombres, apellidos, telefono, correo, direccion, ciudad, pais) 
values (4, 'Sara', 'Fernández', '0987654324', 'sara.fernandez@mail.com', 'Calle Olmo 33', 'Madrid', 'España');
insert into huespedes (id, nombres, apellidos, telefono, correo, direccion, ciudad, pais) 
values (5, 'Miguel', 'Rojas', '0987654325', 'miguel.rojas@mail.com', 'Carrera 7 No. 15', 'Lima', 'Perú');

insert into reservas (inicio_fecha, fin_fecha, habitacion, huesped_id) 
values ('2024-10-01', '2024-10-05', 101, 1);
insert into reservas (inicio_fecha, fin_fecha, habitacion, huesped_id) 
values ('2024-11-12', '2024-11-18', 202, 2);
insert into reservas (inicio_fecha, fin_fecha, habitacion, huesped_id) 
values ('2024-09-20', '2024-09-25', 303, 3);
insert into reservas (inicio_fecha, fin_fecha, habitacion, huesped_id) 
values ('2024-12-05', '2024-12-10', 404, 4);
insert into reservas (inicio_fecha, fin_fecha, habitacion, huesped_id) 
values ('2024-10-15', '2024-10-20', 505, 5);

--CONSULTA
select ha.habitacion_numero, hu.nombres, hu.apellidos from habitaciones ha, huespedes hu, reservas re
where (ha.habitacion_numero = re.habitacion) and (hu.id = re.huesped_id)
--SUBCONSULTA
select nombres, apellidos from huespedes
where id in(select huesped_id from reservas where habitacion = 2)
--FUNCIÓN DE AGREGACIÓN
select ha.habitacion_numero, count(re.huesped_id) from habitaciones ha, reservas re
where (ha.habitacion_numero = re.habitacion)
group by ha.habitacion_numero

--CONSULTA 2
select ha.habitacion_numero, ha.piso, hu.nombres, hu.apellidos from habitaciones ha, huespedes hu, reservas re
where(ha.piso = 4) and (ha.habitacion_numero = re.habitacion) and (hu.id = re.huesped_id)
--SUBCONSULTA 2
select nombres, apellidos from huespedes
where id in (select huesped_id from reservas where habitacion = 3)
--FUNCIÓN DE AGREGACIÓN 2
select ha.habitacion_numero, cast(AVG(re.huesped_id)as decimal(10,2))promedio from habitaciones ha, reservas re
where (ha.habitacion_numero = re.habitacion)
group by ha.habitacion_numero

--CONSULTA 3
select ha.habitacion_numero, hu.nombres, hu.apellidos from habitaciones ha, huespedes hu, reservas re
where (ha.habitacion_numero = re.habitacion) and (hu.id = re.huesped_id)
--SUBCONSULTA 3
select nombres, apellidos from huespedes
where id in (select huesped_id from reservas where habitacion = 4)
--FUNCIÓN DE AGREGACIÓN 3
select habitacion_numero, sum(precio_por_noche)suma_precio_por_noche from habitaciones, reservas
where (habitaciones.habitacion_numero = reservas.habitacion)
group by habitaciones.habitacion_numero