create or replace procedure p_insertar_maleta(
v_pase_abordar in number, v_peso in number, v_maleta_actual out number
) is
v_contador number(2,0);
begin 

  select count(*) into v_contador from maleta
  where pase_abordar_id = v_pase_abordar;

  v_contador := v_contador + 1;
       
  if v_contador = 10 then
    raise_application_error(-20001,'Número de maletas sobrepasado (10 maletas)');
    v_maleta_actual := -1;
  end if;

  insert into maleta
    values (v_pase_abordar, v_contador, v_peso);

  dbms_output.put_line('En el pase de abordar ' || v_pase_abordar||  
  ' se ingreso la maleta numero ' || v_contador);

  v_maleta_actual := v_contador;

  exception
     when others then
       raise_application_error(-20001,'No se pudo ingresar correctamente ');
       v_maleta_actual := -1;
       raise;
end;
/
show errors