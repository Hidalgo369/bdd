create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key (numero_cuenta)
)

insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('10001', '20001', '10/09/2024', 1500.50)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('10002', '20002', '05/08/2024', 300.75)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('10003', '20003', '20/06/2024', 5000.00)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('10004', '20004', '05/05/2024', 1200.30)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('10005', '20005', '20/07/2024', 875.20)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('10006', '20006', '15/06/2024', 950.00)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('10007', '20007', '06/03/2024', 780.40)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('10008', '20008', '18/07/2024', 6200.00)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('10009', '20009', '03/06/2024', 3150.00)
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('10010', '20010', '01/09/2024', 450.75)

select numero_cuenta,saldo from cuentas
select * from cuentas
where fecha_creacion between '18/07/2024' and '18/09/2024'
select numero_cuenta,saldo from cuentas
where fecha_creacion between '18/07/2024' and '18/09/2024'

update cuentas set saldo=10
where cedula_propietario like '17%'

delete from cuentas
where cedula_propietario like '10%'