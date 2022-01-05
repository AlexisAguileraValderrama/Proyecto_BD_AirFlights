connect agpe_proy_admin / agpe

prompt creacion de sinonimos publicos

create or replace public synonym programacion for agpe_proy_admin.programacion;

create or replace public synonym historico_status_programacion for agpe_proy_admin.historico_status_programacion;

create or replace public synonym programacion_empleado for agpe_proy_admin.programacion_empleado;

prompt Asignación de permisos
grant select on programacion                  to agpe_proy_invitado;
grant select on historico_status_programacion to agpe_proy_invitado;
grant select on programacion_empleado         to agpe_proy_invitado;
grant select on aeropuerto                    to agpe_proy_invitado;
grant select on paquete                       to agpe_proy_invitado;
grant select on pase_abordar                  to agpe_proy_invitado;

prompt conectado a usuario invitado

connect agpe_proy_invitado / agpe

prompt creacion de sinonimos privados para invitado

create or replace private synonym aeropuerto for agpe_proy_admin.aeropuerto;

create or replace private synonym paquete for agpe_proy_admin.paquete;

create or replace private synonym  for agpe_proy_admin."{}";


create or replace procedure




