# 업글이 가능. 
# 업글을 했을때 A 를 B의 PARENT 아이템
# 낮은게 ROOT
# 관계가 나타나있는 테이블
# 아이템의 정보. 가장 낮은건 NULL 로 되어있다. 
# ROOT 아이템을 찾아서 출력해라. 
# 이떄 아이템 ID를 기준으로 오름차순 정렬을 해라. 

select A.ITEM_ID, A.ITEM_NAME
from ITEM_INFO A
join ITEM_TREE B
on A.ITEM_ID = B.ITEM_ID
where PARENT_ITEM_ID is NULL;