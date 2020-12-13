--- MODULO DE REPOSICIÓN DE UNIDADES

CREATE OR REPLACE reposicion_unidades (total_unidades INT, tipo VARCHAR2,sede INT) IS
 u_nuevas INT;
 id_prov INT;
 cod_calle INT;
 cod_municipio INT;
 cod_estado INT ;
 lat INT;
 lon INT;
 velocidad INT;
 cont_id INT;
BEGIN
SELECT s.id_prov,s.calle,s.mun,s.estado,s.ubi_sede.latitud,s.ubi_sede.longitud 
INTO id_prov,cod_calle,cod_municipio,cod_estado,lat,lon 
FROM sede s
Where id_sede = sede;
select u.velocidad_promedio INTO velocidad FROM unidad u WHERE tipo_unidad = tipo;
u_nuevas := total_unidades*0.15;
ROUND(u_nuevas);
FOR COUNT IN 1..u_nuevas
LOOP 

INSERT INTO unidad VALUES 
(total_unidades+cont_id,sede,id_prov,cod_calle,cod_municipio,cod_estado,datos_lugar(lat,lon),tipo,'v',velocidad);
cont_id := cont_id+1;
END LOOP;

END;