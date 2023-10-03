CREATE DATABASE tests;

USE tests;

-- Table with 8 columns, 3 of which are JSON, LONGTEXT, and MEDIUMTEXT
CREATE TABLE sample_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    col1 VARCHAR(255),
    col2 VARCHAR(255),
    col3 VARCHAR(255),
    col4 VARCHAR(255),
    col5 JSON,            -- Expected to hold ~10KB data per record
    col6 LONGTEXT,        -- Expected to hold ~1000KB data per record
    col7 MEDIUMTEXT,      -- Expected to hold ~20KB data per record
    col8 DATETIME DEFAULT CURRENT_TIMESTAMP
);

