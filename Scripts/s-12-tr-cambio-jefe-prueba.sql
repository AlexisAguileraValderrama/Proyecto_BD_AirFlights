--@Autor(es):       Aguilera Valderrama Alexis Fernando, 
--                  Pereda Ceballos Jorge Francisco
--@Fecha creación:  09/01/2022
--@Descripción:     prueba tr-cambio-jefe

connect AGPE_PROY_ADMIN / agpe

set serveroutput on
declare
  v_empleado_id number(10,0):= 34;
  v_jefe_id_trabajador number(10,0);
  v_jefe_id_jefe number(10,0);
  v_jefe_id_nuevo_jefe number(10,0);
begin
  
  
  select empleado_id, jefe_id into v_jefe_id_trabajador, v_jefe_id_jefe
  from empleado
  where empleado_id = v_empleado_id;

  update programacion_empleado set puntaje = 99 where empleado_id = v_empleado_id and programacion_id = 7;
  
  select jefe_id into  v_jefe_id_trabajador 
  from empleado 
  where empleado_id = v_empleado_id;

  commit;

  if v_jefe_id_trabajador  is not null  then 
   dbms_output.put_line('Error al intercambiar el valor jefe_id del nuevo jefe, se obtuvo: '
   || v_jefe_id_trabajador ||' se esperaba nulo');
  end if;

  if v_jefe_id_nuevo_jefe <> v_empleado_id then 
     dbms_output.put_line('Error al intercambiar el valor  jefe_id 
      para el anterior jefe, se obtuvo :' || v_jefe_id_nuevo_jefe
       || 'se esperaba' || v_empleado_id);
  end if;
   
   dbms_output.put_line('Prueba realizada exitosamente. Jefe_id del empleado ' 
   || v_empleado_id || ':' || v_jefe_id_trabajador || ' .Jefe id del anterior jefe:'
   || v_empleado_id);
  exception
  when others then
  dbms_output.put_line('Prueba fallida, se obtuvo un error');
  rollback;
  raise;
end;
/
show errors
