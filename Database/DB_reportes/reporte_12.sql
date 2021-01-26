--QUERY DE PRUEBA
SELECT prov.foto AS logo_proveedor, 
mun_sed.nombre AS zona_origen,
mun.nombre AS zona_destino,
tiempo_llegada(u.coordenadas_actuales.latitud,u.coordenadas_actuales.longitud,dir.ubi_direccion.latitud,dir.ubi_direccion.longitud,u.velocidad_promedio) AS tiempo_estimado_llegada,
u.tipo_unidad 
FROM envio env
INNER JOIN proveedor prov ON env.id_prov = prov.id_proveedor 
INNER JOIN unidad u ON u.id_unidad = env.id_unidad
INNER JOIN direccion dir ON dir.id_direccion = env.id_dir
INNER JOIN municipio mun ON dir.cod_mun = mun.codigo_municipio
INNER JOIN sede sed ON sed.id_sede = env.id_sede_u
INNER JOIN municipio mun_sed ON mun_sed.codigo_municipio = sed.cod_mun

--PROCEDURE
CREATE OR REPLACE PROCEDURE reporte_12(cur OUT SYS_REFCURSOR,zona_origen INT, zona_destino INT) IS
cant_registros INT;
BEGIN
    SELECT COUNT(*) INTO cant_registros FROM envio env
    INNER JOIN sede sed on sed.id_sede = env.id_sede_u
    INNER JOIN direccion dir ON dir.id_direccion = env.id_dir
    INNER JOIN municipio mun_sed ON mun_sed.codigo_municipio = sed.cod_mun
    INNER JOIN municipio mun_dest ON mun_dest.codigo_municipio = dir.cod_mun
    WHERE mun_sed.codigo_municipio = zona_origen AND mun_dest.codigo_municipio = zona_destino;

    IF cant_registros > 0 AND zona_origen != null AND zona_destino !=null THEN
        OPEN cur FOR
            SELECT prov.foto AS logo_proveedor, 
            mun_sed.nombre AS zona_origen,
            mun.nombre AS zona_destino,
            tiempo_llegada(u.coordenadas_actuales.latitud,u.coordenadas_actuales.longitud,dir.ubi_direccion.latitud,dir.ubi_direccion.longitud,u.velocidad_promedio) AS tiempo_estimado_llegada,
            u.tipo_unidad 
            FROM envio env
            INNER JOIN proveedor prov ON env.id_prov = prov.id_proveedor 
            INNER JOIN unidad u ON u.id_unidad = env.id_unidad
            INNER JOIN direccion dir ON dir.id_direccion = env.id_dir
            INNER JOIN municipio mun ON dir.cod_mun = mun.codigo_municipio
            INNER JOIN sede sed ON sed.id_sede = env.id_sede_u
            INNER JOIN municipio mun_sed ON mun_sed.codigo_municipio = sed.cod_mun
            WHERE mun_sed.codigo_municipio = zona_origen AND mun.codigo_municipio = zona_destino;
    ELSE
        OPEN cur FOR 
            SELECT prov.foto AS logo_proveedor, 
            mun_sed.nombre AS zona_origen,
            mun.nombre AS zona_destino,
            tiempo_llegada(u.coordenadas_actuales.latitud,u.coordenadas_actuales.longitud,dir.ubi_direccion.latitud,dir.ubi_direccion.longitud,u.velocidad_promedio) AS tiempo_estimado_llegada,
            u.tipo_unidad 
            FROM envio env
            INNER JOIN proveedor prov ON env.id_prov = prov.id_proveedor 
            INNER JOIN unidad u ON u.id_unidad = env.id_unidad
            INNER JOIN direccion dir ON dir.id_direccion = env.id_dir
            INNER JOIN municipio mun ON dir.cod_mun = mun.codigo_municipio
            INNER JOIN sede sed ON sed.id_sede = env.id_sede_u
            INNER JOIN municipio mun_sed ON mun_sed.codigo_municipio = sed.cod_mun;
    END IF;

END;

--LLAMADA JASPERSOFT
{CALL reporte_12($P{ORACLE_REF_CURSOR},$P{zona_origen},$P{zona_destino})}
