SELECT 
    CONCAT(employees_table.FIRST_NAME,
            ' ',
            employees_table.LAST_NAME) AS 'Nome completo',
    jobs_table.JOB_TITLE AS Cargo,
    HIRE_DATE AS 'Data de início do cargo',
    departments_table.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.employees AS employees_table
INNER JOIN
    hr.jobs AS jobs_table
    ON employees_table.JOB_ID = jobs_table.JOB_ID
INNER JOIN
    hr.departments AS departments_table
    ON employees_table.DEPARTMENT_ID = departments_table.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , Cargo ASC;
