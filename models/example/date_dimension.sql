WITH CTE AS(
    select 

    TO_TIMESTAMP(STARTED_AT) AS STARTED_AT,
    DATE(TO_TIMESTAMP(STARTED_AT)) AS DATE_STARTED_AT,
    HOUR(TO_TIMESTAMP(STARTED_AT)) AS HOUR_STARTED_AT,
    DAYNAME(TO_TIMESTAMP(STARTED_AT)) AS DAY_OF_WEEK,
    
   

    {{day_type('STARTED_AT')}} as DAY_TYPE,

    {{get_session('STARTED_AT')}} AS SESSION_OF_YEAAR,

    {{function1('STARTED_AT')}}

   



    from 
    {{ source('demo', 'bike') }}
        where STARTED_AT !='started_at'

)

select * from CTE