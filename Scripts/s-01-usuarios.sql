--@Autor(es):       Aguilera Valderrama Alexis Fernando, 
--                  Pereda Ceballos Jorge Francisco
--@Fecha creación:  20/11/2021
--@Descripción:     Creación de usuarios

prompt Conectando como sys
connect sys / system as sysdba

drop user agpe_proy_admin cascade;
drop user agpe_proy_invitado cascade;

drop role rol_admin;
drop role rol_invitado;

prompt Creacion de roles
--Creacion de roles (son como modelos de privilegios)
create role rol_admin;
grant create session,
  create sequence,
  create table,
  create public synonym,
  create trigger,
  create procedure,
  create view to rol_admin;

create role rol_invitado;
grant create session to rol_invitado;

prompt Creacion de usuarios y asignacion de roles
create user agpe_proy_admin identified by agpe quota 1G on users;
grant rol_admin to agpe_proy_admin;

create user agpe_proy_invitado identified by agpe;
grant rol_invitado to agpe_proy_invitado;


