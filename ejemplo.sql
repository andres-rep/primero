CREATE OR REPLACE PROCEDURE PRO_EJEMPLO (
IS

v_fecha date;

BEGIN
  
 begin 

  select sysdate 
    into v_fecha 
  from dual     
  
  exception when others  
   then v_fecha := to_date('01011900','ddmmyyyy');
 end;                                                                              

END;
