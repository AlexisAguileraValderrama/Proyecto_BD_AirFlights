connect AGPE_PROY_ADMIN / agpe

set serveroutput on
declare
  v_tipo_programacion number(2,0);
begin

  update programacion_empleado set puntaje = 99 where empleado_id = 34 and programacion_id = 7;
  
  --select * from programacion_empleado where empleado_id = 34 and programacion_id = 7;
  --
end;
/
show errors