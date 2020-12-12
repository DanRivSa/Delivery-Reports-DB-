--ESTADOS

INSERT INTO estado(codigo_estado,nombre) VALUES (1,'Amazonas');
INSERT INTO estado(codigo_estado,nombre) VALUES (2,'Anzoategui');
INSERT INTO estado(codigo_estado,nombre) VALUES (3,'Apure');
INSERT INTO estado(codigo_estado,nombre) VALUES (4,'Aragua');
INSERT INTO estado(codigo_estado,nombre) VALUES (5,'Barinas');
INSERT INTO estado(codigo_estado,nombre) VALUES (6,'Bolivar');
INSERT INTO estado(codigo_estado,nombre) VALUES (7,'Carabobo');
INSERT INTO estado(codigo_estado,nombre) VALUES (8,'Cojedes');


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




INSERT INTO sucursal values (16,,,,,datos_lugar(,))
INSERT INTO sucursal values (17,,,,,datos_lugar(,))
INSERT INTO sucursal values (18,,,,,datos_lugar(,))
INSERT INTO sucursal values (20,,,,,datos_lugar(,))
INSERT INTO sucursal values (21,,,,,datos_lugar(,))
INSERT INTO sucursal values (22,,,,,datos_lugar(,))
INSERT INTO sucursal values (23,,,,,datos_lugar(,))
INSERT INTO sucursal values (24,,,,,datos_lugar(,))
INSERT INTO sucursal values (25,,,,,datos_lugar(,))




--PRODUCTOS

-- CHURROMANIA
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (1,1,5,'Crispy Mania');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (2,1,4,'Twist Mania');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (3,1,5,'Churrocream');


-- KFC
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (4,2,7,'Bigbox meal del coronel');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (5,2,8,'Parte y comparte 5pz');
INSERT INTO PRODUCTO (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (6,2,8,'Parte y comparte hamburguesa');


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

--ENVIOS


-- SERVICIOS

-- (id_servicio,cant_envio,oferta,id_prov)

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


-- ALTER TABLE TABLA ENVIO

ALTER TABLE envio DROP CONSTRAINT fk_acuerdo;
ALTER TABLE envio ADD CONSTRAINT fk_acuerdo 
FOREIGN KEY (id_acuerdo,id_serv,id_prov,id_aliado) REFERENCES acuerdo_servicio(id_acuerdo,id_serv,id_prov_serv,id_aliado);

-- ENVIO 
--(TRAC,ID_US,ID_US_DIR,ID_DIR,ID_ACUERDO,ID_PROV,ID_ALIADO,ID_SERV,PUNTO_REF,FECHA HISTORICO)

INSERT INTO ENVIO VALUES (1,1,1,0,1,1,6,1,'Hotel Rincón ',
historico(historico.Validar_fecha(TO_DATE('15-01-2020','DD-MM-YYYY')),NULL),NULL,NULL,NULL
);
INSERT INTO ENVIO VALUES (2,1,1,0,1,1,6,1,'Hotel Rincón ',
historico(historico.Validar_fecha(TO_DATE('16-02-2020','DD-MM-YYYY')),NULL),NULL,NULL,NULL
);
INSERT INTO ENVIO VALUES (3,2,2,1,8,8,1,15,'Abasto Ramon ',
historico(historico.Validar_fecha(TO_DATE('14-03-2020','DD-MM-YYYY')),NULL),NULL,NULL,NULL
);
INSERT INTO ENVIO VALUES (4,2,2,1,8,8,1,15,'Abasto Ramon ',
historico(historico.Validar_fecha(TO_DATE('15-03-2020','DD-MM-YYYY')),NULL),NULL,NULL,NULL
);

INSERT INTO ENVIO VALUES (5,4,4,3,4,4,4,7,'La casona',
historico(historico.Validar_fecha(TO_DATE('15-03-2020','DD-MM-YYYY')),NULL),NULL,NULL,NULL
);
INSERT INTO ENVIO VALUES (6,5,5,4,6,6,1,11,'Panaderia san pedro ',
historico(historico.Validar_fecha(TO_DATE('6-03-2020','DD-MM-YYYY')),NULL),NULL,NULL,NULL
);
INSERT INTO ENVIO VALUES (7,5,5,4,6,6,1,11,'Panaderia san pedro ',
historico(historico.Validar_fecha(TO_DATE('8-03-2020','DD-MM-YYYY')),NULL),NULL,NULL,NULL
);
INSERT INTO ENVIO VALUES (8,6,6,5,5,5,13,9,'iglesia coromoto',
historico(historico.Validar_fecha(TO_DATE('15-03-2020','DD-MM-YYYY')),NULL),NULL,NULL,NULL
);
INSERT INTO ENVIO VALUES (9,7,7,6,7,7,8,12,'La gran carroza ',
historico(historico.Validar_fecha(TO_DATE('13-11-2020','DD-MM-YYYY')),NULL),NULL,NULL,NULL
);
INSERT INTO ENVIO VALUES (10,10,10,9,9,9,11,17,'Los Juanes ',
historico(historico.Validar_fecha(TO_DATE('25-11-2020','DD-MM-YYYY')),NULL),NULL,NULL,NULL
);
INSERT INTO ENVIO VALUES (11,11,11,10,11,12,4,22,'Edif. empresarial ',
historico(historico.Validar_fecha(TO_DATE('14-08-2020','DD-MM-YYYY')),NULL),NULL,NULL,NULL
);
INSERT INTO ENVIO VALUES (12,9,9,8,6,6,1,11,'Centro empresarial',
historico(historico.Validar_fecha(TO_DATE('18-05-2020','DD-MM-YYYY')),NULL),NULL,NULL,NULL
);
INSERT INTO ENVIO VALUES (13,9,9,8,6,6,1,11,'Centro empresarial',
historico(historico.Validar_fecha(TO_DATE('20-05-2020','DD-MM-YYYY')),NULL),NULL,NULL,NULL
);
INSERT INTO ENVIO VALUES (14,9,9,8,6,6,1,11,'Centro empresarial',
historico(historico.Validar_fecha(TO_DATE('14-05-2020','DD-MM-YYYY')),NULL),NULL,NULL,NULL
);
INSERT INTO ENVIO VALUES (15,8,8,7,9,9,11,17,'Hotel las rosas',
historico(historico.Validar_fecha(TO_DATE('12-11-2020','DD-MM-YYYY')),NULL),NULL,NULL,NULL
);