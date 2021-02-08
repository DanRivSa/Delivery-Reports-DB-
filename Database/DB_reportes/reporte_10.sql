--REPORTE 10
--SELECT DE PRUEBA 
Select ase.fechas.fecha_inicio as Fecha_Inicio, ase.fechas.fecha_fin as Fecha_Fin, ac.nombre as Comercio, P.DATOS_PROV.NOMBRE_USUARIO as Proveedor_Servicio, P.Foto as Logo_Proveedor, (select '$' || sum(ase.precio_as)
                                                                                                                                                                                        from acuerdo_Servicio ase, proveedor p
                                                                                                                                                                                        where (ase.id_prov_serv = p.id_proveedor) and (P.DATOS_PROV.NOMBRE_USUARIO = 'Ego')) as Ingresos
from aliado_comercial ac, proveedor p, acuerdo_servicio ase
where (ase.id_prov_serv = p.id_proveedor) and (ase.id_aliado = ac.id_aliado) and (P.DATOS_PROV.NOMBRE_USUARIO = 'Ego') and (ase.fechas.fecha_inicio >= to_date('10-01-2020','DD-MM-YYYY')) and (ase.fechas.fecha_inicio <= to_date('10-01-2021','DD-MM-YYYY'));

--INICIO DEL REPORTE PROCEDURE

CREATE OR REPLACE PROCEDURE reporte10(cur10 OUT SYS_REFCURSOR, parametro_nombreproveedor varchar, parametro_finicio date, parametro_ffinal date) IS 
cant_registros int;
BEGIN
    SELECT COUNT(*) INTO cant_registros
    from aliado_comercial ac, proveedor p, acuerdo_servicio ase
    where (ase.id_prov_serv = p.id_proveedor) and (ase.id_aliado = ac.id_aliado) and (P.DATOS_PROV.NOMBRE_USUARIO = parametro_nombreproveedor) and (ase.fechas.fecha_inicio >= parametro_finicio) and (ase.fechas.fecha_inicio <= parametro_ffinal) ;

IF cant_registros > 0 THEN
    OPEN cur10 FOR
        Select ase.fechas.fecha_inicio as Fecha_Inicio, ase.fechas.fecha_fin as Fecha_Fin, ac.nombre as Comercio, P.DATOS_PROV.NOMBRE_USUARIO as Proveedor_Servicio, P.Foto as Logo_Proveedor, (select '$' || sum(ase.precio_as)
                                                                                                                                                                                                from acuerdo_Servicio ase, proveedor p
                                                                                                                                                                                                where (ase.id_prov_serv = p.id_proveedor) and (P.DATOS_PROV.NOMBRE_USUARIO = parametro_nombreproveedor)) as Ingresos
        from aliado_comercial ac, proveedor p, acuerdo_servicio ase
        where (ase.id_prov_serv = p.id_proveedor) and (ase.id_aliado = ac.id_aliado) and (P.DATOS_PROV.NOMBRE_USUARIO = parametro_nombreproveedor) and (ase.fechas.fecha_inicio >= parametro_finicio) and (ase.fechas.fecha_inicio <= parametro_ffinal) ;

ELSE
    OPEN cur10 FOR
        Select ase.fechas.fecha_inicio as Fecha_Inicio, ase.fechas.fecha_fin as Fecha_Fin, ac.nombre as Comercio, P.DATOS_PROV.NOMBRE_USUARIO as Proveedor_Servicio, P.Foto as Logo_Proveedor, (select '$' || sum(ase.precio_as)
                                                                                                                                                                                                from acuerdo_Servicio ase, proveedor p
                                                                                                                                                                                                where (ase.id_prov_serv = p.id_proveedor) ) as Ingresos
        from aliado_comercial ac, proveedor p, acuerdo_servicio ase
        where (ase.id_prov_serv = p.id_proveedor) and (ase.id_aliado = ac.id_aliado);
END IF;
END;

{CALL reporte10($P{ORACLE_REF_CURSOR},$P{parametro_nombreproveedor},$P{parametro_finicio}, $P{parametro_ffinal} )}
