create table videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key (codigo)
)

insert into videojuegos (codigo, nombre, descripcion, valoracion) 
values (1, 'The Legend of Zelda: Breath of the Wild', 'Juego de aventura y exploración en un mundo abierto', 10)
insert into videojuegos (codigo, nombre, descripcion, valoracion) 
values (2, 'God of War', 'Juego de acción con una narrativa épica basada en la mitología nórdica', 9)
insert into videojuegos (codigo, nombre, descripcion, valoracion) 
values (3, 'Red Dead Redemption 2', 'Juego de mundo abierto en el viejo oeste con una historia inmersiva', 10)
insert into videojuegos (codigo, nombre, descripcion, valoracion) 
values (4, 'The Witcher 3: Wild Hunt', 'Juego de rol en tercera persona basado en el universo de Geralt de Rivia', 9)
insert into videojuegos (codigo, nombre, descripcion, valoracion) 
values (5, 'Minecraft', 'Juego de construcción y supervivencia con infinitas posibilidades creativas', 8)

select * from videojuegos
