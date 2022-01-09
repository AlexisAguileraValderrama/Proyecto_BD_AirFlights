

prompt creando indice de Pasajero

--Indices de Pasajero
create index pasajero_ap_paterno_ap_paterno_ix on pasajero(lower(ap_paterno), lower(ap_materno));

create unique index pasajero_email_iuk on pasajero(email);

create unique index pasajero_curp_iuk on pasajero(curp);

--Indices de Avión
create unique index avion_matricula_iuk on avion(matricula);

--Indices de Programacion
create index programacion_numero_programacion on programacion(numero_programacion);

--Indices de Aeropuerto 
create unique index aeropuerto_clave_aeropuerto_uk on aeropuerto(clave_aeropuerto);

create index aeropuerto_nombre_aeropuerto_uk on aeropuerto(nombre_aeropuerto);

--Indices de Empleado
create index empleado_ap_paterno_ap_paterno_ix on empleado(lower(ap_paterno), lower(ap_materno));

create unique index empleado_curp_iuk on empleado(curp);

create unique index empleado_rfc_iuk on empleado(rfc);

--Indices de Paquete
create unique index paquete_folio_iuk on paquete(folio);

--Indices de Pase Abordar
create unique index pase_abordar_folio_iuk on pase_abordar(folio);

--Indices para url
create index url_trabajos_empleado_ix on url_trabajos_empleado(empleado_id);
