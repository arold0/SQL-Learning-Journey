# soluciones.sql
/*
=====================================================
SOLUCIONES: Ejercicios SELECT Básico
=====================================================
Autor: Ana García
Fecha: 2024-05-11
Base de datos: tienda_online
=====================================================
*/

-- =============================================
-- NIVEL BÁSICO
-- =============================================

-- Ejercicio 1: Primera Consulta
-- Muestra el nombre y apellido de todos los clientes
SELECT 
    first_name,
    last_name
FROM customers;

-- Ejercicio 2: Selección de Columnas Específicas
-- Muestra el nombre del producto, su precio y la cantidad en stock
SELECT 
    product_name,
    unit_price,
    stock_quantity
FROM products;

-- Ejercicio 3: Usando Alias Simple
-- Consulta el email de los clientes, renombrando la columna
SELECT 
    email AS "Correo Electrónico"
FROM customers;

-- =============================================
-- NIVEL INTERMEDIO
-- =============================================

-- Ejercicio 4: Expresiones y Cálculos
-- Muestra el nombre del producto y su precio con IVA (21%)
SELECT 
    product_name,
    unit_price,
    unit_price * 1.21 AS "Precio_IVA"
FROM products;

-- Ejercicio 5: Concatenación de Strings
-- Nombre completo del cliente y su país
SELECT 
    first_name || ' ' || last_name AS "Nombre_Completo",
    country
FROM customers;

-- Para MySQL:
/*
SELECT 
    CONCAT(first_name, ' ', last_name) AS "Nombre_Completo",
    country
FROM customers;
*/

-- Ejercicio 6: DISTINCT Básico
-- Lista todos los países únicos
SELECT DISTINCT country
FROM customers
ORDER BY country;

-- Ejercicio 7: DISTINCT con Múltiples Columnas
-- Combinaciones únicas de categoría y marca
SELECT DISTINCT 
    category,
    brand
FROM products
ORDER BY category, brand;

-- =============================================
-- NIVEL AVANZADO
-- =============================================

-- Ejercicio 8: Expresiones Condicionales
-- Categorizar productos por rango de precio
SELECT 
    product_name,
    unit_price,
    CASE 
        WHEN unit_price < 100 THEN 'Barato'
        WHEN unit_price BETWEEN 100 AND 500 THEN 'Normal'
        WHEN unit_price > 500 THEN 'Caro'
    END AS "Rango_Precio"
FROM products;

-- Ejercicio 9: Múltiples Cálculos y Alias
-- Diferentes precios y cálculos para productos
SELECT 
    product_name AS "Producto",
    unit_price AS "Precio_Base",
    unit_price * 1.21 AS "Precio_IVA",
    unit_price * 0.9 AS "Precio_Oferta",
    (unit_price * 1.21) - (unit_price * 0.9) AS "Ahorro"
FROM products;

-- Ejercicio 10: DISTINCT con Expresiones
-- Diferentes rangos de stock
SELECT DISTINCT
    CASE 
        WHEN stock_quantity = 0 THEN 'Sin Stock'
        WHEN stock_quantity BETWEEN 1 AND 50 THEN 'Stock Bajo'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN 'Stock Normal'
        WHEN stock_quantity > 100 THEN 'Stock Alto'
    END AS "Rango_Stock"
FROM products
ORDER BY "Rango_Stock";

-- =============================================
-- DESAFÍOS
-- =============================================

-- Desafío 1: Reporte de Cliente
SELECT 
    customer_id AS "ID",
    first_name || ' ' || last_name AS "Nombre_Completo",
    email AS "Email",
    city || ' - ' || country AS "Ubicacion",
    CASE 
        WHEN country = 'España' THEN 'Cliente Nacional'
        ELSE 'Cliente Internacional'
    END AS "Tipo_Cliente"
FROM customers;

-- Desafío 2: Análisis de Productos
SELECT 
    product_code AS "Codigo",
    product_name AS "Producto",
    category || ' | ' || brand AS "Categoria_Marca",
    ROUND(unit_price * 1.21, 2) AS "Precio_IVA",
    CASE 
        WHEN stock_quantity > 0 AND is_active = true THEN 'Disponible'
        ELSE 'No Disponible'
    END AS "Estado",
    unit_price * stock_quantity AS "Valor_Inventario"
FROM products;

-- Desafío 3: Estadísticas Únicas
SELECT 
    (SELECT COUNT(*) FROM customers) AS "Total_Clientes",
    (SELECT COUNT(DISTINCT country) FROM customers) AS "Paises_Unicos",
    (SELECT COUNT(DISTINCT category) FROM products) AS "Categorias_Unicas",
    (SELECT COUNT(DISTINCT brand) FROM products) AS "Marcas_Unicas";

-- =============================================
-- EJERCICIOS DE INVESTIGACIÓN
-- =============================================

-- Investigación 1: Funciones de Fecha
-- Extraer año y mes de la fecha de registro

-- PostgreSQL:
SELECT 
    first_name || ' ' || last_name AS "Cliente",
    EXTRACT(YEAR FROM registration_date) AS "Año_Registro",
    EXTRACT(MONTH FROM registration_date) AS "Mes_Registro"
FROM customers;

-- MySQL:
/*
SELECT 
    CONCAT(first_name, ' ', last_name) AS Cliente,
    YEAR(registration_date) AS Año_Registro,
    MONTH(registration_date) AS Mes_Registro
FROM customers;
*/

-- SQL Server:
/*
SELECT 
    first_name + ' ' + last_name AS Cliente,
    YEAR(registration_date) AS Año_Registro,
    MONTH(registration_date) AS Mes_Registro
FROM customers;
*/

-- Investigación 2: Formateo de Números
-- Formatear precios como moneda

-- PostgreSQL:
SELECT 
    product_name,
    '€' || TO_CHAR(unit_price, 'FM999,999.00') AS "Precio_Formateado"
FROM products;

-- MySQL:
/*
SELECT 
    product_name,
    CONCAT('€', FORMAT(unit_price, 2)) AS Precio_Formateado
FROM products;
*/

-- SQL Server:
/*
SELECT 
    product_name,
    CONCAT('€', FORMAT(unit_price, 'N2')) AS Precio_Formateado
FROM products;
*/

-- =============================================
-- BONUS: CONSULTAS ADICIONALES ÚTILES
-- =============================================

-- Consulta 1: Resumen completo de productos
SELECT 
    p.product_id AS "ID",
    p.product_code AS "Código",
    p.product_name AS "Producto",
    p.category AS "Categoría",
    p.brand AS "Marca",
    '€' || TO_CHAR(p.unit_price, 'FM999,999.00') AS "Precio",
    p.stock_quantity AS "Stock",
    CASE 
        WHEN p.stock_quantity = 0 THEN 'Agotado'
        WHEN p.stock_quantity < 20 THEN 'Stock Crítico'
        WHEN p.stock_quantity < 50 THEN 'Stock Bajo'
        ELSE 'Stock Normal'
    END AS "Estado_Stock",
    CASE 
        WHEN p.is_active THEN 'Activo'
        ELSE 'Inactivo'
    END AS "Estado"
FROM products p
ORDER BY p.category, p.product_name;

-- Consulta 2: Perfil completo del cliente
SELECT 
    c.customer_id AS "ID_Cliente",
    c.first_name || ' ' || c.last_name AS "Nombre_Completo",
    c.email AS "Email",
    COALESCE(c.phone, 'Sin teléfono') AS "Teléfono",
    c.address AS "Dirección",
    c.city || ', ' || c.postal_code AS "Ciudad_CP",
    c.country AS "País",
    DATE_PART('year', AGE(c.registration_date)) || ' años' AS "Antigüedad",
    TO_CHAR(c.registration_date, 'DD/MM/YYYY') AS "Fecha_Registro"
FROM customers c
ORDER BY c.registration_date DESC;

-- Consulta 3: Análisis de diversidad de inventario
WITH stats AS (
    SELECT 
        COUNT(*) AS total_productos,
        COUNT(DISTINCT category) AS categorias,
        COUNT(DISTINCT brand) AS marcas,
        COUNT(CASE WHEN stock_quantity > 0 THEN 1 END) AS productos_con_stock,
        COUNT(CASE WHEN is_active THEN 1 END) AS productos_activos,
        SUM(stock_quantity) AS total_unidades,
        SUM(unit_price * stock_quantity) AS valor_total_inventario
    FROM products
)
SELECT 
    total_productos AS "Total Productos",
    categorias AS "Categorías Diferentes",
    marcas AS "Marcas Diferentes",
    productos_con_stock AS "Productos en Stock",
    productos_activos AS "Productos Activos",
    total_unidades AS "Unidades Totales",
    '€' || TO_CHAR(valor_total_inventario, 'FM999,999.00') AS "Valor Inventario"
FROM stats;

-- =============================================
-- NOTAS Y OBSERVACIONES
-- =============================================

/*
Observaciones importantes:

1. La concatenación de strings varía según el SGBD:
   - PostgreSQL: ||
   - MySQL: CONCAT()
   - SQL Server: +

2. El formateo de números también varía:
   - PostgreSQL: TO_CHAR()
   - MySQL: FORMAT()
   - SQL Server: FORMAT()

3. Las funciones de fecha son diferentes:
   - PostgreSQL: EXTRACT()
   - MySQL: YEAR(), MONTH()
   - SQL Server: YEAR(), MONTH(), DATEPART()

4. Para manejar valores NULL:
   - COALESCE() funciona en la mayoría de SGBD
   - ISNULL() es específico de SQL Server
   - IFNULL() es específico de MySQL

5. Los alias con espacios necesitan delimitadores:
   - Estándar SQL: "alias con espacios"
   - SQL Server: [alias con espacios]
   - MySQL: `alias con espacios`

6. DISTINCT es costoso en tablas grandes,
   considera alternativas como GROUP BY cuando sea apropiado.

7. Las expresiones CASE son muy potentes para
   categorización y lógica condicional.
*/