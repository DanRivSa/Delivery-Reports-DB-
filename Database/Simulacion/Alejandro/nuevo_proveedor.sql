--MODULO DE NUEVO PROVEEDOR, CON NUEVA SEDE Y NUEVO ACUERDO COMERCIAL

CREATE OR REPLACE PROCEDURE nuevo_proveedor (username VARCHAR,correo VARCHAR, fecha_inicio VARCHAR, fecha_fin VARCHAR) IS

id_prov_anterior INT;
nuevo_prov INT;
id_sede_anterior INT;
nueva_sede INT;
id_servicio_ant INT;
nuevo_servicio INT;
foto BLOB;
id_calle INT;
cant_envio INT;
id_municipio INT;
id_estado INT;
id_acuerdo_anterior INT;
nuevo_acuerdo INT;
id_aliado INT;
cant_aliados INT;
id_unidad_anterior INT;
bicicleta INT;
camioneta INT;
moto INT;
BEGIN
SELECT MAX (P.ID_PROVEEDOR) into id_prov_anterior from Proveedor P;
SELECT MAX (S.ID_SEDE) into id_sede_anterior from Sede S;
SELECT MAX (SER.ID_SERVICIO) into id_servicio_ant from servicio SER;
--SELECT F.FOTO into foto from Foto_PAuxiliar F;
SELECT ROUND(DBMS_RANDOM.VALUE(1,40)) into id_calle FROM dual;
SELECT ROUND (DBMS_RANDOM.VALUE(50,500)) into cant_envio FROM dual;
SELECT C.C_MUN, C.C_ES into id_municipio, id_estado from Calle C where c.c_calle = id_calle;
SELECT MAX (A_S.ID_ACUERDO) into id_acuerdo_anterior from Acuerdo_Servicio A_S;
SELECT COUNT(*) INTO cant_aliados FROM aliado_comercial;
SELECT MAX(id_unidad) INTO id_unidad_anterior FROM unidad;
id_aliado:=random_n(cant_aliados);
nuevo_prov:=id_prov_anterior + 1;
nueva_sede:=id_sede_anterior+1;
nuevo_servicio:=id_servicio_ant +1;
nuevo_acuerdo:=id_acuerdo_anterior+1;
camioneta:= id_unidad_anterior +1;
moto:= id_unidad_anterior +2;
bicicleta:= id_unidad_anterior +3;
dbms_output.put_line('*    ');
dbms_output.put_line('***********************************************');
dbms_output.put_line('*     INICIO MODULO DE NUEVOS PROVEEDORES     *');
dbms_output.put_line('***********************************************');
dbms_output.put_line('*    ');
INSERT into PROVEEDOR values (nuevo_prov,null,datos_basicos(username,correo)); --cambiar luego
dbms_output.put_line('1-) se inserto nuevo proveedor en la tabla, id: '||nuevo_prov||', nombre: '||username||'y correo: '||correo);
INSERT into SERVICIO values (nuevo_servicio, cant_envio, null, nuevo_prov);
dbms_output.put_line('2-) se agrego un nuevo servicio al nuevo proveedor, id: '||nuevo_servicio||', cantidad de envios mensuales: '||cant_envio||', sin oferta');
INSERT into SEDE values (nueva_sede,nuevo_prov,id_calle,id_municipio,id_estado,datos_lugar(8.639846221406565, -70.23667000130578)); --coordenada de simulacion //la ucab
dbms_output.put_line('3-) se inserto sede de id: '||nueva_sede||'en tabla, id_calle: '||id_calle||', id_municipio: '||id_municipio||'id_estado: '||id_estado||', con coordenada de prueba (8.639846221406565,-70.23667000130578)');
--unidades
--UNIDADES -> (id_unidad,id_sede,id_prov,calle,mun,estado,datos_lugar(latitud,longitud),tipo_unidad,estado_unidad,velocidad_promedio)
--tiene un error, las velocidades estan en km/h, abajo estan los updates
INSERT INTO unidad VALUES (camioneta,nueva_sede,nuevo_prov,id_calle,id_municipio,id_estado,datos_lugar(8.639846221406565, -70.23667000130578),'camioneta','v',22.22);
INSERT INTO unidad VALUES (moto,nueva_sede,nuevo_prov,id_calle,id_municipio,id_estado,datos_lugar(8.639846221406565, -70.23667000130578),'moto','v',11.94);
INSERT INTO unidad VALUES (bicicleta,nueva_sede,nuevo_prov,id_calle,id_municipio,id_estado,datos_lugar(8.639846221406565, -70.23667000130578),'bicicleta','v',4.16);
dbms_output.put_line('se insertaron 3 unidades en la sede '||nueva_sede||', proveedor '||nuevo_prov);
INSERT INTO ACUERDO_SERVICIO a_s values (id_acuerdo_anterior, 'MES', 100, nuevo_prov, nuevo_servicio,id_aliado,historico(to_date(fecha_inicio,'DD-MM-YYYY'), to_date(fecha_fin,'DD-MM-YYYY')));
dbms_output.put_line('4-) se creo acuerdo con aliado: '||id_aliado||' con de 100$ mensuales, contratando el servicio '||nuevo_servicio||' del proveedor '||nuevo_prov||' acuerdo vigente: '||fecha_inicio||'-'||fecha_fin);
dbms_output.put_line('FIN MODULO DE PROVEEDORES NUEVOS');
END;



select * from servicio;

SET serveroutput ON
BEGIN
nuevo_proveedor('Artuto','ar@gmail.com','15-04-2020','15-04-2021');
END;