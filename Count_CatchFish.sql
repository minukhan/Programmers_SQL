
# 잡은 물고기의 정보
# 10cm 이하일 경우 NUll 
# 물고가의 종류, 이름
# 물고기의 종류별 물고기의 이름과 잡은 수.
# 잡은수 기준으로 내림차순 정렬

select count(*) as FISH_COUNT, B.FISH_NAME
from FISH_INFO A
join FISH_NAME_INFO B 
on A.FISH_TYPE = B.FISH_TYPE
Group by B.FISH_NAME
order by FISH_COUNT DESC
