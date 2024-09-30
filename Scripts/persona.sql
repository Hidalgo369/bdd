create table persona(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura decimal(10,2),
	fecha_nacimiento date not null,
	hora_de_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint persona_pk primary key (cedula)
)

insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_de_nacimiento, cantidad_ahorrada, numero_hijos) 
values ('1234567890', 'Luis', 'Martínez', 1.75, '1985-01-10', '08:30:00', 5000.00, 2);
insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_de_nacimiento, cantidad_ahorrada, numero_hijos) 
values ('2345678901', 'Ana', 'García', 1.65, '1990-02-20', '09:15:00', 3000.00, 1);
insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_de_nacimiento, cantidad_ahorrada, numero_hijos) 
values ('3456789012', 'Carlos', 'López', 1.80, '1982-03-30', '07:45:00', 7000.00, 3);
insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_de_nacimiento, cantidad_ahorrada, numero_hijos) 
values ('4567890123', 'Sofía', 'Díaz', 1.70, '1995-04-15', '10:00:00', 2500.00, 0);
insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_de_nacimiento, cantidad_ahorrada, numero_hijos) 
values ('5678901234', 'Pedro', 'Ramírez', 1.78, '1988-05-25', '11:20:00', 8000.00, 2);
update persona set nombre='Sean'
where cedula='5678901234'
select * from persona

create table prestamo(
	 cedula char(10),
	 monto money,
	 fecha_prestamo date,
	 hora_prestamo time,
	 garante varchar(40),
	 constraint prestamo_pk primary key (cedula),
	 constraint prestamo_fk foreign key (cedula) references persona(cedula)
)

insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) 
values ('1234567890', 15000.00, '2024-09-01', '09:00:00', 'Carlos López');
insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante)
values ('2345678901', 8000.00, '2024-09-02', '10:30:00', 'Sofía Díaz');
insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) 
values ('3456789012', 12000.00, '2024-09-03', '11:15:00', 'Ana García');
insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) 
values ('4567890123', 5000.00, '2024-09-04', '12:00:00', 'Pedro Ramírez');
insert into prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) 
values ('5678901234', 20000.00, '2024-09-05', '13:30:00', 'Luis Martínez');
update prestamo set monto=150
where (cedula='5678901234')
select * from prestamo

--EJERCICIO DE CONSULTAS Y SUBCONSULTAS
--CONSULTA: MOSTRAR CANTIDAD AHORRADA, MONTO, GARANTE DE PERSONAS CUYO PRESTAMO SEA ENTRE $100 Y $1000
select per.cantidad_ahorrada, pres.monto, pres.garante from persona per, prestamo pres
where (pres.monto between '100' and '1000')
--SUBCONSULTA: DATOS DE LA PERSONA CUYA CEDULA SEA IGUAL A LA CEDULA DE NOMBRE "SEAN"
select * from persona
where nombre='Sean'

--EJERCICIO DE FUNCIONES DE AGREGACIÓN
--SUMA TOTAL DE LOS MONTOS DE PRÉSTAMOS PARA CADA PERSONA
select per.cedula, sum(monto) from persona per, prestamo pre
where per.cedula = pre.cedula
group by per.cedula
--CANTIDAD TOTAL DE PERSONAS QUE TIENEN MÁS DE UN HIJO
select count(*)total_personas from persona
where numero_hijos>1