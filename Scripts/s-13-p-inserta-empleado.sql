--@Autor(es):       Aguilera Valderrama Alexis Fernando, 
--                  Pereda Ceballos Jorge Francisco
--@Fecha creación:  09/01/2022
--@Descripción:     Procedimiento encargado de realizar la tripulación de vuelo 
--                  para cada programación.

create or replace procedure p_asignar_empleado(
v_empleado_id in number, v_programacion in number, v_status out number
) is

v_tipo_programacion programacion.tipo_programacion%type;
v_nombre_puesto puesto.nombre_puesto%type;
v_contador_empleado  number(1,0);
v_asignado number(1,0);
v_puntos number(2,0);

begin 
  
  v_status := -1;

  select tipo_programacion into v_tipo_programacion 
  from programacion
  where programacion_id = v_programacion;

  select p.nombre_puesto into v_nombre_puesto
  from empleado e
  join puesto p
    on e.puesto_id = p.puesto_id
  where empleado_id = v_empleado_id;

  select dbms_random.value(0,99) into v_puntos from dual;

  dbms_output.put_line('Tipo de programacion: ' || v_tipo_programacion);
  dbms_output.put_line('Puesto de empleado: ' || v_nombre_puesto);
  
  select count(*) into v_asignado 
  from programacion_empleado 
  where programacion_id = v_programacion
    and empleado_id = v_empleado_id;
  
  if v_asignado > 0 then
     raise_application_error(-20001,'EL empleado ya esta asignado a la programacion '|| v_programacion);
  else
--
    if v_tipo_programacion = 'CO' then
      
      case v_nombre_puesto
        when 'PILOTO' then

          select count(*) into v_contador_empleado
          from programacion_empleado pe
          join empleado e
            on e.empleado_id = pe.empleado_id
          where pe.programacion_id = v_programacion
                and e.puesto_id = 1;

          if v_contador_empleado = 0 then
            insert into programacion_empleado
              values(v_programacion, v_empleado_id, v_puntos);
            dbms_output.put_line('Empleado ' || v_empleado_id || ' con puesto '
            || v_nombre_puesto||' asignado a la programacion '||v_programacion);
          else
            raise_application_error(-20001,'El vuelo ya cuenta con un piloto asignado');
          end if;

        when 'COPILOTO' then
          
          select count(*) into v_contador_empleado
          from programacion_empleado pe
          join empleado e
            on e.empleado_id = pe.empleado_id
          where pe.programacion_id = v_programacion
                and e.puesto_id = 2;

          if v_contador_empleado = 0 then
          insert into programacion_empleado
              values(v_programacion, v_empleado_id, v_puntos);
            dbms_output.put_line('Empleado ' || v_empleado_id || ' con puesto '
            || v_nombre_puesto||' asignado a la programacion '||v_programacion);
          else
            raise_application_error(-20001,'El vuelo ya cuenta con un copiloto asignado');
          end if;

        when 'SOBRECARGO' then

          select count(*) into v_contador_empleado
          from programacion_empleado pe
          join empleado e
            on e.empleado_id = pe.empleado_id
          where pe.programacion_id = v_programacion
                and e.puesto_id = 3;

          if v_contador_empleado < 3 then
            insert into programacion_empleado
              values(v_programacion, v_empleado_id, v_puntos);
            dbms_output.put_line('Empleado ' || v_empleado_id || ' con puesto '
            || v_nombre_puesto||' asignado a la programacion '||v_programacion);
          else
            raise_application_error(-20001,'El vuelo ya cuenta con tres sobrecargos');
          end if;  

        when 'JEFE DE SOBRECARGOS' then

          select count(*) into v_contador_empleado
          from programacion_empleado pe
          join empleado e
            on e.empleado_id = pe.empleado_id
          where pe.programacion_id = v_programacion
                and e.puesto_id = 4;

          if v_contador_empleado = 0 then
            insert into programacion_empleado
                values(v_programacion, v_empleado_id, v_puntos);
            dbms_output.put_line('Empleado ' || v_empleado_id || ' con puesto '
              || v_nombre_puesto||' asignado a la programacion '||v_programacion);
          else
            raise_application_error(-20001,'El vuelo ya cuenta con un jefe de sobrecargos asignado');
          end if;  
      end case;

    elsif v_tipo_programacion = 'CA' then 

      case v_nombre_puesto
        when 'PILOTO' then

          select count(*) into v_contador_empleado
          from programacion_empleado pe
          join empleado e
            on e.empleado_id = pe.empleado_id
          where pe.programacion_id = v_programacion
                and e.puesto_id = 1;

          if v_contador_empleado = 0 then
            insert into programacion_empleado
              values(v_programacion, v_empleado_id, v_puntos);
            dbms_output.put_line('Empleado ' || v_empleado_id || ' con puesto '
            || v_nombre_puesto||' asignado a la programacion '||v_programacion);
          else
            raise_application_error(-20001,'El vuelo ya cuenta con un piloto asignado');
          end if;


        when 'COPILOTO' then 
        
          select count(*) into v_contador_empleado
          from programacion_empleado pe
          join empleado e
            on e.empleado_id = pe.empleado_id
          where pe.programacion_id = v_programacion
                and e.puesto_id = 2;

          if v_contador_empleado = 2 then
          insert into programacion_empleado
              values(v_programacion, v_empleado_id, v_puntos);
            dbms_output.put_line('Empleado ' || v_empleado_id || ' con puesto '
            || v_nombre_puesto||' asignado a la programacion '||v_programacion);
          else
            raise_application_error(-20001,'El vuelo ya cuenta con dos copiloto asignado');
          end if;
        
        when 'TÉCNICO' then
          select count(*) into v_contador_empleado
          from programacion_empleado pe
          join empleado e
            on e.empleado_id = pe.empleado_id
          where pe.programacion_id = v_programacion
                and e.puesto_id = 5;

          if v_contador_empleado < 10 then
            insert into programacion_empleado
                values(v_programacion, v_empleado_id, v_puntos);
            dbms_output.put_line('Empleado ' || v_empleado_id || ' con puesto '
              || v_nombre_puesto||' asignado a la programacion '||v_programacion);
          else
            raise_application_error(-20001,'El vuelo ya cuenta con 10 técnicos asignados');
          end if;

      end case;

    end if;

  end if;

  v_status := 1;

  exception
     when others then
       raise;
end;
/
show errors
