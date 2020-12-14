--- MODULO DE REPOSICIÓN DE UNIDADES


CREATE OR REPLACE FUNCTION reposicion_unidades (tipo VARCHAR2,sede INT) RETURN NUMBER IS
 u_nuevas INT;
 id_prov INT;
 cod_calle INT;
 cod_municipio INT;
 cod_estado INT ;
 lat NUMBER;
 lon NUMBER;
 velocidad NUMBER;
 cont_id INT;
 total_unidades INT;
 id_unidad INT;
BEGIN
SELECT s.id_prov,s.cod_calle,s.cod_mun,s.cod_es,s.ubi_sede.latitud,s.ubi_sede.longitud 
INTO id_prov,cod_calle,cod_municipio,cod_estado,lat,lon 
FROM sede s
Where id_sede = sede;
SELECT MAX (u.id_unidad) INTO total_unidades FROM unidad u WHERE u.tipo_unidad = tipo and u.cod_estado =cod_estado;
SELECT MAX (u.id_unidad) INTO id_unidad FROM unidad u;
select u.velocidad_promedio INTO velocidad FROM unidad u WHERE tipo_unidad = tipo and rownum = 1;
u_nuevas := total_unidades*0.15;
cont_id := 1;
dbms_output.put_line('*    ');
dbms_output.put_line('***********************************************');
dbms_output.put_line('*   INICIO MODULO DE REPOSICION DE UNIDADES   *');
dbms_output.put_line('***********************************************');
dbms_output.put_line('*    ');
FOR COUNT IN 1..u_nuevas
LOOP 
INSERT INTO unidad VALUES 
(id_unidad+cont_id,sede,id_prov,cod_calle,cod_municipio,cod_estado,
datos_lugar(lat,lon),tipo,'v',velocidad);
dbms_output.put_line('Se ha adquirido la unidad # ' || id_unidad+cont_id || ' en la sede ' || sede || ' De tipo ' || tipo);
cont_id := cont_id+1;
END LOOP;
RETURN id_unidad+(cont_id-1);
END;



-- llamada de prueba 

SET serveroutput ON
declare 
NUEVA INT;
BEGIN
 NUEVA := reposicion_unidades('moto',1);
 dbms_output.put_line('id ' || nueva);
END;


