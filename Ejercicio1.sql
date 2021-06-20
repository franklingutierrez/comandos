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

