CREATE DATABASE almacen;
USE almacen;

create table almacen_table(
    id_almacen int not null ,
    ciudad_almacen varchar(50) not null,
    capacidad_almacen int not null,
    primary key(id_almacen)
);

CREATE TABLE caja_table(
    id_caja VARCHAR(50) NOT NULL,
    id_almacen int not null,
    contenido_caja varchar(50) not null,
    valor_caja int not null,
    primary key(id_caja),
    foreign key(id_almacen) references almacen_table(id_almacen)
);

--insert data

INSERT INTO almacen_table(id_almacen, ciudad_almacen, capacidad_almacen) 
VALUES(1, 'CDMX', 15),
        (2, 'Bilbao', 40),
        (3, 'Madrid', 80),
        (4, 'Monterrey', 70),
        (5, 'Merida', 10);

INSERT INTO caja_table(id_caja, id_almacen, contenido_caja, valor_caja)
VALUES("2109022", 1, 'Caja de herramientas', 1000),
    ("2109023",1, 'Caja de zapatos', 4000),
    ("2109024",1, 'Caja de juguetes', 1000),
    ("2109025",1, 'Caja de libros', 100),
    ("2109026",1, 'Caja de ropa', 1500),
    ("2109027",1, 'Caja de papel', 200),
    ("2109028",1, 'Caja de papel', 400),
    ("2109029",1, 'Caja de libros', 800),
    ("2109030",1, 'Caja de dulces', 2000),
    ("2109031",1, 'Caja de libretas', 3000);
INSERT INTO caja_table(id_caja, id_almacen, contenido_caja, valor_caja)
    VALUES
    ("2109032",1, 'Caja de lapices', 200),
    ("2109033",1, 'Caja de focos', 5000),
    ("2109034",1, 'Caja de ropa', 100),
    ("2109035",2, 'Caja de juguetes', 1000),
    ("2109036",2, 'Caja de libros', 1000),
    ("2109037",2, 'Caja de ropa', 1600),
    ("2109038",2, 'Caja de papel', 1000),
    ("2109039",2, 'Caja de papel', 1000),
    ("2109040",2, 'Caja de libros', 1000),
    ("2109041",2, 'Caja de dulces', 1000),
    ("2109042",2, 'Caja de libretas', 1000),
    ("2109043",2, 'Caja de lapices', 2500),
    ("2109044",2, 'Caja de focos', 1000),
    ("2109045",2, 'Caja de ropa', 100),
    ("2109046", 3, 'Caja de herramientas', 1000),
    ("2109047",3, 'Caja de zapatos', 4000),
    ("2109048",3, 'Caja de juguetes', 1000),
    ("2109049",3, 'Caja de libros', 1000),
    ("2109050",3, 'Caja de ropa', 1000),
    ("2109051",3, 'Caja de papel', 1000),
    ("2109052",3, 'Caja de papel', 3500),
    ("2109053",3, 'Caja de libros', 1000),
    ("2109054",3, 'Caja de dulces', 479),
    ("2109055",3, 'Caja de libretas', 1000),
    ("2109056",3, 'Caja de lapices', 1000),
    ("2109057",3, 'Caja de focos', 1000),
    ("2109058",3, 'Caja de ropa', 100),
    ("2109059", 4, 'Caja de herramientas', 1000),
    ("2109060",4, 'Caja de zapatos', 4000),
    ("2109061",4, 'Caja de juguetes', 1000),
    ("2109062",4, 'Caja de libros', 1000),
    ("2109063",4, 'Caja de ropa', 600),
    ("2109064",4, 'Caja de papel', 1000),
    ("2109065",4, 'Caja de papel', 1000),
    ("2109066",4, 'Caja de libros', 6000),
    ("2109067",4, 'Caja de dulces', 1000),
    ("2109068",4, 'Caja de libretas', 500),
    ("2109069",4, 'Caja de lapices', 1000),
    ("2109070",4, 'Caja de focos', 600),
    ("2109071",4, 'Caja de ropa', 100),
    ("2109072", 5, 'Caja de herramientas', 1000),
    ("2109073",5, 'Caja de zapatos', 4000),
    ("2109074",5, 'Caja de juguetes', 1000),
    ("2109075",5, 'Caja de libros', 1700),
    ("2109076",5, 'Caja de ropa', 1000),
    ("2109077",5, 'Caja de papel', 1000),
    ("2109078",5, 'Caja de papel', 1400),
    ("2109079",5, 'Caja de libros', 1000),
    ("2109080",5, 'Caja de dulces', 100),
    ("2109081",5, 'Caja de libretas', 1000),
    ("2109082",5, 'Caja de lapices', 1600),
    ("2109083",5, 'Caja de focos', 1100),
    ("2109084",5, 'Caja de ropa', 100);
INSERT INTO caja_table(id_caja, id_almacen, contenido_caja, valor_caja)
VALUES
("2109085",5, 'Caja de ropa', 100),
("2109086",5, 'Caja de ropa', 100),
("2109087",5, 'Caja de ropa', 100),
("2109088",5, 'Caja de ropa', 100),
("2109089",5, 'Caja de ropa', 100),
("2109090",5, 'Caja de ropa', 100),
("2109091",5, 'Caja de ropa', 100),
("2109092",5, 'Caja de ropa', 100),
("2109093",5, 'Caja de ropa', 100),
("2109094",5, 'Caja de ropa', 100);



    