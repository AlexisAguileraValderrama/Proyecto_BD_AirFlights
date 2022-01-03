--@Autor(es):       Aguilera Valderrama Alexis Fernando, 
--                  Pereda Ceballos Jorge Francisco
--@Fecha creación:  20/11/2021
--@Descripción:     Ejecucción de los scripts relacionado para crear y montar la bd

connect agpe_proy_admin/agpe

drop table ubicacion_programacion;
drop table pasajero_programacion;
drop table maleta;
drop table pase_abordar;

drop table paquete;
drop table tipo_paquete;

drop table programacion_empleado;

drop table url_trabajos_empleado;
drop table empleado;
drop table puesto;

drop table historico_status_programacion;
drop table programacion;
drop table status_programacion;

drop table aeropuerto;
drop table pasajero;

drop table avion_carga;
drop table avion_comercial;
drop table avion;

prompt creando entidad Avión
create table avion(
  avion_id           number(10,0)  not null,
  matricula          varchar2(10) not null,
  modelo_avion       varchar2(50) not null,
  pdf                varchar2(50) not null,
  es_avion_comercial number(1,0)  not null,
  es_avion_carga     number(1,0)  not null,
  constraint avion_pk primary key(avion_id),
  constraint avion_matricula_uk unique(matricula),
  constraint avion_rol_chk check(es_avion_comercial = 1 or es_avion_carga = 1)
);

prompt creando tabla avion comercial
create table avion_comercial(
  avion_id                 number(10,0) not null,
  pasajeros_ordinarios     number(3,0) not null,
  pasajeros_vip            number(3,0) not null,
  pasajeros_discapacitados number(3,0) not null,
  constraint avion_comercial_pk primary key(avion_id),
  constraint avion_comercial_avion_id foreign key(avion_id)
  references avion(avion_id)
);

prompt creando tabla avion_carga
create table avion_carga(
  avion_id           number(10,0) not null,
  numero_bodegas     number(2,0) not null,
  capacidad_carga    number(5,2) not null,
  bodega_ancho       number(2,1) not null,
  bodega_profundidad number(2,1) not null,
  bodega_alto        number(2,1) not null,
  constraint avion_carga_pk primary key (avion_id),
  constraint avion_carga_avion_id foreign key (avion_id)
  references avion(avion_id)
);


prompt creando tabla Aeropuerto
create table aeropuerto(
  aeropuerto_id     number(5,0)  not null,
  nombre_aeropuerto varchar2(40) not null,
  clave_aeropuerto  varchar2(13) not null,
  latitud           number(5,2)  not null,
  longitud          number(5,2)  not null,
  es_convenio          number(1,0)  not null,
  constraint aeropuerto_pk primary key(aeropuerto_id),
  constraint aeropuerto_clave_aeropuerto_uk unique(clave_aeropuerto),
  constraint aeropuerto_es_convenio_chk check(es_convenio = 1 or es_convenio = 0)
);

prompt creando tabla status_programacion
create table status_programacion(
  status_programacion_id number(1,0) not null,
  nombre                 varchar2(10) not null,
  descripcion            varchar2(300) not null,
  constraint status_programacion_pk primary key (status_programacion_id)
);


prompt creando tabla Programacion
create table programacion(
  programacion_id         number(15,0)  not null,
  numero_vuelo            number(5,0)   not null,--verificar con el profesor si es UK o no
  fecha_llegada           date          not null,
  fecha_salida            date          null,
  fecha_status            date          not null,
  sala                    numeric(3)    null,
  avion_id                numeric(10,0) not null,
  aeropuerto_origen_id    numeric(5,0)  not null,
  aeropuerto_destino_id   numeric(5,0)  not null,
  status_id               numeric(1,0)  not null,
  constraint programacion_pk primary key (programacion_id),
  constraint programacion_avion_id_fk foreign key(avion_id)
    references avion(avion_id),
  constraint programacion_aeropuerto_origen_id_fk foreign key (aeropuerto_origen_id)
    references aeropuerto(aeropuerto_id),
  constraint programacion_aeropuerto_destino_id_fk foreign key (aeropuerto_destino_id)
    references aeropuerto(aeropuerto_id),
  constraint programacion_status_id_fk foreign key (status_id)
    references status_programacion(status_programacion_id),
  constraint programacion_fechas_chk check(fecha_salida < fecha_llegada),
  constraint programacion_aeropuertos_chk check(aeropuerto_origen_id != aeropuerto_destino_id)
);

prompt creando tabla historico_status_programacion
create table historico_status_programacion(
  historico_status_programacion_id number(10,0) not null,
  fecha_status                     date not null,
  status_programacion_id           number(1,0) not null,
  programacion_id                  number(1,0) not null,
  constraint historico_status_programacion_pk primary key
    (historico_status_programacion_id),
  constraint historico_status_programacion_status_programacion_id_fk 
    foreign key(status_programacion_id) 
    references status_programacion(status_programacion_id),
  constraint historico_status_programacion_programacion_id foreign key (programacion_id)
    references programacion(programacion_id)
);



prompt creando tabla puesto
create table puesto(
  puesto_id          number(1,0) not null,
  clave_puesto       varchar2(3) not null,
  nombre_puesto      varchar2(15) not null,
  descripcion_puesto varchar2(200) not null,
  sueldo             number(8,2) not null,
  constraint puesto_pk primary key(puesto_id)
);

prompt creando tabla empleado
create table empleado(
  empleado_id     number(10,0) not null,
  nombre          varchar2(40) not null,
  ap_paterno      varchar2(40) not null,
  ap_materno      varchar2(40) not null,
  rfc             varchar2(13) not null,
  curp            varchar2(18) not null,
  foto            varchar2(300) not null,
  jefe_id         number(10,0) null,
  puesto_id       number(1,0) not null,
  constraint empleado_empleado_pk primary key(empleado_id),
  constraint empleado_jefe_id_fk foreign key(jefe_id)
    references empleado(empleado_id),
  constraint empleado_puesto_id_fk foreign key(puesto_id)
    references puesto(puesto_id),
  constraint empleado_rfc_uk unique (rfc),
  constraint empleado_curp_uk unique (curp)
);

prompt creando url_trabajos_empleado
create table url_trabajos_empleado(
  url_trabajos_empleado_id number(5,0) not null,
  url_direccion            varchar2(100) not null,
  empleado_id              number(10,0) not null,
  constraint url_trabajos_empleado_pk primary key(url_trabajos_empleado_id),
  constraint url_trabajos_empleado_empleado_id_fk foreign key(empleado_id)
    references empleado(empleado_id)
);

prompt Creando tabla programacion_empleado
create table programacion_empleado(
  programacion_id       number(15,0) not null,
  empleado_id           number(10,0) not null,
  puntaje               number(3,0) not null,
  constraint programacion_empleado_pk primary key(programacion_id,empleado_id),
  constraint programacion_empleado_puntaje_chk check(puntaje >= 0 
                                                    and puntaje <= 100)
);

prompt Creando tabla tipo_paquete
create table tipo_paquete(
  tipo_paquete_id       number(2,0)    not null,
  clave_paquete         varchar2(5)    not null,
  descripcion_paquete   varchar2(300)  not null,
  indicaciones          varchar2(1000) not null,
  constraint tipo_paquete_pk primary key(tipo_paquete_id)
);

prompt creando tabla paquete
create table paquete(
  paquete_id      number(10,0) not null,
  folio           varchar2(18) not null,
  peso            number(7,2) not null,
  tipo_paquete_id number(2,0) not null,
  programacion_id number(15,0) not null,
  constraint paquete_pk primary key(paquete_id),
  constraint paquete_tipo_paquete_id_fk foreign key(tipo_paquete_id)
    references tipo_paquete(tipo_paquete_id),
  constraint paquete_programacion_id_fk foreign key(programacion_id)
    references programacion(programacion_id)
  --constraint paquete_tipo_vuelo_chk check((select paquete_id from paquete ) = 1)--Preguntar al profe
);

prompt creando tabla pase_abordar
create table pase_abordar(
  pase_abordar_id number(10,0) not null,
  folio varchar2(8) not null,
  hora_impresion date not null,
  fecha_impresion date not null,
  siento varchar(4) not null,
  vuelo_id number(15,0) not null,
  constraint pase_abordar_pk primary key(pase_abordar_id),
  constraint pase_abordar_vuelo_id_fk foreign key(vuelo_id)
    references programacion(programacion_id)
);

prompt creando tabla maleta
create table maleta(
  maleta_id number(10,0) not null,
  pase_abordar_id number(10,0) not null,
  peso number(5,2) not null,
  constraint maleta_pk  primary key(maleta_id, pase_abordar_id),
  constraint maleta_pase_abordar_fk foreign key(pase_abordar_id)
    references pase_abordar(pase_abordar_id)
);

prompt creando pasajero
create table pasajero(
  pasajero_id      number(10,0) not null,
  nombre           varchar2(30) not null,
  ap_paterno       varchar2(30) not null,
  ap_materno       varchar2(30) null,
  email            varchar2(40) null,
  fecha_nacimiento date         not null,
  curp             varchar2(18) not null,
  constraint pasajero_pk primary key(pasajero_id),
  constraint pasajero_curp_uk unique (curp)
);

prompt creando tabla  pasajero_programacion
create table pasajero_programacion(
  pasajero_vuelo_id  number(10,0) not null,
  especificaciones   varchar2(2000) not null,
  presente           number(1,0) not null,
  pasajero_id        number(10,0) not null,
  programacion_id    number(15,0) not null,
  pase_abordar_id       number(10,0) not null, 
  constraint pasajero_programacion_pk primary key(pasajero_id),
  constraint pasajero_programacion_pasajero_id_fk foreign key (pasajero_id)
    references pasajero(pasajero_id),
  constraint pasajero_programacion_programacion_id_fk foreign key (programacion_id)
    references programacion(programacion_id),
  constraint pasajero_programacion_pase_abordar_id_fk foreign key (pase_abordar_id)
    references pase_abordar(pase_abordar_id)
);

prompt creando tabla ubicacion_programacion
create table ubicacion_programacion(
  ubicacion_programacion_id number(10,0) not null,
  programacion_id           number(15,0)not null
  fecha                     date not null,
  latitud                   number(4,2) not null,
  longitud                  number(5,2) not null,
  constraint ubicacion_progamacion_programacion_id_pk 
    primary key(ubicacion_programacion_id,programacion_id)
);


