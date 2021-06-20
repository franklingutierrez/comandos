
------------------- ver que tabla tiene asignada un usuario--------
select table_name from user_tables order by table_name;
------------------ Ver que dato tenemos en la tabla................
select * from demo;
------------------ ver que tabla espacio tiene asignado una tabla y 
-------------------el espacio de tabla correspondiente--------------
SELECT TABLE_NAME, TABLESPACE_NAME, STATUS FROM USER_TABLES ORDER BY 1;
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

-- ================ VER CONTENEDORES COMO SYSDBA ============
select con_id, name from v$containers;

-- ================ VER PDBS COMO SYSDBA ============
column name format a40
select con_id, name from v$pdbs;


--================= > CREANDO PDBS

prubea


-- ====== GUIRA|.:.🏆RESOLUCION EJERCICIOS🏆 .:.|GUIRA====

-- DIAPOSITIVA 1:

    -- Pasos:  1. Tener Creado el TABLESPACE
                create tablespace gutierrez
                datafile 'D:/app/GUIRA/virtual/oradata/orcl/gutierrez.dbf'
                size 10m;
            -- 2. Crear un usuario
                alter session set container = ORCLPDB;
                create user franklin identified by franklin container=current;
                select * from all_users;
                column username format a20;
                column default_collation format a15;
                select * from all_users;
            -- 3. Darles Permisos
                grant create session to franklin;
                grant create sequence to franklin;
                grant create table to franklin;
            -- 4. Crear tabla 
                sqlplus franklin/franklin@localhost:1521/orclpdb
                create table DATOS (id_dni number(9), nombre varchar2(100), correo varchar2(100));
                alter table datos --ingresar a la tabla datos para modificarla
                add constraint datos_pk primary key(id_dni); --asignar cable primaria a id_dni
            -- 5. Asignarlo a un TABLESPACE
                alter table datos move tablespace gutierrez;
            -- 6. Ingresando datos a TABLA
                alter user franklin quota unlimited on gutierrez--asignar permisos para que el espacio del usuario en el table espace tenga un limite
                insert into  datos (id_dni, nombre, correo) values(45881263, 'Franklin Hiustong Gutierrez Arizaca', 'fgutierrezarizaca@gmail.com');

