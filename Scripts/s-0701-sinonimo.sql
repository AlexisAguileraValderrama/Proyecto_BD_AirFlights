--@Autor:  Aguilera Valderrama Alexis Fernando, Pereda Ceballos Jorge Francisco
--@Fecha creación: 16/12/2021
--@Descripción: procedimiento encargado de renombrar los sinonimos a cierta tabla

set serveroutput on
declare

cursor cur_nombre_tablas is
  select table_name from user_tables;
  
  plsql_block VARCHAR2(10000);
  v_nombre_sinonimo varchar2(100);
  respuesta number(2,0);
begin
  for r in cur_nombre_tablas loop
    v_nombre_sinonimo := 'XX_' || r.table_name;
    dbms_output.put_line('Creando sinonimo para la tabla :' || r.table_name);
    dbms_output.put_line('Con nombre '|| v_nombre_sinonimo);
    plsql_block := 'create or replace public synonym '|| v_nombre_sinonimo || ' for agpe_proy_admin.' || r.table_name;

    EXECUTE IMMEDIATE plsql_block;

    dbms_output.put_line('Sinonimo ' || v_nombre_sinonimo || ' creado exitosamente
    ');

  end loop;

end;
/
show errors

