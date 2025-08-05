
# 의류 쇼핑몰 상품들의 정보.
# 만원 단위의 가격대별로 상품 갯수를 출력하는 SQL문
# 컬럼명 바꿔주고 가격 정보는 10000~ 20000 미만이면 10000으로 표시. 
# 가격대를 기준으로 오름차순 정렬. 
# 어떻게 그룹화? 
# 
SELECT FLOOR(PRICE / 10000) * 10000 as PRICE_GROUP, count(*)
from PRODUCT
Group by PRICE_GROUP
order by PRICE_GROUP

