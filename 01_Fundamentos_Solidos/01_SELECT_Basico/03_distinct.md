# DISTINCT - Eliminación de Duplicados

## Información General

- **Descripción**: Uso de DISTINCT para obtener valores únicos
- **Base de datos**: tienda_online

## 1. ¿Qué es DISTINCT?

DISTINCT es una cláusula que elimina filas duplicadas del resultado de una consulta.

### Características:
- Compara TODAS las columnas seleccionadas
- Devuelve solo combinaciones únicas
- Se aplica a todo el conjunto de resultados
- Puede afectar el rendimiento en tablas grandes

## 2. Sintaxis Básica

### Ver todos los países (con duplicados)

```sql
SELECT country
FROM customers;
```

### Ver países únicos

```sql
SELECT DISTINCT country
FROM customers;
```

### Contar países únicos

```sql
SELECT COUNT(DISTINCT country) AS paises_unicos
FROM customers;
```

## 3. DISTINCT con Múltiples Columnas

### Combinaciones únicas de ciudad y país

```sql
SELECT DISTINCT city, country
FROM customers
ORDER BY country, city;
```

Esto muestra TODAS las combinaciones únicas. Por ejemplo, si hay clientes en:
- Madrid, España
- Barcelona, España
- Londres, Reino Unido

Mostrará las 3 combinaciones.

## 4. DISTINCT vs GROUP BY

### Usando DISTINCT

```sql
SELECT DISTINCT category
FROM products
ORDER BY category;
```

### Equivalente con GROUP BY

```sql
SELECT category
FROM products
GROUP BY category
ORDER BY category;
```

### GROUP BY es más útil cuando necesitas agregaciones

```sql
SELECT 
    category,
    COUNT(*) as productos_por_categoria
FROM products
GROUP BY category
ORDER BY category;
```

## 5. Casos de Uso Comunes

### Caso 1: Lista de categorías disponibles

```sql
SELECT DISTINCT category
FROM products
WHERE is_active = true
ORDER BY category;
```

### Caso 2: Métodos de pago utilizados

```sql
SELECT DISTINCT payment_method
FROM orders
WHERE status = 'Delivered'
ORDER BY payment_method;
```

### Caso 3: Años en los que se han hecho pedidos

```sql
SELECT DISTINCT EXTRACT(YEAR FROM order_date) AS año
FROM orders
ORDER BY año DESC;
```

### Caso 4: Clientes que han comprado (IDs únicos)

```sql
SELECT DISTINCT customer_id
FROM orders;
```

## 6. DISTINCT con Funciones de Agregación

### Contar valores únicos

```sql
SELECT 
    COUNT(*) AS total_pedidos,
    COUNT(DISTINCT customer_id) AS clientes_unicos,
    COUNT(DISTINCT DATE(order_date)) AS dias_con_ventas,
    COUNT(DISTINCT payment_method) AS metodos_pago_usados
FROM orders;
```

### Contar productos por categoría (únicos)

```sql
SELECT 
    category,
    COUNT(DISTINCT product_id) AS productos_unicos,
    COUNT(DISTINCT brand) AS marcas_diferentes
FROM products
GROUP BY category
ORDER BY productos_unicos DESC;
```

## 7. DISTINCT en Expresiones

### Ciudades únicas con formato

```sql
SELECT DISTINCT 
    UPPER(city) AS ciudad_mayusculas,
    country
FROM customers
ORDER BY country, ciudad_mayusculas;
```

### Rangos de precio únicos

```sql
SELECT DISTINCT
    CASE 
        WHEN unit_price < 100 THEN 'Económico'
        WHEN unit_price BETWEEN 100 AND 500 THEN 'Medio'
        WHEN unit_price > 500 THEN 'Premium'
    END AS rango_precio
FROM products;
```

## 8. Rendimiento y Consideraciones

### Consideraciones importantes:
1. DISTINCT requiere ordenar internamente los datos
2. Puede ser costoso en tablas grandes
3. Considera usar índices en columnas frecuentemente filtradas
4. A veces es mejor usar GROUP BY con índices

### Ejemplo: Esta consulta puede ser lenta en tablas grandes

```sql
SELECT DISTINCT 
    customer_id,
    order_date,
    total_amount
FROM orders;
```

### Alternativa más eficiente si hay índices apropiados

```sql
SELECT 
    customer_id,
    order_date,
    total_amount
FROM orders
GROUP BY customer_id, order_date, total_amount;
```

## 9. Errores Comunes

### ERROR COMÚN #1: Pensar que DISTINCT aplica solo a una columna

```sql
-- INCORRECTO (conceptualmente):
SELECT DISTINCT country, city  -- DISTINCT aplica a AMBAS columnas
FROM customers;
```

### Si quieres distinct por columna, necesitas subconsultas:

```sql
SELECT 
    (SELECT COUNT(DISTINCT country) FROM customers) AS paises_unicos,
    (SELECT COUNT(DISTINCT city) FROM customers) AS ciudades_unicas;
```

### ERROR COMÚN #2: Usar DISTINCT innecesariamente

```sql
-- INNECESARIO (customer_id ya es único):
SELECT DISTINCT customer_id, first_name, last_name
FROM customers;

-- CORRECTO:
SELECT customer_id, first_name, last_name
FROM customers;
```

## 10. Combinando con Otras Cláusulas

### DISTINCT con WHERE

```sql
SELECT DISTINCT category
FROM products
WHERE unit_price > 100
ORDER BY category;
```

### DISTINCT con JOIN (preview)

```sql
SELECT DISTINCT c.country
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.status = 'Delivered';
```

### DISTINCT con HAVING

```sql
SELECT category, COUNT(DISTINCT brand) as marcas
FROM products
GROUP BY category
HAVING COUNT(DISTINCT brand) > 1;
```

## Ejercicios Prácticos

### Ejercicio 1
Encuentra todos los países únicos de donde provienen los clientes y muestra también el número total de países.

```sql
-- Tu solución aquí:




```

### Ejercicio 2
Lista todas las combinaciones únicas de categoría y marca de productos, ordenadas alfabéticamente.

```sql
-- Tu solución aquí:




```

### Ejercicio 3
Encuentra el número de clientes únicos que han realizado pedidos y compáralo con el total de pedidos.

```sql
-- Tu solución aquí:




```

### Ejercicio 4
Muestra los diferentes estados de pedidos (status) y cuántos pedidos hay en cada estado.

```sql
-- Tu solución aquí:




```

## Soluciones a los Ejercicios

### Solución Ejercicio 1

```sql
-- Lista de países
SELECT DISTINCT country
FROM customers
ORDER BY country;

-- Número total de países
SELECT COUNT(DISTINCT country) AS total_paises
FROM customers;
```

### Solución Ejercicio 2

```sql
SELECT DISTINCT 
    category,
    brand
FROM products
ORDER BY category, brand;
```

### Solución Ejercicio 3

```sql
SELECT 
    COUNT(DISTINCT customer_id) AS clientes_unicos,
    COUNT(*) AS total_pedidos,
    ROUND(COUNT(*) * 1.0 / COUNT(DISTINCT customer_id), 2) AS pedidos_por_cliente
FROM orders;
```

### Solución Ejercicio 4

```sql
SELECT 
    status,
    COUNT(*) AS cantidad_pedidos
FROM orders
GROUP BY status
ORDER BY cantidad_pedidos DESC;
```

## Proyecto Práctico

### Mini Proyecto: Análisis de Diversidad de Productos

Crea un reporte que muestre:
1. Número de categorías únicas
2. Número de marcas únicas
3. Número de combinaciones categoría-marca únicas
4. Categoría con más marcas diferentes

### Solución:

**Parte 1, 2 y 3**

```sql
SELECT 
    COUNT(DISTINCT category) AS categorias_unicas,
    COUNT(DISTINCT brand) AS marcas_unicas,
    COUNT(DISTINCT category || '-' || brand) AS combinaciones_unicas
FROM products;
```

**Parte 4**

```sql
SELECT 
    category,
    COUNT(DISTINCT brand) AS num_marcas
FROM products
GROUP BY category
ORDER BY num_marcas DESC
LIMIT 1;
```

## Resumen y Puntos Clave

### Puntos clave de esta lección:

1. DISTINCT elimina filas duplicadas del resultado
2. Aplica a TODAS las columnas seleccionadas
3. Útil con COUNT() para contar valores únicos
4. Puede impactar el rendimiento en tablas grandes
5. A veces GROUP BY es una mejor alternativa
6. No es necesario en columnas ya únicas (como IDs)
7. Se puede combinar con WHERE, ORDER BY, etc.

### Mejores prácticas:

- Usa DISTINCT solo cuando sea necesario
- Considera el impacto en rendimiento
- Para conteos únicos, usa COUNT(DISTINCT columna)
- Combina con ORDER BY para resultados ordenados

## Próximos Pasos

Próximo tema: WHERE y filtrado de datos