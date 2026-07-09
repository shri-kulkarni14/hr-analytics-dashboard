SELECT * FROM hr_analytics.employees;
SELECT * FROM employees LIMIT 10;

-- 1. Total headcount (active employees only)
SELECT COUNT(*) AS total_active_employees
FROM employees
WHERE employment_status = 'Active';

-- 2. Headcount by department
SELECT department, COUNT(*) AS headcount
FROM employees
WHERE employment_status = 'Active'
GROUP BY department
ORDER BY headcount DESC;

-- 3. Headcount by state
SELECT location_state, COUNT(*) AS headcount
FROM employees
WHERE employment_status = 'Active'
GROUP BY location_state
ORDER BY headcount DESC;

-- 4. Gender distribution
SELECT gender, COUNT(*) AS headcount,
ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM employees WHERE
employment_status='Active'), 1) AS pct
FROM employees
WHERE employment_status = 'Active'
GROUP BY gender;

-- 5. Race / ethnicity distribution
SELECT race, COUNT(*) AS headcount
FROM employees
WHERE employment_status = 'Active'
GROUP BY race
ORDER BY headcount DESC;

-- 6. Remote vs Headquarters split
SELECT location, COUNT(*) AS headcount,
ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM employees WHERE
employment_status='Active'), 1) AS pct
FROM employees
WHERE employment_status = 'Active'
GROUP BY location;

-- 7. Average age and average tenure overall
SELECT ROUND(AVG(Age),1) AS avg_age, ROUND(AVG(tenure_years),1) AS avg_tenure
FROM employees
WHERE employment_status = 'Active';

-- 8. Hiring trend by year 
SELECT 
    YEAR(STR_TO_DATE(hire_date, '%d-%m-%Y')) AS hire_year, 
    COUNT(*) AS hires
FROM employees
WHERE hire_date IS NOT NULL 
GROUP BY hire_year
ORDER BY hire_year;

-- 9. Attrition (terminated) count by department — who's losing the most people
SELECT department, COUNT(*) AS terminated_count
FROM employees
WHERE employment_status = 'Terminated'
GROUP BY department
ORDER BY terminated_count DESC;

-- 10. Overall attrition rate
SELECT
(SELECT COUNT(*) FROM employees WHERE employment_status='Terminated') * 100.0 /
(SELECT COUNT(*) FROM employees) AS attrition_rate_pct;