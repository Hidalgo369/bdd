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
select * from prestamo