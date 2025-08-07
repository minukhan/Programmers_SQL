## 식품공장의 주문정보
# 2022 5 1 일을 기준으로  조회?
# 출고 여부를 출고완료, 출고미정을 ㅗ출력
# 결과는 주문 ID를 기준으로 오름차순 정렬 


SELECT ORDER_ID, PRODUCT_ID, DATE_FORMAT(OUT_DATE, "%Y-%m-%d") as OUT_DATE  ,  
    case
        when OUT_DATE is Null then "출고미정"
        WHEN OUT_DATE <= DATE('2022-05-01') THEN '출고완료'
        else "출고대기"
    end as 출고여부
from FOOD_ORDER 
order by ORDER_ID