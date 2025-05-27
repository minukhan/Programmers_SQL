# 테이블 : ONLINE_SALE 
# 동일한 회원이 동일한 상품을 재구매한 데이터를 구해라
# 재구매한 회원 ID와 재구매한 상품 ID를 출력
# 회원 ID를 기준으로 오름차순 정렬
# 같아면 상품 ID를 기준으로 내림차순 정렬


SELECT USER_ID, PRODUCT_ID
from ONLINE_SALE
Group by USER_ID, PRODUCT_ID
Having count(*) > 1
order by USER_ID ASC, PRODUCT_ID DESC