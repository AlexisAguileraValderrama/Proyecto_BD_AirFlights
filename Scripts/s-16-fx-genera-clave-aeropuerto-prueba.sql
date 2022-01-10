--@Autor(es):       Aguilera Valderrama Alexis Fernando, 
--                  Pereda Ceballos Jorge Francisco
--@Fecha creación:  09/01/2022
--@Descripción:     prueba fx-genera-clave-aeropuerto

set serveroutput on
declare 
v_clave_esperada varchar2 (4000) := 'DFA78FBE8CC5B';
v_clave_obtenida varchar2(4000);
v_aeropuerto_id number(10,0);
begin
 v_aeropuerto_id := seq_aeropuerto_id.nextval;

 v_clave_obtenida := f_genera_clave_aeropuerto(6567 ,'TIJUANA INTERNATIONAL AIRPORT');

  insert into aeropuerto
   values(v_aeropuerto_id,'TIJUANA INTERNATIONAL AIRPORT', v_clave_obtenida,32.54,-116.97,1);
 
 if v_clave_obtenida = v_clave_esperada then
 dbms_output.put_line('Prueba exitosa, la clave obtenida coincide
  con la clave esperada para el avion con id: ' || v_aeropuerto_id);
 else
  dbms_output.put_line('Prueba errónea, la clave obtenida no coincide
  con la clave esperada para el avion con id: ' || v_aeropuerto_id);
 end if;

  rollback;

exception
  when others then
  raise;
end;
/
show errors

