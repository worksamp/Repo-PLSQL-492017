--------------------------------------------------------
--  File created - Thursday-September-07-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure AVG_SAL
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE AVG_SAL (p_dept_id in number, p_avg_sal out number) 
as 
begin
  select avg(salary) sal 
  into p_avg_sal
  from employee 
   where dept_id = p_dept_id
  group by dept_id;

  exception
  when no_data_found then
  dbms_output.put_line('no data found');
end;

/
