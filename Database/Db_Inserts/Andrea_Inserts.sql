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

--SUCURSALES

--PRODUCTOS

-- CHURROMANIA
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (1,1,5,'Crispy Mania');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (2,1,4,'Twist Mania');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (3,1,5,'Churrocream');


-- KFC
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (4,2,7,'Bigbox meal del coronel');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (5,2,8,'Parte y comparte 5pz');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (6,2,8,'Parte y comparte hamburguesa');


--  MAXI DONAS
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (7,3,2,'Donas rellenas');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (8,3,3,'Rosca premium');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (9,3,3,'Donas premium');


-- DECOFRUTA
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (10,4,2,'Deco bombom fresa');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (11,4,3,'Decopink');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (12,4,3,'Decoamor');


-- Fresh Fish
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (13,5,7,'Hamburguesa triple');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (14,5,14,'Bonadeo');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (15,5,9,'Analitiroll');

-- Balu
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (16,6,,'');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (17,6,,'');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (18,6,,'');

-- Xinfoni
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (19,7,,'');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (20,7,,'');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (21,7,,'');

-- AISHOP
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (22,8,,'');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (23,8,,'');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (24,8,,'');

-- VESTIMENTA
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (25,9,,'');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (26,9,,'');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (27,9,,'');

-- TGI FRIDAYS
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (28,10,6,'Jack Daniels Wings');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (29,10,12,'BLT Burger Con papas fritas');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (30,10,6,'Sesame Jack Chicken Strips');

-- ISTORE
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (31,11,15,'Iphone 11 Pro Max Silicone Case');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (32,11,120,'Altavoz JBL charge 4');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (33,11,50,'Mi box 4k ultra hd set top box');

-- FARMATODO
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (34,12,5,'Alcohol Mk Antiséptico');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (35,12,20,'Dolex Forte Nf 500Mg');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (36,12,12,'Aspirina Efe 500Mg Tab');

-- FARMACIAS SAAS
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (37,13,8,'ADVIL GRIPA TABLETAS');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (38,13,12,'Drops Pastillas Vick');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (39,13,9,'Dristan Triple Acción');

-- LOCATEL
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (40,14,5,'Systane Ultra Gotas Frasco');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (41,14,4,'Complejo B Miovit');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (42,14,3,'Acido Fólico Meyer ');

-- KABUKI SUSHI SALAD
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (43,15,7,'Spice Tuna');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (44,15,13,'Koko Roll De salmon');
INSERT INTO PRODUCTOS (id_producto,id_aliado,precio_unitario,nombre_prod)
VALUES (45,15,13,'Chaky Fry Tempurizado');

--ENVIOS

