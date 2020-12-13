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
CREATE OR REPLACE FUNCTION tiempo_llegada(lato NUMBER, lono NUMBER, latd NUMBER, lond NUMBER, vel_promedio NUMBER) RETURN NUMBER
IS
tiempo NUMBER;
distancia NUMBER;
BEGIN
    --x=vt -> t=x/v
    distancia:= distancia_haversine(lato,lono,latd,lond); --distancia en metros
    tiempo:= (distancia/vel_promedio); -- tiempo en segundos
    RETURN(tiempo/60); --devuelve minutos
END;

--PROCEDIMIENTO
CREATE OR REPLACE PROCEDURE despacha_unidad(numero_placa INT)
IS
--datos de la unidad
vel_prom NUMBER;
counter_env INT;
cant_envios INT;
id_dinamico_envio INT;
cant_sucursales INT;
counter_sucursales INT;
id_dinamico_sucursal INT;
id_u INT;
id_dire INT;
app_username VARCHAR(30);
c_cal_dir INT;
calle VARCHAR(30);
municipio VARCHAR(30);
estado VARCHAR(30);
--latitudes y longitudes
latu NUMBER;
lonu NUMBER;
latd NUMBER;
lond NUMBER;
latud NUMBER;
lonud NUMBER;
latsum NUMBER;
lonsum NUMBER;
latusuario NUMBER;
lonusuario NUMBER;
--coordenadas originales de la unidad
orilat NUMBER; 
orilon NUMBER;
--envio
tiempo NUMBER;
BEGIN
    --inicializacion de variables

    --unidad
    SELECT velocidad_promedio INTO vel_prom FROM unidad WHERE id_unidad = numero_placa;
    dbms_output.put_line('placa de unidad: '||numero_placa); --placa de la unidad (id)
    dbms_output.put_line('velocidad de la unidad: '||vel_prom);  --velocidad promedio de la unidad

    --cantidad de envios
    SELECT COUNT(id_envio) INTO cant_envios FROM sucursal_asignada WHERE id_unidad = numero_placa; --cantidad de envios

    --programa

    --se empieza ciclo por envios
    counter_env:=0;
    WHILE counter_env<cant_envios
    LOOP
        --seleccionar coordenadas actuales
        SELECT u.coordenadas_actuales.latitud, u.coordenadas_actuales.longitud INTO orilat,orilon FROM unidad u WHERE u.id_unidad = numero_placa;
        --seleccionar el id de envio
        SELECT id_envio INTO id_dinamico_envio FROM sucursal_asignada WHERE id_unidad = numero_placa AND ROWNUM = counter_env+ 1; 
        --seleccionar cantidad de sucursales para ese envio
        SELECT COUNT(id_suc) INTO cant_sucursales FROM sucursal_asignada WHERE id_envio = id_dinamico_envio; 
        --seleccionar id usuario e id de direccion para ese envio
        SELECT id_usuario INTO id_u FROM sucursal_asignada WHERE id_envio = id_dinamico_envio;
        SELECT id_direccion INTO id_dire FROM sucursal_asignada WHERE id_envio = id_dinamico_envio;
        --obtener nombre usuario
        SELECT usu.datos.nombre_usuario INTO app_username FROM usuario usu WHERE usu.id_usuario = id_u;
        --datos direccion
        SELECT dir.cod_calle, dir.ubi_direccion.latitud, dir.ubi_direccion.longitud INTO c_cal_dir,latusuario,lonusuario FROM direccion dir WHERE dir.id_direccion = id_dire;
        SELECT cal.nombre, mun.nombre, es.nombre INTO calle,municipio,estado FROM calle cal
        INNER JOIN municipio mun ON mun.codigo_municipio = cal.c_mun
        INNER JOIN estado es ON es.codigo_estado = cal.c_es
        WHERE cal.c_calle = c_cal_dir;
        --LOOP POR SUCURSAL
        counter_sucursales:=0;
        WHILE counter_sucursales < cant_sucursales
        LOOP
            --seleccionar id de sucursal
            SELECT id_suc INTO id_dinamico_sucursal FROM sucursal_asignada WHERE id_envio = id_dinamico_envio AND ROWNUM = counter_sucursales +1;
            --armar vectores
            -- 1-) obtener coordenadas de la unidad A(latu,lonu)
            SELECT u.coordenadas_actuales.latitud, u.coordenadas_actuales.longitud INTO latu,lonu FROM unidad u WHERE u.id_unidad = numero_placa;
            --2-) obtener coordenadas de la sucursal B(latd,lond)
            SELECT suc.ubi_sucursal.latitud, suc.ubi_sucursal.longitud INTO latd,lond FROM sucursal suc WHERE suc.id_sucursal = id_dinamico_sucursal;
            --3-) armar vector director AB(latd-latu,lond-lonu)
            latud:= latd - latu;
            lonud:= lond - lonu;
            --4-) dividir coordenadas latud y lonud entre 10 y almacenar en sumlat y sumlon
            sumlat := latud/10;
            sumlon := lonud/10;
            --5-) mover unidad y actualizar valores geograficos de la ubicacion de la unidad
            dbms_output.put_line('Unidad '||numero_placa||' ha sido despachada a la sucursal correspondida al envio nro: '||id_dinamico_envio);
            dbms_output.put_line('coordenadas: ');
            WHILE latu != latd AND lonu != lond
            LOOP
                --calcular tiempo de llegada a la sucursal
                tiempo:= tiempo_llegada(latu,lonu,latd,lond,vel_prom);
                --agrega la parte del vector director
                latu:= latu + sumlat;
                lonu:=lonu + sumlon;
                dbms_output.put_line('('||latu||','||lonu||') -> llegada en: '||tiempo||' minuto(s)');
                --actualiza coordenadas en unidad
                UPDATE unidad u SET u.coordenadas_actuales.latitud = latu, u.coordenadas_actuales.longitud = lonu WHERE u.id_unidad = numero_placa;
            END LOOP;
            dbms_output.put_line('La unidad ha llegado a la sucursal '||id_dinamico_sucursal);
            counter_sucursales:= counter_sucursales +1;
        END LOOP;
        dbms_output.put_line('La unidad ha pasado por las sucursales y ha sido despachada a ->  '||calle ||municipio || 'edo ' ||estado||', direccion del usuari@ '||app_username);
        --armar vector AB
        latud:=latusuario - latu;
        lonud:= lonusuario - lonu;
        --obtener particiones
        sumlat := latud/10;
        sumlon := lonud/10;
        --mueve unidad
        WHILE latu!= latusuario AND lonu != lonusuario
        LOOP
            tiempo:= tiempo_llegada(latu,lonu,latd,lond,vel_prom);
            --agrega la parte del vector director
            latu:= latu + sumlat;
            lonu:=lonu + sumlon;
            dbms_output.put_line('('||latu||','||lonu||') -> llegada en: '||tiempo||' minuto(s)');
            --actualiza coordenadas en unidad
            UPDATE unidad u SET u.coordenadas_actuales.latitud = latu, u.coordenadas_actuales.longitud = lonu WHERE u.id_unidad = numero_placa;
        END LOOP;
        dbms_output.put_line('Entrega culminada');
        UPDATE envio env SET env.fechas.fecha_fin = SYSDATE; --culmina el envio 
        counter_env:= counter_env +1;
    END LOOP;
    --regresa la unidad a la sede
    UPDATE unidad u SET u.coordenadas_actuales.latitud = orilat, u.coordenadas_actuales.longitud = orilon WHERE u.id_unidad = numero_placa;
END;