--@Autor(es):       Aguilera Valderrama Alexis Fernando, 
--                  Pereda Ceballos Jorge Francisco
--@Fecha creación:  09/01/2022
--@Descripción:     prueba  p-inserta-empleado

prompt  REALIZA INSERCIÓN.EMPLEADO PARA VUELO COMERCIAL NO CUENTA CON UNA PROGRAMACIÓN ASIGNADA
set serveroutput on
declare
  v_estado number(10,0) := -1;

begin
  
  p_asignar_empleado(3,11,v_estado); 

  if v_estado = 1 then
    dbms_output.put_line('Prueba 1 realizada exitosamente');
  else
    dbms_output.put_line('Prueba 1 no fue exitosa');
  end if;

rollback;

end;
/
prompt NO REALIZA INSERCIÓN.EMPLEADO VUELO COMERCIAL YA CUENTA CON UNA PROGRAMACIÓN ASIGNADA
set serveroutput on
declare
  v_estado number(10,0) := -1;
begin
  
  p_asignar_empleado(13,4,v_estado); 
  if v_estado = 1 then
    dbms_output.put_line('Prueba 2 no fue exitosa');
  end if;

exception
  when others then
  dbms_output.put_line('Hubo error, prueba 2 realizada exitosamente');
  raise;

end;
/

prompt REALIZA INSERCIÓN.EMPLEADO VUELO CARGA YA CUENTA CON UNA PROGRAMACIÓN ASIGNADA
declare
  v_estado number(10,0) := -1;

begin
  
  p_asignar_empleado(93,10,v_estado);

  if v_estado = 1 then
    dbms_output.put_line('Prueba 3 realizada exitosamente');
  else
    dbms_output.put_line('Prueba 3 no fue exitosa');
  end if;

rollback;

end;
/
show errors;

prompt NO REALIZA INSERCIÓN.EMPLEADO VUELO CARGA YA CUENTA CON UNA PROGRAMACIÓN ASIGNADA
set serveroutput on
declare
  v_estado number(10,0) := -1;
begin
  
  p_asignar_empleado(53,10,v_estado); 

  if v_estado = 1 then
    dbms_output.put_line('Prueba 4 no fue exitosa');
  end if;

exception
  when others then
  dbms_output.put_line('Hubo error, Prueba 4 realizada exitosamente');
  raise;

rollback;

end;
/
