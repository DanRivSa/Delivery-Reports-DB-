--REPORTE 11
--SELECT DE PRUEBA 
SELECT '01/01/15' as Fecha_Inicio,'31/12/23' as Fecha_Fin, P.DATOS_PROV.NOMBRE_USUARIO as Proveedor_Servicio, P.Foto as Logo_Proveedor_Servicio, ES.Nombre as Estado
FROM Proveedor P, Sede S, Estado ES
Where P.ID_PROVEEDOR IN (SELECT E.ID_PROV 
FROM ENVIO E, SEDE S, Estado ES
Where (E.ID_PROV = S.ID_PROV) and (S.COD_ES = ES.CODIGO_ESTADO) and (ES.NOMBRE = 'Barinas') and (e.fechas.fecha_inicio >= '01/01/15') and (e.fechas.fecha_inicio < '31/12/23')
GROUP BY E.ID_PROV
ORDER BY COUNT (E.TRACKING) DESC
OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY) and (P.ID_PROVEEDOR = S.ID_PROV) and (S.COD_ES = ES.Codigo_estado);

--INICIO DE REPORTE PROCEDURE

CREATE OR REPLACE PROCEDURE reporte11(cur11 OUT SYS_REFCURSOR, parametro_estado varchar, parametro_finicio date, parametro_ffinal date) IS 
cant_registros int;
BEGIN
    SELECT COUNT(*) INTO cant_registros
    FROM Proveedor P, Sede S, Estado ES
    Where P.ID_PROVEEDOR IN (SELECT E.ID_PROV 
                        FROM ENVIO E, SEDE S, Estado ES
                        Where (E.ID_PROV = S.ID_PROV) and (S.COD_ES = ES.CODIGO_ESTADO) and (ES.NOMBRE = parametro_estado) and (e.fechas.fecha_inicio >= parametro_finicio) and (e.fechas.fecha_inicio < parametro_ffinal)
                        GROUP BY E.ID_PROV
                        ORDER BY COUNT (E.TRACKING) DESC
                        OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY) and (P.ID_PROVEEDOR = S.ID_PROV) and (S.COD_ES = ES.Codigo_estado);

IF cant_registros > 0 AND parametro_estado != null AND parametro_finicio !=null AND parametro_ffinal !=null THEN
    OPEN cur11 FOR
    SELECT parametro_finicio as Fecha_Inicio, parametro_ffinal as Fecha_Fin, P.DATOS_PROV.NOMBRE_USUARIO as Proveedor_Servicio, P.Foto as Logo_Proveedor_Servicio, ES.Nombre as Estado
    FROM Proveedor P, Sede S, Estado ES
    Where P.ID_PROVEEDOR IN (SELECT E.ID_PROV 
                        FROM ENVIO E, SEDE S, Estado ES
                        Where (E.ID_PROV = S.ID_PROV) and (S.COD_ES = ES.CODIGO_ESTADO) and (ES.NOMBRE = parametro_estado) and (e.fechas.fecha_inicio >= parametro_finicio) and (e.fechas.fecha_inicio < parametro_ffinal)
                        GROUP BY E.ID_PROV
                        ORDER BY COUNT (E.TRACKING) DESC
                        OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY) and (P.ID_PROVEEDOR = S.ID_PROV) and (S.COD_ES = ES.Codigo_estado);


    ELSE
    OPEN cur11 FOR
    SELECT parametro_finicio as Fecha_Inicio,parametro_ffinal as Fecha_Fin, P.DATOS_PROV.NOMBRE_USUARIO as Proveedor_Servicio, P.Foto as Logo_Proveedor_Servicio, ES.Nombre as Estado
    FROM Proveedor P, Sede S, Estado ES
    Where P.ID_PROVEEDOR IN (SELECT E.ID_PROV 
                            FROM ENVIO E, SEDE S, Estado ES
                            Where (E.ID_PROV = S.ID_PROV) and (S.COD_ES = ES.CODIGO_ESTADO) 
                            GROUP BY E.ID_PROV
                            ORDER BY COUNT (E.TRACKING) DESC
                            OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY) and (P.ID_PROVEEDOR = S.ID_PROV) and (S.COD_ES = ES.Codigo_estado);

    END IF;
END;

--LLAMADA JASPERSOFT
{CALL reporte11($P{ORACLE_REF_CURSOR},$P{parametro_estado},$P{parametro_finicio}, $P{parametro_ffinal} )}
