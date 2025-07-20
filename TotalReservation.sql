SELECT MCDP_CD as "진료과코드", count(*) as "5월예약건수"
from APPOINTMENT 
where MONTH(APNT_YMD) = 5 AND YEAR(APNT_YMD) = 2022
group by MCDP_CD
order by count(*) ASC , MCDP_CD ASC
