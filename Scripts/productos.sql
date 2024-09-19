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