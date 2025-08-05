# 판매중인 도서정보, 판매정보 테이블
# 2022 1월 의 카테고리별 도서 판매량을 합산. -> 카테고리로 Groupby
# 카테고리 명으로 오름차순. 

SELECT A.CATEGORY as CATEGORY, sum(B.SALES) as TOTAL_SALES
from BOOK as A
join BOOK_SALES as B
on A.BOOK_ID = B.BOOK_ID
where B.SALES_DATE like "2022-01-%"
group by CATEGORY
order by CATEGORY ASC