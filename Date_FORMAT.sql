# ANIMAL_INS : 동물의 정보를 담은 테이블

SELECT ANIMAL_ID, NAME, DATE_FORMAT(DATETIME ,"%Y-%m-%d") as "날짜"

from ANIMAL_INS

order by ANIMAL_ID ASC
