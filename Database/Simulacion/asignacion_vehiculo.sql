--- MODULO DE ASIGNACIÓN DE VEHICULOS

CREATE OR REPLACE FUNCTION pedidos_direccion (proveedor int,municipio int, estado int, fecha date) RETURN number IS
num_pedidos INT;
BEGIN 
    SELECT COUNT (*) INTO num_pedidos from envio e 
        inner join direccion d on 
        d.id_direccion = e.id_usuario_dir  
        WHERE 
        e.id_prov = proveedor AND  d.cod_mun = municipio AND d.cod_es = estado
        AND e.fechas.fecha_inicio = fecha AND e.fechas.fecha_fin = NULL ;

RETURN num_pedidos;
END;

CREATE OR REPLACE FUNCTION cant_productos (id_pedido int) RETURN number IS
num_productos INT;
BEGIN 
    SELECT COUNT (*) INTO num_productos from producto_envio p   
        WHERE 
            p.id_p_s = id_pedido;
RETURN num_productos;
END;

CREATE OR REPLACE FUNCTION cant_unidades_disp (tipo_unidad VARCHAR2, estado_unidad CHAR) RETURN number IS
num_unidades INT;
BEGIN 
    SELECT COUNT (*) INTO num_unidades from unidad u  
        WHERE 
            u.tipo_unidad = tipo_unidad AND u.estado_unidad = estado_unidad; 
RETURN num_unidades;
END;

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



-- INICIO DE PROGRAMA ASIGNACIÓN DE VEHICULO 

CREATE OR REPLACE PROCEDURE asignacion_de_vehiculo (id_envio) IS



