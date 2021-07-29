DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email varchar(150))
RETURNS INT READS SQL DATA
BEGIN

SELECT 
    COUNT(*) AS total_empregos
FROM
    employees e
INNER JOIN job_history jh
on e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE e.EMAIL = email;

END $$
DELIMITER ;