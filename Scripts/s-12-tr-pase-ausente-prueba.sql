--@Autor(es):       Aguilera Valderrama Alexis Fernando, 
--                  Pereda Ceballos Jorge Francisco
--@Fecha creación:  09/01/2022
--@Descripción:     prueba tr-pase-ausente

prompt realizando prueba para actualización
set serveroutput on
declare
v_pase_abordar_id number(10,0):= 1;

v_reporte_ausente_id number(10,0);
v_programacion_id number(10,0);
v_nombre_pasajero varchar2(30);
v_email varchar2(100);
v_urgencia number(3,0);

v_reporte_ausente_id_esperado number(10,0);
v_programacion_id_esperado number(10,0):=  1;
v_nombre_pasajero_esperado varchar2(30) := 'Hailey';
v_email_esperado varchar2(100) := 'hbeinckenb@goo.gl';
v_urgencia_esperado number(3,0) := 3;

begin

  update pasajero_pase_abordar set presente = 0 where pase_abordar_id = v_pase_abordar_id;

  select seq_reporte_ausente_id.currval 
  into v_reporte_ausente_id_esperado from dual;

  select reporte_ausente_id, programacion_id,nombre_pasajero, email, urgencia
  into v_reporte_ausente_id,v_programacion_id,v_nombre_pasajero, v_email, v_urgencia
  from reporte_ausente
  where reporte_ausente_id = v_reporte_ausente_id_esperado;

  if v_reporte_ausente_id <> v_reporte_ausente_id_esperado then
  raise_application_error(-20001,'Valor de reporte_ausente_id: '|| v_reporte_ausente_id 
   || ', valor esperado: ' || v_reporte_ausente_id_esperado );
  end if;

  if v_programacion_id <> v_programacion_id_esperado then
  raise_application_error(-20001,'Valor de progrmacion_id: '|| v_programacion_id 
   || ', valor esperado: ' || v_programacion_id_esperado );
  end if;
  
  if v_nombre_pasajero <> v_nombre_pasajero_esperado then
  raise_application_error(-20001,'Valor de nombre_pasajero: '|| v_nombre_pasajero
   || ', valor esperado: ' || v_nombre_pasajero_esperado );
  end if;
  
  if v_email <> v_email_esperado then
  raise_application_error(-20001,'Valor de email: '|| v_email 
   || ', valor esperado: ' || v_email_esperado );
  end if;
 
  if v_urgencia <> v_urgencia_esperado then
  raise_application_error(-20001,'Valor de urgencia: '|| v_urgencia 
   || ', valor esperado: ' || v_urgencia_esperado );
  end if;

  dbms_output.put_line('Prueba 1 exitosa');

  commit;

exception
  when others then
  dbms_output.put_line('Prueba 1 fallida');
  raise;
  rollback;

end;
/
show errors

--Cuando sale error es que los pases tienen el mismo folio
prompt realizando prueba para insercion
set serveroutput on
declare
  
v_pasajero_id  number(10,0):= 19;

v_reporte_ausente_id number(10,0);
v_programacion_id number(10,0);
v_nombre_pasajero varchar2(30);
v_email varchar2(100);
v_urgencia number(3,0);

v_reporte_ausente_id_esperado number(10,0);
v_programacion_id_esperado number(10,0):=  2;
v_nombre_pasajero_esperado varchar2(30) := 'Jilleen';
v_email_esperado varchar2(100) := 'jtyreri@bbb.org';
v_urgencia_esperado number(3,0) := 2;

begin
 
  insert into pase_abordar
   (pase_abordar_id, fecha_impresion,asiento,programacion_id, tipo_pasajero)
    values (seq_pase_abordar_id.nextval,
      to_date('01/02/2022 18:00:00','dd/mm/yyyy hh24:mi:ss'),
    'D-31', 2,'ORD');

  insert into pasajero_pase_abordar 
    values(seq_pasajero_pase_abordar_id.nextval ,'はホスキッ',
   0,
   v_pasajero_id,
   seq_pase_abordar_id.currval
  );

  select seq_reporte_ausente_id.currval 
  into v_reporte_ausente_id_esperado from dual;

  select reporte_ausente_id, programacion_id,nombre_pasajero, email, urgencia
  into v_reporte_ausente_id,v_programacion_id,v_nombre_pasajero, v_email, v_urgencia
  from reporte_ausente
  where reporte_ausente_id = v_reporte_ausente_id_esperado;

  if v_reporte_ausente_id <> v_reporte_ausente_id_esperado then
  raise_application_error(-20001,'Valor de reporte_ausente_id: '|| v_reporte_ausente_id 
   || ', valor esperado: ' || v_reporte_ausente_id_esperado );
  end if;

  if v_programacion_id <> v_programacion_id_esperado then
  raise_application_error(-20001,'Valor de progrmacion_id: '|| v_programacion_id 
   || ', valor esperado: ' || v_programacion_id_esperado );
  end if;
  
  if v_nombre_pasajero <> v_nombre_pasajero_esperado then
  raise_application_error(-20001,'Valor de nombre_pasajero: '|| v_nombre_pasajero
   || ', valor esperado: ' || v_nombre_pasajero_esperado );
  end if;
  
  if v_email <> v_email_esperado then
  raise_application_error(-20001,'Valor de email: '|| v_email 
   || ', valor esperado: ' || v_email_esperado );
  end if;
 
  if v_urgencia <> v_urgencia_esperado then
  raise_application_error(-20001,'Valor de urgencia: '|| v_urgencia 
   || ', valor esperado: ' || v_urgencia_esperado );
  end if;

  dbms_output.put_line('Prueba 2 exitosa');

  commit;

exception
  when others then
  dbms_output.put_line('Prueba 2 fallida');
  raise;
  rollback;
end;
/
show errors

