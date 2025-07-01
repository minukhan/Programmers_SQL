# PRODUCT : 판매중인 상품의 정보들이 담겨져있음.
# 중복되지 않는 8자리 상품코드 값을 가진다. 
# 앞 2자리는 카테고리 코드를 의미한다. 
# 그룹핑 해라. 카테고리 별 상품의 갯수를 출력해라.
# 결과는 상품카테고리 코드를 기준으로 오름차순 정렬 해라. 

SELECT 
    Left(PRODUCT_CODE, 2) as CATEGORY,
    count(*) as PRODUCTS 
from PRODUCT
Group by Left(PRODUCT_CODE, 2)
order by PRODUCT_CODE ASC