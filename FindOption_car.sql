# 대여중인 자동차들의 정보.
# 자동차 종류는 ~이렇게 있고 콤마로 구분되어있다.

#통풍, 열선, 가죽, 중 하나 이상의 옵션이 포함된 자동차가 몇대인지.
# % 기호를 사용하면 쉽게 해결.
SELECT CAR_TYPE, count(*) as CARS
from CAR_RENTAL_COMPANY_CAR 
Where OPTIONS like '%통풍시트%' OR
      OPTIONS like '%열선시트%'OR
      OPTIONS like '%가죽시트%'
Group by CAR_TYPE
Order by CAR_TYPE ASC;
