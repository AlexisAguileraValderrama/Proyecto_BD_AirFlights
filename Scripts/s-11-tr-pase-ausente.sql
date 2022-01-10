connect AGPE_PROY_ADMIN / agpe
set serveroutput on
create or replace trigger tr_pase_ausente
after insert or update of presente on pasajero_pase_abordar
for each row

declare
v_tipo_programacion programacion.tipo_programacion%type;

v_urgencia number(3,0);
v_tipo_pasajero varchar(3);
v_programacion_id number(10,0);
v_nombre varchar(100);
v_email varchar(200);

begin

  if :new.presente = 0 then

    select tipo_pasajero, programacion_id into v_tipo_pasajero, v_programacion_id
    from pase_abordar 
      where pase_abordar_id = :new.pase_abordar_id;

    select nombre, email into v_nombre, v_email
    from pasajero where pasajero_id = :new.pasajero_id;

    v_urgencia := fx_calcular_urgencia(v_tipo_pasajero);

    insert into reporte_ausente
     values(
        seq_reporte_ausente_id.nextval,
        v_programacion_id,
        v_nombre,
        v_email,
        v_urgencia
    );
     
  end if;
end;
/
show errors