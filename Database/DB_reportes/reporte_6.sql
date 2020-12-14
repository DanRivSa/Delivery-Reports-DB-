Select U.Foto as Foto, U.Primer_Nombre as PrimerNombre, U.Segundo_Nombre as SegundoNombre, U.Primer_Apellido as PrimerApellido, U.Segundo_Apellido as SegundoApellido, U.Datos.correo_electronico as Email, P.DATOS_PROV.NOMBRE_USUARIO as Proveedor, P.Foto as Aplicacion,
R.Fecha.fecha_inicio as ClienteDesde,  E.Nombre as Estado, C.Nombre as DireccionEnvio
From Usuario U, Proveedor P, Registro R, Direccion D, Estado E, Calle C
Where (r.id_usuario_reg = u.id_usuario) and (r.id_prov = p.id_proveedor) and (u.id_usuario = d.id_usuario_direccion) and (d.cod_es = e.codigo_estado) and (d.cod_calle = c.c_calle) and (E.Nombre = 'Miranda') and (R.Fecha.fecha_inicio > '22/11/20');
