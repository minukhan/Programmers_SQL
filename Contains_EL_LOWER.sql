# ANIMAL_INS  : 동물의 정보를 담은 테이블
# 할머니가 기드런 개는 이름에 el이 들어간다한다. 
# 이름순으로 오름차순 조회.
# 대소문자는 구분하지 않는다. 
# 그리고 개여야함.

SELECT ANIMAL_ID, NAME
from ANIMAL_INS
where ANIMAL_TYPE = "Dog" and (NAME like "%EL%" OR NAME like "%el%" or NAME like "%eL%" or NAME like "%El%")
order by NAME asc

SELECT ANIMAL_ID, NAME
from ANIMAL_INS
where ANIMAL_TYPE = "Dog"
    and LOWER(NAME) like "%el%"
order by NAME asc