create table transacciones(
	codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date not null,
	hora time not null,
	constraint transacciones_pk primary key (codigo)
)

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values (11, '10001', 150.00, 'C', '2024-09-01', '10:30')
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values (2, '10002', 200.00, 'D', '2024-09-01', '11:00')
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values (3, '10003', 300.50, 'C', '2024-09-02', '09:15')
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values (4, '10004', 120.75, 'D', '2024-09-02', '12:45')
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values (5, '10005', 500.00, 'C', '2024-09-03', '14:00')
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values (6, '10006', 75.25, 'D', '2024-09-03', '16:30')
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values (7, '10007', 220.10, 'C', '2024-09-04', '10:45')
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values (8, '10008', 310.00, 'D', '2024-09-04', '13:20')
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values (9, '10009', 450.00, 'C', '2024-09-05', '11:50')
insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
values (10, '10010', 100.00, 'D', '2024-09-05', '15:10')

select * from transacciones
where tipo='D'
select * from transacciones
where monto between '200' and '2000'
select codigo,monto,tipo,fecha from transacciones
where fecha is not null

update transacciones set tipo='T'
where monto>'100' and monto<'500'
and fecha between '01/09/2024' and '30/09/2024'
and hora between '14:00' and '20:00'

delete from transacciones
where hora between '14:00' and '18:00'
and fecha between '01/08/2024' and '31/08/2024'

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78945, '75369', 200, 'C', '20/09/2023', '23:30');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(53147, '32102', 500.65, 'D', '15/06/2022', '17:55');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32548, '21001', 1600, 'C', '17/05/2021', '16:37');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32165, '51437', 1050, 'D', '25/04/2020', '15:48');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78542, '02147', 300, 'D', '20/03/2019', '22:19');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(23210, '32015', 400, 'C', '25/11/2024', '13:55');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(35412, '85214', 600, 'D', '07/12/2015', '20:14');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54193, '96325', 800, 'D', '06/11/2012', '11:00');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(95124, '74125', 900, 'D', '23/10/2002', '9:00');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54143, '85213', 2000, 'C', '11/09/1999', '7:30');

select * from transacciones
where (tipo='C') 
and (numero_cuenta between '22001' and '22004')
select * from transacciones
where (tipo='D')
and (fecha='25/05/2024')
and (numero_cuenta between '22007' and '22010'))
select * from transacciones
where (codigo between 1 and 5)
and (numero_cuenta between '22002' and '22004')
and (fecha between '26/05/2024' and '29/05/2024')

--EJERCICIO DE RELACIONES
select * from transacciones

create table banco(
codigo_banco int,
	codigo_transaccion int,
	detalle varchar(100),
	constraint banco_pk primary key (codigo_banco),
	constraint banco_fg foreign key (codigo_transaccion) references transacciones(codigo)
)

insert into banco (codigo_banco, codigo_transaccion, detalle) 
values (1, 0001, 'Apertura de cuenta'); 
insert into banco (codigo_banco, codigo_transaccion, detalle) 
values (2, 0002, 'Depósito en efectivo'); 
insert into banco (codigo_banco, codigo_transaccion, detalle) 
values (3, 0003, 'Retiro de cajero automático'); 
insert into banco (codigo_banco, codigo_transaccion, detalle) 
values (4, 0004, 'Transferencia entre cuentas'); 
insert into banco (codigo_banco, codigo_transaccion, detalle) 
values (5, 0005, 'Pago de servicios'); 
insert into banco (codigo_banco, codigo_transaccion, detalle) 
values (6, 0006, 'Cobro de cheque'); 
insert into banco (codigo_banco, codigo_transaccion, detalle) 
values (7, 0007, 'Consulta de saldo'); 
insert into banco (codigo_banco, codigo_transaccion, detalle) 
values (8, 0008, 'Cierre de cuenta'); 
insert into banco (codigo_banco, codigo_transaccion, detalle) 
values (9, 0009, 'Cambio de clave'); 
insert into banco (codigo_banco, codigo_transaccion, detalle) 
values (10, 0010, 'Solicitud de crédito'); 
select * from banco