CREATE DATABASE CustomerSystem;
USE CustomerSystem;

CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(100),
    total_orders INT
);

INSERT INTO Users (user_name, total_orders) VALUES
('An', 600),
('Binh', 250),
('Cuong', 50),
('Dung', NULL);

-- Query phân loại
SELECT 
    user_name AS Ten_Khach_Hang,
    CASE
        WHEN COALESCE(total_orders, 0) > 500 THEN 'Kim Cương'
        WHEN COALESCE(total_orders, 0) BETWEEN 100 AND 500 THEN 'Vàng'
        ELSE 'Bạc'
    END AS Xep_Hang
FROM Users;