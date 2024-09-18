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