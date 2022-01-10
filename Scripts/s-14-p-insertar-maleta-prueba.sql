set serveroutput on
declare
  v_peso number(7,2);
  v_actual number(10,0);

begin
  select dbms_random.value(1,99) into v_peso from dual;

  p_insertar_maleta(2,v_peso,v_actual);
 
  commit;
  if v_actual != -1 then 
    dbms_output.put_line('La maleta fue registrada con exito');
  else
    raise_application_error(-20001,'La maleta no se pudo ingresar');
  end if;
exception
  when others then
  rollback;
  raise;
end;
/
show errors;
