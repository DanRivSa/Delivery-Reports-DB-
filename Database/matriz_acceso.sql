--ROLES

CREATE ROLE sys_overseer; --administrador de sistema
CREATE ROLE admin_prov; --administrador de proveedores
CREATE ROLE admin_aliado_com; --administrador de aliados comerciales
CREATE ROLE monitor_prov; --monitor de proveedores
CREATE ROLE monitor_aliado_com; --monitor de aliados comerciales

GRANT CREATE SESSION TO sys_overseer;
GRANT CREATE SESSION TO admin_prov;
GRANT CREATE SESSION TO admin_aliado_com;
GRANT CREATE SESSION TO monitor_prov;
GRANT CREATE SESSION TO monitor_aliado_com;

--PRIVILEGES

--sys_overseer
GRANT ALL PRIVILEGES TO sys_overseer;

--GRANTS

--monitor_aliado_com
GRANT SELECT ON HR.acuerdo_servicio TO monitor_aliado_com;
GRANT SELECT ON HR.lugar_acuerdo TO monitor_aliado_com;
GRANT SELECT ON HR.aliado_comercial TO monitor_aliado_com;
GRANT SELECT ON HR.sucursal TO monitor_aliado_com;
GRANT SELECT ON HR.producto TO monitor_aliado_com;
GRANT SELECT ON HR.estado TO monitor_aliado_com;
GRANT SELECT ON HR.municipio TO monitor_aliado_com;
GRANT SELECT ON HR.calle TO monitor_aliado_com;

--admin_aliado_com
GRANT INSERT,SELECT,UPDATE,DELETE ON HR.acuerdo_servicio TO admin_aliado_com;
GRANT INSERT,SELECT,UPDATE,DELETE ON HR.lugar_acuerdo TO admin_aliado_com;
GRANT INSERT,SELECT,UPDATE,DELETE ON HR.aliado_comercial TO admin_aliado_com;
GRANT INSERT,SELECT,UPDATE,DELETE ON HR.sucursal TO admin_aliado_com;
GRANT INSERT,SELECT,UPDATE,DELETE ON HR.producto TO admin_aliado_com;
GRANT SELECT ON HR.estado TO admin_aliado_com;
GRANT SELECT ON HR.municipio TO admin_aliado_com;
GRANT SELECT ON HR.calle TO admin_aliado_com;

--monitor_prov
GRANT SELECT ON HR.proveedor TO monitor_prov;
GRANT SELECT ON HR.servicio TO monitor_prov;
GRANT SELECT ON HR.acuerdo_servicio TO monitor_prov;
GRANT SELECT ON HR.lugar_acuerdo TO monitor_prov;
GRANT SELECT ON HR.sede TO monitor_prov;
GRANT SELECT ON HR.unidad TO monitor_prov;
GRANT SELECT ON HR.envio TO monitor_prov;
GRANT SELECT ON HR.producto_envio TO monitor_prov;
GRANT SELECT ON HR.sucursal_asignada TO monitor_prov;
GRANT SELECT ON HR.usuario TO monitor_prov;
GRANT SELECT ON HR.direccion TO monitor_prov;
GRANT SELECT ON HR.registro TO monitor_prov;
GRANT SELECT ON HR.valoracion TO monitor_prov;
GRANT SELECT ON HR.estado TO monitor_prov;
GRANT SELECT ON HR.municipio TO monitor_prov;
GRANT SELECT ON HR.calle TO monitor_prov;

--admin_prov
GRANT INSERT,SELECT,UPDATE,DELETE ON HR.proveedor TO admin_prov;
GRANT INSERT,SELECT,UPDATE,DELETE ON HR.servicio TO admin_prov;
GRANT INSERT,SELECT,UPDATE,DELETE ON HR.acuerdo_servicio TO admin_prov;
GRANT INSERT,SELECT,UPDATE,DELETE ON HR.lugar_acuerdo TO admin_prov;
GRANT INSERT,SELECT,UPDATE,DELETE ON HR.sede TO admin_prov;
GRANT INSERT,SELECT,UPDATE,DELETE ON HR.unidad TO admin_prov;
GRANT INSERT,SELECT,UPDATE,DELETE ON HR.envio TO admin_prov;
GRANT INSERT,SELECT,UPDATE,DELETE ON HR.producto_envio TO admin_prov;
GRANT INSERT,SELECT,UPDATE,DELETE ON HR.sucursal_asignada TO admin_prov;
GRANT SELECT ON HR.usuario TO admin_prov;
GRANT SELECT ON HR.direccion TO admin_prov;
GRANT SELECT ON HR.registro TO admin_prov;
GRANT SELECT ON HR.valoracion TO admin_prov;
GRANT SELECT ON HR.estado TO admin_prov;
GRANT SELECT ON HR.municipio TO admin_prov;
GRANT SELECT ON HR.calle TO admin_prov;

--USERS

CREATE USER daniel IDENTIFIED BY pwd123;
CREATE USER emp1 IDENTIFIED BY emp1;
CREATE USER emp2 IDENTIFIED BY emp2;
CREATE USER adm1 IDENTIFIED BY adm1;
CREATE USER adm2 IDENTIFIED BY adm2;

--ASSIGN ROLE TO USER

GRANT sys_overseer TO daniel;
GRANT monitor_prov TO emp1;
GRANT monitor_aliado_com TO emp2;
GRANT admin_prov TO adm1;
GRANT admin_aliado_com TO adm2;

--DROP USERS
DROP USER daniel;
DROP USER emp1;
DROP USER emp2;
DROP USER adm1;
DROP USER adm2;

--DROP ROLES

DROP ROLE sys_overseer;
DROP ROLE monitor_aliado_com;
DROP ROLE monitor_prov;
DROP ROLE admin_prov;
DROP ROLE admin_aliado_com;