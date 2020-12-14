-- SEDE

 
DELETE FROM UNIDAD WHERE ID_UNIDAD >= 4 AND ID_UNIDAD <= 9;

INSERT INTO unidad VALUES (7,2,2,41,41,21,datos_lugar(10.483592806645829, -66.86249388463321),'camioneta','v',80);
INSERT INTO unidad VALUES (8,2,2,41,41,21,datos_lugar(10.483592806645829, -66.86249388463321),'moto','v',43);
INSERT INTO unidad VALUES (9,2,2,41,41,21,datos_lugar(10.483592806645829, -66.86249388463321),'bicicleta','v',15);

INSERT INTO unidad VALUES (7,3,3,24,24,12,datos_lugar(10.483592806645829, -66.86249388463321),'camioneta','v',80);
INSERT INTO unidad VALUES (8,3,3,24,24,12,datos_lugar(10.483592806645829, -66.86249388463321),'moto','v',43);
INSERT INTO unidad VALUES (9,3,3,24,24,12,datos_lugar(10.483592806645829, -66.86249388463321),'bicicleta','v',15);


--Correccion de velocidades (km/h -> m/s)
UPDATE unidad SET velocidad_promedio = 22.22 WHERE tipo_unidad = 'camioneta';
UPDATE unidad SET velocidad_promedio = 11.94 WHERE tipo_unidad = 'moto';
UPDATE unidad SET velocidad_promedio = 4.16 WHERE tipo_unidad = 'bicicleta';
