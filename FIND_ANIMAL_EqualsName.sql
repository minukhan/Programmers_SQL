# ANIMAL_INS  : 동물들의 정보를 담은 테이블
# 동물 이름중 두 번 이상 쓰인 이름과 해당 이름이 쓰인 횟수를 조회.
# 이름이 없는 동물들은 제외. 결과는 이름순으로 오름차순 조회
# 두번이상 쓰인 이름? 중복되어서 써져있으면 출력해라? 
SELECT NAME, count(ANIMAL_ID) as "COUNT"
from ANIMAL_INS
where NAME is not null
group by NAME
Having count(NAME) > 1 
order by NAME ASC