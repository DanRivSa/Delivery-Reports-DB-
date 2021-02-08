--REPORTE 13
--select para promedio 
select p.datos_prov.nombre_usuario as proveedor,v.puntaje, v.fecha.fecha_inicio as fecha_inicio, v.fecha.fecha_fin as fecha_fin from valoracion v
INNER JOIN proveedor p ON p.id_proveedor = v.id_prov;

--PROMEDIO DE SATISFACCION

CREATE OR REPLACE FUNCTION promedio_satisfaccion(id_proveedor INT,fecha_inicio DATE, fecha_fin DATE) RETURN NUMBER IS
suma INT;
cant_val INT;
prom NUMBER;
REGISTRO_TABLA valoracion%rowtype;
CURSOR cur IS
    SELECT * from valoracion v 
    WHERE v.id_prov = id_proveedor AND v.fecha.fecha_inicio BETWEEN fecha_inicio AND fecha_fin;
BEGIN
    suma:=0;
    OPEN cur;
    FETCH cur INTO REGISTRO_TABLA;
    WHILE cur%FOUND LOOP
            suma := suma + REGISTRO_TABLA.puntaje;
            FETCH cur INTO REGISTRO_TABLA;
    END LOOP;
    CLOSE cur;
    SELECT COUNT(*) INTO cant_val FROM valoracion v WHERE v.id_prov = id_proveedor AND v.fecha.fecha_inicio BETWEEN fecha_inicio AND fecha_fin; 
    IF cant_val = 0 THEN
        RETURN (0);
    ELSE
        prom:= suma/cant_val;
        RETURN (ROUND(prom,2));
    END IF;
END;

--llamada de prueba
BEGIN
dbms_output.put_line(promedio_satisfaccion(1,to_Date('1-12-2020','DD-MM-YYYY'),to_Date('31-12-2020','DD-MM-YYYY')));
END;

--SELECT DE PRUEBA 
SELECT to_Date('1-12-2020','DD-MM-YYYY') AS fecha_inicio,to_Date('31-12-2020','DD-MM-YYYY') AS fecha_fin, p.datos_prov.nombre_usuario AS proveedor, p.foto AS logo, promedio_satisfaccion(p.id_proveedor,to_Date('1-12-2020','DD-MM-YYYY'),to_Date('31-12-2020','DD-MM-YYYY')) AS prom_satisfaccion
FROM proveedor p

--INICIO DEL REPORTE PROCEDURE

CREATE OR REPLACE PROCEDURE reporte13(cur13 OUT SYS_REFCURSOR, parametro_finicio date, parametro_ffinal date) IS 
BEGIN
    OPEN cur13 FOR
        SELECT parametro_finicio AS fecha_inicio,parametro_ffinal AS fecha_fin, p.datos_prov.nombre_usuario AS proveedor, p.foto AS logo, 
        promedio_satisfaccion(p.id_proveedor,parametro_finicio,parametro_ffinal) AS prom_satisfaccion
        FROM proveedor p;
END;

--LLAMADA JASPERSOFT
{CALL reporte13($P{ORACLE_REF_CURSOR},$P{parametro_finicio}, $P{parametro_ffinal} )}
