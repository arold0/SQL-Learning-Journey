# Alias para Columnas y Tablas

## Información General

- **Descripción**: Uso de alias en SQL para mejorar legibilidad
- **Base de datos**: tienda_online

## 1. ¿Qué son los Alias?

Los alias son nombres alternativos temporales que asignamos a:
- Columnas (para renombrar en el resultado)
- Tablas (para simplificar referencias)
- Subconsultas (para tratarlas como tablas)

### Beneficios:
1. Mejoran la legibilidad
2. Acortan referencias largas
3. Permiten renombrar resultados
4. Son esenciales para self-joins

## 2. Alias para Columnas - Sintaxis Básica

### Método 1: Usando AS (recomendado por claridad)

```sql
SELECT 
    first_name AS nombre,
    last_name AS apellido,
    email AS correo_electronico
FROM customers;
```

### Método 2: Sin AS (válido pero menos claro)

```sql
SELECT 
    first_name nombre,
    last_name apellido,
    email correo_electronico
FROM customers;
```

## 3. Alias para Expresiones y Cálculos

### Alias para cálculos matemáticos

```sql
SELECT 
    product_name,
    unit_price AS precio_base,
    unit_price * 1.21 AS precio_con_iva,
    unit_price * 0.9 AS precio_promocion,
    (unit_price * 1.21) - (unit_price * 0.9) AS diferencia_precio
FROM products;
```

### Alias para concatenaciones

```sql
SELECT 
    first_name || ' ' || last_name AS nombre_completo,
    city || ', ' || country AS ubicacion,
    'Cliente desde: ' || registration_date AS info_registro
FROM customers;
```

## 4. Alias con Espacios y Caracteres Especiales

### Usar comillas dobles para alias con espacios (estándar SQL)

```sql
SELECT 
    first_name AS "Nombre Cliente",
    last_name AS "Apellido Cliente",
    email AS "Correo Electrónico"
FROM customers;
```

### En SQL Server y MySQL

**SQL Server**:
```sql
SELECT 
    first_name AS [Nombre Cliente],
    last_name AS [Apellido Cliente]
FROM customers;
```

**MySQL**:
```sql
SELECT 
    first_name AS `Nombre Cliente`,
    last_name AS `Apellido Cliente`
FROM customers;
```

## 5. Alias para Tablas

### Alias simple para tabla

```sql
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    c.email
FROM customers c
WHERE c.country = 'España';
```

### Alias para múltiples tablas (preview de JOINs)

```sql
SELECT 
    c.first_name,
    c.last_name,
    o.order_id,
    o.order_date
FROM customers c, orders o
WHERE c.customer_id = o.customer_id;
```

## 6. Casos de Uso Importantes

### Caso 1: Renombrar para informes en español

```sql
SELECT 
    product_id AS "Código Producto",
    product_name AS "Nombre Producto",
    category AS "Categoría",
    unit_price AS "Precio Unitario",
    stock_quantity AS "Stock Disponible",
    CASE 
        WHEN stock_quantity > 100 THEN 'Alto'
        WHEN stock_quantity > 50 THEN 'Medio'
        WHEN stock_quantity > 0 THEN 'Bajo'
        ELSE 'Agotado'
    END AS "Nivel de Stock"
FROM products;
```

### Caso 2: Resultados de cálculos complejos

```sql
SELECT 
    order_id AS "Número de Pedido",
    order_date AS "Fecha",
    total_amount AS "Subtotal",
    total_amount * 0.21 AS "IVA",
    total_amount * 1.21 AS "Total con IVA",
    ROUND(total_amount * 1.21, 2) AS "Total Redondeado"
FROM orders;
```

## 7. Alias en Funciones de Agregación

```sql
SELECT 
    COUNT(*) AS total_clientes,
    COUNT(DISTINCT country) AS paises_diferentes,
    COUNT(phone) AS clientes_con_telefono
FROM customers;
```

## 8. Reglas y Restricciones

### Reglas importantes:
1. Los alias de columna NO pueden usarse en WHERE
2. Los alias de columna SÍ pueden usarse en ORDER BY
3. Los alias de tabla se usan para todo después de FROM

### Esto NO funciona (error):

```sql
SELECT 
    first_name || ' ' || last_name AS nombre_completo
FROM customers
WHERE nombre_completo LIKE 'A%';  -- ¡ERROR!
```

### Solución correcta:

```sql
SELECT 
    first_name || ' ' || last_name AS nombre_completo
FROM customers
WHERE first_name || ' ' || last_name LIKE 'A%';
```

### Pero SÍ funciona en ORDER BY:

```sql
SELECT 
    first_name || ' ' || last_name AS nombre_completo,
    email
FROM customers
ORDER BY nombre_completo;
```

## 9. Buenas Prácticas

1. Usa AS para claridad
2. Elige nombres descriptivos
3. Sé consistente con el idioma
4. Evita alias muy largos
5. Usa comillas para espacios/caracteres especiales
6. Para tablas, usa abreviaturas lógicas (c para customers)

### Ejemplo de buenas prácticas:

```sql
SELECT 
    c.customer_id AS id_cliente,
    c.first_name AS nombre,
    c.last_name AS apellido,
    c.email AS correo,
    c.country AS pais,
    DATE_PART('year', AGE(c.registration_date)) AS anos_cliente
FROM customers c
WHERE c.country IN ('España', 'México', 'Argentina')
ORDER BY anos_cliente DESC, apellido ASC;
```

## Ejercicios Prácticos

### Ejercicio 1
Crea una consulta que muestre:
- ID del producto (como "Código")
- Nombre del producto (como "Descripción")
- Precio con IVA (como "PVP")
- Stock actual (como "Unidades Disponibles")
Solo para productos con stock > 0

```sql
-- Tu solución aquí:




```

### Ejercicio 2
Escribe una consulta que muestre:
- Nombre completo del cliente (como "Cliente")
- Ciudad y país juntos (como "Ubicación")
- Email
- Una columna que diga "Internacional" si no es de España y "Nacional" si es de España (como "Tipo Cliente")

```sql
-- Tu solución aquí:




```

### Ejercicio 3
Usando alias de tabla, consulta orders y muestra:
- ID de orden
- Fecha de orden
- Estado
- Total formateado como moneda (ej: "€1,234.56")

```sql
-- Tu solución aquí:




```

## Soluciones a los Ejercicios

### Solución Ejercicio 1

```sql
SELECT 
    product_id AS "Código",
    product_name AS "Descripción",
    ROUND(unit_price * 1.21, 2) AS "PVP",
    stock_quantity AS "Unidades Disponibles"
FROM products
WHERE stock_quantity > 0;
```

### Solución Ejercicio 2

```sql
SELECT 
    first_name || ' ' || last_name AS "Cliente",
    city || ', ' || country AS "Ubicación",
    email AS "Email",
    CASE 
        WHEN country = 'España' THEN 'Nacional'
        ELSE 'Internacional'
    END AS "Tipo Cliente"
FROM customers;
```

### Solución Ejercicio 3

```sql
SELECT 
    o.order_id AS "ID Orden",
    o.order_date AS "Fecha",
    o.status AS "Estado",
    '€' || TO_CHAR(o.total_amount, 'FM999,999.00') AS "Total"
FROM orders o;
```

## Resumen y Puntos Clave

### Puntos clave de esta lección:

1. Los alias mejoran la legibilidad y presentación
2. Usa AS para columnas (más claro)
3. Los alias de tabla simplifican referencias
4. Útiles para expresiones y cálculos
5. No se pueden usar alias de columna en WHERE
6. Se pueden usar alias de columna en ORDER BY
7. Usa comillas para alias con espacios

## Próximos Pasos

Próximo tema: DISTINCT para eliminar duplicados (archivo 03_distinct.md)