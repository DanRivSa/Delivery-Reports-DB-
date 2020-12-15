Select E. Nombre as Estado, A.Nombre as Empresa, P.DATOS_PROV.NOMBRE_USUARIO as Proveedor,
A.FOTO AS logo_ali,P.FOTO AS logo_prov M.Nombre 
as Municipio, Count (*) as Envios
From Aliado_Comercial A, Sucursal S, Sucursal_Asignada SA, Estado E, Municipio M, Proveedor P
Where (sa.id_suc = S.id_sucursal) and (S.id_aliado = A.id_aliado) and (sa.est_suc = e.codigo_estado) 
and (sa.mun_suc = m.codigo_municipio) and (sa.id_prov = p.id_proveedor) AND ( E. Nombre = 'Distrito Capital')
Group by E.Nombre, M.Nombre, A.Nombre, P.DATOS_PROV.NOMBRE_USUARIO
order by Envios desc;



CREATE OR REPLACE PROCEDURE reporte_5(cur OUT SYS_REFCURSOR,estado VARCHAR2,cod_estado INT) IS
BEGIN
    OPEN cur FOR
        Select 
        E. Nombre as Estado, 
        A.Nombre as Empresa, 
        P.DATOS_PROV.NOMBRE_USUARIO as Proveedor,
        m.Nombre as Municipio,
        d.id_direccion,
       (SELECT COUNT(*) FROM envio v WHERE v.id_dir = d.id_direccion and d.cod_es = cod_estado and m.codigo_municipio = d.cod_mun ) AS ENVIOS,
        A.Foto AS logo_ali,
        P.Foto AS logo_prov
FROM ENVIO v

        INNER JOIN aliado_Comercial A ON v.id_aliado = A.id_aliado
        INNER JOIN direccion d on v.id_dir = d.id_direccion
        INNER JOIN estado e on d.cod_es = e.codigo_estado
        INNER JOIN municipio m on d.cod_mun = m.codigo_municipio
        INNER JOIN proveedor p ON v.id_prov = p.id_proveedor
        
WHERE E. Nombre = estado AND rownum < 5
order by Envios desc;

END;
