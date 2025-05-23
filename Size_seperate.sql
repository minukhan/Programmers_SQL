with ranked as (
    select 
        Id, 
        PERCENT_RANK() over (order by SIZE_OF_COLONY DESC) as per
    from ECOLI_DATA
)
select 
    ID,
    CASE
        WHEN per <= 0.25 then 'CRITICAL'
        WHEN per <= 0.5 then 'HIGH'
        WHEN per <= 0.75 then 'MEDIUM'
        else 'LOW'
    end as COLONY_NAME
from ranked
order by ID ASC