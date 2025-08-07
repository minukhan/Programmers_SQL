# 동물보호소 동물의 정보 
# 입양보낸 동물의 정보
# 입양일이 잘못 입력됨. 
# 보호 시작일보다 입양일이 더 빠른 동물의 아이디와 이름을 조회
# 결과는 보호 시작일이 빠른 순으로 

SELECT A.ANIMAL_ID, A.NAME
from ANIMAL_INS as A
join ANIMAL_OUTS as B
on A.ANIMAL_ID = B.ANIMAL_ID
where B.DATETIME < A.DATETIME
order by A.DATETIME ASC
