--ESTADOS
INSERT INTO estado (codigo_estado,nombre) VALUES(9,'Falcón');
INSERT INTO estado (codigo_estado,nombre) VALUES(10,'Merida');
INSERT INTO estado (codigo_estado,nombre) VALUES(11,'Nueva Esparta');
INSERT INTO estado (codigo_estado,nombre) VALUES(12,'Miranda');
INSERT INTO estado (codigo_estado,nombre) VALUES(13,'Monagas');
INSERT INTO estado (codigo_estado,nombre) VALUES(14,'Delta Amacuro');
INSERT INTO estado (codigo_estado,nombre) VALUES(15,'Guarico');
INSERT INTO estado (codigo_estado,nombre) VALUES(16,'Lara');

--MUNICIPIOS
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (17,9,'San Juan de los Cayos');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (18,9,'San Luis');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (19,10,'Alberto Adriani');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (20,10,'Tovar');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (21,11,'Tubores');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (22,11,'Arismendi');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (23,12,'Chacao');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (24,12,'Baruta');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (25,13,'Acosta');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (26,13,'Sotillo');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (27,14,'Antonio Dias');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (28,14,'Perdenales');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (29,15,'Las Mercedes');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (30,15,'El Sombrero');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (31,16,'Sanare');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (32,16,'El Tocuyo');

--CALLES
INSERT INTO calle(c_calle,c_mun,c_es,nombre) VALUES(17,17,9,'Bolivar');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) VALUES(18,18,9,'Florida');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) VALUES(19,19,10,'Capilla Quitaragua');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) VALUES(20,20,10,'La Pedregoza');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) VALUES(21,21,11,'Juan Bautista Arismendi');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) VALUES(22,22,11,'15 de Julio');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) VALUES(23,23,12,'Av. Francisco de Miranda');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) VALUES(24,24,12,'Paris');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) VALUES(25,25,13,'San Antonio de Capayaguar');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) VALUES(26,26,13,'El Triunfo');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) VALUES(27,27,14,'Cuariapio');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) VALUES(28,28,14,'Capure');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) VALUES(29,29,15,'La Rochela');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) VALUES(30,30,15,'Simon Bolivar');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) VALUES(31,31,16,'La Fe');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) VALUES(32,32,16,'Fraternidad');

--PROVEEDORES

--1-) Yummy
DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into proveedor values (1,EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('Yummy'),datos_basicos.Validar_correo('PideYummy@gmail.com'))) RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '1.JPG';
    V_BFILE := BFILENAME('OBJETOS_PROV',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;   

--2-) Traetelo
DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into proveedor values (2,EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('Traetelo'),datos_basicos.Validar_correo('Traetelo_delivery@gmail.com'))) RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '2.PNG';
    V_BFILE := BFILENAME('OBJETOS_PROV',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;   

--3-) Ubii go
DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into proveedor values (3,EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('Ubii Go'),datos_basicos.Validar_correo('Ubii2godelivery@gmail.com'))) RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '3.PNG';
    V_BFILE := BFILENAME('OBJETOS_PROV',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END; 

--4-) Pedidos ya
DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into proveedor values (4,EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('Pedidos Ya'),datos_basicos.Validar_correo('PedidosYa@outlook.com'))) RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '4.PNG';
    V_BFILE := BFILENAME('OBJETOS_PROV',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END; 

--5-) Delivery Food
DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into proveedor values (5,EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('Delivery Food VE'),datos_basicos.Validar_correo('deliveryFood.VE@gmail.com'))) RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '5.PNG';
    V_BFILE := BFILENAME('OBJETOS_PROV',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END; 

--6-) Kooma delivery
DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into proveedor values (6,EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('Kooma'),datos_basicos.Validar_correo('Servicio_Kooma@gmail.com'))) RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '6.PNG';
    V_BFILE := BFILENAME('OBJETOS_PROV',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END; 

--7-) ke pido
DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into proveedor values (7,EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('Ke pido'),datos_basicos.Validar_correo('KePido.VE@gmail.com'))) RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '7.PNG';
    V_BFILE := BFILENAME('OBJETOS_PROV',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END; 

--8-) Food solutions
DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into proveedor values (8,EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('Food Solution'),datos_basicos.Validar_correo('FoodSolutionDeli@gmail.com'))) RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '8.PNG';
    V_BFILE := BFILENAME('OBJETOS_PROV',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END; 

--9-) Fat Panda VE
DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into proveedor values (9,EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('Fat Panda'),datos_basicos.Validar_correo('FatPandaDeliVE@gmail.com'))) RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '9.PNG';
    V_BFILE := BFILENAME('OBJETOS_PROV',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END; 

--9-) Tasty Urban Food
DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into proveedor values (9,EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('Tasty'),datos_basicos.Validar_correo('TastyUrbanFoodDeliVE@gmail.com'))) RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '9.PNG';
    V_BFILE := BFILENAME('OBJETOS_PROV',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END; 

--10-) Dulcear
DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into proveedor values (10,EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('Dulcear'),datos_basicos.Validar_correo('DulcearDeli@gmail.com'))) RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '10.PNG';
    V_BFILE := BFILENAME('OBJETOS_PROV',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END; 

--11-) Yolopido
DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into proveedor values (11,EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('Yolopido'),datos_basicos.Validar_correo('yolopidodelivery@gmail.com'))) RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '11.PNG';
    V_BFILE := BFILENAME('OBJETOS_PROV',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END; 

--12-) Chops 
DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into proveedor values (12,EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('Chops'),datos_basicos.Validar_correo('PidePorChops@outlook.com'))) RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '12.PNG';
    V_BFILE := BFILENAME('OBJETOS_PROV',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END; 

--13-) ego
DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into proveedor values (13,EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('E.go'),datos_basicos.Validar_correo('pideE.go.delivery@gmail.com'))) RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '13.PNG';
    V_BFILE := BFILENAME('OBJETOS_PROV',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END; 

--14-) Alpelo
DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into proveedor values (14,EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('Alpelo'),datos_basicos.Validar_correo('AlpeloDelivery@gmail.com'))) RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '14.PNG';
    V_BFILE := BFILENAME('OBJETOS_PROV',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END; 

--SEDES (id_sede,id_proveedor,codigo_calle,codigo_mun,codigo_etado,datos_lugar(latitud,longitud))

--yummy
INSERT INTO sede VALUES(1,1,46,46,24,datos_lugar(10.503803783039288, -66.91301088313686));
INSERT INTO sede VALUES(2,1,41,41,21,datos_lugar(10.606574358624325, -66.89310991331958));
INSERT INTO sede VALUES(3,1,24,24,12,datos_lugar(10.483592806645829, -66.86249388463321));

--traetelo
INSERT INTO sede VALUES(4,2,9,9,5,datos_lugar(8.639390116406446, -70.23697040887312));
INSERT INTO sede VALUES(5,2,7,7,4,datos_lugar(10.217574082939784, -67.58319399603586));
INSERT INTO sede VALUES(6,2,23,23,12,datos_lugar(10.494217364279695, -66.83182368672415));

--ubii go
INSERT INTO sede VALUES(6,2,23,23,12,datos_lugar(10.494217364279695, -66.83182368672415));

--kooma
INSERT INTO sede VALUES(6,2,23,23,12,datos_lugar(10.494217364279695, -66.83182368672415));

--yolopido
INSERT INTO sede VALUES(6,2,23,23,12,datos_lugar(10.494217364279695, -66.83182368672415));

--ke pido
INSERT INTO sede VALUES(6,2,23,23,12,datos_lugar(10.494217364279695, -66.83182368672415));

--pedidos ya
INSERT INTO sede VALUES(6,2,23,23,12,datos_lugar(10.494217364279695, -66.83182368672415));

--delivery food
INSERT INTO sede VALUES(6,2,23,23,12,datos_lugar(10.494217364279695, -66.83182368672415));

--dulcear
INSERT INTO sede VALUES(6,2,23,23,12,datos_lugar(10.494217364279695, -66.83182368672415));

--food solution
INSERT INTO sede VALUES(6,2,23,23,12,datos_lugar(10.494217364279695, -66.83182368672415));

-- Al pelo

--fat panda

--tasty

--
--UNIDADES 

