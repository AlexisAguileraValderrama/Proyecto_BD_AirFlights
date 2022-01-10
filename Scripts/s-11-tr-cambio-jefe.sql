--@Autor(es):       Aguilera Valderrama Alexis Fernando, 
--                  Pereda Ceballos Jorge Francisco
--@Fecha creación:  09/01/2022
--@Descripción:     Trigger para intercambio de jefe entre empleados cuando el puntaje del trabajador
--                  es mayor que el de su jefe.

create or replace trigger tr_cambio_jefe
for insert or update of puntaje on programacion_empleado
compound trigger
--haces el procedimiento

type prod_dato_empleado is record (
  empleado_id  number(10,0)
);

type obj_dato_empleado is table of prod_dato_empleado;

empleado_list obj_dato_empleado := obj_dato_empleado();


after each row is
  v_index number;
begin

  empleado_list.extend;
  v_index := empleado_list.last;
  empleado_list(v_index).empleado_id := :new.empleado_id;
end after each row;

after statement is
  v_puntaje_jefe number(6,0);
  v_puntaje_empleado number(6,0);
  v_jefe_id empleado.jefe_id%type;
  v_jefe_jefe empleado.jefe_id%type;

  v_empleado_id number(10,0);
begin
    v_empleado_id := empleado_list(1).empleado_id;
    select sum(puntaje) into v_puntaje_empleado
    from programacion_empleado
    where empleado_id = v_empleado_id;

    select jefe_id into v_jefe_id
    from empleado where empleado_id = v_empleado_id;

    if v_jefe_id is not null then

      select sum(puntaje) into v_puntaje_jefe 
      from programacion_empleado
      where empleado_id = v_jefe_id; 
    
      if v_puntaje_empleado > v_puntaje_jefe then --llamado al procedure
        select jefe_id into v_jefe_jefe from empleado where empleado_id = v_jefe_id;
        update empleado set jefe_id = v_empleado_id where empleado_id = v_jefe_id;
        update empleado set jefe_id = v_jefe_jefe where empleado_id = v_empleado_id;
      end if;
    end if;

end after statement;
end;
/
show errors
