--- MODULO DE ASIGNACIÓN DE VEHICULOS

CREATE OR REPLACE FUNCTION pedidos_direccion (proveedor int,municipio int, estado int, fecha date) RETURN number IS
num_pedidos INT;
BEGIN 
    SELECT COUNT (*) INTO num_pedidos from envio e 
        inner join direccion d on 
        d.id_direccion = e.id_dir 
        WHERE 
        e.id_prov = proveedor AND  d.cod_mun = municipio AND d.cod_es = estado
        AND e.fechas.fecha_inicio = fecha AND e.fechas.fecha_fin is NULL ;

RETURN num_pedidos;
END;

CREATE OR REPLACE FUNCTION cant_productos (id_pedido int) RETURN number IS
num_productos INT;
BEGIN 
    SELECT COUNT (*) INTO num_productos from producto_envio p   
        WHERE 
            p.tracking = id_pedido;
RETURN num_productos;
END;

CREATE OR REPLACE FUNCTION cant_unidades_disp (tipo_unidad VARCHAR2, estado int) RETURN number IS
num_unidades INT;
BEGIN 
    SELECT COUNT (*) INTO num_unidades from unidad u  
        WHERE 
            u.tipo_unidad = tipo_unidad AND u.estado_unidad = 'v' AND cod_estado = estado; 
RETURN num_unidades;
END;

CREATE OR REPLACE FUNCTION total_unidades (tipo_unidad VARCHAR2, estado int) RETURN number IS
num_unidades INT;
BEGIN 
    SELECT COUNT (*) INTO num_unidades from unidad u  
        WHERE 
            u.tipo_unidad = tipo_unidad  AND cod_estado = estado; 
RETURN num_unidades;
END;

CREATE OR REPLACE FUNCTION buscar_unidad (id_sede int, tipo_unidad VARCHAR2) RETURN number IS
id_unidad INT;
id_estado INT;
id_municipio INT;
BEGIN 
        select s.cod_mun,s.cod_es into id_municipio,id_estado from sede s where s.id_sede = id_sede; 
        SELECT * INTO id_unidad FROM (
        SELECT u.id_unidad from unidad u 
        WHERE u.cod_municipio = id_municipio  AND  u.cod_estado = id_estado AND u.id_sede = id_sede 
        AND u.estado_unidad = 'v'
        ) WHERE ROWNUM =1; 
        RETURN id_unidad;
END;

-- INICIO DEL PROCEDIMIENTO PARA  ASIGNACIÓN DE VEHICULO 

CREATE OR REPLACE PROCEDURE asignacion_de_vehiculo (id_pedido INT) IS
cant_pedido INT;
cant_prod INT;
-- UNIDADES
cant_unidad INT;
total_uni INT;
porc_unidades INT;
nro_unidad INT;
-- DATOS DE ENVIO
id_usuario INT;
proveedor int;
fecha DATE;
sede INT;
-- UBICACION
estado INT;
municipio INT;
distancia INT;
-- latitudes y longitudes
lat_sede  INT;
lon_sede INT;
lat_us INT;
lon_us INT;


BEGIN 
--OBTENER DATOS DE ENVIO
SELECT id_usuario_envio,id_prov, id_sede_u,e.fechas.fecha_inicio into id_usuario,proveedor,sede,fecha from envio e where tracking = id_pedido;
-- OBTENER DIRECCION DE USUARIO
SELECT dir.cod_es,dir.cod_mun,dir.ubi_direccion.latitud, dir.ubi_direccion.longitud into estado,municipio,lat_us,lon_us from direccion dir
where id_usuario_direccion = id_usuario;
-- obtener longitud y latitud de sede
SELECT s.ubi_sede.latitud,s.ubi_sede.longitud INTO lat_sede,lon_sede FROM sede s WHERE s.id_sede = sede;

dbms_output.put_line('***********************************************');
dbms_output.put_line('*   INICIO MODULO DE ASIGNACION DE VEHICULO   *');
dbms_output.put_line('***********************************************');
dbms_output.put_line('*    ');
cant_prod := cant_productos (id_pedido);
dbms_output.put_line('Productos dentro del pedido: ' || cant_prod);
cant_pedido := pedidos_direccion(proveedor,municipio,estado,fecha);
dbms_output.put_line('Existen: ' || cant_pedido || ' envios dentro de la misma zona de destino');

    IF cant_pedido > 4 THEN
        -- INICIO DE PROCESO DE ASIGNACION PARA TIPO CAMIONETA 

        dbms_output.put_line('Existen más de 4 envios dentro del mismo radio de distancia');
        dbms_output.put_line('¿ Existe camionetas disponibles?');
        cant_unidad := cant_unidades_disp('camioneta',estado);
        dbms_output.put_line('Existen ' || cant_unidad || ' unidades de tipo camioneta disponibles');
        total_uni := total_unidades('camioneta',estado);
        dbms_output.put_line('Total  ' || total_uni || ' unidades');
            IF cant_unidad > cant_pedido THEN
                porc_unidades := total_uni*0.3;
                    IF cant_unidad >=  porc_unidades  THEN
                        dbms_output.put_line('Se están buscando unidades de tipo camioneta dentro de la misma sede' );
                        -- BUSCAR UNIDAD PARA ASIGNAR TIPO CAMIONETA
                        -- ASIGNAR UNIDAD PARA ASIGNAR TIPO BICICLETA
                        dbms_output.put_line('Se ha asignado la unidad' || nro_unidad);
                    ELSE
                        dbms_output.put_line('No hay unidades disponibles se procederá a reponer unidades de tipo camioneta' );
                        -- SE EJECUTA MODULO DE REPOSICION DE UNIDADES
                        nro_unidad := buscar_unidad(sede,'camioneta');
                        -- BUSCAR UNIDAD PARA ASIGNAR TIPO CAMIONETA
                        UPDATE ENVIO SET ID_UNIDAD = nro_unidad WHERE Tracking = id_pedido;
                    END IF;  
            ELSE 
                dbms_output.put_line('MODULO DE ENVIO RECURRENTES' );
                -- SE EJECUTA MODULO DE ENVIOS CONCURECURRENTES
            END IF;
    ELSE 
        -- CALCULAR DISTANCIA
            distancia := distancia_haversine(lat_us,lon_us,lat_sede,lon_sede);
            IF distancia > 10 THEN
                dbms_output.put_line('¿ Existen motos disponibles?');
                cant_unidad := cant_unidades_disp('moto',estado);
                dbms_output.put_line('Existen ' || cant_unidad || ' unidades de tipo moto disponibles');
                total_uni := total_unidades('moto',estado);
                dbms_output.put_line('Total  ' || total_uni || ' unidades');
                porc_unidades := total_uni*0.3;
                    IF cant_unidad >=  porc_unidades  THEN
                        dbms_output.put_line('Se están buscando unidades de tipo moto dentro de la misma sede' );
                        -- BUSCAR UNIDAD PARA ASIGNAR TIPO MOTO
                        nro_unidad := buscar_unidad(sede,'moto');
                        -- ASIGNAR UNIDAD PARA ASIGNAR TIPO MOTO
                        dbms_output.put_line('Se ha asignado la unidad' || nro_unidad);
                    ELSE
                        dbms_output.put_line('No hay unidades disponibles se procederá a reponer unidades de tipo moto' );
                        -- SE EJECUTA MODULO DE REPOSICION DE UNIDADES
                        -- ASIGNAR UNIDAD PARA ASIGNAR TIPO MOTO
                        UPDATE ENVIO SET ID_UNIDAD = nro_unidad WHERE Tracking = id_pedido;
                    END IF;
            ELSE
                dbms_output.put_line('¿ Existen bicicletas disponibles?');
                cant_unidad := cant_unidades_disp('bicicleta',estado);
                dbms_output.put_line('Existen ' || cant_unidad || ' unidades de tipo bicicleta disponibles');
                total_uni := total_unidades('bicicleta',estado);
                dbms_output.put_line('Total  ' || total_uni || ' unidades');
                porc_unidades := total_uni*0.3;
                    IF cant_unidad >=  porc_unidades  THEN
                        dbms_output.put_line('Se están buscando unidades de tipo bicicleta dentro de la misma sede' );
                        -- BUSCAR UNIDAD PARA ASIGNAR TIPO BICICLETA
                        nro_unidad := buscar_unidad(sede,'moto');
                        -- ASIGNAR UNIDAD PARA ASIGNAR TIPO BICICLETA
                        UPDATE ENVIO SET ID_UNIDAD = nro_unidad WHERE Tracking = id_pedido;
                        dbms_output.put_line('Se ha asignado la unidad' || nro_unidad);
                    ELSE
                        dbms_output.put_line('No hay unidades disponibles se procederá a reponer unidades de tipo bicicleta' );
                        -- SE EJECUTA MODULO DE REPOSICION DE UNIDADES
                        -- ASIGNAR UNIDAD PARA ASIGNAR TIPO BICICLETA
                        UPDATE ENVIO SET ID_UNIDAD = nro_unidad WHERE Tracking = id_pedido;
                    END IF;

            END IF;
       
    END IF;
END;


-- EJECUCUCION DEL METODO

SET serveroutput ON
BEGIN
asignacion_de_vehiculo(1);
END;

-- PROBAR BUSCAR UNIDADES
SET serveroutput ON
DECLARE
nro_unidad INT;
BEGIN
nro_unidad := buscar_unidad(1,'moto');
dbms_output.put_line('Se ha asignado la unidad' || nro_unidad);
END;