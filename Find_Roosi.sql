# 동물의 정보를 담은 테이블
# 동물의 이름이 저거인 동물의 정보

SELECT  ANIMAL_ID, NAME, SEX_UPON_INTAKE
from ANIMAL_INS 
where NAME in ('Lucy', 'Ella' , 'Pickle', 'Rogan', 'Sabrina', 'Mitty');