# 아이스크림 가게의 상반기 주문 정보.
# 아이스크림 성분에 대한 테이블 

# 아이스크림 성분 타입과 성분 타입에 대한 아이스크림이 총 주문량을 조회
# 총주문량이 작은 순서대로 조회 
# 컬럼명 변경.

SELECT INGREDIENT_TYPE , sum(TOTAL_ORDER) as TOTAL_ORDER
from FIRST_HALF as A
join ICECREAM_INFO as B
on A.FLAVOR = B.FLAVOR
Group by INGREDIENT_TYPE
Order by TOTAL_ORDER ASC