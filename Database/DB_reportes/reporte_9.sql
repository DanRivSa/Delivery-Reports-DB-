--REPORTE 9
--SELECT DE PRUEBA 
--REPORTE 9
--SELECT DE PRUEBA 
Select e.fechas.fecha_inicio as Fecha_Inicio, e.fechas.fecha_fin as Fecha_Fin, s.nombre as Estado, m.nombre as Zona, Case c.SECTOR
WHEN 'A' THEN 'Alimentos'
WHEN 'R' THEN 'Vestimenta'
WHEN 'F' THEN 'Farmacia'
WHEN 'T' THEN 'Tecnologia'
END SECTOR, (select count(*) from producto_envio pe where e.tracking = pe.tracking) as Cantidad_Productos 
from envio e
inner join aliado_comercial c on e.id_aliado =c.id_aliado
inner join direccion d on e.id_dir = d.id_direccion 
inner join municipio m on d.cod_mun = m.codigo_municipio
inner join estado s on d.cod_es = s.codigo_estado
Where m.nombre= 'Chacao' and s.nombre = 'Miranda' and e.fechas.fecha_inicio BETWEEN to_date('01-01-2019','DD-MM-YYYY') and to_date('01-01-2021','DD-MM-YYYY') AND rownum <=10 ORDER BY Cantidad_Productos desc;
--INICIO DEL REPORTE PROCEDURE

CREATE OR REPLACE PROCEDURE reporte9(cur9 OUT SYS_REFCURSOR, parametro_municipio varchar, parametro_estado varchar, parametro_finicio date, parametro_ffinal date) IS 
cant_registros int;
BEGIN
    SELECT COUNT(*) INTO cant_registros
    from envio e
    inner join aliado_comercial c on e.id_aliado =c.id_aliado
    inner join direccion d on e.id_dir = d.id_direccion 
    inner join municipio m on d.cod_mun = m.codigo_municipio
    inner join estado s on d.cod_es = s.codigo_estado
    Where m.nombre= parametro_municipio and s.nombre = parametro_estado and e.fechas.fecha_inicio BETWEEN parametro_finicio and parametro_ffinal and rownum <=10;

IF cant_registros > 0 AND parametro_estado != null AND parametro_municipio != null AND parametro_finicio !=null AND parametro_ffinal !=null THEN
    OPEN cur9 FOR
        Select e.fechas.fecha_inicio as Fecha_Inicio, e.fechas.fecha_fin as Fecha_Fin, s.nombre as Estado, m.nombre as Zona, Case c.SECTOR
        WHEN 'A' THEN 'Alimentos'
        WHEN 'R' THEN 'Vestimenta'
        WHEN 'F' THEN 'Farmacia'
        WHEN 'T' THEN 'Tecnologia'
        END SECTOR, (select count(*) from producto_envio pe where e.tracking = pe.tracking) as Cantidad_Productos 
        from envio e
        inner join aliado_comercial c on e.id_aliado =c.id_aliado
        inner join direccion d on e.id_dir = d.id_direccion 
        inner join municipio m on d.cod_mun = m.codigo_municipio
        inner join estado s on d.cod_es = s.codigo_estado
        Where m.nombre= parametro_municipio and s.nombre = parametro_estado and e.fechas.fecha_inicio BETWEEN parametro_finicio and parametro_ffinal and rownum <=10;

    ELSE
    OPEN cur9 FOR
        Select e.fechas.fecha_inicio as Fecha_Inicio, e.fechas.fecha_fin as Fecha_Fin, s.nombre as Estado, m.nombre as Zona, Case c.SECTOR
        WHEN 'A' THEN 'Alimentos'
        WHEN 'R' THEN 'Vestimenta'
        WHEN 'F' THEN 'Farmacia'
        WHEN 'T' THEN 'Tecnologia'
        END SECTOR, (select count(*) from producto_envio pe where e.tracking = pe.tracking) as Cantidad_Productos 
        from envio e
        inner join aliado_comercial c on e.id_aliado =c.id_aliado
        inner join direccion d on e.id_dir = d.id_direccion 
        inner join municipio m on d.cod_mun = m.codigo_municipio
        inner join estado s on d.cod_es = s.codigo_estado
        ORDER BY cantidad_productos desc 

    END IF;
END;

--LLAMADA JASPERSOFT
{CALL reporte9($P{ORACLE_REF_CURSOR},$P{parametro_estado},$P{parametro_municipio},$P{parametro_finicio}, $P{parametro_ffinal} )}
