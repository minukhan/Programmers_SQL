# ANIMAL_INS : 동물의 정보 테이블

# 입양 게시판에 동물 정보를 게시하려 한다. 
# NULL 이면 No name 으로 출력하고 
# 정렬 주어진대로 정렬해서 출력해라.

SELECT ANIMAL_TYPE, IFNULL(NAME, "No name"), SEX_UPON_INTAKE
from ANIMAL_INS
Order by ANIMAL_ID ASC;