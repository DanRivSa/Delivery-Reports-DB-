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
INSERT INTO calle(c_calle,c_mun,c_es,nombre) VALUES(22,22,11,'Santa Isabel');
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

--10-) Tasty Urban Food
DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into proveedor values (10,EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('Tasty'),datos_basicos.Validar_correo('TastyUrbanFoodDeliVE@gmail.com'))) RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '10.PNG';
    V_BFILE := BFILENAME('OBJETOS_PROV',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END; 

--11-) Dulcear
DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into proveedor values (11,EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('Dulcear'),datos_basicos.Validar_correo('DulcearDeli@gmail.com'))) RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '11.PNG';
    V_BFILE := BFILENAME('OBJETOS_PROV',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END; 

--12-) Yolopido
DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into proveedor values (12,EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('Yolopido'),datos_basicos.Validar_correo('yolopidodelivery@gmail.com'))) RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '12.PNG';
    V_BFILE := BFILENAME('OBJETOS_PROV',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END; 

--13-) Chops 
DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into proveedor values (13,EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('Chops'),datos_basicos.Validar_correo('PidePorChops@outlook.com'))) RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '13.PNG';
    V_BFILE := BFILENAME('OBJETOS_PROV',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END; 

--14-) ego
DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into proveedor values (14,EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('Ego'),datos_basicos.Validar_correo('pideE.go.delivery@gmail.com'))) RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '14.PNG';
    V_BFILE := BFILENAME('OBJETOS_PROV',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END; 

--15-) Alpelo
DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into proveedor values (15,EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('Alpelo'),datos_basicos.Validar_correo('AlpeloDelivery@gmail.com'))) RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '15.PNG';
    V_BFILE := BFILENAME('OBJETOS_PROV',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END; 

--SEDES (id_sede,id_proveedor,codigo_calle,codigo_mun,codigo_etado,datos_lugar(latitud,longitud))

INSERT INTO sede VALUES(1,1,46,46,24,datos_lugar(10.503803783039288, -66.91301088313686));
INSERT INTO sede VALUES(2,2,41,41,21,datos_lugar(10.606574358624325, -66.89310991331958));
INSERT INTO sede VALUES(3,3,24,24,12,datos_lugar(10.483592806645829, -66.86249388463321));
INSERT INTO sede VALUES(4,4,9,9,5,datos_lugar(8.639390116406446, -70.23697040887312));
INSERT INTO sede VALUES(5,5,7,7,4,datos_lugar(10.217574082939784, -67.58319399603586));
INSERT INTO sede VALUES(6,6,23,23,12,datos_lugar(10.494217364279695, -66.83182368672415));
INSERT INTO sede VALUES(7,7,32,32,16,datos_lugar(9.78897192116622, -69.79649129641336));
INSERT INTO sede VALUES(8,8,24,24,12,datos_lugar(10.481338970081348, -66.85745024302766));
INSERT INTO sede VALUES(9,9,21,21,11,datos_lugar(10.979059724040459, -63.851900743823656));
INSERT INTO sede VALUES(10,10,22,22,11,datos_lugar(11.040840273051652, -63.86652786090288));
INSERT INTO sede VALUES(11,11,30,30,15,datos_lugar(9.39155767251942, -67.0680403524636));
INSERT INTO sede VALUES(12,12,10,10,5,datos_lugar(8.61239869381816, -70.24925140333863));
INSERT INTO sede VALUES(13,13,11,11,6,datos_lugar(7.348452883315159, -61.8254274051886));
INSERT INTO sede VALUES(14,14,35,35,18,datos_lugar(10.473694892845984, -64.1778683609983));
INSERT INTO sede VALUES(15,15,13,13,7,datos_lugar(10.12060918672306, -68.04428557370942));


--UNIDADES -> (id_unidad,id_sede,id_prov,calle,mun,estado,datos_lugar(latitud,longitud),tipo_unidad,estado_unidad,velocidad_promedio)
INSERT INTO unidad VALUES (1,1,1,46,46,24,datos_lugar(10.503803783039288, -66.91301088313686),'camioneta','v',80);
INSERT INTO unidad VALUES (2,1,1,46,46,24,datos_lugar(10.503803783039288, -66.91301088313686),'moto','v',43);
INSERT INTO unidad VALUES (3,1,1,46,46,24,datos_lugar(10.503803783039288, -66.91301088313686),'bicicleta','v',15);
INSERT INTO unidad VALUES (4,2,2,41,41,21,datos_lugar(10.606574358624325, -66.89310991331958),'camioneta','v',80);
INSERT INTO unidad VALUES (5,2,2,41,41,21,datos_lugar(10.606574358624325, -66.89310991331958),'moto','v',43);
INSERT INTO unidad VALUES (6,2,2,41,41,21,datos_lugar(10.606574358624325, -66.89310991331958),'bicicleta','v',15);
INSERT INTO unidad VALUES (7,3,3,24,24,12,datos_lugar(10.483592806645829, -66.86249388463321),'camioneta','v',80);
INSERT INTO unidad VALUES (8,3,3,24,24,12,datos_lugar(10.483592806645829, -66.86249388463321),'moto','v',43);
INSERT INTO unidad VALUES (9,3,3,24,24,12,datos_lugar(10.483592806645829, -66.86249388463321),'bicicleta','v',15);
INSERT INTO unidad VALUES (10,4,4,9,9,5,datos_lugar(8.639390116406446, -70.23697040887312),'camioneta','v',80);
INSERT INTO unidad VALUES (11,4,4,9,9,5,datos_lugar(8.639390116406446, -70.23697040887312),'moto','v',43);
INSERT INTO unidad VALUES (12,4,4,9,9,5,datos_lugar(8.639390116406446, -70.23697040887312),'bicicleta','v',15);
INSERT INTO unidad VALUES (13,5,5,7,7,4,datos_lugar(10.217574082939784, -67.58319399603586),'camioneta','v',80);
INSERT INTO unidad VALUES (14,5,5,7,7,4,datos_lugar(10.217574082939784, -67.58319399603586),'moto','v',43);
INSERT INTO unidad VALUES (15,5,5,7,7,4,datos_lugar(10.217574082939784, -67.58319399603586),'bicicleta','v',15);
INSERT INTO unidad VALUES (16,6,6,23,23,12,datos_lugar(10.494217364279695, -66.83182368672415),'camioneta','v',80);
INSERT INTO unidad VALUES (17,6,6,23,23,12,datos_lugar(10.494217364279695, -66.83182368672415),'moto','v',43);
INSERT INTO unidad VALUES (18,6,6,23,23,12,datos_lugar(10.494217364279695, -66.83182368672415),'bicicleta','v',15);
INSERT INTO unidad VALUES (19,7,7,32,32,16,datos_lugar(9.78897192116622, -69.79649129641336),'camioneta','v',80);
INSERT INTO unidad VALUES (20,7,7,32,32,16,datos_lugar(9.78897192116622, -69.79649129641336),'moto','v',43);
INSERT INTO unidad VALUES (21,7,7,32,32,16,datos_lugar(9.78897192116622, -69.79649129641336),'bicicleta','v',15);
INSERT INTO unidad VALUES (22,8,8,24,24,12,datos_lugar(10.481338970081348, -66.85745024302766),'camioneta','v',80);
INSERT INTO unidad VALUES (23,8,8,24,24,12,datos_lugar(10.481338970081348, -66.85745024302766),'moto','v',43);
INSERT INTO unidad VALUES (24,8,8,24,24,12,datos_lugar(10.481338970081348, -66.85745024302766),'bicicleta','v',15);
INSERT INTO unidad VALUES (25,9,9,21,21,11,datos_lugar(10.979059724040459, -63.851900743823656),'camioneta','v',80);
INSERT INTO unidad VALUES (26,9,9,21,21,11,datos_lugar(10.979059724040459, -63.851900743823656),'moto','v',43);
INSERT INTO unidad VALUES (27,9,9,21,21,11,datos_lugar(10.979059724040459, -63.851900743823656),'bicicleta','v',15);
INSERT INTO unidad VALUES (28,10,10,22,22,11,datos_lugar(11.040840273051652, -63.86652786090288),'camioneta','v',80);
INSERT INTO unidad VALUES (29,10,10,22,22,11,datos_lugar(11.040840273051652, -63.86652786090288),'moto','v',43);
INSERT INTO unidad VALUES (30,10,10,22,22,11,datos_lugar(11.040840273051652, -63.86652786090288),'bicicleta','v',15);
INSERT INTO unidad VALUES (31,11,11,30,30,15,datos_lugar(9.39155767251942, -67.0680403524636),'camioneta','v',80);
INSERT INTO unidad VALUES (32,11,11,30,30,15,datos_lugar(9.39155767251942, -67.0680403524636),'moto','v',43);
INSERT INTO unidad VALUES (33,11,11,30,30,15,datos_lugar(9.39155767251942, -67.0680403524636),'bicicleta','v',15);
INSERT INTO unidad VALUES (34,12,12,10,10,5,datos_lugar(8.61239869381816, -70.24925140333863),'camioneta','v',80);
INSERT INTO unidad VALUES (35,12,12,10,10,5,datos_lugar(8.61239869381816, -70.24925140333863),'moto','v',43);
INSERT INTO unidad VALUES (36,12,12,10,10,5,datos_lugar(8.61239869381816, -70.24925140333863),'bicicleta','v',15);
INSERT INTO unidad VALUES (37,13,13,11,11,6,datos_lugar(7.348452883315159, -61.8254274051886),'camioneta','v',80);
INSERT INTO unidad VALUES (38,13,13,11,11,6,datos_lugar(7.348452883315159, -61.8254274051886),'moto','v',43);
INSERT INTO unidad VALUES (39,13,13,11,11,6,datos_lugar(7.348452883315159, -61.8254274051886),'bicicleta','v',15);
INSERT INTO unidad VALUES (40,14,14,35,35,18,datos_lugar(10.473694892845984, -64.1778683609983),'camioneta','v',80);
INSERT INTO unidad VALUES (41,14,14,35,35,18,datos_lugar(10.473694892845984, -64.1778683609983),'moto','v',43);
INSERT INTO unidad VALUES (42,14,14,35,35,18,datos_lugar(10.473694892845984, -64.1778683609983),'bicicleta','v',15);
INSERT INTO unidad VALUES (43,15,15,13,13,7,datos_lugar(10.12060918672306, -68.04428557370942),'camioneta','v',80);
INSERT INTO unidad VALUES (44,15,15,13,13,7,datos_lugar(10.12060918672306, -68.04428557370942),'moto','v',43);
INSERT INTO unidad VALUES (45,15,15,13,13,7,datos_lugar(10.12060918672306, -68.04428557370942),'bicicleta','v',15);
