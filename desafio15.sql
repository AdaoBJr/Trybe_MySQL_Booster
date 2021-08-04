USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN jobName VARCHAR(35))
BEGIN
	SELECT
		ROUND(AVG(SALARY), 2) `Média salarial` FROM hr.employees
        WHERE JOB_ID IN (SELECT JOB_ID FROM hr.jobs WHERE JOB_TITLE = jobName)
        GROUP BY JOB_ID;
END $$
DELIMITER ;