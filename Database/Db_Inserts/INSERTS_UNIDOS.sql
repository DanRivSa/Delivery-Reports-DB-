--ESTADOS

INSERT INTO estado(codigo_estado,nombre) VALUES (1,'Amazonas');
INSERT INTO estado(codigo_estado,nombre) VALUES (2,'Anzoategui');
INSERT INTO estado(codigo_estado,nombre) VALUES (3,'Apure');
INSERT INTO estado(codigo_estado,nombre) VALUES (4,'Aragua');
INSERT INTO estado(codigo_estado,nombre) VALUES (5,'Barinas');
INSERT INTO estado(codigo_estado,nombre) VALUES (6,'Bolivar');
INSERT INTO estado(codigo_estado,nombre) VALUES (7,'Carabobo');
INSERT INTO estado(codigo_estado,nombre) VALUES (8,'Cojedes');
INSERT INTO estado (codigo_estado,nombre) VALUES(9,'Falcón');
INSERT INTO estado (codigo_estado,nombre) VALUES(10,'Merida');
INSERT INTO estado (codigo_estado,nombre) VALUES(11,'Nueva Esparta');
INSERT INTO estado (codigo_estado,nombre) VALUES(12,'Miranda');
INSERT INTO estado (codigo_estado,nombre) VALUES(13,'Monagas');
INSERT INTO estado (codigo_estado,nombre) VALUES(14,'Delta Amacuro');
INSERT INTO estado (codigo_estado,nombre) VALUES(15,'Guarico');
INSERT INTO estado (codigo_estado,nombre) VALUES(16,'Lara');
INSERT INTO estado(codigo_estado,nombre) VALUES (17,'Portuguesa');
INSERT INTO estado(codigo_estado,nombre) VALUES (18,'Sucre');
INSERT INTO estado(codigo_estado,nombre) VALUES (19,'Tachira');
INSERT INTO estado(codigo_estado,nombre) VALUES (20,'Trujillo');
INSERT INTO estado(codigo_estado,nombre) VALUES (21,'La Guaira');
INSERT INTO estado(codigo_estado,nombre) VALUES (22,'Yaracuy');
INSERT INTO estado(codigo_estado,nombre) VALUES (23,'Zulia');
INSERT INTO estado(codigo_estado,nombre) VALUES (24,'Distrito Capital');


--MUNICIPIOS

INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (1,1,'Maroa');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (2,1,'Autana');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (3,2,'Anaco');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (4,2,'Fernando Penalver');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (5,3,'San Fernando');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (6,3,'Munoz');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (7,4,'Girardot');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (8,4,'Camatagua');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (9,5,'Barinas');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (10,5,'Arismendi');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (11,6,'El Callao');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (12,6,'Heres');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (13,7,'Valencia');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (14,7,'Guacara');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (15,8,'Ricaurte');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (16,8,'Ezequiel Zamora');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (17,9,'SanJuandelosCayos');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (18,9,'San Luis');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (19,10,'Alberto Adriani');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (20,10,'Tovar');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (21,11,'Tubores');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (22,11,'Arismendi 2');
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
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (33,17,'Araure');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (34,17,'Guanare');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (35,18,'Bolivar');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (36,18,'Arismendi 3');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (37,19,'Independencia');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (38,19,'Panamericano');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (39,20,'Bocono');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (40,20,'La Ceiba');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (41,21,'Vargas');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (42,22,'Nirgua');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (43,22,'San Felipe');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (44,23,'Maracaibo');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (45,23,'Guajira');
INSERT INTO municipio(codigo_municipio,codigo_estado,nombre) 
VALUES (46,24,'Libertador');


--CALLES

INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (1,1,1,'Yavita');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (2,2,1,'Aguerrevere');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (3,3,2,'Sucre');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (4,4,2,'Real');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (5,5,3,'Boyaca');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (6,6,3,'Bolivar');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (7,7,4,'Bermudez');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (8,8,4,'Carmen de Cura');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (9,9,5,'Ambulatorio');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (10,10,5,'berna');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (11,11,6,'Liccione');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (12,12,6,'Guarapiche');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (13,13,7,'Los Claveles');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (14,14,7,'Calle 142');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (15,15,8,'Independencia');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (16,16,8,'La Yaguara ');
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
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (33,33,17,'Vencedores de Araure');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (34,34,17,'Calle 17');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (35,35,18,'Mariguitar');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (36,36,18,'Rio Caribe');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (37,37,19,'Capacho');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (38,38,19,'Coloncito');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (39,39,20,'Avenida 23');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (40,40,20,'Santa Apolonia');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (41,41,21,'Macuto');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (42,42,22,'Nirgua');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (43,43,22,'Avenida Libertador');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (44,44,23,'Santa Lucia');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (45,45,23,'La Rita');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (46,46,24,'Avenida Universidad');



--Aliados Comerciales

 --   1)CHURRO MANIA--A

DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into aliado_comercial values (1,'A',EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('churromania'),datos_basicos.Validar_correo('churromania@hotmail.com')),'Churro Mania') RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '1.JPG';
    V_BFILE := BFILENAME('OBJETOS_ALI',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;        

 --   2)KFC--A

DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into aliado_comercial values (2,'A',EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('KFC'),datos_basicos.Validar_correo('kfc@hotmail.com')),'Kentucky Fried Chicken') RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '2.JPG';
    V_BFILE := BFILENAME('OBJETOS_ALI',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;

 --   3)MAXI DONAS--A

DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into aliado_comercial values (3,'A',EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('Maxidonas'),datos_basicos.Validar_correo('maxidonas@hotmail.com')),'Maxi Donas') RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '3.JPG';
    V_BFILE := BFILENAME('OBJETOS_ALI',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;

--    4)DECOFRUTA--A

 DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into aliado_comercial values (4,'A',EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('decofruta'),datos_basicos.Validar_correo('decofruta@hotmail.com')),'Deco Fruta') RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '4.JPG';
    V_BFILE := BFILENAME('OBJETOS_ALI',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;     

--    5)FRESH FISH--A
       
DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into aliado_comercial values (5,'A',EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('freshfish'),datos_basicos.Validar_correo('freshfish@hotmail.com')),'Fresh Fish') RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '5.JPG';
    V_BFILE := BFILENAME('OBJETOS_ALI',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;

--    6)BALU --R

DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into aliado_comercial values (6,'R',EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('balushop'),datos_basicos.Validar_correo('balushop@hotmail.com')),'Churro Mania') RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '6.JPG';
    V_BFILE := BFILENAME('OBJETOS_ALI',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;

--    7)XINFONI --R

DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into aliado_comercial values (7,'R',EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('xinfoni'),datos_basicos.Validar_correo('xinfoni@hotmail.com')),'Xinfoni Venezuela') RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '7.JPG';
    V_BFILE := BFILENAME('OBJETOS_ALI',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;

--    8)AISHOP --R

DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into aliado_comercial values (8,'R',EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('Aishop'),datos_basicos.Validar_correo('aishop@hotmail.com')),'Aishop Venezuela') RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '8.JPG';
    V_BFILE := BFILENAME('OBJETOS_ALI',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;

--    9)VESTIMENTA --R

DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into aliado_comercial values (9,'R',EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('vestimentazla'),datos_basicos.Validar_correo('vestimentavzla@hotmail.com')),'Vestimenta Venezuela') RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '9.JPG';
    V_BFILE := BFILENAME('OBJETOS_ALI',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;

--    10)TGI FRIDAYS

DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into aliado_comercial values (10,'A',EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('fridays'),datos_basicos.Validar_correo('tgifridays@hotmail.com')),'TGI Fridays') RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '10.JPG';
    V_BFILE := BFILENAME('OBJETOS_ALI',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;

--    11)ISTORE --T

DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into aliado_comercial values (11,'T',EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('istorevzla'),datos_basicos.Validar_correo('istorevzla@hotmail.com')),'I Store Venezuela') RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '11.JPG';
    V_BFILE := BFILENAME('OBJETOS_ALI',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;

--   12)FARMATODO --F

DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into aliado_comercial values (12,'F',EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('farmatodovzla'),datos_basicos.Validar_correo('farmatodovzla@hotmail.com')),'Faramatodo') RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '12.JPG';
    V_BFILE := BFILENAME('OBJETOS_ALI',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;

--   13)FARMACIAS SAAS -F

DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into aliado_comercial values (13,'F',EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('farmasaas'),datos_basicos.Validar_correo('farmasaas@hotmail.com')),'Farmacias Saas') RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '13.JPG';
    V_BFILE := BFILENAME('OBJETOS_ALI',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;

--    14)LOCATEL --F
DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into aliado_comercial values (14,'F',EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('locatel'),datos_basicos.Validar_correo('locatel@hotmail.com')),'Locatel') RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '14.JPG';
    V_BFILE := BFILENAME('OBJETOS_ALI',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;


--    15)KABUKI SUSHI SALAD

DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into aliado_comercial values (15,'A',EMPTY_BLOB(), datos_basicos(datos_basicos.Validar_nombre('kabukisalad'),datos_basicos.Validar_correo('kabukisalad@hotmail.com')),'Kabuki Sushi Salad') RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '15.JPG';
    V_BFILE := BFILENAME('OBJETOS_ALI',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;




--SUCURSALES

--  1)CHURRO MANIA--A
INSERT INTO sucursal values (1,1,23,23,12,datos_lugar(10.493297557718028, -66.85377252751138));

--  2)KFC--A
INSERT INTO sucursal values (2,2,36,36,18,datos_lugar(10.700697350745683, -63.11614396341646));
INSERT INTO sucursal values (16,2,30,30,15,datos_lugar(19.39155767251942, -67.0680403524636));

--  3)MAXI DONAS--A
INSERT INTO sucursal values (3,3,13,13,7,datos_lugar(10.251445508323604, -68.01048875831086));

--  4)DECOFRUTA--A
INSERT INTO sucursal values (4,4,9,9,5,datos_lugar(8.639878042644671, -70.23665927244446));

--  5)FRESH FISH--A
INSERT INTO sucursal values (5,5,41,41,21,datos_lugar(10.610133452786187, -66.88976251642262));

--  6)BALU --R
INSERT INTO sucursal values (6,6,46,46,24,datos_lugar(10.50391982257464, -66.91287140809193));

--  7)XINFONI --R
INSERT INTO sucursal values (7,7,44,44,23,datos_lugar(10.648767671776183, -71.60410506281089));

--  8)AISHOP --R
INSERT INTO sucursal values (8,8,31,31,16,datos_lugar(9.743139701110392, -69.65762449892145));

--  9)VESTIMENTA --R
INSERT INTO sucursal values (9,9,43,43,22,datos_lugar(10.386506164930617, -68.67937491346098));

--  10)TGI FRIDAYS
INSERT INTO sucursal values (10,10,25,25,13,datos_lugar(10.120357838473504, -63.72499379934603));

--  11)ISTORE --T
INSERT INTO sucursal values (11,11,22,22,11,datos_lugar(11.029955199184782, -63.84202244847819));

--  12)FARMATODO --F
INSERT INTO sucursal values (12,12,18,18,9,datos_lugar(11.111364909161194, -69.70827192941422));

--  13)FARMACIAS SAAS -F
INSERT INTO sucursal values (13,13,7,7,4,datos_lugar(10.22039683531245,-67.59855824558446));
INSERT INTO sucursal values (17,13,11,11,6,datos_lugar(7.348452883315159, -61.8254274051886));

--  14)LOCATEL --F
INSERT INTO sucursal values (14,14,15,15,8,datos_lugar(9.336514145011499, -68.65255944874751));

--  15)KABUKI SUSHI SALAD
INSERT INTO sucursal values (15,15,37,37,19,datos_lugar(7.822324715149693, -72.30934620184321));





-- CHURROMANIA
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (1,1,5,'Crispy Mania');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (2,1,4,'Twist Mania');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (3,1,5,'Churrocream');


-- KFC
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (4,2,7,'Bigbox meal');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (5,2,8,'Parte y comparte 5pz');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (6,2,8,'hamburguesa');


--  MAXI DONAS
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (7,3,2,'Donas rellenas');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (8,3,3,'Rosca premium');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (9,3,3,'Donas premium');


-- DECOFRUTA
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (10,4,2,'Deco bombom fresa');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (11,4,3,'Decopink');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (12,4,3,'Decoamor');


-- Fresh Fish
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (13,5,7,'Hamburguesa triple');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (14,5,14,'Bonadeo');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (15,5,9,'Analitiroll');

-- Balu
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (16,6,20,'Sweater Rojo Hombre');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (17,6,15,'Falda Puntos');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (18,6,15,'Pantalon negro Dama');

-- Xinfoni
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (19,7,10,'Crop top dama');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (20,7,10,'Blusa dama');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (21,7,35,'Bleizer Dama');

-- AISHOP
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (22,8,12,'Pantalon Dama');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (23,8,8,'Falda');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (24,8,7,'Lentes de sol');

-- VESTIMENTA
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (25,9,4,'Bufanda');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (26,9,15,'sandalias');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (27,9,45,'Tacones Plateados');

-- TGI FRIDAYS
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (28,10,6,'Jack Daniels Wings');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (29,10,12,'BLT Burger Con papas');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (30,10,6,'Sesame Jack Chicken');

-- ISTORE
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (31,11,15,'Iphone Silicone Case');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (32,11,120,'Altavoz JBL charge 4');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (33,11,50,'Mi box 4k ultra ');

-- FARMATODO
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (34,12,5,'Alcohol Mk Anti');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (35,12,20,'Dolex Forte Nf 500Mg');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (36,12,12,'Aspirina Efe ');

-- FARMACIAS SAAS
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (37,13,8,'ADVIL GRIPA TABLETAS');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (38,13,12,'Drops Pastillas Vick');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (39,13,9,'Dristan ');

-- LOCATEL
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (40,14,5,'Systane Ultra');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (41,14,4,'Complejo B Miovit');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (42,14,3,'Acido Fólico Meyer ');

-- KABUKI SUSHI SALAD
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (43,15,7,'Spice Tuna');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (44,15,13,'Koko Roll De salmon');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (45,15,13,'Chaky Fry Temp');



--USUARIO

--GRANT READ, WRITE ON DIRECTORY OBJETOS_LOB TO SYSTEM; OJO CHECAR CON QUE USUARIO SE ESTA TRABAJANDO, SI ES SYTEM, SYS O ER

DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into usuario values (1,'Manuel','Alejandro','Correia','Buitrago',datos_basicos(datos_basicos.Validar_nombre('Alejandro'),datos_basicos.Validar_correo('alejandroc0701@gmail.com')), EMPTY_BLOB())RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '1.JPG';
    V_BFILE := BFILENAME('OBJETOS_LOB',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;


DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into usuario values (2,'Daniel','Antonio','Rivero','Perez',datos_basicos(datos_basicos.Validar_nombre('Daniel'),datos_basicos.Validar_correo('drivero@gmail.com')), EMPTY_BLOB())RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '2.JPG';
    V_BFILE := BFILENAME('OBJETOS_LOB',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;


DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into usuario values (3,'Andrea','Valentina','Mendoza','Ferreira',datos_basicos(datos_basicos.Validar_nombre('Andrea'),datos_basicos.Validar_correo('andremendoza@gmail.com')), EMPTY_BLOB())RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '3.JPG';
    V_BFILE := BFILENAME('OBJETOS_LOB',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;


DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into usuario values (4,'Alejandra','Yamileth','Martinez','Rios',datos_basicos(datos_basicos.Validar_nombre('Alejandra'),datos_basicos.Validar_correo('alerios@gmail.com')), EMPTY_BLOB())RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '4.JPG';
    V_BFILE := BFILENAME('OBJETOS_LOB',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;

DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into usuario values (5,'Jullian','Alexandra','Mijares','Azuaje',datos_basicos(datos_basicos.Validar_nombre('Jullian'),datos_basicos.Validar_correo('jama@gmail.com')), EMPTY_BLOB())RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '5.JPG';
    V_BFILE := BFILENAME('OBJETOS_LOB',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;

DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into usuario values (6,'Marco','Alonso','Hernandez','Beltran',datos_basicos(datos_basicos.Validar_nombre('Marco'),datos_basicos.Validar_correo('Marco3939@gmail.com')), EMPTY_BLOB())RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '6.JPG';
    V_BFILE := BFILENAME('OBJETOS_LOB',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;


DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into usuario values (7,'Lionel','Andres','Messi','Cuccittini',datos_basicos(datos_basicos.Validar_nombre('Lionel'),datos_basicos.Validar_correo('Messi10@gmail.com')), EMPTY_BLOB())RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '7.JPG';
    V_BFILE := BFILENAME('OBJETOS_LOB',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;

DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into usuario values (8,'Angel','Andres','Manzano','Castro',datos_basicos(datos_basicos.Validar_nombre('Angel'),datos_basicos.Validar_correo('Acastro3949@gmail.com')), EMPTY_BLOB())RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '8.JPG';
    V_BFILE := BFILENAME('OBJETOS_LOB',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;

DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into usuario values (9,'Jeancarlos','Alfonso','Hernandez','Linarez',datos_basicos(datos_basicos.Validar_nombre('Jeancarlos'),datos_basicos.Validar_correo('JLinarez@gmail.com')), EMPTY_BLOB())RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '9.JPG';
    V_BFILE := BFILENAME('OBJETOS_LOB',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;

DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into usuario values (10,'Victoria','Isabella','Varela','Lara',datos_basicos(datos_basicos.Validar_nombre('Victoria'),datos_basicos.Validar_correo('Lavicvarela@gmail.com')), EMPTY_BLOB())RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '10.JPG';
    V_BFILE := BFILENAME('OBJETOS_LOB',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;


DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into usuario values (11,'Carla','Alexa','Hernandez','Flores',datos_basicos(datos_basicos.Validar_nombre('Carla'),datos_basicos.Validar_correo('Carlita1225@gmail.com')), EMPTY_BLOB())RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '11.JPG';
    V_BFILE := BFILENAME('OBJETOS_LOB',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;

DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into usuario values (12,'Kimberlis','Andrea','Barrios','Gonzales',datos_basicos(datos_basicos.Validar_nombre('Kimberlis'),datos_basicos.Validar_correo('kimberlis24343@gmail.com')), EMPTY_BLOB())RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '12.JPG';
    V_BFILE := BFILENAME('OBJETOS_LOB',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;

DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into usuario values (13,'Paola','Alejandra','Aponte','Ollavis',datos_basicos(datos_basicos.Validar_nombre('Paola'),datos_basicos.Validar_correo('Pao_ollavis@hotmail.com')), EMPTY_BLOB())RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '13.JPG';
    V_BFILE := BFILENAME('OBJETOS_LOB',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;

DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into usuario values (14,'Eraine','Esperanza','Herrera','Campos',datos_basicos(datos_basicos.Validar_nombre('Eraine'),datos_basicos.Validar_correo('era_herrera@gmail.com')), EMPTY_BLOB())RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '14.JPG';
    V_BFILE := BFILENAME('OBJETOS_LOB',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;

DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into usuario values (15,'Luis','Nicolas','Rodriguez','Mayora',datos_basicos(datos_basicos.Validar_nombre('Luis'),datos_basicos.Validar_correo('lshadow@gmail.com')), EMPTY_BLOB())RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := '15.JPG';
    V_BFILE := BFILENAME('OBJETOS_LOB',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;



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
--tiene un error, las velocidades estan en km/h, abajo estan los updates
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


UPDATE unidad SET velocidad_promedio = 0.222 WHERE tipo_unidad = 'camioneta';
UPDATE unidad SET velocidad_promedio = 0.1194 WHERE tipo_unidad = 'moto';
UPDATE unidad SET velocidad_promedio = 0.0416 WHERE tipo_unidad = 'bicicleta';



INSERT INTO SERVICIO VALUES(1,100,NULL,1);

INSERT INTO SERVICIO VALUES(2,100,NULL,2);
INSERT INTO SERVICIO VALUES(3,200,5,2);
INSERT INTO SERVICIO VALUES(4,300,NULL,2);

INSERT INTO SERVICIO VALUES(5,200,NULL,3);
INSERT INTO SERVICIO VALUES(6,100,NULL,3);

INSERT INTO SERVICIO VALUES(7,300,5,4);
INSERT INTO SERVICIO VALUES(8,150,NULL,4);

INSERT INTO SERVICIO VALUES(9,50,NULL,5);
INSERT INTO SERVICIO VALUES(10,100,NULL,5);

INSERT INTO SERVICIO VALUES(11,100,NULL,6);

INSERT INTO SERVICIO VALUES(12,250,6,7);
INSERT INTO SERVICIO VALUES(13,100,NULL,7);
INSERT INTO SERVICIO VALUES(14,150,NULL,7);

INSERT INTO SERVICIO VALUES(15,100,NULL,8);
INSERT INTO SERVICIO VALUES(16,200,4,8);

INSERT INTO SERVICIO VALUES(17,100,NULL,9);
INSERT INTO SERVICIO VALUES(18,100,3,9);
INSERT INTO SERVICIO VALUES(19,300,5,9);

INSERT INTO SERVICIO VALUES(20,200,NULL,10);

INSERT INTO SERVICIO VALUES(21,250,NULL,11);
INSERT INTO SERVICIO VALUES(27,100,NULL,11);

INSERT INTO SERVICIO VALUES(22,100,NULL,12);
INSERT INTO SERVICIO VALUES(23,350,5,12);

INSERT INTO SERVICIO VALUES(24,100,NULL,13);

INSERT INTO SERVICIO VALUES(25,100,NULL,14);

INSERT INTO SERVICIO VALUES(26,100,NULL,15);


-- ACUERDO_SERVICIOS
-- (id_acuerdo,tiempo_calculo,precio_as,id_prov_serv,id_serv,id_aliado,fechas historico)

INSERT INTO ACUERDO_SERVICIO VALUES
(1,'MES',100,1,1,6,historico(historico.Validar_fecha('10-01-2020'),historico.Validar_fecha2('10-01-2020','10-01-2021')) );

INSERT INTO ACUERDO_SERVICIO VALUES
(2,'MES',100,2,2,5,historico(historico.Validar_fecha('10-01-2020'),historico.Validar_fecha2('10-01-2020','10-01-2021')) );

INSERT INTO ACUERDO_SERVICIO VALUES
(3,'MES',200,3,5,1,historico(historico.Validar_fecha('22-01-2020'),historico.Validar_fecha2('22-01-2020','22-01-2021')) );

INSERT INTO ACUERDO_SERVICIO VALUES
(4,'MES',300,4,7,4,historico(historico.Validar_fecha('11-11-2020'),historico.Validar_fecha2('11-11-2020','11-11-2021')) );

INSERT INTO ACUERDO_SERVICIO VALUES
(5,'MES',60,5,9,13,historico(historico.Validar_fecha('13-02-2020'),historico.Validar_fecha2('13-02-2020','13-02-2021')) );

INSERT INTO ACUERDO_SERVICIO VALUES
(6,'MES',100,6,11,1,historico(historico.Validar_fecha('13-01-2020'),historico.Validar_fecha2('13-01-2020','13-01-2021')) );


INSERT INTO ACUERDO_SERVICIO VALUES
(7,'MES',250,7,12,8,historico(historico.Validar_fecha('21-02-2020'),historico.Validar_fecha2('21-02-2020','21-02-2021')) );

INSERT INTO ACUERDO_SERVICIO VALUES
(8,'MES',100,8,15,1,historico(historico.Validar_fecha('10-03-2020'),historico.Validar_fecha2('10-03-2020','10-03-2021')) );

INSERT INTO ACUERDO_SERVICIO VALUES
(9,'MES',100,9,17,11,historico(historico.Validar_fecha('10-05-2020'),historico.Validar_fecha2('10-05-2020','10-05-2021')) );

INSERT INTO ACUERDO_SERVICIO VALUES
(10,'MES',210,10,20,11,historico(historico.Validar_fecha('26-09-2020'),historico.Validar_fecha2('26-09-2020','26-09-2021')) );

INSERT INTO ACUERDO_SERVICIO VALUES
(11,'MES',110,12,22,4,historico(historico.Validar_fecha('30-01-2020'),historico.Validar_fecha2('30-01-2020','30-01-2021')) );


INSERT INTO ACUERDO_SERVICIO VALUES
(12,'MES',100,14,25,2,historico(historico.Validar_fecha('16-11-2020'),historico.Validar_fecha2('16-11-2020','16-11-2021')) );

INSERT INTO ACUERDO_SERVICIO VALUES
(13,'MES',100,15,26,3,historico(historico.Validar_fecha('15-11-2020'),historico.Validar_fecha2('15-11-2020','15-11-2021')) );

INSERT INTO ACUERDO_SERVICIO VALUES
(14,'MES',90,14,25,12,historico(historico.Validar_fecha('18-11-2020'),historico.Validar_fecha2('18-11-2020','22-12-2021')) );

INSERT INTO ACUERDO_SERVICIO VALUES
(15,'MES',100,13,24,11,historico(historico.Validar_fecha('15-01-2020'),historico.Validar_fecha2('15-01-2020','15-01-2021')) );

--LUGARES DE ACUERDO

--OJO SI YA TIENEN CREADA LA TABLA EJECUTAR ESTOS COMANDOS ANTES DE INSERTAR
--ALTER TABLE LUGAR_ACUERDO DROP CONSTRAINT FK_LUGAR_ACUERDO;
--ALTER TABLE LUGAR_ACUERDO ADD CONSTRAINT fk_lugar_acuerdo FOREIGN KEY (id_acuerdo,id_prov,id_servicio,id_aliado) REFERENCES acuerdo_servicio(id_acuerdo,id_prov_serv,id_serv,id_aliado);


INSERT INTO LUGAR_ACUERDO VALUES (1,1,24,1,6,1);
INSERT INTO LUGAR_ACUERDO VALUES (2,2,21,2,5,2);
INSERT INTO LUGAR_ACUERDO VALUES (3,3,12,3,1,5);
INSERT INTO LUGAR_ACUERDO VALUES (4,4,5,4,4,7);
INSERT INTO LUGAR_ACUERDO VALUES (5,5,4,5,13,9);
INSERT INTO LUGAR_ACUERDO VALUES (6,6,12,6,1,11);
INSERT INTO LUGAR_ACUERDO VALUES (7,7,16,7,8,12);
INSERT INTO LUGAR_ACUERDO VALUES (8,8,12,8,1,15);
INSERT INTO LUGAR_ACUERDO VALUES (9,9,11,9,11,17);
INSERT INTO LUGAR_ACUERDO VALUES (10,10,11,10,11,20);
INSERT INTO LUGAR_ACUERDO VALUES (11,11,5,12,4,22);
INSERT INTO LUGAR_ACUERDO VALUES (12,12,18,14,2,25);
INSERT INTO LUGAR_ACUERDO VALUES (13,13,7,15,3,26);
INSERT INTO LUGAR_ACUERDO VALUES (14,14,18,14,12,25);
INSERT INTO LUGAR_ACUERDO VALUES (15,15,6,13,11,24);



--REGISTRO

INSERT INTO REGISTRO VALUES (0,1,1,historico(historico.Validar_fecha('20-11-2020'),historico.Validar_fecha2('20-11-2020','20-11-2020')) );
INSERT INTO REGISTRO VALUES (1,2,3,historico(historico.Validar_fecha('22-11-2020'),historico.Validar_fecha2('22-11-2020','22-11-2020')) );
INSERT INTO REGISTRO VALUES (2,3,2,historico(historico.Validar_fecha('24-11-2020'),historico.Validar_fecha2('24-11-2020','24-11-2020')) );
INSERT INTO REGISTRO VALUES (3,4,4,historico(historico.Validar_fecha('26-11-2020'),historico.Validar_fecha2('26-11-2020','26-11-2020')) );
INSERT INTO REGISTRO VALUES (4,5,6,historico(historico.Validar_fecha('28-11-2020'),historico.Validar_fecha2('28-11-2020','28-11-2020')) );
INSERT INTO REGISTRO VALUES (5,6,5,historico(historico.Validar_fecha('19-11-2020'),historico.Validar_fecha2('19-11-2020','19-11-2020')) );
INSERT INTO REGISTRO VALUES (6,7,7,historico(historico.Validar_fecha('21-11-2020'),historico.Validar_fecha2('21-11-2020','21-11-2020')) );
INSERT INTO REGISTRO VALUES (7,8,9,historico(historico.Validar_fecha('23-11-2020'),historico.Validar_fecha2('23-11-2020','23-11-2020')) );
INSERT INTO REGISTRO VALUES (8,9,8,historico(historico.Validar_fecha('25-11-2020'),historico.Validar_fecha2('25-11-2020','25-11-2020')) );
INSERT INTO REGISTRO VALUES (9,10,10,historico(historico.Validar_fecha('27-11-2020'),historico.Validar_fecha2('27-11-2020','27-11-2020')) );
INSERT INTO REGISTRO VALUES (10,11,12,historico(historico.Validar_fecha('28-11-2020'),historico.Validar_fecha2('28-11-2020','28-11-2020')) );
INSERT INTO REGISTRO VALUES (11,12,11,historico(historico.Validar_fecha('29-11-2020'),historico.Validar_fecha2('29-11-2020','29-11-2020')) );
INSERT INTO REGISTRO VALUES (12,13,14,historico(historico.Validar_fecha('30-11-2020'),historico.Validar_fecha2('30-11-2020','30-11-2020')) );
INSERT INTO REGISTRO VALUES (13,14,13,historico(historico.Validar_fecha('1-12-2020'),historico.Validar_fecha2('1-12-2020','1-12-2020')) );
INSERT INTO REGISTRO VALUES (14,15,15,historico(historico.Validar_fecha('5-12-2020'),historico.Validar_fecha2('5-12-2020','5-12-2020')) );


--VALORACION

INSERT INTO VALORACION VALUES (0,1,1,'5',historico(historico.Validar_fecha(TO_DATE('20-11-2020','DD-MM-YYYY')),historico.Validar_fecha2(TO_DATE('20-11-2020','DD-MM-YYYY'),TO_DATE('20-11-2020','DD-MM-YYYY'))) );
INSERT INTO VALORACION VALUES (1,2,3,'4',historico(historico.Validar_fecha(TO_DATE('22-11-2020','DD-MM-YYYY')),historico.Validar_fecha2TO_DATE('22-11-2020','DD-MM-YYYY'),TO_DATE('22-11-2020','DD-MM-YYYY'))) );
INSERT INTO VALORACION VALUES (2,3,2,'3',historico(historico.Validar_fecha(TO_DATE('26-11-2020','DD-MM-YYYY')),historico.Validar_fecha2(TO_DATE('26-11-2020','DD-MM-YYYY'),TO_DATE('26-11-2020','DD-MM-YYYY'))) );
INSERT INTO VALORACION VALUES (4,5,6,'5',historico(historico.Validar_fecha(TO_DATE('28-11-2020','DD-MM-YYYY')),historico.Validar_fecha2(TO_DATE('28-11-2020','DD-MM-YYYY'),TO_DATE('28-11-2020','DD-MM-YYYY'))) );
INSERT INTO VALORACION VALUES (5,6,5,'4',historico(historico.Validar_fecha(TO_DATE('19-11-2020','DD-MM-YYYY')),historico.Validar_fecha2(TO_DATE('19-11-2020','DD-MM-YYYY'),TO_DATE('19-11-2020','DD-MM-YYYY'))) );
INSERT INTO VALORACION VALUES (6,7,7,'2',historico(historico.Validar_fecha(TO_DATE('21-11-2020','DD-MM-YYYY')),historico.Validar_fecha2(TO_DATE('21-11-2020','DD-MM-YYYY'),TO_DATE('21-11-2020','DD-MM-YYYY'))) );
INSERT INTO VALORACION VALUES (7,8,9,'3',historico(historico.Validar_fecha(TO_DATE('23-11-2020','DD-MM-YYYY')),historico.Validar_fecha2(TO_DATE('23-11-2020','DD-MM-YYYY'),TO_DATE('23-11-2020','DD-MM-YYYY'))) );
INSERT INTO VALORACION VALUES (8,9,8,'4',historico(historico.Validar_fecha(TO_DATE('25-11-2020','DD-MM-YYYY')),historico.Validar_fecha2(TO_DATE('25-11-2020','DD-MM-YYYY'),TO_DATE('25-11-2020','DD-MM-YYYY'))) );
INSERT INTO VALORACION VALUES (9,10,10,'5',historico(historico.Validar_fecha(TO_DATE('27-11-2020','DD-MM-YYYY')),historico.Validar_fecha2(TO_DATE('27-11-2020','DD-MM-YYYY'),TO_DATE('27-11-2020','DD-MM-YYYY'))) );
INSERT INTO VALORACION VALUES (10,11,12,'2',historico(historico.Validar_fecha(TO_DATE('28-11-2020','DD-MM-YYYY')),historico.Validar_fecha2(TO_DATE('28-11-2020','DD-MM-YYYY'),TO_DATE('28-11-2020','DD-MM-YYYY'))) );
INSERT INTO VALORACION VALUES (11,12,11,'4',historico(historico.Validar_fecha(TO_DATE('29-11-2020','DD-MM-YYYY')),historico.Validar_fecha2(TO_DATE('29-11-2020','DD-MM-YYYY'),TO_DATE('29-11-2020','DD-MM-YYYY'))) );
INSERT INTO VALORACION VALUES (12,13,14,'4',historico(historico.Validar_fecha(TO_DATE('30-11-2020','DD-MM-YYYY')),historico.Validar_fecha2(TO_DATE('30-11-2020','DD-MM-YYYY'),TO_DATE('30-11-2020','DD-MM-YYYY'))) );
INSERT INTO VALORACION VALUES (13,14,13,'5',historico(historico.Validar_fecha(TO_DATE('1-12-2020','DD-MM-YYYY')),historico.Validar_fecha2(TO_DATE('1-12-2020','DD-MM-YYYY'),TO_DATE('1-12-2020','DD-MM-YYYY'))) );
INSERT INTO VALORACION VALUES (14,15,15,'1',historico(historico.Validar_fecha(TO_DATE('5-12-2020','DD-MM-YYYY')),historico.Validar_fecha2(TO_DATE('5-12-2020','DD-MM-YYYY'),TO_DATE('5-12-2020','DD-MM-YYYY'))) );


--DIRECCION

INSERT INTO DIRECCION VALUES (0,1,46,46,24,datos_lugar(10.50320248656573, -66.90995316476166));
INSERT INTO DIRECCION VALUES (1,2,24,24,12,datos_lugar(10.481824261271125, -66.85861968566459));
INSERT INTO DIRECCION VALUES (2,3,41,41,21,datos_lugar(10.604048073117825, -66.89429757082159));
INSERT INTO DIRECCION VALUES (3,4,10,10,5,datos_lugar(8.612345654534371, -70.24912265713229));
INSERT INTO DIRECCION VALUES (4,5,23,23,12,datos_lugar(10.495517572392917, -66.83383534323721));
INSERT INTO DIRECCION VALUES (5,6,7,7,4,datos_lugar(10.236243355419127, -67.59547203039416));
INSERT INTO DIRECCION VALUES (6,7,31,31,16,datos_lugar(10.073728903197944, -69.29590976211249));
INSERT INTO DIRECCION VALUES (7,8,21,21,11,datos_lugar(10.923746502465464, -64.06663320740016));
INSERT INTO DIRECCION VALUES (8,9,24,24,12,datos_lugar(10.481824261271125, -66.85861968566459));
INSERT INTO DIRECCION VALUES (9,10,22,22,11,datos_lugar(11.0452157224627, -63.85847216340377));
INSERT INTO DIRECCION VALUES (10,11,9,9,5,datos_lugar(8.639846221406565, -70.23667000130578));
INSERT INTO DIRECCION VALUES (11,12,30,30,15,datos_lugar(9.923451252807101, -67.36416421745163));
INSERT INTO DIRECCION VALUES (12,13,35,35,18,datos_lugar(10.446101067773844, -63.901387502040414));
INSERT INTO DIRECCION VALUES (13,14,11,11,6,datos_lugar(7.348729541845047, -61.82540594734454));
INSERT INTO DIRECCION VALUES (14,15,13,13,7,datos_lugar(10.2514559170782, -68.01036786029957));

--PARA ASIGNAR UNIDADES A LOS ENVIOS

UPDATE ENVIO SET ID_UNIDAD = 1, ID_PROV_U = 1, ID_SEDE_U = 1 WHERE Tracking =1;
UPDATE ENVIO SET ID_UNIDAD = 1, ID_PROV_U = 1, ID_SEDE_U = 1 WHERE Tracking =2;
UPDATE ENVIO SET ID_UNIDAD = 22, ID_PROV_U = 8, ID_SEDE_U = 8 WHERE Tracking =3;
UPDATE ENVIO SET ID_UNIDAD = 22, ID_PROV_U = 8, ID_SEDE_U = 8 WHERE Tracking =4;
UPDATE ENVIO SET ID_UNIDAD = 10, ID_PROV_U = 4, ID_SEDE_U = 4 WHERE Tracking =5;
UPDATE ENVIO SET ID_UNIDAD = 16, ID_PROV_U = 6, ID_SEDE_U = 6 WHERE Tracking =6;
UPDATE ENVIO SET ID_UNIDAD = 16, ID_PROV_U = 6, ID_SEDE_U = 6 WHERE Tracking =7;
UPDATE ENVIO SET ID_UNIDAD = 13, ID_PROV_U = 5, ID_SEDE_U = 5 WHERE Tracking =8;
UPDATE ENVIO SET ID_UNIDAD = 19, ID_PROV_U = 7, ID_SEDE_U = 7 WHERE Tracking =9;
UPDATE ENVIO SET ID_UNIDAD = 26, ID_PROV_U = 9, ID_SEDE_U = 9 WHERE Tracking =10;
UPDATE ENVIO SET ID_UNIDAD = 34, ID_PROV_U = 12, ID_SEDE_U = 12 WHERE Tracking =11;
UPDATE ENVIO SET ID_UNIDAD = 17, ID_PROV_U = 6, ID_SEDE_U = 6 WHERE Tracking =12;
UPDATE ENVIO SET ID_UNIDAD = 17, ID_PROV_U = 6, ID_SEDE_U = 6 WHERE Tracking =13;
UPDATE ENVIO SET ID_UNIDAD = 17, ID_PROV_U = 6, ID_SEDE_U = 6 WHERE Tracking =14;
UPDATE ENVIO SET ID_UNIDAD = 26, ID_PROV_U = 9, ID_SEDE_U = 9 WHERE Tracking =15;

--AÑADIR ENVIO A LA LLAVE

ALTER TABLE SUCURSAL_ASIGNADA ADD ID_ENVIO INT;
ALTER TABLE SUCURSAL_ASIGNADA ADD ID_ACUERDO INT;
ALTER TABLE SUCURSAL_ASIGNADA ADD ID_USUARIO INT;
ALTER TABLE SUCURSAL_ASIGNADA ADD ID_DIRECCION INT;
ALTER TABLE SUCURSAL_ASIGNADA ADD CONSTRAINT FK_SUCURSAL_ASIGNADA_ENVIO FOREIGN KEY (ID_ENVIO, ID_ACUERDO, ID_USUARIO, ID_DIRECCION) REFERENCES ENVIO (TRACKING, ID_ACUERDO,ID_USUARIO_ENVIO,ID_DIR);
ALTER TABLE SUCURSAL_ASIGNADA DROP CONSTRAINT pk_suc_asig;
ALTER TABLE SUCURSAL_ASIGNADA ADD CONSTRAINT pk_suc_asig PRIMARY KEY (id_sucasig,id_unidad,id_suc,id_envio);

--ID SUCURSAL ASIGNADA, ID ALIADO, ID SUCURSAL, ID UNIDAD, ID SEDE, ID PROVEEDOR, ESTADO SUCURSAL, MUNICIPIO SUCURSAL, CALLE SUCURSAL, ID ENVIO, ID ACUERDO, ID USUARIO, ID DIRECCION




INSERT INTO SUCURSAL_ASIGNADA VALUES (1,6,6,1,1,1,24,46,46,1,1,1,0);
INSERT INTO SUCURSAL_ASIGNADA VALUES (2,6,6,1,1,1,24,46,46,2,1,1,0);
INSERT INTO SUCURSAL_ASIGNADA VALUES (3,1,1,22,8,8,12,23,23,3,8,2,1);
INSERT INTO SUCURSAL_ASIGNADA VALUES (4,1,1,22,8,8,12,23,23,4,8,2,1);
INSERT INTO SUCURSAL_ASIGNADA VALUES (5,4,4,10,4,4,5,9,9,5,4,4,3);
INSERT INTO SUCURSAL_ASIGNADA VALUES (6,1,1,16,6,6,12,23,23,6,6,5,4);
INSERT INTO SUCURSAL_ASIGNADA VALUES (7,1,1,16,6,6,12,23,23,7,6,5,4);
INSERT INTO SUCURSAL_ASIGNADA VALUES (8,13,13,13,5,5,4,7,7,8,5,6,5);
INSERT INTO SUCURSAL_ASIGNADA VALUES (9,8,8,19,7,7,16,31,31,9,7,7,6);
INSERT INTO SUCURSAL_ASIGNADA VALUES (10,14,14,26,9,9,8,15,15,10,9,10,9);
INSERT INTO SUCURSAL_ASIGNADA VALUES (11,4,4,34,12,12,5,9,9,11,11,11,10);
INSERT INTO SUCURSAL_ASIGNADA VALUES (12,1,1,17,6,6,12,23,23,12,6,9,8);
INSERT INTO SUCURSAL_ASIGNADA VALUES (13,1,1,17,6,6,12,23,23,13,6,9,8);
INSERT INTO SUCURSAL_ASIGNADA VALUES (14,1,1,17,6,6,12,23,23,14,6,9,8);
INSERT INTO SUCURSAL_ASIGNADA VALUES (15,11,11,26,9,9,11,22,22,15,9,8,7);

-- PRODUCTO ENVIO

-- (ID,PRO_E,ALI,TRACK,ACU,US,DIR)

INSERT INTO PRODUCTO_ENVIO VALUES(1,16,6,1,1,1,0);
INSERT INTO PRODUCTO_ENVIO VALUES(2,17,6,1,1,1,0);

INSERT INTO PRODUCTO_ENVIO VALUES(3,18,6,2,1,1,0);
INSERT INTO PRODUCTO_ENVIO VALUES(4,16,6,2,1,1,0);

INSERT INTO PRODUCTO_ENVIO VALUES(5,1,1,3,8,2,1);
INSERT INTO PRODUCTO_ENVIO VALUES(6,2,1,3,8,2,1);
INSERT INTO PRODUCTO_ENVIO VALUES(7,3,1,3,8,2,1);

INSERT INTO PRODUCTO_ENVIO VALUES(8,3,1,4,8,2,1);

INSERT INTO PRODUCTO_ENVIO VALUES(9,11,4,5,4,4,3);
INSERT INTO PRODUCTO_ENVIO VALUES(10,10,4,5,4,4,3);

INSERT INTO PRODUCTO_ENVIO VALUES(11,1,1,6,6,5,4);
INSERT INTO PRODUCTO_ENVIO VALUES(12,2,1,6,6,5,4);

INSERT INTO PRODUCTO_ENVIO VALUES(13,3,1,7,6,5,4);

INSERT INTO PRODUCTO_ENVIO VALUES(14,37,13,8,5,6,5);

INSERT INTO PRODUCTO_ENVIO VALUES(15,23,8,9,7,7,6);
INSERT INTO PRODUCTO_ENVIO VALUES(16,22,8,9,7,7,6);

INSERT INTO PRODUCTO_ENVIO VALUES(17,31,11,10,9,10,9);

INSERT INTO PRODUCTO_ENVIO VALUES(18,11,4,11,11,11,10);
INSERT INTO PRODUCTO_ENVIO VALUES(19,10,4,11,11,11,10);

INSERT INTO PRODUCTO_ENVIO VALUES(20,1,1,12,6,9,8);
INSERT INTO PRODUCTO_ENVIO VALUES(21,2,1,12,6,9,8);

INSERT INTO PRODUCTO_ENVIO VALUES(22,3,1,13,6,9,8);

INSERT INTO PRODUCTO_ENVIO VALUES(23,2,1,14,6,9,8);

INSERT INTO PRODUCTO_ENVIO VALUES(24,33,11,15,9,8,7);
INSERT INTO PRODUCTO_ENVIO VALUES(25,31,11,15,9,8,7);

--INSERTS EXTRAS DE SURCURSALES

INSERT INTO sucursal values (18,1,46,46,24,datos_lugar(10.50391982257464, -66.91287140809193));
INSERT INTO sucursal values (19,2,46,46,24,datos_lugar(10.50391982257464, -66.91287140809193));
INSERT INTO sucursal values (20,3,46,46,24,datos_lugar(10.50391982257464, -66.91287140809193));
INSERT INTO sucursal values (21,4,46,46,24,datos_lugar(10.50391982257464, -66.91287140809193));

INSERT INTO sucursal values (22,1,23,23,12,datos_lugar(10.493297557718028, -66.85377252751138));
INSERT INTO sucursal values (23,2,24,24,12,datos_lugar(10.493297557718028, -66.85377252751138));
INSERT INTO sucursal values (24,5,23,23,12,datos_lugar(10.493297557718028, -66.85377252751138));
INSERT INTO sucursal values (25,7,23,23,12,datos_lugar(10.493297557718028, -66.85377252751138));
INSERT INTO sucursal values (26,6,24,24,12,datos_lugar(10.493297557718028, -66.85377252751138));

INSERT INTO sucursal values (27,9,41,41,21,datos_lugar(10.610133452786187, -66.88976251642262));
INSERT INTO sucursal values (28,1,41,41,21,datos_lugar(10.610133452786187, -66.88976251642262));
INSERT INTO sucursal values (29,2,41,41,21,datos_lugar(10.610133452786187, -66.88976251642262));
INSERT INTO sucursal values (30,9,41,41,21,datos_lugar(10.610133452786187, -66.88976251642262));

INSERT INTO SUCURSAL_ASIGNADA VALUES (16,2,19,1,1,1,24,46,46,1,1,1,0);
INSERT INTO SUCURSAL_ASIGNADA VALUES (17,3,20,1,1,1,24,46,46,1,1,1,0);
INSERT INTO SUCURSAL_ASIGNADA VALUES (18,3,20,1,1,1,24,46,46,1,1,1,0);
INSERT INTO SUCURSAL_ASIGNADA VALUES (19,3,20,1,1,1,24,46,46,1,1,1,0);
INSERT INTO SUCURSAL_ASIGNADA VALUES (20,2,23,22,8,8,12,24,24,3,8,2,1);
INSERT INTO SUCURSAL_ASIGNADA VALUES (21,2,23,22,8,8,12,24,24,3,8,2,1);
INSERT INTO SUCURSAL_ASIGNADA VALUES (22,5,24,22,8,8,12,23,23,3,8,2,1);

--TABLA CON LA FOTO POR DEFECTO DE SIMULACION PROVEEDORES

CREATE TABLE Foto_Pauxiliar (foto BLOB);

DECLARE
    V_TEMP BLOB;
    V_BFILE BFILE;
    V_NOMBRE_FOTO VARCHAR (20);
BEGIN
    Insert into Foto_Pauxiliar values (EMPTY_BLOB()) RETURNING foto INTO V_TEMP ;
    V_NOMBRE_FOTO := 'proveedorprueba.PNG';
    V_BFILE := BFILENAME('OBJETOS_LOB',V_NOMBRE_FOTO);
    DBMS_LOB.OPEN(V_BFILE, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE (V_TEMP, V_BFILE, dbms_lob.getlength(V_BFILE));
    DBMS_LOB.CLOSE (V_BFILE);
END;