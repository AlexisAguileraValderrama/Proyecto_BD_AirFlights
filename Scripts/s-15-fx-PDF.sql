--@Autor(es):       Aguilera Valderrama Alexis Fernando, 
--                  Pereda Ceballos Jorge Francisco
--@Fecha creación:  09/01/2022
--@Descripción:     función encargada de retornar un pdf tipo blob

connect sys / system as sysdba

create or replace directory pdf_dir as '/tmp/bases/pdf'; 
grant read, write on directory pdf_dir to agpe_proy_admin;

prompt Creando procedimiento con usuario agpe_proy_admin
connect agpe_proy_admin / agpe
set serveroutput on
create or replace function f_carga_pdf(
  v_nombre_pdf varchar2
) return blob is 

v_bfile bfile;
v_src_offset number;
v_dest_offset number;
v_blob blob;
v_src_length number;
v_dest_length number;
v_nombre_archivo varchar2(50);


begin 
  dbms_lob.createtemporary(v_blob, TRUE);
  v_nombre_archivo := v_nombre_pdf;
  dbms_output.put_line('Cargando pdf para '|| v_nombre_archivo);

  --Validando si el archivo existe
  v_bfile:=bfilename('PDF_DIR',v_nombre_archivo);
  if dbms_lob.fileexists(v_bfile)=0 then
      raise_application_error(-20001,'El archivo '||v_nombre_archivo||' no existe.');
  end if;

  --abrir archivo
  if dbms_lob.isopen(v_bfile)=1 then
      raise_application_error(-20001,'El archivo '||v_nombre_archivo||' está abierto. No se puede usar');
  end if;

  --abriendo archivo 
  dbms_lob.open(v_bfile,dbms_lob.lob_readonly);
  

  v_src_offset:=1;
  v_dest_offset:=1;
  dbms_lob.loadblobfromfile(
      dest_lob      => v_blob,
      src_bfile     => v_bfile,
      amount        => dbms_lob.getlength(v_bfile),
      dest_offset   => v_dest_offset,
      src_offset    => v_src_offset
  );
  
    --Cerrando archivo
  dbms_lob.close(v_bfile);
  --Validando carga
  v_src_length:=dbms_lob.getlength(v_bfile);
  v_dest_length:=dbms_lob.getlength(v_blob);

  dbms_output.put_line(v_src_length);
  dbms_output.put_line(v_dest_length);

  if v_dest_length<>v_src_length then 
      raise_application_error(-20001,'El archivo '||v_nombre_archivo||' no se cargó correctamente');
  end if;

  return v_blob;

end;
/
show errors