--FUNCION DE distancia haversine
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

--Funcion para devovel el tiempo en minutos
CREATE OR REPLACE FUNCTION tiempo_llegada(distancia NUMBER, vel_promedio NUMBER) RETURN NUMBER
IS
tiempo NUMBER;
BEGIN
    --x=vt -> t=x/v
    tiempo:= (distancia/vel_promedio);
    RETURN(tiempo/60); --minutos
END;

--PROCEDIMIENTO
CREATE OR REPLACE PROCEDURE despacha_unidad(numero_placa INT)
IS
--datos de la unidad
placa INT;
vel_prom NUMBER;
counter_env INT;
cant_envios INT;
id_dinamico_envio INT;
cant_sucursales INT;
counter_sucursales INT;
id_dinamico_sucursal INT;
latu NUMBER;
lonu NUMBER;
latd NUMBER;
lond NUMBER;
BEGIN
    --inicializacion de variables

    --unidad
    SELECT velocidad_promedio,num_placa INTO vel_prom,placa FROM unidad;
    dbms_output.put_line('placa de unidad: '||placa); --placa de la unidad (id)
    dbms_output.put_line('velocidad de la unidad: '||vel_prom);  --velocidad promedio de la unidad

    --cantidad de envios
    SELECT COUNT(id_envio) INTO cant_envios FROM sucursal_asignada WHERE id_unidad = numero_placa; --cantidad de envios

    --programa

    --se empieza ciclo por envios
    counter_env:=0;
    WHILE (counter_env<cant_envios) 
    LOOP
        --seleccionar el id de envio
        --seleccionar cantidad de sucursales para ese envio
        --LOOP POR SUCURSAL
            --armar vectores
    ENDLOOP;

END;