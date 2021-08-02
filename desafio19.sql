USE hr;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_de_pessoas_contratadas INT;
SELECT COUNT(EMPLOYEE_ID)
FROM hr.employees
WHERE MONTH(HIRE_DATE) = mes and YEAR(HIRE_DATE) = ano
INTO quantidade_de_pessoas_contratadas;
RETURN quantidade_de_pessoas_contratadas;
END $$
DELIMITER ;
