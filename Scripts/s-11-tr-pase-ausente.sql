connect AGPE_PROY_ADMIN / agpe

create or replace trigger tr_pase_ausente
after insert or update of presente on pasajero_pase_abordar
for each row

declare
v_tipo_programacion programacion.tipo_programacion%type;

begin

  if :new.presente = 0 then

    select nombre, email into v_nombre, v_email
    from pasajero where pasajero_id = :new.pasajero; 

    insert into reporte_ausente
     values(
       seq_reporte_ausente_is.nextval,

    );
  end if;
    
end;
/
show errors