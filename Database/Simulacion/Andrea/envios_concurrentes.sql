-- MODULO DE ENVIOS CONCURRENTES

CREATE OR REPLACE FUNCTION envio_concurrente2 (id_pedido INT, sede INT,cant_pedido INT) RETURN NUMBER is
total_uni INT;
id_sede INT;
id_prov INT;
cod_calle INT;
cod_municipio INT;
cod_estado INT ;
lat NUMBER;
lon NUMBER;
velocidad NUMBER;
cont_id INT;
total_moto INT;
id_unidad INT;
nro_unidad INT;
u_nuevas INT;
BEGIN 
SELECT s.id_prov,s.cod_calle,s.cod_mun,s.cod_es,s.ubi_sede.latitud,s.ubi_sede.longitud 
INTO id_prov,cod_calle,cod_municipio,cod_estado,lat,lon 
FROM sede s
Where id_sede = sede;
SELECT COUNT(*) INTO total_moto FROM unidad u WHERE u.tipo_unidad = 'moto' and u.cod_estado =cod_estado;
SELECT MAX (u.id_unidad) INTO id_unidad FROM unidad u;
dbms_output.put_line('*    ');
dbms_output.put_line('***********************************************');
dbms_output.put_line('*     INICIO MODULO DE ENVIOS CONCURRENTES    *');
dbms_output.put_line('***********************************************');
dbms_output.put_line('*    ');

    IF cant_pedido >= total_moto THEN
            dbms_output.put_line('¿ Existe unidades de tipo moto disponibles?');
            -- BUSCAR UNIDAD PARA ASIGNAR TIPO MOTO
            SELECT u.id_unidad INTO nro_unidad from unidad u 
            WHERE u.tipo_unidad = 'moto' and u.cod_municipio = cod_municipio  AND  u.cod_estado = cod_estado and u.id_sede = sede AND u.estado_unidad = 'v';
            -- ASIGNAR UNIDAD PARA ASIGNAR TIPO MOTO
            RETURN nro_unidad;
    ELSE
        dbms_output.put_line('¿ Existe unidades de tipo moto disponibles?');
        dbms_output.put_line('Se procede a adquirir mas unidades de tipo moto');
        dbms_output.put_line('*    ');
        u_nuevas := total_moto*0.10;
        cont_id := 1;
        FOR COUNT IN 1..u_nuevas
        LOOP 
            INSERT INTO unidad VALUES 
            (id_unidad+cont_id,sede,id_prov,cod_calle,cod_municipio,cod_estado,
            datos_lugar(lat,lon),'moto','v',velocidad);
            dbms_output.put_line('Se ha adquirido la unidad # ' || id_unidad+cont_id || ' en la sede ' || sede || ' De tipo moto' );
            cont_id := cont_id+1;
        END LOOP;

            RETURN id_unidad+cont_id;
    END IF;
    
END;