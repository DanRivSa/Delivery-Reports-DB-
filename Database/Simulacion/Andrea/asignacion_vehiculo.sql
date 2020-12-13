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


 --  ESTA ES LA FUNCION DE RIVERO 

 CREATE OR REPLACE FUNCTION distancia_haversine(lat1 NUMBER, lon1 NUMBER,lat2 NUMBER,lon2 NUMBER) RETURN NUMBER
IS
PI CONSTANT NUMBER :=3.141592654;
radio CONSTANT NUMBER :=6371000; --radio de la tierra en metros
lat1r NUMBER;
lat2r NUMBER;
lon1r NUMBER;
lon2r NUMBER;
delta_lat NUMBER;
delta_lon NUMBER;
hav_a NUMBER;
hav_c NUMBER;
distancia NUMBER;
BEGIN
    --transforma a radianes
    lat1r:= lat1 * (PI/180);
    lon1r := lon1 * (PI/180);
    lat2r := lat2 * (PI/180);
    lon2r := lon2 * (PI/180);
    
    --declara delta
    delta_lat:= lat2r-lat1r;
    delta_lon := lon2r - lon1r;
    
    --hav_a -> a = sin²(Δφ/2) + cos φ1 ⋅ cos φ2 ⋅ sin²(Δλ/2)
    hav_a := SIN(delta_lat/2)**2 + COS(lat1r)*COS(lat2r)*SIN(delta_lon/2)**2;
    
    --hav_c -> c = 2 ⋅ atan2( √a, √(1−a) )
    hav_c:=ATAN2(SQRT(hav_a),SQRT(1-hav_a));
    
    --distancia -> d = R ⋅ c
    
    distancia:= radio * hav_c;
    
    RETURN (ROUND(distancia)); --en metros
END;



-- INICIO DEL PROCEDIMIENTO PARA  ASIGNACIÓN DE VEHICULO 

CREATE OR REPLACE PROCEDURE asignacion_de_vehiculo (id_pedido INT) IS
cant_pedido INT;
cant_prod INT;
-- UNIDADES
cant_unidad INT;
total_uni INT;
porc_unidades INT;
-- DATOS DE ENVIO
id_usuario INT;
proveedor int;
fecha DATE;
-- UBICACION
estado INT;
municipio INT;
distancia INT;

BEGIN 
SELECT id_usuario_envio,id_prov,e.fechas.fecha_inicio into id_usuario,proveedor,fecha from envio e where tracking = id_pedido;
SELECT cod_es,cod_mun into estado,municipio from direccion  
where id_usuario_direccion = id_usuario;


dbms_output.put_line('***********************************************');
dbms_output.put_line('*   INICIO MODULO DE ASIGNACION DE VEHICULO   *');
dbms_output.put_line('***********************************************');
dbms_output.put_line('    ');
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
            IF cant_unidad > cant_pedido THEN
                porc_unidades := total_uni*0.3
                    IF cant_unidad >=  porc_unidades  THEN
                        -- BUSCAR UNIDAD PARA ASIGNAR
                    ELSE
                        -- SE EJECUTA MODULO DE REPOSICION DE UNIDADES
                    THEN   


            ELSE 
                -- SE EJECUTA MODULO DE ENVIOS CONCURECURRENTES
            END IF;

    ELSE 
        -- CALCULAR DISTANCIA
        -- ASIGNAR MOTO
        -- ASIGNAR BICICLETA

        
    END IF;
    

END;


-- EJECUCUCION DEL METODO

SET serveroutput ON
BEGIN
asignacion_de_vehiculo(1);
END;
