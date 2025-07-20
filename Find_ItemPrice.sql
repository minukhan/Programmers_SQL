# 아이템의 정보
# 희귀도가 레전드인 아이템의 가격의 총합. 
# 이게 총 합이니까, where 만해도 되고 group 을 이용해서 해도 됨.

select sum(PRICE) as TOTAL_PRICE
from ITEM_INFO
where RARITY = "LEGEND"

