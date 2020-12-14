Select E. Nombre as Estado, A.Nombre as Empresa, P.DATOS_PROV.NOMBRE_USUARIO as Proveedor, M.Nombre as Municipio, Count (*) as Envios
From Aliado_Comercial A, Sucursal S, Sucursal_Asignada SA, Estado E, Municipio M, Proveedor P
Where (sa.id_suc = S.id_sucursal) and (S.id_aliado = A.id_aliado) and (sa.est_suc = e.codigo_estado) and (sa.mun_suc = m.codigo_municipio) and (sa.id_prov = p.id_proveedor) AND ( E. Nombre = 'Distrito Capital')
Group by E.Nombre, M.Nombre, A.Nombre, P.DATOS_PROV.NOMBRE_USUARIO
order by Envios desc;
