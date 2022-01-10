--@Autor(es):       Aguilera Valderrama Alexis Fernando, 
--                  Pereda Ceballos Jorge Francisco
--@Fecha creación:  09/01/2022
--@Descripción:     Trigger para realizar insercion de paquete a su correspondiente avion de carga.
connect AGPE_PROY_ADMIN / agpe

create or replace trigger tr_insertar_paquete
before insert on paquete
for each row

declare
v_tipo_programacion programacion.tipo_programacion%type;

begin

  case 
    when inserting then
    select tipo_programacion into v_tipo_programacion 
    from programacion where programacion_id = :new.programacion_id;

    if v_tipo_programacion != 'CA' then
       raise_application_error(-20001,'La programacion seleccionada no es un vuelo de carga');
    end if;

    dbms_output.put_line('Insercion realizada con exito');
  end case;
    
end;
/
show errors