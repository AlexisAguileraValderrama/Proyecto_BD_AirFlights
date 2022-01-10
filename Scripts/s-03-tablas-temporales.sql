connect agpe_proy_admin / agpe

create global temporary table itinerario(
  itinerario_id           number(10,0) not null,
  aeropuerto_origen_id    number(10,0) not null,
  aeropuerto_destino_id   number(10,0) not null,
  fecha_salida            date       not null,
  fecha_llegada           date       not null,
  constraint itinerario_pk primary key(itinerario_id)
) on commit preserve rows;
