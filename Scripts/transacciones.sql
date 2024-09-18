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