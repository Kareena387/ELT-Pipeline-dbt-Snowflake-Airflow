//## Build Singular Tests tests/fct_orders_discount.sql

select
    *
from
    {{ref('fact_orders')}}
where
    item_discount_amount > 0