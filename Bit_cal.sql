SELECT count(ID) as COUNT from ECOLI_DATA 
where (GENOTYPE & 7) = 5 OR (GENOTYPE & 7) = 4 OR (GENOTYPE & 7) = 1;