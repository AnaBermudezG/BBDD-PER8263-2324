-- 1. Obtener el número de hombres y mujeres de la base de datos. Ordenar de forma descendente. --
SELECT gender as Genero, count(*) as Total
From employees
GROUP BY gender
ORDER BY Total desc -- Orden descendente --

-- 2. Mostrar el nombre, apellido y salario de la persona mejor pagada de un departamento concreto (parámetro variable). --
SELECT e.first_name, e.last_name, s.salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no
WHERE e.emp_no IN (
    SELECT de.emp_no
    FROM dept_emp de
    WHERE de.dept_no = 'd005' -- Departamento de ventas --
)
ORDER BY s.salary DESC
LIMIT 1;

-- 3. Mostrar el nombre, apellido y salario de la segunda persona mejor pagada de un departamento concreto (parámetro variable). --
SELECT e.first_name, e.last_name, s.salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no
WHERE e.emp_no IN (
    SELECT de.emp_no
    FROM dept_emp de
    WHERE de.dept_no = 'd005' -- Departamento de ventas --
)
ORDER BY s.salary DESC
LIMIT 1 OFFSET 1;

-- 4. Mostrar el número de empleados contratados en un mes concreto (parámetro variable). --
SELECT COUNT(*) AS total_empleados
FROM employees
WHERE MONTH(hire_date) = 5; -- Mayo --


--  Tema_2/AnaBermudezGonzalez/ConsultasSQLServer.sql --


