USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailBuscado VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_empregos INT;
	SELECT 
    COUNT(*)
	FROM
    hr.employees AS e
  INNER JOIN
    hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
	WHERE
    e.EMAIL = emailBuscado 
	INTO 
    total_empregos;
	RETURN
		total_empregos;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
