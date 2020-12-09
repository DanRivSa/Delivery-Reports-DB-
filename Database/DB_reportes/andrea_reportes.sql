-- REPORTE 1

SELECT 
    p.FOTO,
	p.datos_prov.nombre_usuario AS empresa_delivery,
	s.CANT_ENVIO,
	s.OFERTA,
	a.TIEMPO_CALCULO,
	a.PRECIO_AS,
	a.fechas.fecha_inicio AS fecha_inicio,
	a.fechas.fecha_fin AS FECHA_FIN 
FROM SERVICIO s
	INNER JOIN PROVEEDOR p ON 
        s.ID_PROV = p.ID_PROVEEDOR
    INNER JOIN  ACUERDO_SERVICIO a ON 
        s.ID_SERVICIO = a.id_serv

ORDER BY p.datos_prov.nombre_usuario;

-- INICIO DEL REPORTE

CREATE OR REPLACE PROCEDURE presupuesto_prov(prov_cursor OUT SYS_REFCURSOR) IS 
MAXID NUMBER;
BEGIN
SELECT MAX(ID_SERVICIO) INTO MAXID FROM SERVICIO;
OPEN prov_cursor for
SELECT 
    p.FOTO,
	p.datos_prov.nombre_usuario AS empresa_delivery,
	s.CANT_ENVIO,
	s.OFERTA,
	a.TIEMPO_CALCULO,
	a.PRECIO_AS,
	a.fechas.fecha_inicio AS fecha_inicio,
	a.fechas.fecha_fin AS FECHA_FIN 
FROM SERVICIO s
	INNER JOIN PROVEEDOR p ON 
        s.ID_PROV = p.ID_PROVEEDOR
    INNER JOIN  ACUERDO_SERVICIO a ON 
        s.ID_SERVICIO = a.id_serv
where rownum <= MAXID
ORDER BY p.datos_prov.nombre_usuario;
END;

-- llamada en jaspersoft
{CALL presupuesto_prov($P{ORACLE_REF_CURSOR})}