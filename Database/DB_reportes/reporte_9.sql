--  Reporte top 10 de mayor cantidad de productos despachados por zona 
-- (Parametrizado fecha de inicio, fecha de fin, estado, zona de envío)




select TOP 10  
Case c.SECTOR
    WHEN 'A' THEN 'Alimentos'
    WHEN 'R' THEN 'Vestimenta'
    WHEN 'F' THEN 'Farmacia'
    WHEN 'T' THEN 'Tecnologia'
    END SECTOR,
    m.nombre as Zona,
    s.nombre as estado,
    e.fechas.fecha_inicio
From envio e
inner join aliado_comercial c on e.id_aliado =c.id_aliado
inner join direccion d on e.id_dir = d.id_direccion 
inner join municipio m on d.cod_mun = m.codigo_municipio
inner join estado s on d.cod_es = s.codigo_estado

Where m.nombre= 'Baruta' and s.nombre = 'Miranda' and e.fechas.fecha_inicio BETWEEN '01-01-2019' and '01-01-2021'