SELECT 
round(
    AVG(
        CASE
            when LENGTH is NULL then 10
            else LENGTH
        end
    )
,2) AS AVERAGE_LENGTH
From FISH_INFO ;