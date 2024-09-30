create table productos (
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)

insert into productos(codigo,nombre,descripcion,precio,stock)
values (1, 'Laptop', 'Laptop con pantalla de 15.6 pulgadas y 8GB RAM', 750.00, 10)
insert into productos(codigo,nombre,descripcion,precio,stock)
values (2, 'Mouse', 'Mouse inalámbrico con diseño ergonómico', 25.50, 50)
insert into productos(codigo,nombre,descripcion,precio,stock)
values (3, 'Teclado', 'Teclado mecánico con retroiluminación RGB', 45.99, 35)
insert into productos(codigo,nombre,descripcion,precio,stock)
values (4, 'Monitor', 'Monitor 24 pulgadas Full HD con puerto HDMI', 180.75, 15)
insert into productos(codigo,nombre,descripcion,precio,stock)
values (5, 'Impresora', 'Impresora multifunción con conexión WiFi', 120.00, 20)

insert into productos (codigo, nombre, precio, stock)
values (6, 'Tablet', 320.00, 25)
insert into productos (codigo, nombre, precio, stock)
values (7, 'Auriculares', 50.00, 40)
insert into productos (codigo, nombre, precio, stock)
values (8, 'Cámara Web', 75.99, 30)

insert into productos (codigo, nombre, precio, stock)
values (9, 'QR Generador', 1.99, 10)
insert into productos (codigo, nombre, precio, stock)
values (10, 'Pendrive', 2.00, 3)
insert into productos (codigo, nombre, precio, stock)
values (11, 'CD', 2.50, 8)
insert into productos (codigo, nombre, precio, stock)
values (12, 'Lapiz', 3.00, 2)

select * from productos 
where nombre like 'Q%'
select * from productos
where descripcion is null
select * from productos
where precio between '2' and '3'

update productos set stock=0
where descripcion is null

delete from productos
where descripcion is null

insert into productos(codigo,nombre,descripcion,precio,stock) 
values (21,'Jabón','Lava todo',3.50,10);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (22,'Shampoo','Savital',2.50,20);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (23,'Deja','Deja',1.50,30);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (24,'Pasta dental','Fortident',3.0,40);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (25,'Cera','Cera de piso',2.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (26,'Pan',1.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (27,'Queso',5.50,60);
insert into productos(codigo,nombre,precio,stock)
values (28,'Leche',2.50,70);
insert into productos(codigo,nombre,precio,stock)
values (29,'Jamon',1.00,120);
insert into productos(codigo,nombre,precio,stock)
values (30,'Coca Cola',3.50,300);

select * from productos
where (stock=10) and (precio<'10')
select nombre,stock from productos
where (nombre like 'M%' or nombre like '%m%')
or (descripcion like '% %')
select nombre from productos
where (descripcion is null)
or (stock=0)

--EJERCICIO DE TIPOS DE RELACIONES
create table ventas(
	id_venta int not null,
	codigo_producto int not null,
	fecha_venta date not null,
	cantidad int,
	constraint ventas_pk primary key (id_venta),
	constraint ventas_fk foreign key (codigo_producto) references productos (codigo) 
)

delete from productos

insert into productos (codigo, nombre, descripcion, precio, stock) 
values (1, 'Laptop', 'Laptop de 15 pulgadas con 16GB de RAM', 1200.00, 10);
insert into productos (codigo, nombre, descripcion, precio, stock) 
values (2, 'Teléfono', 'Teléfono inteligente con 128GB de almacenamiento', 800.50, 25);
insert into productos (codigo, nombre, descripcion, precio, stock) 
values (3, 'Tableta', 'Tableta de 10 pulgadas con stylus incluido', 300.00, 15);
insert into productos (codigo, nombre, descripcion, precio, stock) 
values (4, 'Auriculares', 'Auriculares inalámbricos con cancelación de ruido', 150.99, 50);
insert into productos (codigo, nombre, descripcion, precio, stock) 
values (5, 'Reloj inteligente', 'Reloj con monitoreo de salud y GPS', 250.75, 30);
select * from productos

insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad) 
values (1, 1, '2024-09-25', 2);  
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad) 
values (2, 2, '2024-09-26', 1); 
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad) 
values (3, 3, '2024-09-27', 3); 
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad) 
values (4, 4, '2024-09-28', 5);
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad) 
values (5, 5, '2024-09-29', 4);
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad) 
values (6, 1, '2024-09-30', 1);
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad) 
values (7, 2, '2024-10-01', 2);
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad) 
values (8, 3, '2024-10-02', 1);
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad) 
values (9, 4, '2024-10-03', 3);
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad) 
values (10, 5, '2024-10-04', 2);
select * from ventas

--EJERCICIO DE CONSULTAS Y SUBCONSULTAS
--CONSULTA: OBTENER EL NOMBRE, STOCK Y CANTIDAD DE PRODUCTOS Y VENTAS CUYO NOMBRE CONTIENE LA LETRA 'M' O LA DESCRIPCIÓN SEA IGUAL A 0
select pro.nombre, pro.stock, ven.cantidad from productos pro, ventas ven
where (pro.nombre like '%m%' and pro.descripcion is null)
--SUBCONSULTA: OBTENER EL NOMBRE Y STOCK DE LOS PRODUCTOS DONDE EL CÓDIGO DE LOS PRODUCTOS DE LAS VENTAS CORRESPONDE A UNA CANTIDAD 5
select pro.nombre, pro.stock from productos pro
where (pro.codigo = any(select codigo_producto from ventas where cantidad=5))

--EJERCICIO DE FUNCIONES DE AGREGACIÓN
--MÁXIMO PRECIO DE TODOS LOS PRODUCTOS
select max(precio)precio_maximo from productos
--SUMA TOTAL DE LA CANTIDAD DE PRODUCTOS VENDIDOS
select sum(cantidad) from ventas