# 동물의 정보
# 몇시에 입양이 가장 활발하게 일어나는지.
# 각 시간대별로 입양이 몇번 발생했는지. 
# 결과는 시간대 순으로 

SELECT HOUR(DATETIME) as HOUR, count(*) as COUNT
from ANIMAL_OUTS 
where HOUR(DATETIME) >= 9 AND HOUR(DATETIME) < 20
group by HOUR(DATETIME)
order by HOUR(DATETIME)