--@Autor(es):       Aguilera Valderrama Alexis Fernando, 
--                  Pereda Ceballos Jorge Francisco
--@Fecha creación:  01/01/2022
--@Descripción:     Creacion de secuencias

prompt conectado como admin
connect agpe_proy_admin / agpe

create sequence seq_programacion_id
start with 1
increment by 1
nocycle;


create sequence seq_avion_id
start with 1
increment by 1
nocycle;

create sequence seq_pasajero_id
start with 1
increment by 1
nocycle;

create sequence seq_pasajero_pase_abordar_id
start with 1
increment by 1
nocycle;

create sequence seq_pase_abordar_id
start with 1
increment by 1
nocycle;

create sequence seq_paquete_id
start with 1
increment by 1
nocycle;

create sequence seq_tipo_paquete_id
start with 1
increment by 1
nocycle;

create sequence seq_empleado_id
start with 1
increment by 1
nocycle;

create sequence seq_puesto_id
start with 1
increment by 1
maxvalue 5
nocycle;

create sequence seq_url_trabajos_empleado_id
start with 1
increment by 1
nocycle;

create sequence seq_programacion_empleado_id
start with 1
increment by 1
nocycle;

create sequence seq_aeropuerto_id
start with 1
increment by 1
nocycle;

create sequence seq_status_programacion_id
start with 1
increment by 1
maxvalue 5
nocycle;

create sequence seq_historico_status_programacion_id
start with 1
increment by 1
nocycle;

create sequence seq_itinerario_id
start with 1
increment by 1
nocycle;

create sequence seq_reporte_ausente_id
start with 1
increment by 1
nocycle;

grant select on agpe_proy_admin.seq_itinerario_id to agpe_proy_invitado;

