-- REPORTE 2 
-- REPORTE DE EMPRESAS ALIADAS PARA EL ENVIO DE PRODUCTOS A DELIVERY PARAMETRIZADO POR ESTADO

-- SELECT DE PRUEBA

SELECT 
    c.FOTO,
    Case c.SECTOR
    WHEN 'A' THEN 'Alimentos'
    WHEN 'R' THEN 'Vestimenta'
    WHEN 'F' THEN 'Farmacia'
    WHEN 'T' THEN 'Tecnologia'
    END SECTOR,
	c.NOMBRE,
	u.COD_ES,
	e.NOMBRE as estado_nombre,
    p.datos_prov.nombre_usuario AS empresa_delivery,
	s.OFERTA,
	a.fechas.fecha_inicio AS fecha_inicio,
	a.fechas.fecha_fin AS FECHA_FIN,
	a.PRECIO_AS,
	a.TIEMPO_CALCULO
FROM ACUERDO_SERVICIO a
	INNER JOIN ALIADO_COMERCIAL c ON 
	 a.ID_ALIADO = c.ID_ALIADO 
    INNER JOIN SERVICIO s ON
     a.id_serv = s.ID_SERVICIO
	INNER JOIN PROVEEDOR p ON 
	 s.ID_PROV = p.ID_PROVEEDOR
	INNER JOIN SUCURSAL  u ON 
     c.ID_ALIADO = u.ID_ALIADO
    INNER JOIN ESTADO e ON
    e.CODIGO_ESTADO = u.cod_es

WHERE u.cod_es = 12
ORDER BY c.NOMBRE; 
     

--INICIO DE REPORTE PROCEDURE

CREATE OR REPLACE PROCEDURE aliadorep2(ali_cursor OUT SYS_REFCURSOR,estado NUMBER) IS 
MAXID NUMBER;
BEGIN
SELECT MAX(id_acuerdo) INTO MAXID FROM acuerdo_servicio;
OPEN ali_cursor for
SELECT 
    c.FOTO,
    Case c.SECTOR
    WHEN 'A' THEN 'Alimentos'
    WHEN 'R' THEN 'Vestimenta'
    WHEN 'F' THEN 'Farmacia'
    WHEN 'T' THEN 'Tecnologia'
    END SECTOR,
	c.NOMBRE,
	u.COD_ES,
	e.NOMBRE as estado_nombre,
    p.datos_prov.nombre_usuario AS empresa_delivery,
	s.OFERTA,
	a.fechas.fecha_inicio AS fecha_inicio,
	a.fechas.fecha_fin AS FECHA_FIN,
	a.PRECIO_AS,
	a.TIEMPO_CALCULO
FROM ACUERDO_SERVICIO a
	INNER JOIN ALIADO_COMERCIAL c ON 
	 a.ID_ALIADO = c.ID_ALIADO 
    INNER JOIN SERVICIO s ON
     a.id_serv = s.ID_SERVICIO
	INNER JOIN PROVEEDOR p ON 
	 s.ID_PROV = p.ID_PROVEEDOR
	INNER JOIN SUCURSAL  u ON 
     c.ID_ALIADO = u.ID_ALIADO
    INNER JOIN ESTADO e ON
    e.CODIGO_ESTADO = u.cod_es

WHERE u.cod_es = estado AND rownum <= MAXID
ORDER BY c.NOMBRE;
END;


-- FIN DEL REPORTE PROCEDURE


-- LLAMADA EN JASPERSOFT

{CALL aliadorep2($P{ORACLE_REF_CURSOR}, $P{codigo_estado} )}