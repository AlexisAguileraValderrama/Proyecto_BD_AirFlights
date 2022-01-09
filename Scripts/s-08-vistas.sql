x--TODO: FALTA UNA VISTA
connect agpe_proy_admin / agpe

create or replace view v_empleado_puesto_programacion_empleado(
  nombre, ap_paterno, ap_materno, nombre_puesto,puntaje_total
) as select nombre, ap_paterno,ap_materno, nombre_puesto, sum(puntaje) puntaje_total
from empleado e
join puesto p
  on e.puesto_id = p.puesto_id
join programacion_empleado pe
  on pe.empleado_id = e.empleado_id
group by nombre, ap_paterno,ap_materno, nombre_puesto;

