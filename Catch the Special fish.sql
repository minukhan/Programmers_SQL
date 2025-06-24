select count(*) as FISH_COUNT
from  FISH_INFO A
join FISH_NAME_INFO B
on A.FISH_TYPE = B.FISH_TYPE
where B.FISH_NAME in ('BASS', 'SNAPPER')


select count(*) as FISH_COUNT
from FISH_INFO
where FISH_TYPE in 
(
    select FISH_TYPE
    from FISH_NAME_INFO 
    where FISH_NAME = "BASS" OR FISH_NAME = "SNAPPER"
)