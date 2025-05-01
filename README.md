# Mi Viaje de Aprendizaje y Portfolio de Proyectos SQL 🚀

¡Hola! Soy Aroldo López y este repositorio documenta mi proceso de aprendizaje y profundización en SQL. Tengo varios años trabajando como analista de datos y recientemente me he dado cuenta que tengo muchas notas privadas con información útil sobre SQL y las herramientas que uso a diario en mi rol pero que no estan organizadas.

Este espacio me sirve como:

* **Organización:** Para estructurar mis notas, ejercicios y recursos de aprendizaje.
* **Portfolio:** Para demostrar mis habilidades prácticas a través de proyectos concretos.
* **Motivación:** Para visualizar mi progreso y mantenerme constante.

---

## 📂 Estructura del Repositorio

Este repositorio está organizado en las siguientes secciones principales, reflejando mi hoja de ruta de aprendizaje:

* **[`/01_Fundamentos_Solidos`](./01_Fundamentos_Solidos/)**: Notas, ejemplos y ejercicios sobre las consultas básicas, ordenamiento, limitación y combinación de tablas (JOINs).
* **[`/02_Agregacion_y_Agrupacion`](./02_Agregacion_y_Agrupacion/)**: Material sobre funciones de agregado y la cláusula GROUP BY, incluyendo el filtrado con HAVING.
* **[`/03_Subconsultas`](./03_Subconsultas/)**: Ejemplos y explicaciones del uso de subconsultas en las cláusulas WHERE, SELECT y FROM (tablas derivadas).
* **[`/04_Funciones_de_Ventana`](./04_Funciones_de_Ventana/)**: Material detallado sobre las funciones de ranking, valor y agregado como ventana, así como el uso de PARTITION BY y ORDER BY.
* **[`/05_CTEs`](./05_CTEs/)**: Notas y ejemplos prácticos sobre la creación y el uso de Common Table Expressions, incluyendo casos de uso con múltiples CTEs y CTEs recursivas (si aplica).
* **[`/06_Manipulacion_de_Datos`](./06_Manipulacion_de_Datos/)**: Recursos sobre la manipulación de cadenas, fechas y horas, funciones de conversión de tipos y funciones condicionales.
* **[`/07_Diseno_y_Optimizacion`](./07_Diseno_y_Optimizacion/)**: Material sobre los fundamentos del diseño relacional, normalización, indexación y estrategias de optimización de consultas.
* **[`/08_Objetos_de_Base_de_Datos`](./08_Objetos_de_Base_de_Datos/)**: Información y ejemplos sobre vistas, stored procedures, funciones definidas por el usuario, triggers y transacciones.
* **[`/09_Practica_Plataformas`](./09_Practica_Plataformas/)**: Mis soluciones a problemas de SQL de plataformas como LeetCode, HackerRank, StrataScratch, etc. (Esta sección se mantiene, pero renumerada).
* **[`/10_Proyectos`](./10_Proyectos/)**: ¡La sección principal! Aquí encontrarás proyectos completos donde aplico SQL para analizar datos y resolver problemas. (Esta sección se mantiene, pero renumerada).
* **[`/11_Recursos`](./11_Recursos/)**: Una colección de enlaces útiles, tutoriales, documentación y otros recursos que encuentro valiosos. (Esta sección se mantiene, pero renumerada).

---

## ✨ Proyectos Destacados

A medida que complete proyectos, los enlazaré aquí:

1.  **[Nombre del Proyecto 1]** - *(Próximamente / En Desarrollo)*
    * Breve descripción...
    * [Enlace a la carpeta del proyecto](./10_Proyectos/Proyecto_1_Nombre/)
2.  **[Nombre del Proyecto 2]** - *(Próximamente / En Desarrollo)*
    * Breve descripción...
    * [Enlace a la carpeta del proyecto](./10_Proyectos/Proyecto_2_Nombre/)

*(Esta sección se actualizará regularmente)*

---

## 🗺️ Hoja de Ruta de Aprendizaje Detallada

Esta es una visión más detallada de los temas clave que estoy explorando y planeo dominar en mi camino hacia un dominio avanzado de SQL:

**I. Fundamentos Sólidos:**

* [x] **Consultas Básicas (SELECT, FROM, WHERE):**
    * Selección de columnas específicas y todas las columnas.
    * Uso de alias para tablas y columnas.
    * Filtrado de filas utilizando operadores de comparación (=, >, <, >=, <=, !=, <>) y lógicos (AND, OR, NOT).
    * La cláusula `IN` y `NOT IN` para comparar con múltiples valores.
    * El operador `BETWEEN` para rangos de valores.
    * El uso de `LIKE` y `NOT LIKE` para coincidencias de patrones con comodines (`%`, `_`).
    * Manejo de valores nulos con `IS NULL` y `IS NOT NULL`.
* [x] **Ordenamiento y Limitación de Resultados (ORDER BY, LIMIT/TOP):**
    * Ordenar resultados por una o múltiples columnas (ASC y DESC).
    * Limitar el número de filas devueltas.
* [x] **Combinación de Tablas (JOINs):**
    * `INNER JOIN`: Recuperar filas coincidentes en ambas tablas.
    * `LEFT JOIN` (`LEFT OUTER JOIN`): Recuperar todas las filas de la tabla izquierda y las coincidentes de la derecha (NULL si no hay coincidencia).
    * `RIGHT JOIN` (`RIGHT OUTER JOIN`): Recuperar todas las filas de la tabla derecha y las coincidentes de la izquierda (NULL si no hay coincidencia).
    * `FULL JOIN` (`FULL OUTER JOIN`): Recuperar todas las filas de ambas tablas (NULL si no hay coincidencia en la otra tabla).
    * `CROSS JOIN`: Producto cartesiano de las filas de ambas tablas.
    * `SELF JOIN`: Unir una tabla consigo misma.
    * Cláusulas `ON` y `USING` para especificar las condiciones de unión.

**II. Agregación y Agrupación de Datos:**

* [x] **Funciones de Agregado:**
    * `COUNT()`: Contar el número de filas.
    * `SUM()`: Calcular la suma de valores.
    * `AVG()`: Calcular el promedio de valores.
    * `MIN()`: Encontrar el valor mínimo.
    * `MAX()`: Encontrar el valor máximo.
    * Distinguir entre `COUNT(*)`, `COUNT(columna)`, y `COUNT(DISTINCT columna)`.
* [x] **Agrupación de Filas (GROUP BY):**
    * Agrupar filas con valores coincidentes en una o más columnas.
    * Aplicar funciones de agregado a grupos.
* [x] **Filtrado de Grupos (HAVING):**
    * Filtrar los resultados de los grupos basados en condiciones (similar a `WHERE` pero para grupos).

**III. Subconsultas (Consultas Anidadas):**

* [x] **Subconsultas en la cláusula `WHERE`:**
    * Uso de subconsultas para comparar con un solo valor, múltiples valores (`IN`, `NOT IN`), o verificar existencia (`EXISTS`, `NOT EXISTS`).
    * Subconsultas correlacionadas vs. no correlacionadas.
* [x] **Subconsultas en la cláusula `SELECT`:**
    * Utilizar subconsultas para devolver un solo valor como una columna.
* [x] **Subconsultas en la cláusula `FROM` (Tablas Derivadas):**
    * Crear tablas temporales a partir de los resultados de una subconsulta.

**IV. Funciones de Ventana (Window Functions):**

* [x] **Funciones de Ranking:**
    * `ROW_NUMBER()`: Asignar un número secuencial a cada fila dentro de una partición.
    * `RANK()`: Asignar un rango basado en el orden, con posibles saltos.
    * `DENSE_RANK()`: Asignar un rango basado en el orden, sin saltos.
    * `NTILE()`: Dividir las filas en un número especificado de grupos.
* [x] **Funciones de Valor:**
    * `LAG()`: Acceder a una fila anterior en la partición.
    * `LEAD()`: Acceder a una fila siguiente en la partición.
    * `FIRST_VALUE()`: Obtener el primer valor en la partición.
    * `LAST_VALUE()`: Obtener el último valor en la partición.
* [x] **Funciones de Agregado como Ventana:**
    * Utilizar funciones de agregado (`SUM()`, `AVG()`, etc.) sobre una ventana de filas.
* [x] **Cláusulas `PARTITION BY` y `ORDER BY` dentro de las Funciones de Ventana:**
    * Definir la partición de los datos sobre la que opera la función.
    * Especificar el orden dentro de cada partición.

**V. Common Table Expressions (CTEs):**

* [x] **Creación y Uso de CTEs:**
    * Definir consultas temporales con nombre usando la cláusula `WITH`.
    * Mejorar la legibilidad y modularidad de consultas complejas.
    * Utilizar múltiples CTEs en una sola consulta.
    * CTEs recursivas para trabajar con datos jerárquicos (si aplica al SGBD).

**VI. Manipulación de Datos:**

* [x] **Manipulación de Cadenas:**
    * Funciones para concatenar, extraer subcadenas, reemplazar, convertir mayúsculas/minúsculas, etc. (específicas del SGBD).
    * Uso de expresiones regulares para patrones complejos (si el SGBD lo soporta).
* [x] **Manipulación de Fechas y Horas:**
    * Funciones para extraer partes de fechas (año, mes, día, hora, minuto, segundo).
    * Funciones para realizar cálculos con fechas (diferencia entre fechas, sumar/restar intervalos).
    * Formatos de fecha y hora y conversiones.
* [x] **Funciones de Conversión de Tipos de Datos (CAST, CONVERT).**
* [x] **Funciones Condicionales (CASE WHEN, COALESCE, NULLIF).**

**VII. Diseño y Optimización de Bases de Datos:**

* [ ] **Fundamentos del Diseño Relacional:**
    * Entidades, atributos y relaciones.
    * Claves primarias y foráneas.
* [ ] **Normalización de Bases de Datos (1NF, 2NF, 3NF):**
    * Reducir la redundancia y mejorar la integridad de los datos.
* [x] **Indexación:**
    * Tipos de índices (B-tree, Hash, etc.).
    * Creación y eliminación de índices.
    * Consideraciones para la creación de índices (columnas a indexar).
    * Impacto de los índices en el rendimiento de las consultas y las operaciones de escritura.
* [x] **Optimización de Consultas:**
    * Análisis de planes de ejecución de consultas.
    * Escritura de consultas eficientes (evitar `SELECT *`, usar `WHERE` apropiadamente, etc.).
    * Consideraciones sobre el uso de `JOIN`s y subconsultas en términos de rendimiento.

**VIII. Objetos de la Base de Datos:**

* [x] **Vistas (Views):**
    * Creación y uso de vistas para simplificar consultas complejas y proporcionar seguridad.
    * Vistas materializadas (si el SGBD lo soporta).
* [x] **Stored Procedures (Procedimientos Almacenados):**
    * Creación, modificación y ejecución de stored procedures.
    * Ventajas de usar stored procedures (reusabilidad, seguridad, rendimiento).
    * Uso de parámetros y lógica de control dentro de stored procedures.
* [ ] **Funciones Definidas por el Usuario (User-Defined Functions - UDFs):**
    * Creación y uso de funciones escalares y de tabla.
* [ ] **Triggers (Disparadores):**
    * Implementación de acciones automáticas en respuesta a eventos de la base de datos (INSERT, UPDATE, DELETE).
* [ ] **Transacciones:**
    * Conceptos de ACID (Atomicity, Consistency, Isolation, Durability).
    * Control de transacciones (`BEGIN TRANSACTION`, `COMMIT`, `ROLLBACK`).
    * Niveles de aislamiento de transacciones y sus implicaciones.

**IX. SQL Específico del Sistema de Gestión de Bases de Datos (SGBD):**

* [ ] **Características y Sintaxis Específicas de [Menciona el SGBD si te enfocas en uno, ej: PostgreSQL, MySQL]:**
    * Tipos de datos específicos.
    * Funciones y operadores particulares.
    * Extensiones y funcionalidades únicas.

---

## 🔗 Sobre Mí / Contacto

Si quieres saber más sobre mi perfil profesional o conectar:

* **LinkedIn:** [arold0](https://www.linkedin.com/in/arold0/)
* **GitHub:** [arold0](https://github.com/arold0)

¡Gracias por visitar mi repositorio! Cualquier feedback o sugerencia es bienvenido.