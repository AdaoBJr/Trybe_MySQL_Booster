-- select * from orders;
DELIMITER $$

CREATE TRIGGER addCurrentDate
BEFORE INSERT  ON w3schools.orders
FOR EACH ROW
BEGIN
  INSERT INTO w3schools.orders (OrderDate)
    VALUES (NEW.DATE(NOW()));
END $$

DELIMITER ;
