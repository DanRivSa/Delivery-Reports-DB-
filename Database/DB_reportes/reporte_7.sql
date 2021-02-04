--REPORTE 7
--SELECT DE PRUEBA 
Select es.nombre as Estado, P.DATOS_PROV.NOMBRE_USUARIO as Proveedor, P.Foto as Logo_Proveedor_Servicio, c.nombre as Direccion_Envio, e.punto_de_referencia as Referencia, e.tracking as Tracking, e.fechas.fecha_inicio as Fecha_Inicio, e.fechas.fecha_fin as Fecha_Fin, (select count(pe.id_producto)
                                                                                                                                                                                                                                                                            from producto_envio pe, envio e
                                                                                                                                                                                                                                                                             where (pe.tracking = e.tracking) and (e.id_prov = 1)) as Cantidad_Productos, u.Datos.correo_electronico as Email
from envio e, usuario u, registro r, proveedor p, direccion d, estado es, calle c
where (e.id_usuario_envio = u.id_usuario) and (u.id_usuario = r.id_usuario_reg) and (r.id_prov = p.id_proveedor) and (e.id_dir = d.id_direccion) and (d.cod_es = es.codigo_estado) 
and (d.cod_calle = c.c_calle) and p.id_proveedor =1 and (es.nombre = 'Distrito Capital') and (e.fechas.fecha_inicio >= '15/01/20') and (e.fechas.fecha_inicio < '31/12/22');
END;

--INICIO DEL REPORTE PROCEDURE

CREATE OR REPLACE PROCEDURE reporte7(cur7 OUT SYS_REFCURSOR,parametro_proveedor number, parametro_estado varchar, parametro_finicio date, parametro_ffinal date) IS 
cant_registros int;
BEGIN
    SELECT COUNT(*) INTO cant_registros
    from envio e, usuario u, registro r, proveedor p, direccion d, estado es, calle c
    where (e.id_usuario_envio = u.id_usuario) and (u.id_usuario = r.id_usuario_reg) and (r.id_prov = p.id_proveedor) and (e.id_dir = d.id_direccion) and (d.cod_es = es.codigo_estado) 
    and (d.cod_calle = c.c_calle) and p.id_proveedor =1 and (es.nombre = 'parametro_estado') and (e.fechas.fecha_inicio >= 'patametro_finicio') and (e.fechas.fecha_inicio < 'parametro_ffinal');

IF cant_registros > 0 AND parametro_estado != null AND parametro_finicio !=null AND parametro_ffinal !=null THEN
    OPEN cur7 FOR
    Select es.nombre as Estado, P.DATOS_PROV.NOMBRE_USUARIO as Proveedor, P.Foto as Logo_Proveedor_Servicio, c.nombre as Direccion_Envio, e.punto_de_referencia as Referencia, e.tracking as Tracking, e.fechas.fecha_inicio as Fecha_Inicio, e.fechas.fecha_fin as Fecha_Fin, (select count(pe.id_producto)
                                                                                                                                                                                                                                                                            from producto_envio pe, envio e
                                                                                                                                                                                                                                                                             where (pe.tracking = e.tracking) and (e.id_prov = parametro_proveedor)) as Cantidad_Productos, u.Datos.correo_electronico as Email
from envio e, usuario u, registro r, proveedor p, direccion d, estado es, calle c
where (e.id_usuario_envio = u.id_usuario) and (u.id_usuario = r.id_usuario_reg) and (r.id_prov = p.id_proveedor) and (e.id_dir = d.id_direccion) and (d.cod_es = es.codigo_estado) 
and (d.cod_calle = c.c_calle) and p.id_proveedor =1 and (es.nombre = 'parametro_estado') and (e.fechas.fecha_inicio >= 'parametro_finicio') and (e.fechas.fecha_inicio < 'parametro_ffinal');

    ELSE
    OPEN cur7 FOR
    Select es.nombre as Estado, P.DATOS_PROV.NOMBRE_USUARIO as Proveedor, P.Foto as Logo_Proveedor_Servicio, c.nombre as Direccion_Envio, e.punto_de_referencia as Referencia, e.tracking as Tracking, e.fechas.fecha_inicio as Fecha_Inicio, e.fechas.fecha_fin as Fecha_Fin, (select count(pe.id_producto)
                                                                                                                                                                                                                                                                            from producto_envio pe, envio e
                                                                                                                                                                                                                                                                             where (pe.tracking = e.tracking)) as Cantidad_Productos, u.Datos.correo_electronico as Email
from envio e, usuario u, registro r, proveedor p, direccion d, estado es, calle c
where (e.id_usuario_envio = u.id_usuario) and (u.id_usuario = r.id_usuario_reg) and (r.id_prov = p.id_proveedor) and (e.id_dir = d.id_direccion) and (d.cod_es = es.codigo_estado) 
and (d.cod_calle = c.c_calle);
END IF;
END;

--LLAMADA JASPERSOFT

{CALL reporte7($P{ORACLE_REF_CURSOR},$P{parametro_proveedor},$P{parametro_estado},$P{parametro_finicio}, $P{parametro_ffinal} )}
