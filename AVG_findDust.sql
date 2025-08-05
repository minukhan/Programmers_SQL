# 전국의 월별 미세먼지 정보를 담은 테이블
# 수원 지역의 연도별 평균 미세먼지 오염도. 평균 초미세먼지 오염도를 조회
# 값은 소수 셋째자리에서 반올림해라.
# 연도를 기준으로 오름차순 정렬.

SELECT YEAR(YM) as YEAR, ROUND(AVG(PM_VAL1),2) as "PM10", ROUND(AVG(PM_VAL2),2) as "PM2.5"
from AIR_POLLUTION
where LOCATION2 = '수원'
Group by YEAR(YM)
order by YEAR(YM) ASC;