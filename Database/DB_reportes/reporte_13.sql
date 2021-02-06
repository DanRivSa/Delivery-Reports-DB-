--REPORTE 13
--SELECT DE PRUEBA 
SELECT '01/01/15' as Fecha_Inicio,'31/12/23' as Fecha_Fin, P.DATOS_PROV.NOMBRE_USUARIO as Proveedor_Servicio, P.Foto as Logo_Proveedor_Servicio, V.Puntaje as Promedio_Satisfaccion
FROM Proveedor P, Sede S, Estado ES, Valoracion V
Where (P.ID_PROVEEDOR = S.ID_PROV) and (S.COD_ES = ES.Codigo_estado) and (V.ID_PROV = P.ID_PROVEEDOR) and (v.fecha.fecha_inicio >= '01/01/15') and (v.fecha.fecha_inicio < '31/12/23');

select * from valoracion
--INICIO DEL REPORTE PROCEDURE

CREATE OR REPLACE PROCEDURE reporte13(cur13 OUT SYS_REFCURSOR, parametro_finicio date, parametro_ffinal date) IS 
cant_registros int;
BEGIN
    SELECT COUNT(*) INTO cant_registros
    FROM Proveedor P, Sede S, Estado ES, Valoracion V
    Where (P.ID_PROVEEDOR = S.ID_PROV) and (S.COD_ES = ES.Codigo_estado) and (V.ID_PROV = P.ID_PROVEEDOR) and (v.fecha.fecha_inicio >= '01/01/15') and (v.fecha.fecha_inicio < '31/12/23');

IF cant_registros > 0 AND parametro_finicio !=null AND parametro_ffinal !=null THEN
    OPEN cur13 FOR
   SELECT 'parametro_finicio' as Fecha_Inicio, 'parametro_ffinal' as Fecha_Fin, P.DATOS_PROV.NOMBRE_USUARIO as Proveedor_Servicio, P.Foto as Logo_Proveedor_Servicio, V.Puntaje as Promedio_Satisfaccion
    FROM Proveedor P, Sede S, Estado ES, Valoracion V
    Where (P.ID_PROVEEDOR = S.ID_PROV) and (S.COD_ES = ES.Codigo_estado) and (V.ID_PROV = P.ID_PROVEEDOR) and (v.fecha.fecha_inicio >= 'parametro_finicio') and (v.fecha.fecha_inicio < 'parametro_ffinal');

    ELSE
    OPEN cur13 FOR
        SELECT '01/01/15' as Fecha_Inicio,'31/12/23' as Fecha_Fin, P.DATOS_PROV.NOMBRE_USUARIO as Proveedor_Servicio, P.Foto as Logo_Proveedor_Servicio, V.Puntaje as Promedio_Satisfaccion
        FROM Proveedor P, Sede S, Estado ES, Valoracion V
        Where (P.ID_PROVEEDOR = S.ID_PROV) and (S.COD_ES = ES.Codigo_estado) and (V.ID_PROV = P.ID_PROVEEDOR);

    END IF;
END;

--LLAMADA JASPERSOFT
{CALL reporte10($P{ORACLE_REF_CURSOR},$P{parametro_finicio}, $P{parametro_ffinal} )}
