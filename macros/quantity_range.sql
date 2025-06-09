{% test quantity_range(model,column_name) %}

Select * from {{ model }}
Where {{column_name}} < 1 or {{column_name}} > 100

{% endtest %}