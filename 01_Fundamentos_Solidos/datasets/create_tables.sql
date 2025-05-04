
-- =============================================
-- Script de creación de tablas para práctica
-- Base de datos: Tienda Online (E-commerce)
-- =============================================

-- Eliminar tablas si existen (en orden correcto por las foreign keys)
DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;

-- =============================================
-- Tabla: customers (Clientes)
-- =============================================
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    address VARCHAR(200),
    city VARCHAR(50),
    country VARCHAR(50),
    postal_code VARCHAR(10),
    registration_date DATE NOT NULL
);

-- =============================================
-- Tabla: products (Productos)
-- =============================================
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    product_code VARCHAR(20) UNIQUE,
    category VARCHAR(50),
    brand VARCHAR(50),
    description TEXT,
    unit_price DECIMAL(10,2) NOT NULL,
    stock_quantity INT DEFAULT 0,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- =============================================
-- Tabla: orders (Pedidos)
-- =============================================
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date TIMESTAMP NOT NULL,
    total_amount DECIMAL(10,2),
    status VARCHAR(20) DEFAULT 'Pending',
    shipping_address VARCHAR(200),
    shipping_city VARCHAR(50),
    shipping_country VARCHAR(50),
    payment_method VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- =============================================
-- Tabla: order_items (Detalles de pedidos)
-- =============================================
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    unit_price DECIMAL(10,2) NOT NULL,
    discount_percent DECIMAL(5,2) DEFAULT 0,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- =============================================
-- Índices para mejorar performance
-- =============================================
CREATE INDEX idx_customer_email ON customers(email);
CREATE INDEX idx_customer_country ON customers(country);
CREATE INDEX idx_product_category ON products(category);
CREATE INDEX idx_product_brand ON products(brand);
CREATE INDEX idx_order_date ON orders(order_date);
CREATE INDEX idx_order_status ON orders(status);

-- =============================================
-- Mensaje de confirmación
-- =============================================
-- Las tablas han sido creadas exitosamente.
-- Ejecuta el script insert_data.sql para cargar datos de ejemplo.

