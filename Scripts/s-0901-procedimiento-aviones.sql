create or replace procedure p_crear_avion (
v_modelo_avion in varchar2,
v_comercial in number ,v_avion_carga in number,
v_pasajeros_ordinarios in number, 
v_pasajeros_vip in number,
v_pasajeros_discapacitados in number,
v_numero_bodegas in number,
v_capacidad_carga in number,
v_bodega_ancho in number,
v_bodega_profundidad in number,
v_bodega_alto in number,
v_aeropuerto_id in number) is

v_id number(10,0);

begin

  v_id := seq_avion_id.nextval;

  insert into avion (avion_id,modelo_avion,es_avion_comercial,es_avion_carga)
    values(v_id, v_modelo_avion, v_comercial,v_avion_carga);

  if v_comercial = 1 then
    insert into avion_comercial
      values(v_id,v_pasajeros_ordinarios, v_pasajeros_vip, v_pasajeros_discapacitados);
  end if;

  if v_avion_carga = 1 then
  insert into avion_carga
    values(v_id, v_numero_bodegas, v_capacidad_carga,v_bodega_ancho,v_bodega_profundidad,v_bodega_alto,v_aeropuerto_id);
  end if;

end;
/
show errors