PROCEDURE add_eval(employee_id IN employees.employee_id%TYPE, today IN DATE) AS
  -- placeholders for variables
  job_id         employees.job_id%TYPE;
  manager_id     employees.manager_id%TYPE;
  department_id  employees.department_id%TYPE;
BEGIN

  -- extracting values from employees for later insertion into evaluations
  SELECT e.job_id INTO job_id FROM employees e 
    WHERE employee_id = e.employee_id;
  SELECT e.manager_id INTO manager_id FROM employees e 
    WHERE employee_id = e.employee_id;
  SELECT e.department_id INTO department_id FROM employees e 
    WHERE employee_id = e.employee_id;
 
  -- inserting a new row of values into evaluations table
  INSERT INTO evaluations VALUES (
    evaluations_seq.NEXTVAL,   -- evaluation_id
    employee_id,               -- employee_id
    today,                     -- evaluation_date
    job_id,                    -- job_id
    manager_id,                -- manager_id
    department_id,             -- department_id
    0);                        -- total_score
  
END add_eval;
