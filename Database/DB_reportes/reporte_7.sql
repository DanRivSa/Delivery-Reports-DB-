--REPORTE 7
--SELECT DE PRUEBA 
Select es.nombre as Estado, 
P.DATOS_PROV.NOMBRE_USUARIO as Proveedor, 
P.Foto as Logo_Proveedor_Servicio, 
c.nombre as Direccion_Envio, 
e.punto_de_referencia as Referencia, 
e.tracking as Tracking, 
e.fechas.fecha_inicio as Fecha_Inicio, 
e.fechas.fecha_fin as Fecha_Fin, 
(select count(*) from producto_envio pe where pe.tracking = e.tracking) as Cantidad_Productos, 
u.Datos.correo_electronico as Email
from envio e INNER JOIN usuario u 
ON e.id_usuario_envio = u.id_usuario 
INNER JOIN registro r ON e.id_usuario_envio = r.id_usuario_reg
INNER JOIN proveedor p ON e.id_prov = p.id_proveedor
INNER JOIN direccion d ON e.id_dir = d.id_direccion
INNER JOIN estado es ON d.cod_es = es.codigo_estado
INNER JOIN calle c ON d.cod_calle = c.c_calle
where  p.id_proveedor =12 and es.nombre = 'Barinas' and e.fechas.fecha_inicio >= to_date('15-02-2020','DD-MM-YYYY') and e.fechas.fecha_inicio < to_date('27-12-2020','DD-MM-YYYY');


--INICIO DEL REPORTE PROCEDURE

CREATE OR REPLACE PROCEDURE reporte7(cur7 OUT SYS_REFCURSOR,parametro_proveedor number, parametro_estado varchar, parametro_finicio date, parametro_ffinal date) IS 
cant_registros int;
BEGIN
    SELECT COUNT(*) into cant_registros
    from envio e INNER JOIN usuario u 
    ON e.id_usuario_envio = u.id_usuario 
    INNER JOIN registro r ON e.id_usuario_envio = r.id_usuario_reg
    INNER JOIN proveedor p ON e.id_prov = p.id_proveedor
    INNER JOIN direccion d ON e.id_dir = d.id_direccion
    INNER JOIN estado es ON d.cod_es = es.codigo_estado
    INNER JOIN calle c ON d.cod_calle = c.c_calle
    where  p.id_proveedor =parametro_proveedor and es.nombre = parametro_estado and e.fechas.fecha_inicio >= parametro_finicio and e.fechas.fecha_inicio < parametro_ffinal;

    IF cant_registros > 0 AND parametro_estado != null AND parametro_finicio !=null AND parametro_ffinal !=null THEN
    OPEN cur7 FOR
        Select es.nombre as Estado, 
        P.DATOS_PROV.NOMBRE_USUARIO as Proveedor, 
        P.Foto as Logo_Proveedor_Servicio, 
        c.nombre as Direccion_Envio, 
        e.punto_de_referencia as Referencia, 
        e.tracking as Tracking, 
        e.fechas.fecha_inicio as Fecha_Inicio, 
        e.fechas.fecha_fin as Fecha_Fin, 
        (select count(*) from producto_envio pe where pe.tracking = e.tracking) as Cantidad_Productos, 
        u.Datos.correo_electronico as Email
        from envio e INNER JOIN usuario u 
        ON e.id_usuario_envio = u.id_usuario 
        INNER JOIN registro r ON e.id_usuario_envio = r.id_usuario_reg
        INNER JOIN proveedor p ON e.id_prov = p.id_proveedor
        INNER JOIN direccion d ON e.id_dir = d.id_direccion
        INNER JOIN estado es ON d.cod_es = es.codigo_estado
        INNER JOIN calle c ON d.cod_calle = c.c_calle
        where  p.id_proveedor =parametro_proveedor and es.nombre = parametro_estado and e.fechas.fecha_inicio >= parametro_finicio and e.fechas.fecha_inicio < parametro_ffinal;

    ELSE
    OPEN cur7 FOR
        Select es.nombre as Estado, 
        P.DATOS_PROV.NOMBRE_USUARIO as Proveedor, 
        P.Foto as Logo_Proveedor_Servicio, 
        c.nombre as Direccion_Envio, 
        e.punto_de_referencia as Referencia, 
        e.tracking as Tracking, 
        e.fechas.fecha_inicio as Fecha_Inicio, 
        e.fechas.fecha_fin as Fecha_Fin, 
        (select count(*) from producto_envio pe where pe.tracking = e.tracking) as Cantidad_Productos, 
        u.Datos.correo_electronico as Email
        from envio e INNER JOIN usuario u 
        ON e.id_usuario_envio = u.id_usuario 
        INNER JOIN registro r ON e.id_usuario_envio = r.id_usuario_reg
        INNER JOIN proveedor p ON e.id_prov = p.id_proveedor
        INNER JOIN direccion d ON e.id_dir = d.id_direccion
        INNER JOIN estado es ON d.cod_es = es.codigo_estado
        INNER JOIN calle c ON d.cod_calle = c.c_calle;
    END IF;
END;

--LLAMADA JASPERSOFT

{CALL reporte7($P{ORACLE_REF_CURSOR},$P{parametro_proveedor},$P{parametro_estado},$P{parametro_finicio}, $P{parametro_ffinal} )}
