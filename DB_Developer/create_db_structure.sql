-- Установите целевую базу данных
CREATE SCHEMA IF NOT EXISTS final_project_db DEFAULT CHARACTER SET utf8mb4;
USE final_project_db;

-- 1. Независимые таблицы
CREATE TABLE regions (
    region_id TINYINT NOT NULL PRIMARY KEY,
    region_name VARCHAR(60) NOT NULL
);

CREATE TABLE category (
    category_id SMALLINT NOT NULL PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

-- 2. Таблица clients (ссылается на regions)
CREATE TABLE clients (
    client_id INT NOT NULL PRIMARY KEY,
    clientID VARCHAR(20) NOT NULL,
    region_id TINYINT NOT NULL,
    FOREIGN KEY (region_id) REFERENCES regions(region_id)
);

-- 3. Таблица products (ссылается на category)
CREATE TABLE products (
    product_id INT NOT NULL PRIMARY KEY,
    StockCode VARCHAR(20),
    Description VARCHAR(500),
    Category_id SMALLINT NOT NULL,
    FOREIGN KEY (Category_id) REFERENCES category(category_id)
);

-- 4. Таблица purchases (ссылается на clients)
CREATE TABLE purchases (
    purchases_id INT NOT NULL PRIMARY KEY,
    BillNumber VARCHAR(20) NOT NULL,
    BillDate DATETIME,
    client_id INT NOT NULL,
    FOREIGN KEY (client_id) REFERENCES clients(client_id)
);

-- 5. Таблица payments (ссылается на purchases)
CREATE TABLE payments (
    payment_id INT NOT NULL PRIMARY KEY,
    purchase_id INT NOT NULL,
    amount_paid DECIMAL(12, 2) NOT NULL,
    FOREIGN KEY (purchase_id) REFERENCES purchases(purchases_id)
);

-- 6. Таблица purchase_items (ссылается на purchases и products)
-- ИСПРАВЛЕННАЯ ВЕРСИЯ
CREATE TABLE purchase_items (
    Item_id INT NOT NULL PRIMARY KEY,
    purchase_id INT NOT NULL,
    product_id INT NOT NULL,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (purchase_id) REFERENCES purchases(purchases_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);