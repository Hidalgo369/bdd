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