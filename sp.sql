DELIMITER //
CREATE PROCEDURE InsertSampleData(IN numRecords INT)
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE sampleJSON JSON;
    DECLARE sampleLongText LONGTEXT;
    DECLARE sampleMediumText MEDIUMTEXT;

    -- Sample data for 10KB JSON
    SET sampleJSON = JSON_ARRAY(REPEAT('{"key":"value"},', 1000));

    -- Sample data for 1000KB LONGTEXT
    SET sampleLongText = REPEAT('A', 1000 * 1024); 

    -- Sample data for 20KB MEDIUMTEXT
    SET sampleMediumText = REPEAT('B', 20 * 1024);

    WHILE i < numRecords DO
        INSERT INTO sample_table (col1, col2, col3, col4, col5, col6, col7) 
        VALUES (CONCAT('Value_', i), 
                CONCAT('Value_', i+1), 
                CONCAT('Value_', i+2), 
                CONCAT('Value_', i+3), 
                sampleJSON, 
                sampleLongText, 
                sampleMediumText);
        SET i = i + 1;
    END WHILE;
END//
DELIMITER ;



CALL InsertSampleData(250000); -- Inserts 250k records