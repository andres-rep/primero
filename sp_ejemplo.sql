CREATE OR REPLACE PROCEDURE GET_TWOSETS_CUSTOMERINFO
(
   P_CREDITLINEAMOUNT IN INTEGER,   
)
AS

CURSOR CURSOR1_ IS 
  SELECT CAMPO1, CAMPO2 
  FROM TABLA
  WHERE CAMPO3 = P_CREDITLINEAMOUNT;
BEGIN
   FOR R1 IN CURSOR1_ LOOP
      dbms_output.put_line('DESCRIPCION ...'||R1.CAMPO2);
    END LOOP;
  
END;