# 테이블 : SKILLCODES 
# 스킬의 이름 : NAME
# 스킬의 범주 : CATEGORY
# 스킬의 코드 : CODE

# 테이블 : DEVELOPERS 
# 개발자의 ID : ID
# 개발자의 이름 : LAST_NAME
# 개발자의 이름 : FIRST_NAME
# 이메일 : EMAIL
# 스킬 코드 : SKILL_CODE 얘는 int 로 되어있다. 

# 일단 스킬코드의 code 값을 2진수로바꿔야하나?
# 만약 바꾼다면 그 알맞는 그 값을 어떻게? 비트 연산으로 해결.


select DisTinct B.ID, B.EMAIL, B.FIRST_NAME, B.LAST_NAME
from DEVELOPERS as B
join SKILLCODES as A
on ( B.SKILL_CODE & A.CODE) > 0
where A.NAME in ('Python', 'C#')
order by B.ID ASC

