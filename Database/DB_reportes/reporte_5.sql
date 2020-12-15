Select E. Nombre as Estado, A.Nombre as Empresa, P.DATOS_PROV.NOMBRE_USUARIO as Proveedor,
A.FOTO AS logo_ali,P.FOTO AS logo_prov M.Nombre 
as Municipio, Count (*) as Envios
From Aliado_Comercial A, Sucursal S, Sucursal_Asignada SA, Estado E, Municipio M, Proveedor P
Where (sa.id_suc = S.id_sucursal) and (S.id_aliado = A.id_aliado) and (sa.est_suc = e.codigo_estado) 
and (sa.mun_suc = m.codigo_municipio) and (sa.id_prov = p.id_proveedor) AND ( E. Nombre = 'Miranda')
Group by E.Nombre, M.Nombre, A.Nombre, P.DATOS_PROV.NOMBRE_USUARIO
order by Envios desc;





CREATE OR REPLACE PROCEDURE reporte_5(cur OUT SYS_REFCURSOR,estado VARCHAR2) IS
BEGIN
    OPEN cur FOR
Select 
        E. Nombre as Estado, 
        A.Nombre as Empresa, 
        A.Foto AS logo_ali,
        P.DATOS_PROV.NOMBRE_USUARIO as Proveedor,
        P.Foto AS logo_prov,
        m.Nombre as Municipio,
        d.id_direccion,
       (SELECT COUNT(*) FROM envio en WHERE 
                                            en.id_prov = p.id_proveedor and
                                            en.id_aliado = A.id_aliado  and
                                            en.id_dir = d.id_direccion
                                            ) AS ENVIOS
        
FROM envio en
        INNER JOIN direccion d on en.id_dir = d.id_direccion
        INNER JOIN estado e on d.cod_es = e.codigo_estado
        INNER JOIN municipio m on d.cod_mun = m.codigo_municipio
        INNER JOIN acuerdo_servicio ac on en.id_acuerdo = ac.id_acuerdo
        INNER JOIN aliado_Comercial A ON ac.id_aliado = A.id_aliado
        INNER JOIN proveedor p ON ac.id_prov_serv = p.id_proveedor
        INNER JOIN sede s ON en.id_sede_u = s.id_sede
        
WHERE E. Nombre = estado AND rownum < 5
order by Envios desc;

END;

{CALL reporte_5($P{ORACLE_REF_CURSOR}, $P{Nombre_estado})}