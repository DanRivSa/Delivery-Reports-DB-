--QUERY DE PRUEBA
SELECT env.tracking, env.fechas.fecha_inicio AS fecha_inicio, env.fechas.fecha_fin AS fecha_fin, 
(SELECT COUNT(*) FROM producto_envio pr WHERE pr.tracking = env.tracking) AS cantidad_productos,
us.datos.correo_electronico AS correo_usuario, uni.coordenadas_actuales.longitud AS longitud, uni.coordenadas_actuales.latitud AS latitud 
FROM envio env
INNER JOIN usuario us ON env.id_usuario_envio = us.id_usuario
INNER JOIN unidad uni ON env.id_unidad = uni.id_unidad 
WHERE env.tracking = 1;

--PROCEDURE
CREATE OR REPLACE PROCEDURE reporte_8(cur OUT SYS_REFCURSOR, tracking_num NUMBER) IS
BEGIN
        IF tracking_num != null THEN
        OPEN cur FOR
            SELECT env.tracking, env.fechas.fecha_inicio AS fecha_inicio, env.fechas.fecha_fin AS fecha_fin, 
            (SELECT COUNT(*) FROM producto_envio pr WHERE pr.tracking = env.tracking) AS cantidad_productos,
            us.datos.correo_electronico AS correo_usuario,
            u.coordenadas_actuales.latitud AS lat_actual,u.coordenadas_actuales.longitud AS lon_actual,
            dir.ubi_direccion.latitud AS lat_llegada,dir.ubi_direccion.longitud AS lon_llegada,
            tiempo_llegada(u.coordenadas_actuales.latitud,u.coordenadas_actuales.longitud,dir.ubi_direccion.latitud,dir.ubi_direccion.longitud,u.velocidad_promedio) AS tiempo_estimado_llegada
            FROM envio env
            INNER JOIN usuario us ON env.id_usuario_envio = us.id_usuario
            INNER JOIN unidad u ON u.id_unidad = env.id_unidad
            INNER JOIN  direccion dir ON dir.id_direccion = env.id_dir
            WHERE env.tracking = tracking_num;
        else
        OPEN cur FOR 
            SELECT env.tracking, env.fechas.fecha_inicio AS fecha_inicio, env.fechas.fecha_fin AS fecha_fin, 
            (SELECT COUNT(*) FROM producto_envio pr WHERE pr.tracking = env.tracking) AS cantidad_productos,
            us.datos.correo_electronico AS correo_usuario,
            u.coordenadas_actuales.latitud AS lat_actual,u.coordenadas_actuales.longitud AS lon_actual,
            dir.ubi_direccion.latitud AS lat_llegada,dir.ubi_direccion.longitud AS lon_llegada,
            tiempo_llegada(u.coordenadas_actuales.latitud,u.coordenadas_actuales.longitud,dir.ubi_direccion.latitud,dir.ubi_direccion.longitud,u.velocidad_promedio) AS tiempo_estimado_llegada
            FROM envio env
            INNER JOIN usuario us ON env.id_usuario_envio = us.id_usuario
            INNER JOIN unidad u ON u.id_unidad = env.id_unidad
            INNER JOIN  direccion dir ON dir.id_direccion = env.id_dir;
        END IF;
END;

--LLAMADA JASPERSOFT
{CALL reporte_8($P{ORACLE_REF_CURSOR},$P{numero_tracking})}