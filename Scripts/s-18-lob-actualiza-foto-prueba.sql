--@Autor:  Aguilera Valderrama Alexis Fernando, Pereda Ceballos Jorge Francisco
--@Fecha creación: 18/12/2021
--@Descripción: pruebas del ejercicio 2. Practica 13

set serveroutput on
declare
v_longitud_foto number(10,0);
begin
  p_actualiza_foto_empleado();
  commit;

  for i in 1 .. 100 loop
    
    select dbms_lob.getlength(foto) into v_longitud_foto
    from empleado 
    where empleado_id = i;
     
      
    if(v_longitud_foto = 0) then 
      raise_application_error(-20001,'Carga de foto para el empleado '|| i || ' fallida. Valor vacio');
    end if;

    dbms_output.put_line('Longitud del archivo del empleado ' || i || ': ' || v_longitud_foto );

  end loop;

  dbms_output.put_line('Carga de archivos de fotos de empleado exitosa');

  exception
  when others then
  rollback;
  raise;
end;
/
show errors