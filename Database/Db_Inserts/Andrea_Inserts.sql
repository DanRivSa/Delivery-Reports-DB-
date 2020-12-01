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
VALUES (1,1,1,'Calle Yavita');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (2,2,1,'Calle Aguerrevere');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (3,3,2,'Calle Sucre');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (4,4,2,'Calle Real');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (5,5,3,'Calle Boyaca');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (6,6,3,'Calle Bolivar');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (7,7,4,'Calle Bermudez');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (8,8,4,'Calle Carmen de Cura');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (9,9,5,'Calle Ambulatorio');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (10,10,5,'Calle Calle berna');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (11,11,6,'Calle Liccione');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (12,12,6,'Calle Guarapiche');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (13,13,7,'Calle Urbina');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (14,14,7,'Calle 142');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (15,15,8,'Calle Independencia');
INSERT INTO calle(c_calle,c_mun,c_es,nombre) 
VALUES (15,16,8,'Calle La Yaguara ');

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

