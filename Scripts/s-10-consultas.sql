--TODO: LA BOMBA XD .____.
--TODO: REALIZAR UNA CONSULTA QUE ENCUENTRE A LOS EMPLEADOS QUE CUENTEN CON UN JEFE --listo
--TODO: CONSULTAR TODOS LOS EMPLEADOS ACTIVOS , ES DECIR, CON VUELOS PARA DETERMINAR A QUIENES DESPEDIR
--TODO: ver la cantidad de maletas o paquetes en una programacion -- ALEXIS 
--TODO: DETERMINAR LOS EMPLEADOS QUE TIENEN mas puntos que sus jefes
--TODO: CHECAR LAS VISTAS CON LOS SINONIMOS DISPONIBLES -- INVITADO
--TODO: CHECAR TODOS LOS PASES DE ABORDAR... AHORITA VEO QUE JOINS HACER -- INVITADO

--Empleados que cuentan con jefe  ??? DESCARTADA CON UN WHERE AL JEFE ID SE SOLUCIONA


prompt PASAJEROS CON PROMOCION INAPAM PARA PRIMEROS PASAJEROS (MAYORES A 50 AÑOS Y QUE NO HAYAN REALIZADO VUELOS)

select pasajero_id, nombre, ap_paterno, ap_materno, to_char(fecha_nacimiento,'yyyy') "AÑO NACIMIENTO" from pasajero 
minus
select p.pasajero_id, p.nombre,p.ap_paterno, p.ap_materno, to_char(p.fecha_nacimiento,'yyyy') "AÑO NACIMIENTO" from pasajero p
join pasajero_pase_abordar ppa
  on  p.pasajero_id = ppa.pasajero_id
minus 
select pasajero_id, nombre,ap_paterno, ap_materno, to_char(fecha_nacimiento,'yyyy') "AÑO NACIMIENTO" from pasajero
where to_char(fecha_nacimiento,'YYYY') <= '1970';



prompt CONSULTAR CANTIDAD DE PAQUETES O MALETAS SEGUN EL VUELO

select p.programacion_id, p.tipo_programacion, count(paq.folio) num_paquetes, count(m.pase_abordar_id) num_maletas
from programacion p
left join paquete paq
  on paq.programacion_id = p.programacion_id
left join pase_abordar pas
  on pas.programacion_id = p.programacion_id
left join maleta m
  on m.pase_abordar_id = pas.pase_abordar_id
group by p.programacion_id, p.tipo_programacion
having count(paq.folio)  >= 10 or count(m.pase_abordar_id) >= 3
order by p.programacion_id;

prompt EMPLEADOS QUE TIENEN MAYOR PUNTAJE QUE SU JEFE
select * 
from (
  select e.empleado_id, e.nombre, e.jefe_id, sum(pe.puntaje) sum_empleado
  from empleado e 
  join programacion_empleado pe
    on pe.empleado_id = e.empleado_id
  where jefe_id is not null
  group by e.empleado_id, e.nombre, e.jefe_id
) emp1
join(
  select * 
  from (
    select e.empleado_id, e.nombre, sum(pe.puntaje) sum_jefe
    from empleado e 
    join programacion_empleado pe
      on pe.empleado_id = e.empleado_id
    group by e.empleado_id, e.nombre, e.jefe_id
))todos
  on emp1.jefe_id = todos.empleado_id
where emp1.sum_empleado > todos.sum_jefe;


prompt CONSULTAS CON INVITADO
connect AGPE_PROY_INVITADO / agpe

select  * from empleado_puntajes;

select * from pasajero;

select * from empleado;

select * from aeropuertos_disponibles;

prompt CONSULTAR LOS EMPLEADOS QUE YA HAYAN CONTADO CON EXPERIENCIA
select (nombre|| ' ' || ap_paterno || ' ' ||ap_materno) nombre_empleado,
nombre_puesto, puntaje_total
from empleado_puntajes
where puntaje_total > 0;


prompt  INSERCIONES EN LA TABLA TEMPORAL ITINERARIO
insert into itinerario
values(seq_itinerario_id.nextval,5, 1,
  to_date('01/01/2022 06:00:00','dd/mm/yyyy hh24:mi:ss'),
  to_date('01/01/2022 13:00:00','dd/mm/yyyy hh24:mi:ss'));

insert into itinerario
values(seq_itinerario_id.nextval,4,1, 
  to_date('01/01/2022 07:00:00','dd/mm/yyyy hh24:mi:ss'),
  to_date('01/01/2022 12:00:00','dd/mm/yyyy hh24:mi:ss'));

insert into itinerario
values(seq_itinerario_id.nextval,3,2, 
  to_date('01/01/2022 08:00:00','dd/mm/yyyy hh24:mi:ss'),
  to_date('01/01/2022 10:00:00','dd/mm/yyyy hh24:mi:ss'));

insert into itinerario
values(seq_itinerario_id.nextval,3,1, 
  to_date('01/01/2022 16:00:00','dd/mm/yyyy hh24:mi:ss'),
  to_date('01/01/2022 18:00:00','dd/mm/yyyy hh24:mi:ss'));

insert into itinerario
values(seq_itinerario_id.nextval,4,2, 
  to_date('01/01/2022 20:00:00','dd/mm/yyyy hh24:mi:ss'),
  to_date('01/01/2022 22:00:00','dd/mm/yyyy hh24:mi:ss'));


prompt CONSULTA AL ITINERARIO(TABLA TEMPORAL) 
select * 
from itinerario i
join programacion p
  on i.aeropuerto_origen_id = p.aeropuerto_origen_id
    and i.aeropuerto_destino_id = p.aeropuerto_destino_id
where tipo_programacion = 'CO'
  and i.fecha_salida <= p.fecha_salida
  and i.fecha_llegada >= p.fecha_llegada;

prompt CONSULTA A TABLA EXTERNA 
prompt OBTENER DE LA TABLA EXTERNA LOS PASAJEROS QUE LLEVEN VOLANDO 5,10,15 Y 20 AÑOS

connect AGPE_PROY_ADMIN / agpe

select * from pasajero_ext
where to_char(fecha_nacimiento,'YYYY') = '2017'
union
select * from pasajero_ext
where to_char(fecha_nacimiento,'YYYY') = '2012'
union
select * from pasajero_ext
where to_char(fecha_nacimiento,'YYYY') = '2007'
union
select * from pasajero_ext
where to_char(fecha_nacimiento,'YYYY') = '2002';
