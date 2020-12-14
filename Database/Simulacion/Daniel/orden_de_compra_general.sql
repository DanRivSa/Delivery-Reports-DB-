CREATE OR REPLACE PROCEDURE orden_de_compra IS
--datos de usuario
id_user INT;
id_dire INT;
estado_dire INT;
cant_usuarios INT;
--control
control_u INT;
--proveedor
id_prov INT;
id_sede INT;
--aliado
id_ali INT;
id_sucur INT;
es_suc INT;
mun_suc INT;
cal_suc INT;
--contrato
cant_acuerdo INT;
id_acuerdo_com INT;
id_serv_cont INT;
--envio
tracking_env INT;
punto_ref VARCHAR(30);
cant_productos INT;
control_p INT;
id_prod INT;
new_id INT;
--sucursal asignada
id_sucasig INT;
new_sucasig INT;
--despacho
id_uni INT;
BEGIN
dbms_output.put_line('***********************************************');
dbms_output.put_line('*       INICIO MODULO DE ORDEN DE COMPRA      *');
dbms_output.put_line('***********************************************');
dbms_output.put_line('*    ');
--seleccionar cantidad de usuarios
SELECT COUNT(*) INTO cant_usuarios FROM usuario;
--seleccionar id de usuario al azar que tenga una direccion que se pueda usar
control_u := 0;
WHILE control_u = 0
LOOP
    id_user := random_n(cant_usuarios);
    --seleccionar una direccion de envio asociada al usuario
    SELECT dir.id_direccion,dir.cod_es INTO id_dire,estado_dire FROM direccion dir WHERE dir.id_usuario_direccion = id_user;
    --seleccionar cantidad de acuerdos en estado de envio
    SELECT COUNT(*) INTO cant_acuerdo FROM lugar_acuerdo WHERE cod_estado = estado_dire;
    IF cant_acuerdo != 0 THEN
        control_u := control_u+1;
    END IF;
END LOOP;
dbms_output.put_line('************** SELECCIONES *******************');
dbms_output.put_line('*    ');
dbms_output.put_line('se selecciono el usuario de id: '||id_user|| ' con el id de direccion -> '||id_dire||' codigo estado -> '||estado_dire);
dbms_output.put_line('*    ');
--seleccionar prov,aliado,acuerdo,servicio de la tabla lugar acuerdo
SELECT la.id_prov,la.id_servicio,la.id_aliado,la.id_acuerdo INTO id_prov,id_serv_cont,id_ali,id_acuerdo_com FROM lugar_acuerdo la WHERE la.cod_estado = estado_dire AND ROWNUM = 1; 
--seleccionar sede y sucursal
SELECT sed.id_sede INTO id_sede FROM sede sed WHERE sed.cod_es = estado_dire AND ROWNUM = 1; 
SELECT suc.id_sucursal INTO id_sucur FROM sucursal suc WHERE suc.cod_es = estado_dire AND ROWNUM = 1;
dbms_output.put_line('SELECCION DE PROVEEDOR Y ALIADO COMERCIAL, CONTRATO, SUCURSAL Y SEDE (compatibles con la direccion del usuario)');
dbms_output.put_line('*    ');
dbms_output.put_line('se selecciono proveedor '||id_prov||' con sede '||id_sede||', aliado '||id_ali||' con sucursal '||id_sucur);
dbms_output.put_line('acuerdo '||id_acuerdo_com||' y su servicio '||id_serv_cont);
--generar envio
SELECT MAX(tracking) INTO tracking_env FROM envio;
tracking_env:= tracking_env + 1;
punto_ref:='referencia de simulacion';
INSERT INTO envio VALUES(tracking_env,id_user,id_user,id_dire,id_acuerdo_com,id_prov,id_ali,id_serv_cont,punto_ref,historico(SYSDATE,NULL),NULL,id_prov,id_sede);
dbms_output.put_line('se inserto el envio de id tracking '||tracking_env);
dbms_output.put_line('*    ');
dbms_output.put_line('*    ');
--generar productos en envio
--select cantidad de productos de aliado comercial
cant_productos:= random_n(3);
dbms_output.put_line('se le asignaran '||cant_productos||' al envio '||tracking_env);
control_p := 0;
dbms_output.put_line('************** INSERCION DE PRODUCTOS *******************');
dbms_output.put_line('*    ');
dbms_output.put_line('*    ');
--seleccionar id de producto y ultimo id de id_p_s
SELECT pr.id_producto INTO id_prod FROM producto pr WHERE pr.id_aliado = id_ali AND ROWNUM=1;
SELECT MAX(id_p_s) INTO new_id FROM producto_envio;
new_id:= new_id + 1;
WHILE control_p < cant_productos
LOOP
    --colocar envios en producto_envio
    dbms_output.put_line('producto '||id_prod||' agregado a envio '|| tracking_env);
    control_p:=control_p + 1;
    INSERT INTO producto_envio(id_p_s,id_producto,id_al_com,tracking,id_acuerdo,id_usuario_envio,id_dir) VALUES (new_id,id_prod,id_ali,tacking_env,id_acuerdo_com,id_user,id_dire);
END LOOP;
dbms_output.put_line('*    ');
dbms_output.put_line('*    ');
dbms_output.put_line('se procede al modulo de asignacion de unidad a envio '||tracking_env);
dbms_output.put_line('*    ');
dbms_output.put_line('*    ');
--asignar unidad a envio
asignacion_de_vehiculo(tracking_env);
--asignar sucursal a buscar productos
dbms_output.put_line('asignacion de sucursal');
SELECT env.id_unidad INTO id_uni FROM envio env WHERE env.tracking = tracking_env;
SELECT suc.cod_calle,suc.cod_mun,suc.cod_es INTO cal_suc,mun_suc,es_suc FROM sucursal suc WHERE suc.id_sucursal = id_sucur;
SELECT MAX(id_sucasig) INTO id_sucasig FROM sucursal_asignada;
new_sucasig:= id_sucasig + 1;
INSERT INTO sucursal_asignada VALUES(new_sucasig,id_ali,id_sucur,id_uni,id_sede,id_prov,es_suc,mun_suc,cal_suc,tracking_env,id_acuerdo_com,id_user,id_dire);
dbms_output.put_line('id de asignacion de sucursal'||new_sucasig);
dbms_output.put_line('*    ');
dbms_output.put_line('*    ');
--despacha unidad
dbms_output.put_line('se procede al modulo de despacho para unidad '||id_uni);
dbms_output.put_line('*    ');
dbms_output.put_line('*    ');
despacha_unidad(id_uni);
END;