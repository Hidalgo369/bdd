create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint registros_entrada_pk primary key (codigo_registro)
)

insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
values (1, '1000000001', '01/09/2024', '08:30:00')
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
values (2, '1000000002', '01/09/2024', '08:45:00')
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
values (3, '1000000003', '01/09/2024', '08:35:00')
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
values (4, '1000000004', '01/09/2024', '09:00:00')
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
values (5, '1000000005', '01/09/2024', '08:25:00')
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
values (6, '1000000006', '02/09/2024', '08:40:00')
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
values (7, '1000000007', '02/09/2024', '08:50:00')
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
values (8, '1000000008', '02/09/2024', '08:30:00')
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
values (9, '1000000009', '02/09/2024', '08:20:00')
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
values (10, '1000000010', '02/09/2024', '08:15:00')
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora)
values (11, '1000000010', '10/08/2024', '06:15:00')

select cedula_empleado,fecha,hora from registros_entrada
select * from registros_entrada
Where hora between '07:00' and '14:00'
select * from registros_entrada
Where hora>'08:00'

update registros_entrada set cedula_empleado='082345679'
where fecha between '01/08/2024' and '31/08/2024'

delete from registros_entrada
where fecha between '01/06/2024' and '30/06/2024' 

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12345, '1754416489', '18/06/2023', '7:00');
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12355, '1758254591', '03/08/2023', '14:00');
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12346, '1715974492', '25/03/2022', '23:00');
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12347, '1735642583', '28/12/2015', '16:00');
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12389, '1707416984', '16/07/2012', '8:00');
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12349, '1778541235', '17/03/2013', '10:00');
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12310, '1742158637', '14/05/2017', '19:00');
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12311, '1756321784', '15/05/2004', '20:00');
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12358, '1712546328', '07/07/2008', '21:00');
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12378, '1725785413', '02/09/2023', '4:00');

select * from registros_entrada
where (fecha between '01/09/2024' and '30/09/2024') 
or (cedula_empleado like '17%')
select * from registros_entrada
where ((fecha between '01/08/2024' and '31/08/2024') 
and (cedula_empleado like '17%')
and (hora between '08:00' and '12:00'))
or ((fecha between '01/09/2024' and '30/09/2024')
and (cedula_empleado like '08%')
and (hora between '9:00' and '13:00'))

--EJERCICIO DE RELACIONES
delete from registros_entrada
alter table registros_entrada
add column codigo_empleado int not null

create table empleado(
	codigo_empleado int not null,
	nombre varchar(25) not null,
	fecha date not null,
	hora time not null
)

alter table empleado
add constraint empleado_pk primary key (codigo_empleado)
alter table registros_entrada
add constraint registros_entrada_fk foreign key (codigo_empleado) references empleado(codigo_empleado)

insert into empleado (codigo_empleado, nombre, fecha, hora) 
values (001, 'Ana Torres', '2024-09-01', '09:00:00');
insert into empleado (codigo_empleado, nombre, fecha, hora) 
values (002, 'Luis Pérez', '2024-09-02', '08:30:00');
insert into empleado (codigo_empleado, nombre, fecha, hora) 
values (003, 'Carmen Díaz', '2024-09-03', '10:15:00');
insert into empleado (codigo_empleado, nombre, fecha, hora) 
values (004, 'Jorge Ramírez', '2024-09-04', '11:00:00');
insert into empleado (codigo_empleado, nombre, fecha, hora) 
values (005, 'Sofía González', '2024-09-05', '09:45:00');
insert into empleado (codigo_empleado, nombre, fecha, hora) 
values (2201, 'Fernando Rey', '2024-09-02', '09:45:00');
select * from empleado

insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado) 
values (1, '1234567890', '2024-09-01', '09:05:00', 001);
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado) 
values (2, '2345678901', '2024-09-02', '08:35:00', 002);
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado) 
values (3, '3456789012', '2024-09-03', '10:20:00', 003);
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado) 
values (4, '4567890123', '2024-09-04', '11:10:00', 004);
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado) 
values (5, '5678901234', '2024-09-05', '09:50:00', 005);
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado) 
values (6, '1234567890', '2024-09-06', '09:02:00', 001);
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado) 
values (7, '2345678901', '2024-09-07', '08:33:00', 002);
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado) 
values (8, '3456789012', '2024-09-08', '10:10:00', 003);
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado) 
values (9, '4567890123', '2024-09-09', '11:05:00', 004);
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado) 
values (10, '5678901234', '2024-09-10', '09:40:00', 005);
insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado) 
values (2201, '5678901234', '2024-09-10', '09:40:00', 2201);
select * from registros_entrada

--EJERCICIO DE CONSULTAS Y SUBCONSULTAS
--CONSULTA: OBTENER LA CÉDULA DEL EMPLEADO, FECHA Y EL NOMBRE DE LOS EMPLEADOS CUYOS REGISTROS DE ENTRADA TIENEN FECHA
--ENTRE '2023-08-01' Y '2023-08-31' O CUYA CÉDULA DEL EMPLEADO CONTIENE EL '17%' Y LA HORA DE ENTRADA ESTÁ ENTRE '08:00'
--Y '12:00' O CUYA FECHA ESTÁ ENTRE '2023-10-06' Y '2023-10-20', LA CÉDILA DEL EMPLEADO CONTIENE '08%' Y LA HORA DE
--ENTRADA ESTÁ ENTRE '09:00' Y '13:000'
select re.cedula_empleado, re.fecha, e.nombre from registros_entrada re, empleado e
where (e.fecha between '2023-08-01' and '2023-08-31') 
or ((re.cedula_empleado like '17%') and (re.hora between '08:00' and '12:00'))
or ((e.fecha between '2023-10-06' and '2023-10-23') and (re.cedula_empleado like '08%') 
and (re.hora between '09:00:00' and '13:00:00'))
--SUBTOTAL: OBTENER TODOS LOS DATOS DE EMPLEADO DONDE EL CÓDIGO DE REGISTRO DEL EMPLEADO CORRESPONDE AL CÓDIGO DE REGISTRO 
--DE ENTRADA DE CÉDULA '2201'
select e.codigo_empleado, e.nombre from empleado e
where (e.codigo_empleado = any(select re.codigo_registro from registros_entrada re where re.codigo_registro=2201))