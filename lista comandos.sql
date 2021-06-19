
------------------- CREADO UN USUARIO COMUN ------------

--------- USUARIO USUARIO C## "ROOT"
create user c##user1 identified by user1 container=all; --Creando usuario
select username, created, common from all_users; --listamos ultimos usuarios creados

------------------- CREANDO A UN USUARIO LOCAL

create user jorge identified by jorge container=current; --Creando usuario local
show con_name
alter session set container = ORCLPDB; --Me vuevo al PDB ORCLPDB para crear un usuario local
alter database open --se puede abrir con este comando suponiendo que no hay nada malo con la base de datos
--alter database open database opened --Abrir una base de datos PDB
select * from all_users; --Enlistamos a usuarios creados por fecha
column username format a20; --damos formato a columna usernam con 20 0 12 espacios
column default_collation format a15; -- damos formato a columna defaul_collation con 15 espacios
select * from all_users; --ejecutamos una vez mas y ya se vera mucho mejr la vista de usuarios
GRANT CREATE SESSION TO JORGE; -- Permiso a iniciar sesión
GRANT CREATE SEQUENCE TO JORGE; --Permiso para crear Secuencias
GRANT CREATE TABLE TO JORGE; --Permisos paa crear Tablas

--================= > CREANDO SECUENCIAS

CREATE SEQUENCE 

CREATE SEQUENCE SEQ_CLIENTE
START WITH 1000
INCREMENT BY 1
NOCACHE
NOCYCLE;
