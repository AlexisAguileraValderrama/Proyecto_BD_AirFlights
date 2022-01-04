connect agpe_proy_admin / agpe

create or replace public synonym reservacionesx for agpe_proy_admin.reservaciones;

grant insert, select on reservacionesx to agpe_proy_invitado;