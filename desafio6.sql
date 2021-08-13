SELECT
CONCAT(EMP.FIRST_NAME, ' ', EMP.LAST_NAME) AS "Nome completo", 
JOB.JOB_TITLE AS "Cargo",
DATE(JOB_H.START_DATE) AS "Data de início do cargo",
DEP.DEPARTMENT_NAME AS "Departamento"
FROM employees AS EMP
INNER JOIN hr.jobs AS JOB
ON EMP.JOB_ID = JOB.JOB_ID
INNER JOIN hr.job_history AS JOB_H
ON EMP.EMPLOYEE_ID = JOB_H.EMPLOYEE_ID
INNER JOIN hr.departments AS DEP
ON EMP.DEPARTMENT_ID = JOB_H.DEPARTMENT_ID
ORDER BY "Nome completo" DESC, "Cargo";
