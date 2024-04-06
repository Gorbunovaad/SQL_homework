DROP PROCEDURE IF EXISTS even_numbers;
DELIMITER $$
CREATE PROCEDURE even_numbers (min_num INT, max_num INT)
BEGIN
	DECLARE i INT;
    DECLARE result VARCHAR(255);
    SET i = min_num;
    SET result = '';
    WHILE i <= max_num DO
		IF i % 2 = 0 THEN
			SET result = CONCAT(result, i, ',');
		END IF;
        SET i = i+1;
	END WHILE;
SELECT result;
END $$
DELIMITER ;

CALL even_numbers(1, 10);
