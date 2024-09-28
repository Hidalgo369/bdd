create table videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key (codigo)
)

select * from videojuegos
where nombre like 'C%'
select * from videojuegos
where valoracion between 9 and 10
select * from videojuegos
where descripcion is null

update videojuegos set descripcion='Mejor puntuado'
where valoracion>9

delete from videojuegos
where valoracion<7

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(07563, 'Call of Duty', 'juego de terror', 9);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(85421, 'Free Fire', 'juego de accion', 7);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(93475, 'Call of Clans', 'juego de terror', 10);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(15983, 'Fornite', 'juego de suspenso', 10);
insert into videojuegos(codigo, nombre, valoracion)
values(35784, 'Minecraft', 3);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(54682, 'Tom and Jerry', 'juego de comedia', 8);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(01456, 'Ajedres', 'juego de psicoligia', 6);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(70215, 'God of Ward', 'juego de aprendisaje', 7);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63240, 'Crash', 'juego de deprote', 9);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63549, 'Dragon Ball', 'juego de baile', 8);

select * from videojuegos
where (nombre like 'C%' or nombre like '%c%')
or (valoracion=7)
select * from videojuegos
where (codigo between 3 and 7)
or (valoracion=7)
select * from videojuegos
where ((valoracion>7)
and (nombre like 'C%'))
or ((valoracion>8)
and (nombre like 'D%'))

create table plataformas(
	id_plataforma int not null,
	nombre_plataforma varchar(50) not null,
	codigo_videojuego int not null,
	constraint plataformas_pk primary key (id_plataforma),
	constraint plataformas_fk foreign key (codigo_videojuego) references videojuegos(codigo)
)

insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego) 
values (10, 'PlayStation 5', 1);
insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego) 
values (20, 'Xbox Series X', 2);  
insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego) 
values (30, 'Nintendo Switch', 3); 
insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego) 
values (40, 'PC', 4); 
insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego) 
values (50, 'Xbox One', 5); 
select * from plataformas

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