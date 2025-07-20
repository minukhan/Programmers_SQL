# 동물의 정보
# 중성화 되어있는지 아닌지 파악
# 2가지 단어면 된다.
# 아이디 순으로 조회해라.
# 중성화가 되어있다면 O, 아니면 X 라고 표시해라. 

SELECT ANIMAL_ID, NAME, 
CASE 
    when SEX_UPON_INTAKE like '%Neutered%' or SEX_UPON_INTAKE like '%Spayed%' then 'O'
    else 'X'
END as "중성화"
from ANIMAL_INS 
