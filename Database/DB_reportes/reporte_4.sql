--INVENTARIO DE TRANSPORTE POR PROVEEDOR DE SERVICIO(PARAMETRIZADO POR ESTADO 'COD_ESTADO')

--SELECT DE PRUEBA
select prov.foto as Logo,prov.datos_prov.nombre_usuario as nombre, es.nombre as estado,u.tipo_unidad,
(select count(*) from unidad uni where uni.tipo_unidad = u.tipo_unidad and uni.estado_unidad = 'v') as en_servicio,
(select count(*) from unidad uni where uni.tipo_unidad = u.tipo_unidad and uni.estado_unidad = 'r') as en_reparacion
from unidad u
INNER JOIN sede sed ON sed.id_sede = u.id_sede
INNER JOIN estado es ON es.codigo_estado = sed.cod_es
INNER JOIN proveedor prov ON prov.id_proveedor = sed.id_prov
WHERE es.codigo_estado = 24;

--procedure
CREATE OR REPLACE PROCEDURE reporte_4(cur OUT SYS_REFCURSOR,estado INT) IS
BEGIN
    OPEN cur FOR
        select prov.foto as Logo,prov.datos_prov.nombre_usuario as nombre, es.nombre as estado,u.tipo_unidad,
        (select count(*) from unidad uni where uni.tipo_unidad = u.tipo_unidad and uni.estado_unidad = 'v') as en_servicio,
        (select count(*) from unidad uni where uni.tipo_unidad = u.tipo_unidad and uni.estado_unidad = 'r') as en_reparacion
        from unidad u
        INNER JOIN sede sed ON sed.id_sede = u.id_sede
        INNER JOIN estado es ON es.codigo_estado = sed.cod_es
        INNER JOIN proveedor prov ON prov.id_proveedor = sed.id_prov
        WHERE es.codigo_estado = estado;
END;

{CALL reporte_4($P{ORACLE_REF_CURSOR}, $P{codigo_estado})}