CREATE OR REPLACE DIRECTORY OBJETOS_LOB AS 'C:\imagenes\';

--GRANT READ, WRITE ON DIRECTORY OBJETOS_LOB TO ER;

--TDAS

CREATE OR REPLACE TYPE datos_basicos AS OBJECT
(
 nombre_usuario VARCHAR(25),
 correo_electronico VARCHAR(50),
 foto BLOB,
 STATIC FUNCTION Validar_Nombre(nombre VARCHAR) RETURN VARCHAR,
 STATIC FUNCTION Validar_Correo(correo VARCHAR) RETURN VARCHAR
);

CREATE TYPE historico AS OBJECT
(
 fecha_inicio DATE,
 fecha_fin DATE,
 STATIC FUNCTION Validar_fecha(fecha_inicio DATE) RETURN DATE,
 STATIC FUNCTION Validar_fecha2(fecha_inicio DATE, fecha_fin DATE) RETURN DATE
);

--SINTAXIS DE LATITUD Y LONGITUD: XXX°XXX"XXX"X -> LA ULTIMA X SIENDO UNO DE LOS PUNTOS CARDINALES (N,S,E,O)

CREATE TYPE datos_lugar AS OBJECT(
nombre VARCHAR(30),
longitud VARCHAR(30),
latitud VARCHAR(30),
STATIC FUNCTION Validar_Nombre(nombre VARCHAR) RETURN VARCHAR,
STATIC FUNCTION Validar_Latitud(lat VARCHAR) RETURN VARCHAR,
STATIC FUNCTION Validar_Longitud(lon VARCHAR) RETURN VARCHAR
);

--FUNCTIONS TDA

CREATE OR REPLACE TYPE BODY datos_basicos IS
STATIC FUNCTION Validar_Nombre(nombre VARCHAR) RETURN VARCHAR
IS
BEGIN
 IF REGEXP_LIKE(nombre, '^[[:alpha:]]{0,25}[[:alpha:][:blank:]]+$') THEN
 return (nombre);
 ELSE
 RAISE_APPLICATION_ERROR(-20001,'El nombre solo debe contemplar letras, caracteres especiales y numeros no estan permitidos');
 END IF;
END;
STATIC FUNCTION Validar_Correo(correo VARCHAR) RETURN VARCHAR
IS
    BEGIN
        IF correo LIKE '%@%.%' THEN
            return (correo);
        ELSE
            RAISE_APPLICATION_ERROR(-20001,'Correo invalido.Ingrese un correo con un formato valido');
        END IF;
    END;
END;

CREATE OR REPLACE TYPE BODY historico 
IS
    STATIC FUNCTION Validar_fecha(fecha_inicio DATE) RETURN DATE
    IS
    BEGIN
        IF fecha_inicio <= CURRENT_DATE THEN
            return (fecha_inicio);
        ELSE
            RAISE_APPLICATION_ERROR(-20001,'ERROR: La fecha de inicio debe ser menor o igual a la fecha actual ');
        END IF;
    END;
    STATIC FUNCTION Validar_fecha2(fecha_inicio DATE,fecha_fin DATE) RETURN DATE
    IS
    BEGIN
        IF fecha_fin >= fecha_inicio THEN
            return (fecha_fin);
        ELSE
            RAISE_APPLICATION_ERROR(-20001,'ERROR: La fecha fin debe ser mayor o igual a la fecha de inicio ');
        END IF;
    END;
END;

CREATE OR REPLACE TYPE BODY datos_lugar 
IS
    STATIC FUNCTION Validar_Nombre (nombre VARCHAR) RETURN VARCHAR
    IS
    BEGIN
        IF REGEXP_LIKE(nombre, '^[[:alpha:]]{0,25}[[:alpha:][:blank:]]+$') THEN
            return (nombre);
        ELSE
            RAISE_APPLICATION_ERROR(-20001,'El nombre solo debe contemplar letras, caracteres especiales y numeros no estan permitidos');
        END IF;
    END;
    STATIC FUNCTION Validar_Latitud(lat VARCHAR) RETURN VARCHAR
    IS
    BEGIN
        IF (lat LIKE '%°%"%"N') OR (lat LIKE '%°%"%"S') OR (lat LIKE '%°%"%"E') OR (lat LIKE '%°%"%"O')  THEN
            RETURN (lat);
        ELSE
            RAISE_APPLICATION_ERROR(-20001, 'Formato de latitud no valido, debe cumplir com la forma: XXX°XXX"XXX"X -> siendo la ultima X un punto cardinal (N,S,E,O)');
        END IF;
    END;
    STATIC FUNCTION Validar_Longitud(lon VARCHAR) RETURN VARCHAR
    IS
    BEGIN
        IF (lon LIKE '%°%"%"N') OR (lon LIKE '%°%"%"S') OR (lon LIKE '%°%"%"E') OR (lon LIKE '%°%"%"O')  THEN
            RETURN (lon);
        ELSE
            RAISE_APPLICATION_ERROR(-20001, 'Formato de longitud no valido, debe cumplir com la forma: XXX°XXX"XXX"X -> siendo la ultima X un punto cardinal (N,S,E,O)');
        END IF;
    END;
END;

-- TABLES
--EMPRESAS
CREATE TABLE aliado_comercial(
id_aliado NUMBER NOT NULL,
sector CHAR NOT NULL,
datos datos_basicos,
CONSTRAINT PK_prod PRIMARY KEY(id_aliado),
CONSTRAINT check_sector CHECK(sector in ('A','F','R','T'))
-- A=ALIMENTOS, F=FARMACIA, T=TECNOLOGIA,R=ROPA,
);

CREATE TABLE proveedor(
id_proveedor NUMBER NOT NULL,
datos_prov datos_basicos,
CONSTRAINT PK_prov PRIMARY KEY(id_proveedor)
);

--USUARIO
CREATE TABLE usuario(
id_usuario INT NOT NULL,
primer_nombre VARCHAR(20) NOT NULL,
primer_apellido VARCHAR(20) NOT NULL,
segundo_nombre VARCHAR(20) ,
segundo_apellido VARCHAR(20) ,
datos datos_basicos,
CONSTRAINT PK_usuario PRIMARY KEY(id_usuario)
);

--SE AGREGA TDA HISTORICO

CREATE SEQUENCE per_seq_valoracion START WITH 1;

CREATE TABLE valoracion(
id_valoracion INT DEFAULT per_seq_valoracion.NEXTVAL,
id_prov INT NOT NULL,
id_usuario_val INT NOT NULL,
puntaje INT NOT NULL,
fecha historico,
CONSTRAINT fk_val_prov FOREIGN KEY (id_prov) REFERENCES proveedor(id_proveedor),
CONSTRAINT fk_val_usuario FOREIGN KEY (id_usuario_val) REFERENCES usuario(id_usuario),
CONSTRAINT PK_val PRIMARY KEY(id_valoracion,id_prov,id_usuario_val)
);

--SE AGREGA TDA HISTORICO

CREATE SEQUENCE per_seq_registro START WITH 1;

CREATE TABLE registro(
id_registro INT DEFAULT per_seq_registro.NEXTVAL,
id_prov INT NOT NULL,
id_usuario_reg INT NOT NULL,
fecha historico,
CONSTRAINT fk_reg_prov FOREIGN KEY (id_prov) REFERENCES proveedor(id_proveedor),
CONSTRAINT fk_reg_usuario FOREIGN KEY (id_usuario_reg) REFERENCES usuario(id_usuario),
CONSTRAINT PK_registro PRIMARY KEY(id_registro,id_prov,id_usuario_reg)
);

--UBICACION

CREATE TABLE estado (
codigo_estado INT NOT NULL,
nombre Varchar(20) Unique NOT NULL,
CONSTRAINT pk_estado PRIMARY KEY (codigo_estado)
);

CREATE TABLE municipio (
codigo_municipio INT NOT NULL,
codigo_estado INT NOT NULL,
nombre Varchar(20) UNIQUE NOT NULL,
CONSTRAINT fk_estado FOREIGN KEY (codigo_estado) REFERENCES estado (codigo_estado),
CONSTRAINT pk_municipio PRIMARY KEY (codigo_municipio,codigo_estado)
);

CREATE TABLE calle(
c_calle INT NOT NULL,
c_mun INT NOT NULL,
c_es INT NOT NULL,
nombre VARCHAR(70) NOT NULL,
CONSTRAINT fk_calle FOREIGN KEY (c_es,c_mun) REFERENCES
municipio(codigo_estado,codigo_municipio),
CONSTRAINT pk_calle PRIMARY KEY (c_calle,c_mun,c_es)
);

CREATE TABLE direccion(
id_direccion INT NOT NULL,
id_usuario_direccion INT NOT NULL,
cod_calle INT NOT NULL,
cod_mun INT NOT NULL,
cod_es INT NOT NULL,
ubi_direccion datos_lugar,
CONSTRAINT fk_calle_direc FOREIGN KEY (cod_calle,cod_mun,cod_es) REFERENCES
calle(c_calle,c_mun,c_es),
CONSTRAINT fk_usuario_direccion FOREIGN KEY (id_usuario_direccion) REFERENCES usuario(id_usuario),
CONSTRAINT pk_direccion PRIMARY KEY (id_direccion,id_usuario_direccion)
);


CREATE TABLE sucursal(
id_sucursal INT NOT NULL,
id_aliado INT NOT NULL,
cod_calle INT NOT NULL,
cod_mun INT NOT NULL,
cod_es INT NOT NULL,
ubi_sucursal datos_lugar,
CONSTRAINT fk_calle_sucursal FOREIGN KEY (cod_calle,cod_mun,cod_es) REFERENCES
calle(c_calle,c_mun,c_es),
CONSTRAINT fk_al_sucursal FOREIGN KEY (id_aliado) REFERENCES aliado_comercial(id_aliado),
CONSTRAINT pk_sucursal PRIMARY KEY (id_sucursal,id_aliado,cod_calle,cod_mun,cod_es)
);


-- ENVIO

CREATE TABLE sede(
id_sede INT NOT NULL,
id_prov INT NOT NULL,
cod_calle INT NOT NULL,
cod_mun INT NOT NULL,
cod_es INT NOT NULL,
ubi_sede datos_lugar,
CONSTRAINT fk_calle_sede FOREIGN KEY (cod_calle,cod_mun,cod_es) REFERENCES calle(c_calle,c_mun,c_es),
CONSTRAINT fk_prov_sede FOREIGN KEY (id_prov) REFERENCES proveedor(id_proveedor),
CONSTRAINT pk_sede PRIMARY KEY (id_sede,id_prov,cod_calle,cod_mun,cod_es)
);


CREATE SEQUENCE per_seq_uni START WITH 1;

CREATE TABLE unidad(
 id_unidad INT DEFAULT per_seq_uni.NEXTVAL,
 id_sede INT NOT NULL,
 id_prov INT NOT NULL,
 cod_calle INT NOT NULL,
 cod_municipio INT NOT NULL,
 cod_estado INT NOT NULL,
 tipo_unidad VARCHAR2(15) NOT NULL,
 estado_unidad CHAR NOT NULL,
 coordenadas_actuales datos_lugar;
 CONSTRAINT CHK_uni_tipo CHECK(tipo_unidad in ('moto','camioneta','bicicleta')),
 CONSTRAINT CHK_uni_estao CHECK(estado_unidad in ('v','r')), 
-- r=reparacion, v=vigente
 CONSTRAINT FK_uni_sed FOREIGN KEY (id_sede,id_prov,cod_calle,cod_municipio,cod_estado) REFERENCES sede(id_sede,id_prov,cod_calle,cod_mun,cod_es),
 CONSTRAINT PK_unidad PRIMARY KEY (id_unidad,id_sede,id_prov)
);

CREATE SEQUENCE per_seq_suc_asig START WITH 1;

CREATE TABLE sucursal_asignada(
 id_sucasig INT NOT NULL,
 id_ali INT NOT NULL,
 id_suc INT NOT NULL,
 id_unidad INT NOT NULL,
 id_sede INT NOT NULL,
 id_prov INT NOT NULL,
 est_suc INT NOT NULL,
 mun_suc INT NOT NULL,
 cal_suc INT NOT NULL,
 CONSTRAINT fk_suc_asig_suc FOREIGN KEY (id_suc,id_ali,cal_suc,mun_suc,est_suc) REFERENCES sucursal(id_sucursal,id_aliado,cod_calle,cod_mun,cod_es),
 CONSTRAINT fk_suc_asig_un FOREIGN KEY (id_unidad,id_sede,id_prov) REFERENCES unidad (id_unidad,id_sede,id_prov),
 CONSTRAINT pk_suc_asig PRIMARY KEY (id_sucasig,id_unidad,id_suc)
);

CREATE TABLE servicio(
id_servicio INT NOT NULL,
cant_envio INT NOT NULL,
oferta INT,
id_prov INT NOT NULL,
CONSTRAINT fk_serv_prov FOREIGN KEY (id_prov) REFERENCES proveedor(id_proveedor),
CONSTRAINT PK_servicio PRIMARY KEY (id_servicio,id_prov)
);


CREATE TABLE acuerdo_servicio(
id_acuerdo INT NOT NULL,
tiempo_calculo INT NOT NULL,
precio_as INT NOT NULL,
id_prov_serv INT NOT NULL,
id_serv INT NOT NULL,
id_aliado INT NOT NULL,
fechas historico,
CONSTRAINT fk_acuerdo_serv_al FOREIGN KEY (id_aliado) REFERENCES aliado_comercial (id_aliado),
CONSTRAINT fk_acuerdo_serv FOREIGN KEY (id_serv,id_prov_serv) REFERENCES servicio(id_servicio,id_prov),
CONSTRAINT PK_acuerdo PRIMARY KEY (id_acuerdo,id_serv,id_prov_serv,id_aliado)
);

CREATE TABLE lugar_acuerdo(
id_lugar_ac INT NOT NULL,
id_acuerdo INT NOT NULL,
cod_estado INT NOT NULL,
id_prov INT NOT NULL,
id_servicio INT NOT NULL,
CONSTRAINT fk_lugar_estado FOREIGN KEY (cod_estado) REFERENCES estado(codigo_estado),
CONSTRAINT fk_lugar_acuerdo FOREIGN KEY (id_acuerdo,id_prov,id_servicio) REFERENCES acuerdo_servicio(id_acuerdo,id_serv,id_prov_serv),
CONSTRAINT PK_lugar_acuerdo PRIMARY KEY (id_lugar_ac,id_acuerdo,id_prov,id_servicio,cod_estado)
);

CREATE SEQUENCE per_seq_envio START WITH 1;

CREATE TABLE envio(
tracking INT DEFAULT per_seq_envio.NEXTVAL,
id_usuario_envio INT NOT NULL,
id_usuario_dir INT NOT NULL,
id_dir INT NOT NULL,
id_acuerdo INT NOT NULL,
id_prov INT NOT NULL,
id_aliado INT NOT NULL,
id_serv INT NOT NULL,
punto de referencia VARCHAR2(60),
fechas historico,
CONSTRAINT fk_acuerdo FOREIGN KEY (id_acuerdo,id_prov,id_serv,id_aliado) REFERENCES acuerdo_servicio(id_acuerdo,id_serv,id_prov_serv,id_aliado),
CONSTRAINT fk_lugar_envio FOREIGN KEY (id_dir,id_usuario_dir) REFERENCES direccion(id_direccion,id_usuario_direccion),
CONSTRAINT fk_usuario_envio FOREIGN KEY (id_usuario_envio) REFERENCES usuario(id_usuario),
CONSTRAINT pk_envio PRIMARY KEY (tracking,id_acuerdo,id_usuario_envio,id_direccion)
);

CREATE TABLE producto(
id_producto INT NOT NULL,
id_aliado INT NOT NULL,
precio_unitario INT NOT NULL,
nombre_prod  VARCHAR(20),
CONSTRAINT fk_al_producto FOREIGN KEY (id_aliado) REFERENCES aliado_comercial(id_aliado),
CONSTRAINT pk_producto PRIMARY KEY (id_producto,id_aliado)
);

CREATE TABLE producto_envio 
(
    id_p_s INT NOT NULL,
    --PK producto
    id_producto INT NOT NULL,
    id_al_com INT NOT NULL,
    --PK envio
    tracking INT NOT NULL,
    id_acuerdo INT NOT NULL,
    id_usuario_envio INT NOT NULL,
    id_dir INT NOT NULL,
    --constraints
    CONSTRAINT fk_producto_p_s FOREIGN KEY (id_producto,id_al_com) REFERENCES producto(id_producto,id_aliado),
    CONSTRAINT fk_productos_de_envio FOREIGN KEY (tracking,id_acuerdo,id_usuario_envio,id_dir) REFERENCES envio (tracking,id_acuerdo,id_usuario_envio,id_dir),
    CONSTRAINT pk_p_s PRIMARY KEY(id_p_s,id_producto,id_al_com,tracking,id_acuerdo,id_usuario_envio,id_dir)
)
