create or replace trigger tr_cambio_jefe
for update of puntaje on programacion_empleado
compound trigger
--haces el procedimiento


after each row is
--before after each row

v_puntaje_jefe number(2,0);
v_puntaje_empleado number(2,0);
v_jefe_id empleado.jefe_id%type;
v_jefe_jefe empleado.jefe_id%type;
begin

    select sum(puntaje) into v_puntaje_empleado
    from programacion_empleado
    where empleado_id = :new.empleado_id;

    select jefe_id into v_jefe_id
    from empleado where empleado_id = :new.empleado_id;

    if v_jefe_id is not null then

      select sum(puntaje) into v_puntaje_jefe 
      from programacion_empleado
      where empleado_id = v_jefe_id; 
    
      if v_puntaje_empleado > v_puntaje_jefe then --llamado al procedure
        select jefe_id into v_jefe_jefe from empleado where empleado_id = v_jefe_id;
        --update empleado set jefe_id = :new.empleado_id where empleado_id = v_jefe_id;
        --update empleado set jefe_id = v_jefe_jefe where empleado_id = :new.empleado_id;
      end if;
    end if;
  end after each row;
end;
/
show errors