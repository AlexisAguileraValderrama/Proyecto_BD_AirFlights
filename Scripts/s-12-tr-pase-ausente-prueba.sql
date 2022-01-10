set serveroutput on
declare


begin


exception
  when others then
  rollback;
  raise;

end;
/
show errors

declare


begin


exception
  when others then
  rollback;
  raise;

end;
/
show errors
