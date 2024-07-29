SELECT HISTORY_ID, CAR_ID, 
    DATE_FORMAT(START_DATE,"%Y-%m-%d") AS START_DATE ,
    DATE_FORMAT(END_DATE,"%Y-%m-%d") AS END_DATE,
    CASE
        when DATEDIFF(END_DATE,START_DATE)>=29 then "장기 대여"
        else "단기 대여"  
    END AS RENT_TYPE
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where MONTH(START_DATE) = '9'
order by HISTORY_ID DESC;