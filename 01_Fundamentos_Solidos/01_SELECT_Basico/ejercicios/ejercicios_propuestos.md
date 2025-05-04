# Ejercicios: SELECT Básico

## 📝 Instrucciones Generales

- Lee cada ejercicio cuidadosamente
- Intenta resolver el ejercicio por tu cuenta antes de ver la solución
- Usa el dataset de la tienda online (customers, products, orders, order_items)
- Las soluciones están en el archivo `soluciones.sql`

## 🎯 Nivel Básico

### Ejercicio 1: Primera Consulta
Escribe una consulta que muestre el nombre y apellido de todos los clientes.

```sql
-- Tu solución aquí:




```

### Ejercicio 2: Selección de Columnas Específicas
Muestra el nombre del producto, su precio y la cantidad en stock de todos los productos.

```sql
-- Tu solución aquí:




```

### Ejercicio 3: Usando Alias Simple
Consulta el email de los clientes, renombrando la columna como "Correo Electrónico".

```sql
-- Tu solución aquí:




```

## 🚀 Nivel Intermedio

### Ejercicio 4: Expresiones y Cálculos
Muestra el nombre del producto y calcula su precio con IVA (21%). Nombra la nueva columna como "Precio_IVA".

```sql
-- Tu solución aquí:




```

### Ejercicio 5: Concatenación de Strings
Crea una consulta que muestre el nombre completo del cliente en una sola columna llamada "Nombre_Completo" y su país.

```sql
-- Tu solución aquí:




```

### Ejercicio 6: DISTINCT Básico
Lista todos los países únicos de donde provienen nuestros clientes.

```sql
-- Tu solución aquí:




```

### Ejercicio 7: DISTINCT con Múltiples Columnas
Muestra todas las combinaciones únicas de categoría y marca de productos.

```sql
-- Tu solución aquí:




```

## 🏆 Nivel Avanzado

### Ejercicio 8: Expresiones Condicionales
Crea una consulta que muestre:
- Nombre del producto
- Precio
- Una columna llamada "Rango_Precio" que diga:
  - "Barato" si el precio es menor a 100
  - "Normal" si está entre 100 y 500
  - "Caro" si es mayor a 500

```sql
-- Tu solución aquí:




```

### Ejercicio 9: Múltiples Cálculos y Alias
Para cada producto, muestra:
- Nombre del producto (como "Producto")
- Precio base (como "Precio_Base")
- Precio con IVA 21% (como "Precio_IVA")
- Precio con descuento del 10% (como "Precio_Oferta")
- La diferencia entre precio con IVA y precio oferta (como "Ahorro")

```sql
-- Tu solución aquí:




```

### Ejercicio 10: DISTINCT con Expresiones
Muestra los diferentes rangos de stock de productos:
- "Sin Stock" si stock_quantity = 0
- "Stock Bajo" si stock_quantity entre 1 y 50
- "Stock Normal" si stock_quantity entre 51 y 100
- "Stock Alto" si stock_quantity > 100

```sql
-- Tu solución aquí:




```

## 🔥 Desafíos

### Desafío 1: Reporte de Cliente
Crea un reporte de clientes que muestre:
- ID del cliente
- Nombre completo (en una columna)
- Email
- Ubicación completa (ciudad, país) en formato "Ciudad - País"
- Un campo que diga "Cliente Internacional" si no es de España, o "Cliente Nacional" si es de España

```sql
-- Tu solución aquí:




```

### Desafío 2: Análisis de Productos
Genera un análisis de productos que incluya:
- Código del producto
- Nombre del producto
- Categoría y marca juntas en formato "Categoría | Marca"
- Precio con IVA redondeado a 2 decimales
- Estado del stock ("Disponible" si stock > 0 y is_active = true, "No Disponible" en otro caso)
- Valor total del inventario (precio * stock)

```sql
-- Tu solución aquí:




```

### Desafío 3: Estadísticas Únicas
Crea una consulta que muestre en una sola fila:
- Total de clientes
- Número de países únicos de clientes
- Número de categorías únicas de productos
- Número de marcas únicas de productos

```sql
-- Tu solución aquí:




```

## 📚 Ejercicios de Investigación

### Investigación 1: Funciones de Fecha
Investiga cómo extraer el año y mes de la fecha de registro de los clientes. Muestra:
- Nombre del cliente
- Año de registro
- Mes de registro

```sql
-- Tu solución aquí:




```

### Investigación 2: Formateo de Números
Investiga cómo formatear números como moneda. Muestra los precios de productos en formato "€1,234.56".

```sql
-- Tu solución aquí:




```

## 💡 Tips

1. Recuerda que DISTINCT aplica a todas las columnas seleccionadas
2. Los alias con espacios necesitan comillas dobles
3. Para concatenar strings, usa `||` en PostgreSQL o `CONCAT()` en MySQL
4. Las expresiones CASE son muy útiles para categorizar datos
5. Siempre prueba tus consultas con un LIMIT al principio

## ✅ Checklist de Autoevaluación

Antes de ver las soluciones, verifica que:

- [ ] Tus consultas devuelven los datos esperados
- [ ] Has usado alias descriptivos
- [ ] El código está bien formateado y es legible
- [ ] Has probado con diferentes datos
- [ ] Entiendes cada parte de tu consulta

¡Buena suerte! 🍀

---

[Ver soluciones](./soluciones.sql)