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

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25569,17504,'15/01/2030',500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25570,17500,'01/11/2028',600);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25571,17501,'22/01/2023',700);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25572,17508,'30/05/2022',800);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25573,17509,'15/03/2023',900);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25574,17510,'15/05/2023',1000);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25575,17507,'15/09/2023',1500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25576,17515,'15/10/2024',2500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25577,17512,'15/08/2025',3500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25578,17503,'15/06/2017',4500);

select numero_cuenta,saldo from cuentas
where (saldo>'100' and saldo<'1000')
select * from cuentas
where (fecha_creacion between '19/09/2023' and '19/09/2024')
select * from cuentas
where (saldo='0')
or (cedula_propietario like '%2')

-- EJERCICIO DE TIPOS DE RELACIONES
create table usuario(
	cedula char(10) not null,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	tipo_vuenta varchar(20),
	limite_credito decimal(10,2),
	constraint usuario_pk primary key(cedula)
)

alter table cuentas
alter column cedula_propietario type char(10)
alter table cuentas
add constraint cuentas_fk foreign key (cedula_propietario) references usuario(cedula)

insert into usuario (cedula, nombre, apellido, tipo_vuenta, limite_credito)
values ('1750012345', 'Juan', 'Perez', 'Corriente', 5000.00);
insert into usuario (cedula, nombre, apellido, tipo_vuenta, limite_credito)
values ('1750023456', 'Maria', 'Gomez', 'Ahorros', 3000.00);
insert into usuario (cedula, nombre, apellido, tipo_vuenta, limite_credito)
values ('1750034567', 'Pedro', 'Lopez', 'Corriente', 4000.00);
insert into usuario (cedula, nombre, apellido, tipo_vuenta, limite_credito)
values ('1750045678', 'Ana', 'Martinez', 'Ahorros', 2500.00);
insert into usuario (cedula, nombre, apellido, tipo_vuenta, limite_credito)
values ('1750056789', 'Luis', 'Ortiz', 'Corriente', 3500.00);
select * from usuario

--Nuevos registros en la tabla cuentas aplicando la relación
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('10001', '1750012345', '2024-09-10', 1500.50);
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('10002', '1750023456', '2024-08-05', 300.75);
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('10003', '1750034567', '2024-06-20', 5000.00);
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('10004', '1750045678', '2024-05-05', 1200.30);
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('10005', '1750056789', '2024-07-20', 875.20);
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('10006', '1750012345', '2024-06-15', 950.00);
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('10007', '1750023456', '2024-03-06', 780.40);
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('10008', '1750034567', '2024-07-18', 6200.00);
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('10009', '1750045678', '2024-06-03', 3150.00);
insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('10011', '1750056789', '2023-09-01', 450.75);
select * from cuentas

--EJERCICIO DE CONSULTAS Y SUBCONSULTAS
--CONSULTA: NÚMEROS DE CUENTAS Y NOMBRES DE USUARIO CUYOS SALDOS ESTÉN ENTRE $100 Y $1000
select cu.numero_cuenta,cu.saldo, u.nombre from cuentas cu, usuario u
where (cu.saldo between '100' and '1000')
--SUBCONSULTA: DATOS DE CUENTAS Y USUARIOS DONDE LA FECHA DE CREACIÓN DE LA CUENTA ESTÁ ENTRE "2022-09-21" y "2023-09-21"
select cu.numero_cuenta, cu.fecha_creacion, cu.saldo, u.cedula from cuentas cu, usuario u
where (u.cedula = any(select cu.cedula_propietario from cuentas where cu.fecha_creacion between '2022-09-21' and '2023-09-21'))