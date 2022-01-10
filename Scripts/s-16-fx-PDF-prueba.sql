--@Autor(es):       Aguilera Valderrama Alexis Fernando, 
--                  Pereda Ceballos Jorge Francisco
--@Fecha creación:  09/01/2022
--@Descripción:     prueba fx-pdf-prueba

set serveroutput on
declare
v_blob_recibido blob;
v_longitud_pdf number(10,0);

v_avion_id number(10,0) := 3;

begin
  
  v_blob_recibido := f_carga_pdf('av-03.pdf');
  
  update avion set pdf = v_blob_recibido where avion_id = v_avion_id;

  select dbms_lob.getlength(pdf) into v_longitud_pdf
    from avion
    where avion_id = v_avion_id;

  if(v_longitud_pdf = 0) then 
      raise_application_error(-20001,'Carga de pdf para el avión '|| v_avion_id || ' fallida. Valor vacio');
    end if;

    dbms_output.put_line('Longitud del archivo del avión ' || v_avion_id || ': ' || v_longitud_pdf );

  exception
  when others then
  rollback;
  raise;
end;
/
show errors