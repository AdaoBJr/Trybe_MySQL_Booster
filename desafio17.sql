USE w3schools;

DELIMITER $$
CREATE TRIGGER UpdateOrderDate
	AFTER INSERT ON orders
    FOR EACH ROW
BEGIN
	SET NEW.OrderDate = NOW();
END $$

DELIMITER ;
