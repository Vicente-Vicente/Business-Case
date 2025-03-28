{{ config(materialized='table') }}

select * 
from dbt.sales_summary
where employee_id between 1 and 3