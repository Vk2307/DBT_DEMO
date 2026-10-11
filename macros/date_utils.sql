{% macro function1(X) %}

CASE WHEN TO_TIMESTAMP({{X}}) < CURRENT_DATE THEN 'PAST'
ELSE 'FUTURE' END

{% endmacro %}



{% macro get_session(X) %}

CASE
    WHEN MONTH(TO_TIMESTAMP({{X}})) IN (10,11,12,1)
    THEN 'WINTER'
    WHEN MONTH(TO_TIMESTAMP({{X}})) IN (2,3,4,5)
    THEN 'SUMMER'
    ELSE 'RAINY'
    END 

 {% endmacro %}


{% macro day_type(X)%}

 CASE
    WHEN DAYNAME(TO_TIMESTAMP({{X}})) IN ('Sat','Sun')
    THEN 'WEEKEND'
    ELSE'BUSINESSDAY'
    END

{%endmacro%}


