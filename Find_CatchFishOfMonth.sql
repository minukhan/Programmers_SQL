# 잡은 물고기의 정보. 
# 잡은 물고기의 길이가 10cm
# 월을 기준으로 오름차순 정렬.
# 월로 그룹화.

select count(*) as FISH_COUNT , MONTH(TIME) as MONTH
from FISH_INFO
group by MONTH
order by MONTH