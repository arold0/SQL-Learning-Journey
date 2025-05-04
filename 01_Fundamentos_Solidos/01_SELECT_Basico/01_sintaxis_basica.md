# Sintaxis Básica de SELECT

## Información General

- **Descripción**: Ejemplos fundamentales de la instrucción SELECT
- **Base de datos**: tienda_online

## 1. Estructura Básica de SELECT

La sintaxis básica de SELECT es:

```sql
SELECT columnas
FROM tabla
[WHERE condición]
[ORDER BY columna]
[LIMIT cantidad];
```

Los corchetes [] indican cláusulas opcionales.

## 2. Seleccionar Todas las Columnas

El asterisco (*) selecciona todas las columnas:

```sql
SELECT * 
FROM customers;
```

**Resultado**: Muestra todos los campos de todos los clientes

**Nota**: Usar `SELECT *` puede ser útil para exploración, pero en producción es mejor especificar las columnas para mejorar el rendimiento y claridad.

## 3. Seleccionar Columnas Específicas

Seleccionar solo las columnas necesarias:

```sql
SELECT 
    customer_id,
    first_name,
    last_name,
    email
FROM customers;
```

**Ventajas de especificar columnas**:
1. Mejor rendimiento (menos datos transferidos)
2. Código más claro y mantenible
3. Menos susceptible a cambios en la estructura de la tabla

## 4. Ordenar Columnas en la Salida

El orden en SELECT determina el orden en el resultado:

```sql
SELECT 
    email,           -- Primera columna
    first_name,      -- Segunda columna
    last_name,       -- Tercera columna
    customer_id      -- Cuarta columna
FROM customers;
```

## 5. Expresiones y Cálculos en SELECT

### Realizar cálculos matemáticos

```sql
SELECT 
    product_name,
    unit_price,
    unit_price * 1.21 AS price_with_tax,  -- 21% IVA
    unit_price * 0.9 AS price_with_discount  -- 10% descuento
FROM products;
```

### Concatenar strings

En PostgreSQL y SQL estándar:

```sql
SELECT 
    first_name || ' ' || last_name AS full_name,
    email
FROM customers;
```

En MySQL y SQL Server:

```sql
SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name,
    email
FROM customers;
```

## 6. Literales y Constantes

Incluir valores constantes en el resultado:

```sql
SELECT 
    product_name,
    unit_price,
    'EUR' AS currency,
    'En Stock' AS availability
FROM products
WHERE stock_quantity > 0;
```

## 7. Funciones en SELECT

### Funciones de string

```sql
SELECT 
    UPPER(first_name) AS first_name_upper,
    LOWER(email) AS email_lower,
    LENGTH(last_name) AS lastname_length
FROM customers;
```

### Funciones de fecha

```sql
SELECT 
    order_id,
    order_date,
    -- PostgreSQL:
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month
FROM orders;
```

## 8. Expresiones Condicionales

Usar CASE para lógica condicional:

```sql
SELECT 
    product_name,
    unit_price,
    CASE 
        WHEN unit_price < 100 THEN 'Económico'
        WHEN unit_price BETWEEN 100 AND 500 THEN 'Medio'
        WHEN unit_price > 500 THEN 'Premium'
        ELSE 'Sin clasificar'
    END AS price_category
FROM products;
```

## 9. Limitar Resultados

### En PostgreSQL y MySQL

```sql
SELECT 
    first_name,
    last_name,
    email
FROM customers
LIMIT 5;
```

### En SQL Server

```sql
SELECT TOP 5
    first_name,
    last_name,
    email
FROM customers;
```

## 10. Comentarios en SQL

```sql
-- Este es un comentario de una línea

/*
Este es un comentario
de múltiples líneas
útil para explicaciones largas
*/

SELECT 
    product_id,     -- ID único del producto
    product_name,   -- Nombre comercial
    unit_price      -- Precio sin IVA
FROM products;
```

## Ejercicios Prácticos

### Ejercicio 1
Escribe una consulta que seleccione:
- Nombre del producto
- Precio unitario
- Precio con 10% de descuento
- Categoría del producto

```sql
-- Tu solución aquí:




```

### Ejercicio 2
Crea una consulta que muestre:
- Nombre completo del cliente (concatenado)
- Email en mayúsculas
- País
Solo para clientes de España

```sql
-- Tu solución aquí:




```

### Ejercicio 3
Diseña una consulta que muestre:
- ID del pedido
- Fecha del pedido
- Total del pedido
- Una columna que diga 'Pedido Grande' si total > 500, 'Pedido Normal' si no

```sql
-- Tu solución aquí:




```

## Soluciones a los Ejercicios

### Solución Ejercicio 1

```sql
SELECT 
    product_name,
    unit_price,
    unit_price * 0.9 AS discounted_price,
    category
FROM products;
```

### Solución Ejercicio 2

```sql
SELECT 
    first_name || ' ' || last_name AS full_name,
    UPPER(email) AS email_uppercase,
    country
FROM customers
WHERE country = 'España';
```

### Solución Ejercicio 3

```sql
SELECT 
    order_id,
    order_date,
    total_amount,
    CASE 
        WHEN total_amount > 500 THEN 'Pedido Grande'
        ELSE 'Pedido Normal'
    END AS order_size
FROM orders;
```

## Resumen y Puntos Clave

### Puntos clave de esta lección:

1. SELECT es la instrucción fundamental para consultar datos
2. Podemos seleccionar todas (*) o columnas específicas
3. Es posible realizar cálculos y transformaciones en SELECT
4. Las expresiones CASE permiten lógica condicional
5. Los alias mejoran la legibilidad del resultado
6. LIMIT restringe el número de filas devueltas
7. Los comentarios ayudan a documentar el código SQL

### Mejores prácticas:

- Evita SELECT * en código de producción
- Usa nombres descriptivos para los alias
- Comenta tu código para explicar la lógica compleja
- Formatea tu código para mejor legibilidad

## Próximos Pasos

Ahora que dominas la sintaxis básica de SELECT, el siguiente tema es aprender sobre alias para columnas y tablas (archivo 02_alias_columnas_tablas.md)