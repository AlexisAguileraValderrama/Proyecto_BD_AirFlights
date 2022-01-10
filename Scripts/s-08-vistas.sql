--@Autor(es):       Aguilera Valderrama Alexis Fernando, 
--                  Pereda Ceballos Jorge Francisco
--@Fecha creación:  09/01/2022
--@Descripción:     Creacion de vistas


connect agpe_proy_admin / agpe
prompt creacion de vistas
create or replace view v_empleado_puntajes(
  nombre, ap_paterno, ap_materno, nombre_puesto,puntaje_total
) as select nombre, ap_paterno,ap_materno, nombre_puesto, sum(puntaje) puntaje_total
from empleado e
join puesto p
  on e.puesto_id = p.puesto_id
join programacion_empleado pe
  on pe.empleado_id = e.empleado_id
group by nombre, ap_paterno,ap_materno, nombre_puesto;

grant select on v_empleado_puntajes to agpe_proy_invitado;
create or replace public synonym empleado_puntajes
  for agpe_proy_admin.v_empleado_puntajes;

create or replace view v_pasajero(
  nombre,ap_paterno, email
) as select nombre, ap_paterno, email
  from pasajero;

grant select on v_pasajero to agpe_proy_invitado;
create or replace public synonym pasajero
  for agpe_proy_admin.v_pasajero;


create or replace view v_empleado(
  nombre, ap_paterno,ap_materno,foto, link
) as select nombre, ap_paterno,ap_materno,foto ,url_direccion link
from empleado e
left join url_trabajos_empleado utl
  on e.empleado_id = utl.empleado_id
order by nombre, ap_paterno, ap_materno;

grant select on v_empleado to agpe_proy_invitado;
create or replace public synonym empleado
  for agpe_proy_admin.v_empleado;

create or replace view v_aeropuertos_disponibles(
  clave_aeropuerto, nombre_aeropuerto
) as select clave_aeropuerto,nombre_aeropuerto
from aeropuerto 
  where es_convenio = 1;

grant select on v_aeropuertos_disponibles to agpe_proy_invitado;
create or replace public synonym aeropuertos_disponibles
  for agpe_proy_admin.v_aeropuertos_disponibles;
  