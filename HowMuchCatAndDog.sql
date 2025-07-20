# 동물의 정보를 담은 테이블
# 들어온 동물중 고양이와 개가 각각 몇마리인지 조회하는 SQL문
# 고양이를 먼저 조회.


SELECT ANIMAL_TYPE, count(*)
from ANIMAL_INS 
group by ANIMAL_TYPE
order by ANIMAL_TYPE ASC
