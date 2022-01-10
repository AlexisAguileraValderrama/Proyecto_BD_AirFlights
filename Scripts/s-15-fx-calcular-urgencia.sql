set serveroutput on

create or replace function fx_calcular_urgencia(
  v_tipo_pasajero varchar2
) return number is
 v_urgencia_total number(3,0) := 0;
begin
  case v_tipo_pasajero
    when 'VIP' then
      v_urgencia_total := v_urgencia_total + 3;
    
    when 'ORD' then
      v_urgencia_total := v_urgencia_total + 2;

    when 'DIS' then
      v_urgencia_total := v_urgencia_total + 1;
  end case;
  return v_urgencia_total;
end;
/
show errors