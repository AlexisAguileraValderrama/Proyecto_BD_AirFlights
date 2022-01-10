--@Autor(es):       Aguilera Valderrama Alexis Fernando, 
--                  Pereda Ceballos Jorge Francisco
--@Fecha creación:  01/01/2022
--@Descripción:     Creacion de sinonimos

connect agpe_proy_admin / agpe

prompt creacion de sinonimos publicos

create or replace public synonym programacion for agpe_proy_admin.programacion;

create or replace public synonym historico_status_programacion for agpe_proy_admin.historico_status_programacion;

create or replace public synonym programacion_empleado for agpe_proy_admin.programacion_empleado;

create or replace public synonym itinerario for agpe_proy_admin.itinerario;

create or replace public synonym seq_itinerario_id for agpe_proy_admin.seq_itinerario_id;

prompt Asignación de permisos
grant select on programacion                  to agpe_proy_invitado;
grant select on historico_status_programacion to agpe_proy_invitado;
grant select on programacion_empleado         to agpe_proy_invitado;
grant select on aeropuerto                    to agpe_proy_invitado;
grant select on paquete                       to agpe_proy_invitado;
grant select on pase_abordar                  to agpe_proy_invitado;

grant select, insert on itinerario                    to agpe_proy_invitado;

prompt conectado a usuario invitado

connect sys / system as sysdba

grant create synonym to agpe_proy_invitado;

connect agpe_proy_invitado / agpe

prompt creacion de sinonimos privados para invitado

create or replace synonym aeropuerto for agpe_proy_admin.aeropuerto;

create or replace synonym paquete for agpe_proy_admin.paquete;

create or replace synonym pase_abordar for agpe_proy_admin.pase_abordar;

connect sys / system as sysdba

prompt quitando privilegio de lectura a invitado
revoke create synonym from agpe_proy_invitado;

connect agpe_proy_admin / agpe


prompt Ejecución del script para  anexar a las tablas formato xx_<nombre_tabla>
@s-0701-sinonimo.sql;
