--@Autor(es):       Aguilera Valderrama Alexis Fernando, 
--                  Pereda Ceballos Jorge Francisco
--@Fecha creación:  09/01/2022
--@Descripción:     función encargada de generar clave de aeropuerto

connect sys /system  as sysdba
Grant EXECUTE  on DBMS_CRYPTO to AGPE_PROY_ADMIN;

connect AGPE_PROY_ADMIN / agpe

set serveroutput on
create or replace function f_genera_clave_aeropuerto(
  aeropuerto_id varchar2,
  nombre_aeropuerto varchar2
) return varchar2 is
  v_clave varchar2(4000);
  v_clave_encriptada varchar(4000);
begin
  v_clave := nombre_aeropuerto || '-' || aeropuerto_id;
  v_clave_encriptada :=  dbms_crypto.encrypt(UTL_RAW.CAST_TO_RAW (v_clave),
  4353 /* = dbms_crypto.DES_CBC_PKCS5 */,
  'A1A2A3A4A5A6CAFE');
  v_clave := substr(v_clave_encriptada,1,13);
  return v_clave;
end;
/
show errors
