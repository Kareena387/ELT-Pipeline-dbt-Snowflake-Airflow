-- ## Create tests/fct_orders_date_valid.sql

select
    *
from
    {{ref('fact_orders')}}
where
    date(order_date) > CURRENT_DATE()
    or date(order_date) < date('1990-01-01')
