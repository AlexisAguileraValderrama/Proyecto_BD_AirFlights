connect agpe_proy_admin / agpe

create global temporary table itinerario(
  itinerario_id           number(10,0) not null,
  aeropuerto_origen_id    number(10,0) not null,
  aeropuerto_destino_id   number(10,0) not null,
  fecha_salida            date       not null,
  fecha_llegada           date       not null,
  constraint itinerario_pk primary key(itinerario_id)
) on commit preserve rows;

create global temporary table reporte_ausente(
  reporte_ausente_id   number(10,0) not null,
  programacion_id      number(10,0) not null,
  nombre_pasajero      number(10,0) not null,
  email                varchar2(100) not null,
  urgencia             number(3,0) not null,
  constraint reporte_ausente_pk primary key(reporte_ausente_id)
) on commit preserve rows;
