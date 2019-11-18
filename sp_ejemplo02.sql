create or replace procedure ejemplo2 is

cursor c1 is 
select campo1, campo2
from tabla 
where fecha = sysdate;

begin

for r1 in c1 loop
  insert into(valor, descripcion)
  values(r1.campo1, r2.campo2);
end loop;

end:
