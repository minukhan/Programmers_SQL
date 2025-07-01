# ANIMAL_INS  : 동물의 정보를 담은 테이블
# 가장 먼저 들어온 동물은 언제 들어왔는지 조회.

SELECT DATETIME as "시간" 
from ANIMAL_INS
order by DATETIME ASC
Limit 1



SELECT MIN(DATETIME) as "시간" 
from ANIMAL_INS
order by DATETIME ASC
