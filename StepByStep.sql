# 업그레이드가 가능하다. 
# 희귀도가 RARE인 아이템의 다음 업그레이드 아이템의 정보들을 출력해라?
# join 을 하고 조건문을 걸면 먼저 거르고 그런게 안되네. 무조껀 and 연산을 하게 된다.
# 그래서 서브쿼리로 미리 걸러낸 뒤에 또 where 문을 사용해서 문제를 해결해야하는듯. 

select ITEM_ID, ITEM_NAME, RARITY
from ITEM_INFO
where ITEM_ID in (
    select ITEM_ID 
    from ITEM_TREE
    where PARENT_ITEM_ID in(
        select ITEM_ID 
        from ITEM_INFO 
        where RARITY='RARE'
    )
)
order by ITEM_ID DESC