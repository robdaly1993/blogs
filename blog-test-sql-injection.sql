call mysql.rds_set_configuration('binlog retention hours', 24);



CALL mysql.rds_show_configuration;

USE employees;
CREATE TABLE large_data (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255) NOT NULL,
value DOUBLE NOT NULL,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO large_data (name, value) VALUES ('Data1', 10.5);


show master status;