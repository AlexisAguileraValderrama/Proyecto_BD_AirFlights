set serveroutput on
declare

  v_peso number(7,2);
  v_tipo number(1,0);
  v_folio varchar2(18);

begin

  select dbms_random.string('X',18) into v_folio from dual;
  select dbms_random.value(1,5) into v_tipo from dual;
  select dbms_random.value(1,99) into v_peso from dual;

  reporte_ausente_id   number(10,0) not null,
  programacion_id      number(10,0) not null,
  nombre_pasajero      number(10,0) not null,
  email                varchar2(100) not null,
  urgencia             number(3,0) not null,

  insert into reporte_ausente
    values(seq_reporte_ausente_id.nextval,
      v_folio,v_peso,v_tipo, 8);
 
  commit;

  dbms_output.put_line('El paquete fue registrado con exito');

exception
  when others then
  rollback;
  raise;

end;
/
show errors;