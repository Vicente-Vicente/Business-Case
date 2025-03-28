{{ config(materialized='table') }}

SELECT salary
from(select salary, dense_rank() over (order by salary desc) as rank from employees) as new
where rank = 2

