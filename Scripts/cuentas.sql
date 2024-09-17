create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	saldo money not null,
	constraint cuentas_pk primary key (numero_cuenta)
)

insert into cuentas (numero_cuenta, cedula_propietario, saldo)
values ('10001', '20001', 1500.50)
insert into cuentas (numero_cuenta, cedula_propietario, saldo)
values ('10002', '20002', 300.75)
insert into cuentas (numero_cuenta, cedula_propietario, saldo)
values ('10003', '20003', 5000.00)
insert into cuentas (numero_cuenta, cedula_propietario, saldo)
values ('10004', '20004', 1200.30)
insert into cuentas (numero_cuenta, cedula_propietario, saldo)
values ('10005', '20005', 875.20)
insert into cuentas (numero_cuenta, cedula_propietario, saldo)
values ('10006', '20006', 950.00)
insert into cuentas (numero_cuenta, cedula_propietario, saldo)
values ('10007', '20007', 780.40)
insert into cuentas (numero_cuenta, cedula_propietario, saldo)
values ('10008', '20008', 6200.00)
insert into cuentas (numero_cuenta, cedula_propietario, saldo)
values ('10009', '20009', 3150.00)
insert into cuentas (numero_cuenta, cedula_propietario, saldo)
values ('10010', '20010', 450.75)

select * from cuentas