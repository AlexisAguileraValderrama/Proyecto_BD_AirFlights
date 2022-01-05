--@Autor:  Aguilera Valderrama Alexis Fernando, Pereda Ceballos Jorge Francisco
--@Fecha creación: 16/12/2021
--@Descripción: Pruebas del ejercicio 2. Práctica 12

Prompt insertando un nuevo auto
declare
begin

dbms_output.put_line("JALA")


exception
  when NO_DATA_FOUND then
    raise_application_error(-20001,'No se encontraron registros esperados ');
    raise;

end;
/