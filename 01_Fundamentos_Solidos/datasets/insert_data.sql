-- =============================================
-- Script de inserción de datos de ejemplo
-- Base de datos: Tienda Online (E-commerce)
-- Versión: 15 clientes, 25 productos, 30 pedidos
-- =============================================

-- =============================================
-- Insertar Clientes (customers) - 15 registros
-- =============================================
INSERT INTO customers (customer_id, first_name, last_name, email, phone, address, city, country, postal_code, registration_date) VALUES
(1, 'Ana', 'Garcia', 'ana.garcia@email.com', '+34666555444', 'Calle Mayor 123', 'Madrid', 'España', '28001', '2024-01-15'),
(2, 'Carlos', 'Rodriguez', 'carlos.rodriguez@email.com', '+34677666555', 'Avenida Diagonal 456', 'Barcelona', 'España', '08001', '2024-01-20'),
(3, 'Maria', 'Lopez', 'maria.lopez@gmail.com', NULL, 'Plaza España 789', 'Valencia', 'España', '46001', '2024-02-01'),
(4, 'John', 'Smith', 'john.smith@email.com', '+447700900000', '10 Downing Street', 'London', 'Reino Unido', 'SW1A2AA', '2024-02-15'),
(5, 'Emma', 'Johnson', 'emma.j@gmail.com', '+447700900111', '221B Baker Street', 'London', 'Reino Unido', 'NW16XE', '2024-03-01'),
(6, 'Pierre', 'Dubois', 'pierre.dubois@email.fr', '+33600000000', 'Rue de la Paix 15', 'Paris', 'Francia', '75002', '2024-03-10'),
(7, 'Sophie', 'Martin', 'sophie.martin@gmail.com', NULL, 'Avenue des Champs Elysees 50', 'Paris', 'Francia', '75008', '2024-03-15'),
(8, 'Marco', 'Rossi', 'marco.rossi@email.it', '+390200000000', 'Via Roma 1', 'Roma', 'Italia', '00100', '2024-04-01'),
(9, 'Laura', 'Bianchi', 'laura.bianchi@gmail.com', '+390200000111', 'Piazza del Duomo 20', 'Milan', 'Italia', '20121', '2024-04-10'),
(10, 'Miguel', 'Santos', 'miguel.santos@email.com', '+351900000000', 'Rua Augusta 100', 'Lisboa', 'Portugal', '1100-053', '2024-04-20'),
(11, 'Isabella', 'Fernandez', 'isabella.fernandez@email.com', '+34666777888', 'Calle Alcala 200', 'Madrid', 'España', '28009', '2024-01-16'),
(12, 'Thomas', 'Brown', 'thomas.brown@email.co.uk', '+447700900222', 'Oxford Street 123', 'London', 'Reino Unido', 'W1D1BS', '2024-02-16'),
(13, 'Charlotte', 'Davis', 'charlotte.davis@gmail.com', NULL, 'Kings Road 45', 'London', 'Reino Unido', 'SW35XP', '2024-03-02'),
(14, 'Jean', 'Leroy', 'jean.leroy@email.fr', '+33600000111', 'Boulevard Saint Germain 75', 'Paris', 'Francia', '75006', '2024-03-11'),
(15, 'Marie', 'Moreau', 'marie.moreau@gmail.com', '+33600000222', 'Rue de Rivoli 30', 'Paris', 'Francia', '75001', '2024-03-16');

-- =============================================
-- Insertar Productos (products) - 25 registros
-- =============================================
INSERT INTO products (product_id, product_name, product_code, category, brand, description, unit_price, stock_quantity, is_active) VALUES
(1, 'iPhone 15 Pro', 'APPL-IP15P', 'Electronics', 'Apple', 'Ultimo modelo de iPhone con chip A17 Pro', 1299.99, 50, true),
(2, 'Samsung Galaxy S24', 'SAMS-GS24', 'Electronics', 'Samsung', 'Smartphone Android de alta gama', 999.99, 75, true),
(3, 'MacBook Pro 14', 'APPL-MBP14', 'Electronics', 'Apple', 'Laptop profesional con chip M3', 1999.99, 30, true),
(4, 'Sony WH-1000XM5', 'SONY-WH5', 'Electronics', 'Sony', 'Auriculares con cancelacion de ruido', 399.99, 100, true),
(5, 'Kindle Paperwhite', 'AMZN-KPW', 'Electronics', 'Amazon', 'E-reader con pantalla de 6.8 pulgadas', 149.99, 200, true),
(6, 'Nike Air Max 270', 'NIKE-AM270', 'Deportes', 'Nike', 'Zapatillas deportivas para running', 150.00, 150, true),
(7, 'Adidas Ultraboost', 'ADID-UB22', 'Deportes', 'Adidas', 'Zapatillas de running premium', 180.00, 120, true),
(8, 'Levis 501 Original', 'LEVI-501', 'Ropa', 'Levis', 'Jeans clasicos de corte recto', 98.00, 200, true),
(9, 'The North Face Parka', 'TNF-PRK', 'Ropa', 'The North Face', 'Abrigo impermeable para invierno', 299.99, 80, true),
(10, 'LEGO Creator Expert', 'LEGO-CE01', 'Juguetes', 'LEGO', 'Set de construccion avanzado', 249.99, 40, true),
(11, 'PlayStation 5', 'SONY-PS5', 'Electronics', 'Sony', 'Consola de videojuegos ultima generacion', 499.99, 25, true),
(12, 'Nintendo Switch OLED', 'NINT-SWO', 'Electronics', 'Nintendo', 'Consola hibrida con pantalla OLED', 349.99, 60, true),
(13, 'Dyson V15 Detect', 'DYSN-V15', 'Hogar', 'Dyson', 'Aspiradora inalambrica con laser', 749.99, 25, true),
(14, 'Nespresso Vertuo', 'NESP-VRT', 'Hogar', 'Nespresso', 'Cafetera de capsulas automatica', 199.99, 90, true),
(15, 'iPad Air', 'APPL-IPA', 'Electronics', 'Apple', 'Tablet con chip M1', 599.99, 110, true),
(16, 'GoPro HERO11', 'GPRO-H11', 'Electronics', 'GoPro', 'Camara de accion 5.3K', 399.99, 85, true),
(17, 'Nike Air Force 1', 'NIKE-AF1', 'Deportes', 'Nike', 'Zapatillas clasicas de baloncesto', 120.00, 180, true),
(18, 'Tommy Hilfiger Polo', 'TH-POLO', 'Ropa', 'Tommy Hilfiger', 'Polo clasico de algodon premium', 89.99, 150, true),
(19, 'Ray-Ban Aviator', 'RYBN-AVTR', 'Accesorios', 'Ray-Ban', 'Gafas de sol aviador clasicas', 154.00, 200, true),
(20, 'JBL Flip 6', 'JBL-FLIP6', 'Electronics', 'JBL', 'Altavoz Bluetooth portatil', 129.99, 150, true),
(21, 'Samsonite Cosmolite', 'SMSN-CSML', 'Viaje', 'Samsonite', 'Maleta rigida ultraligera', 429.00, 60, true),
(22, 'Instant Pot Duo', 'INST-POT', 'Hogar', 'Instant Pot', 'Olla programable multifuncion', 129.99, 150, true),
(23, 'Monopoly Classic', 'HASB-MNPY', 'Juguetes', 'Hasbro', 'Juego de mesa clasico', 29.99, 250, true),
(24, 'Oral-B iO Series 9', 'ORLB-IO9', 'Cuidado Personal', 'Oral-B', 'Cepillo dental electrico con IA', 299.99, 130, true),
(25, 'Canon EOS R6', 'CANN-EOSR6', 'Electronics', 'Canon', 'Camara mirrorless profesional', 2499.99, 15, true);

-- =============================================
-- Insertar Pedidos (orders) - 30 registros
-- =============================================
INSERT INTO orders (order_id, customer_id, order_date, total_amount, status, shipping_address, shipping_city, shipping_country, payment_method) VALUES
(1, 1, '2024-05-01 10:30:00', 1299.99, 'Delivered', 'Calle Mayor 123', 'Madrid', 'España', 'Credit Card'),
(2, 2, '2024-05-02 15:45:00', 2199.98, 'Delivered', 'Avenida Diagonal 456', 'Barcelona', 'España', 'PayPal'),
(3, 3, '2024-05-03 09:15:00', 399.99, 'Shipped', 'Plaza España 789', 'Valencia', 'España', 'Credit Card'),
(4, 4, '2024-05-04 14:20:00', 180.00, 'Processing', '10 Downing Street', 'London', 'Reino Unido', 'Debit Card'),
(5, 5, '2024-05-05 11:30:00', 549.98, 'Delivered', '221B Baker Street', 'London', 'Reino Unido', 'Credit Card'),
(6, 1, '2024-05-06 16:00:00', 299.99, 'Cancelled', 'Calle Mayor 123', 'Madrid', 'España', 'PayPal'),
(7, 6, '2024-05-07 13:45:00', 1499.99, 'Delivered', 'Rue de la Paix 15', 'Paris', 'Francia', 'Credit Card'),
(8, 7, '2024-05-08 10:00:00', 248.00, 'Processing', 'Avenue des Champs Elysees 50', 'Paris', 'Francia', 'Debit Card'),
(9, 8, '2024-05-09 17:30:00', 749.99, 'Shipped', 'Via Roma 1', 'Roma', 'Italia', 'Credit Card'),
(10, 9, '2024-05-10 12:15:00', 599.99, 'Processing', 'Piazza del Duomo 20', 'Milan', 'Italia', 'PayPal'),
(11, 10, '2024-05-11 09:45:00', 999.99, 'Delivered', 'Rua Augusta 100', 'Lisboa', 'Portugal', 'Credit Card'),
(12, 11, '2024-05-12 14:30:00', 149.99, 'Delivered', 'Calle Alcala 200', 'Madrid', 'España', 'Debit Card'),
(13, 12, '2024-05-13 16:20:00', 329.99, 'Shipped', 'Oxford Street 123', 'London', 'Reino Unido', 'PayPal'),
(14, 13, '2024-05-14 11:10:00', 1799.99, 'Processing', 'Kings Road 45', 'London', 'Reino Unido', 'Credit Card'),
(15, 14, '2024-05-15 13:50:00', 699.99, 'Delivered', 'Boulevard Saint Germain 75', 'Paris', 'Francia', 'Credit Card'),
(16, 15, '2024-05-16 10:35:00', 249.99, 'Delivered', 'Rue de Rivoli 30', 'Paris', 'Francia', 'Debit Card'),
(17, 1, '2024-05-17 15:25:00', 159.99, 'Shipped', 'Calle Mayor 123', 'Madrid', 'España', 'PayPal'),
(18, 2, '2024-05-18 09:40:00', 1999.99, 'Processing', 'Avenida Diagonal 456', 'Barcelona', 'España', 'Credit Card'),
(19, 3, '2024-05-19 14:15:00', 89.99, 'Delivered', 'Plaza España 789', 'Valencia', 'España', 'Debit Card'),
(20, 4, '2024-05-20 11:55:00', 429.99, 'Delivered', '10 Downing Street', 'London', 'Reino Unido', 'Credit Card'),
(21, 5, '2024-05-21 16:45:00', 349.99, 'Shipped', '221B Baker Street', 'London', 'Reino Unido', 'PayPal'),
(22, 6, '2024-05-22 10:20:00', 150.00, 'Processing', 'Rue de la Paix 15', 'Paris', 'Francia', 'Debit Card'),
(23, 7, '2024-05-23 13:30:00', 799.99, 'Delivered', 'Avenue des Champs Elysees 50', 'Paris', 'Francia', 'Credit Card'),
(24, 8, '2024-05-24 15:10:00', 349.99, 'Delivered', 'Via Roma 1', 'Roma', 'Italia', 'PayPal'),
(25, 9, '2024-05-25 09:25:00', 199.99, 'Shipped', 'Piazza del Duomo 20', 'Milan', 'Italia', 'Credit Card'),
(26, 10, '2024-05-26 14:40:00', 1299.99, 'Processing', 'Rua Augusta 100', 'Lisboa', 'Portugal', 'Debit Card'),
(27, 11, '2024-05-27 11:15:00', 549.99, 'Delivered', 'Calle Alcala 200', 'Madrid', 'España', 'Credit Card'),
(28, 12, '2024-05-28 16:50:00', 129.99, 'Delivered', 'Oxford Street 123', 'London', 'Reino Unido', 'PayPal'),
(29, 13, '2024-05-29 10:05:00', 699.99, 'Shipped', 'Kings Road 45', 'London', 'Reino Unido', 'Debit Card'),
(30, 14, '2024-05-30 13:55:00', 249.99, 'Processing', 'Boulevard Saint Germain 75', 'Paris', 'Francia', 'Credit Card');

-- =============================================
-- Insertar Detalles de pedidos (order_items) - 30 registros
-- =============================================
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, unit_price, discount_percent) VALUES
(1, 1, 1, 1, 1299.99, 0),
(2, 2, 3, 1, 1999.99, 0),
(3, 2, 14, 1, 199.99, 0),
(4, 3, 4, 1, 399.99, 0),
(5, 4, 7, 1, 180.00, 0),
(6, 5, 4, 1, 399.99, 0),
(7, 5, 5, 1, 149.99, 0),
(8, 6, 9, 1, 299.99, 0),
(9, 7, 15, 1, 599.99, 0),
(10, 7, 17, 1, 120.00, 0),
(11, 7, 13, 1, 749.99, 5),
(12, 8, 8, 2, 98.00, 10),
(13, 8, 6, 1, 150.00, 20),
(14, 9, 13, 1, 749.99, 0),
(15, 10, 15, 1, 599.99, 0),
(16, 11, 2, 1, 999.99, 0),
(17, 12, 5, 1, 149.99, 0),
(18, 13, 12, 1, 349.99, 5),
(19, 14, 3, 1, 1999.99, 10),
(20, 15, 16, 1, 399.99, 0),
(21, 15, 24, 1, 299.99, 0),
(22, 16, 10, 1, 249.99, 0),
(23, 17, 22, 1, 129.99, 0),
(24, 17, 23, 1, 29.99, 0),
(25, 18, 25, 1, 2499.99, 20),
(26, 19, 18, 1, 89.99, 0),
(27, 20, 21, 1, 429.99, 0),
(28, 21, 12, 1, 349.99, 0),
(29, 22, 6, 1, 150.00, 0),
(30, 23, 11, 1, 499.99, 0);

-- =============================================
-- Actualizar totales de pedidos 
-- (En caso de que no se calculen automáticamente)
-- =============================================
UPDATE orders o
SET total_amount = (
    SELECT SUM(quantity * unit_price * (1 - discount_percent/100))
    FROM order_items oi
    WHERE oi.order_id = o.order_id
);

-- =============================================
-- Verificación de datos
-- =============================================
SELECT 'Clientes insertados:' AS info, COUNT(*) AS total FROM customers
UNION ALL
SELECT 'Productos insertados:', COUNT(*) FROM products
UNION ALL
SELECT 'Pedidos insertados:', COUNT(*) FROM orders
UNION ALL
SELECT 'Items de pedido insertados:', COUNT(*) FROM order_items;
