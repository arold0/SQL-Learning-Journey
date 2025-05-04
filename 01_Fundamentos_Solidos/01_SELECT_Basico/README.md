# 01 - SELECT Básico

## 📚 Descripción

Esta sección cubre los fundamentos de la instrucción SELECT en SQL, la operación más básica y utilizada para recuperar datos de una base de datos.

## 🎯 Objetivos de Aprendizaje

Al completar esta sección, serás capaz de:

- ✅ Escribir consultas SELECT básicas
- ✅ Seleccionar columnas específicas o todas las columnas
- ✅ Usar alias para columnas y tablas
- ✅ Utilizar DISTINCT para eliminar duplicados
- ✅ Realizar cálculos y expresiones en SELECT

## 📋 Contenido

### Archivos de Aprendizaje

1. **`01_sintaxis_basica.sql`**
   - Estructura fundamental de SELECT
   - Selección de todas las columnas (*)
   - Selección de columnas específicas
   - Uso de expresiones y cálculos

2. **`02_alias_columnas_tablas.sql`**
   - Alias para columnas (AS)
   - Alias para tablas
   - Cuándo y por qué usar alias
   - Mejores prácticas

3. **`03_distinct.sql`**
   - Eliminar duplicados con DISTINCT
   - DISTINCT con múltiples columnas
   - COUNT con DISTINCT
   - Casos de uso comunes

### Ejercicios

- **`ejercicios/ejercicios_propuestos.md`** - Conjunto de ejercicios prácticos
- **`ejercicios/soluciones.sql`** - Soluciones detalladas con explicaciones

## 🗄️ Dataset Utilizado

Trabajamos con una base de datos de una tienda online que incluye:
- `customers` - Información de clientes
- `products` - Catálogo de productos
- `orders` - Pedidos realizados
- `order_items` - Detalles de pedidos

Para más información sobre el dataset, consulta [datasets/]([../datasets/README.md](https://github.com/arold0/SQL-Learning-Journey/tree/develop/01_Fundamentos_Solidos/datasets))

## 🚀 Guía de Inicio Rápido

### 1. Configura tu entorno

```sql
-- Primero, asegúrate de tener las tablas creadas
-- Ejecuta los scripts en la carpeta datasets/
```

### 2. Ejemplo básico

```sql
-- Tu primera consulta SELECT
SELECT first_name, last_name, email
FROM customers;
```

### 3. Progresión recomendada

1. Lee y ejecuta `01_sintaxis_basica.sql`
2. Practica con `02_alias_columnas_tablas.sql`
3. Explora `03_distinct.sql`
4. Completa los ejercicios propuestos
5. Revisa las soluciones

## 💡 Tips y Mejores Prácticas

### ✨ Buenas Prácticas

1. **Especifica las columnas**: Evita usar `SELECT *` en producción
   ```sql
   -- ❌ Evitar
   SELECT * FROM customers;
   
   -- ✅ Mejor
   SELECT customer_id, first_name, last_name FROM customers;
   ```

2. **Usa alias descriptivos**
   ```sql
   -- ❌ Evitar
   SELECT p.unit_price * 1.16 AS x FROM products p;
   
   -- ✅ Mejor
   SELECT p.unit_price * 1.16 AS price_with_tax FROM products p;
   ```

3. **Formatea tu código para legibilidad**
   ```sql
   -- ✅ Código bien formateado
   SELECT 
       c.customer_id,
       c.first_name,
       c.last_name,
       c.email
   FROM customers c
   WHERE c.country = 'España';
   ```

### ⚠️ Errores Comunes

1. **Olvidar las comillas en strings**
   ```sql
   -- ❌ Incorrecto
   SELECT * FROM customers WHERE country = España;
   
   -- ✅ Correcto
   SELECT * FROM customers WHERE country = 'España';
   ```

2. **Confundir alias de columna y tabla**
   ```sql
   -- ❌ Incorrecto
   SELECT customers.c.first_name FROM customers c;
   
   -- ✅ Correcto
   SELECT c.first_name FROM customers c;
   ```

## 📈 Progreso y Autoevaluación

### Checklist de Aprendizaje

- [ ] Puedo escribir una consulta SELECT básica
- [ ] Entiendo la diferencia entre `SELECT *` y especificar columnas
- [ ] Sé usar alias para columnas y tablas
- [ ] Puedo usar DISTINCT correctamente
- [ ] Entiendo cuándo usar expresiones en SELECT

### Mini Proyecto

Crea una consulta que:
1. Seleccione nombre, apellido y email de clientes
2. Cree una columna calculada que combine nombre y apellido
3. Use alias apropiados
4. Elimine duplicados si los hay

## 🔗 Recursos Adicionales

- [Documentación oficial de PostgreSQL - SELECT](https://www.postgresql.org/docs/current/sql-select.html)
- [SQL Tutorial - W3Schools](https://www.w3schools.com/sql/sql_select.asp)
- [Práctica interactiva - SQLZoo](https://sqlzoo.net/wiki/SELECT_basics)

## ➡️ Siguiente Tema

Una vez que domines SELECT básico, continúa con [02_WHERE_Filtrado](../02_WHERE_Filtrado/README.md) para aprender a filtrar resultados.
