--cantidad de envios realizados por aliado comercial parametrizado por comercio, fecha_inicio,fecha_fin y estado
select al_com.foto as Logo_aliado, al_com.nombre as Nombre, CASE al_com.sector
WHEN 'A' THEN 'Alimentos'
WHEN 'R' THEN 'Vestimenta'
WHEN 'F' THEN 'Farmacia'
WHEN 'T' THEN 'Tecnologia'
END AS sector,
prov.foto as Logo_prov,
prov.datos_prov.nombre_usuario AS delivery_empleado,
to_date('01-01-2020','DD-MM-YYYY') as fecha_inicio, --rango fecha inicio de parametro
 to_date('24-12-2020','DD-MM-YYYY') as fecha_fin,-- rango fecha fin de parametro
es.nombre as Estado,
(SELECT COUNT(*) FROM envio v WHERE v.fechas.fecha_fin BETWEEN to_date('01-01-2020','DD-MM-YYYY') AND to_date('24-12-2020','DD-MM-YYYY') AND v.id_prov_u = prov.id_proveedor AND v.id_aliado = al_com.id_aliado ) as Cantidad_envios
from aliado_comercial al_com
INNER JOIN acuerdo_servicio ac ON ac.id_aliado = al_com.id_aliado
INNER JOIN proveedor prov ON prov.id_proveedor = ac.id_prov_serv
INNER JOIN envio env ON env.id_acuerdo = ac.id_acuerdo
INNER JOIN sucursal suc ON suc.id_aliado = al_com.id_aliado
INNER JOIN estado es ON es.codigo_estado = suc.cod_es
WHERE --condicion
env.fechas.fecha_inicio BETWEEN to_date('15-03-2020','DD-MM-YYYY') AND to_date('24-12-2020','DD-MM-YYYY') --usar fechas parametro
AND
env.fechas.fecha_fin BETWEEN to_date('15-03-2020','DD-MM-YYYY') AND to_date('24-12-2020','DD-MM-YYYY')
AND es.codigo_estado = 12--usar parametro
AND al_com.sector = 'A'; --usar parametro

--procedure
CREATE OR REPLACE PROCEDURE reporte_3(cur OUT SYS_REFCURSOR,sector CHAR, fecha_ini DATE, fecha_fin DATE, estado INT) IS
BEGIN
    OPEN cur FOR
    select al_com.foto as Logo_aliado, al_com.nombre as Nombre, CASE al_com.sector
    WHEN 'A' THEN 'Alimentos'
    WHEN 'R' THEN 'Vestimenta'
    WHEN 'F' THEN 'Farmacia'
    WHEN 'T' THEN 'Tecnologia'
    END AS sector,
    prov.foto as Logo_prov,
    prov.datos_prov.nombre_usuario AS delivery_empleado,
    fecha_ini as fecha_inicio, --rango fecha inicio de parametro
    fecha_fin as fecha_fin,-- rango fecha fin de parametro
    es.nombre as Estado,
    (SELECT COUNT(*) FROM envio v WHERE v.fechas.fecha_fin BETWEEN to_date('01-01-2020','DD-MM-YYYY') AND to_date('24-12-2020','DD-MM-YYYY') AND v.id_prov_u = prov.id_proveedor AND v.id_aliado = al_com.id_aliado ) as Cantidad_envios
    from aliado_comercial al_com
    INNER JOIN acuerdo_servicio ac ON ac.id_aliado = al_com.id_aliado
    INNER JOIN proveedor prov ON prov.id_proveedor = ac.id_prov_serv
    INNER JOIN envio env ON env.id_acuerdo = ac.id_acuerdo
    INNER JOIN sucursal suc ON suc.id_aliado = al_com.id_aliado
    INNER JOIN estado es ON es.codigo_estado = suc.cod_es
    WHERE --condicion
    env.fechas.fecha_inicio BETWEEN fecha_ini AND fecha_fin --usar fechas parametro
    AND
    env.fechas.fecha_fin BETWEEN fecha_ini AND fecha_fin
    AND es.codigo_estado = estado--usar parametro
    AND al_com.sector = sector; --usar parametro

END;

{CALL reporte_3($P{ORACLE_REF_CURSOR}, $P{sector_comercio},$P{fecha_inicio},$P{fecha_fin},$P{codigo_estado})}