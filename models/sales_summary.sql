{{ config(materialized='table') }}

SELECT 
    employee_id,
    COUNT(*) AS total_sales,
    SUM(total_amount) AS total_revenue
FROM sales
GROUP BY employee_id
