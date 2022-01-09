--Se requiere hacer uso del usuario SYS para crear un objeto tipo
--directory y otorgar privilegios. 
prompt Conectando como sys
connect sys / system as sysdba

--Un objeto tipo directory es un objeto que se crea y almacena en el
-- diccionario de datos y se emplea para mapear directorios
-- reales en el sistema de archivos. En este caso tmp_dir es un
-- objeto que apunta al directorio /tmp/bases del servidor 
prompt creando directorio tmp_dir
create or replace directory tmp_dir as '/tmp/bases';

--se otorgan permisos para que el usuario jorge_0307 de la BD pueda leer
--el contenido del directorio
grant read, write on directory tmp_dir to agpe_proy_admin;


prompt conectado como admin
connect agpe_proy_admin / agpe

prompt creando tabla externa
create table pasajero_ext (
    pasajero_id     number(4, 0),
    nombre			 varchar2(30),
    ap_paterno       varchar2(30),
    ap_materno       varchar2(30),
    email            varchar2(40),
    fecha_nacimiento date,
    curp             varchar2(20)
)
organization external (
    --En oracle existen 2 tipos de drivers para parsear el archivo:
    -- oracle_loader  y oracle_datapump
    type oracle_loader
    default directory tmp_dir
    access parameters (
        records delimited by newline
        badfile tmp_dir:'pasajero_ext_bad.log'
        logfile tmp_dir:'pasajero_ext.log'
        fields terminated by ','
        lrtrim
        missing field values are null 
        (
        	pasajero_id, nombre, ap_paterno, ap_materno,
            email, fecha_nacimiento date mask "mm/dd/yyyy",
            curp
        )
    )
    location ('pasajero_ext.csv')
)
reject limit unlimited;


-- Asegurarse que el archivo csv se encuentra en elmismo
-- directorio donde se está ejecutando este script.
-- De lo contrario,  el comando cp fallará.
prompt cambiando permisos
!chmod 777 /tmp/bases

prompt mostrando el contenido de la tabla externa
col pasajero_id format a20
col nombre format a20
col ap_paterno format a20
col ap_materno format a20
col email format a20
col fecha_nacimiento format a20
col curp format a20
set linesize window

--select * from pasajero_ext;


