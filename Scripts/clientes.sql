create table clientes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	constraint clientes_pk primary key(cedula)
)

create table compras(
	id_compra int not null,
	cedula char(10) not null,
	fecha_compra date not null,
	monto decimal(10,2) not null,
	constraint compras_pk primary key(id_compra),
	constraint compras_fk foreign key(cedula) references clientes(cedula)
)

insert into clientes (cedula, nombre, apellido)
values ('4455667788', 'Ana', 'Hernández');
insert into clientes (cedula, nombre, apellido)
values ('5566778899', 'Luis', 'López');
insert into clientes (cedula, nombre, apellido)
values ('6677889900', 'Carmen', 'Torres');
insert into clientes (cedula, nombre, apellido)
values ('7788990011', 'Jorge', 'García');
insert into clientes (cedula, nombre, apellido)
values ('8899001122', 'Sofía', 'Díaz');
select * from clientes

insert into compras (id_compra, cedula, fecha_compra, monto) 
values (1, '4455667788', '2024-09-15', 120.50);
insert into compras (id_compra, cedula, fecha_compra, monto) 
values (2, '5566778899', '2024-09-16', 75.25);
insert into compras (id_compra, cedula, fecha_compra, monto) 
values (3, '6677889900', '2024-09-17', 200.00);
insert into compras (id_compra, cedula, fecha_compra, monto) 
values (4, '7788990011', '2024-09-18', 150.75);
insert into compras (id_compra, cedula, fecha_compra, monto) 
values (5, '8899001122', '2024-09-19', 90.00);
insert into compras (id_compra, cedula, fecha_compra, monto) 
values (6, '4455667788', '2024-09-20', 60.00);
insert into compras (id_compra, cedula, fecha_compra, monto) 
values (7, '5566778899', '2024-09-21', 110.90);
insert into compras (id_compra, cedula, fecha_compra, monto) 
values (8, '6677889900', '2024-09-22', 85.40);
insert into compras (id_compra, cedula, fecha_compra, monto) 
values (9, '7788990011', '2024-09-23', 300.30);
insert into compras (id_compra, cedula, fecha_compra, monto) 
values (10, '8899001122', '2024-09-24', 45.00);
select * from compras

--EJERCICIO DE CONSULTAS Y SUBCONSULTAS
--CONSULTA: NOMBRE Y APPELLIDO DE CLIENTES QUE CONTENGA 7 EN SU CEDULA
select nombre, apellido from clientes
where (cedula like '%7%')
--SUBCONSULTA: CLIENTES CUYA CEDULA SEA IGUAL A LA CEDULA DE NOMBRE MONICA
select * from clientes
where (nombre='Mónica')

--EJERCICIO DE FUNCIONES DE AGREGACIÓN
--SUMA DE COMRPAS POR CLIENTE
select cedula, sum(monto)monto_total_compras from compras
group by cedula

--CANTIDAD TOTAL DE COMPRAS REALIZADOS EN UNA FECHA ESPECÍFICA
select fecha_compra, count(monto)total_compras from compras
where fecha_compra='2024-09-24'
group by fecha_compra