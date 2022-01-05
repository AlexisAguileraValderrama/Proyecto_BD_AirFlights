--TODO: Para la pk de maleta anexar los valores con pl/SQL
prompt conectado como admin
connect agpe_proy_admin / agpe

create sequence seq_avion_id
start with 1
increment by 1
nocycle;

create sequence seq_pasajero_id
start with 1
increment by 1
nocycle;

create sequence seq_pasajero_programacion_id
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
maxvalue 4
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

create sequence seq_status_vuelo_id
start with 1
increment by 1
maxvalue 5
nocycle;

create sequence seq_historico_status_vuelo_id
start with 1
increment by 1
nocycle;

create sequence seq_ubicacion_programacion_id
start with 1
increment by 1
nocycle;