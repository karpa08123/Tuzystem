/* Tabla Producto */
create table prod(
id number(8) PRIMARY KEY,
marca nvarchar2(50) not null,
modelo nvarchar2(50) not null,
talla nvarchar2(4) not null,
inv number(4) default 0 not null,
price number(5) default 0 not null,
imagen BFILE null
);

/* Tabla usuario */
create table usr(
id number(8) PRIMARY KEY,
nick nvarchar2(20) not null,
nom nvarchar2(50) not null,
apell nvarchar2(50) not null,
mail nvarchar2(50) not null,
pwd nvarchar2(50) not null,
ubi nvarchar2(80) not null
);

/* Tabla venta */
create table venta(
id number(8) PRIMARY KEY,
idStock number(8),
idUsr number(8),
art nvarchar2(80),
monto number(5),

constraint fkProd foreign key (idStock) references prod(id),
constraint fkUsr foreign key (idUsr) references usr(id)
);