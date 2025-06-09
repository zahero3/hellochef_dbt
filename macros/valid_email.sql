{% test valid_email(model,column_name) %}

Select * from {{ model }}
Where {{column_name}} NOT LIKE '%@%.com'

{% endtest %}