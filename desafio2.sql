/*
2 - Exiba os cargos com seu nível de renumeração associado, com base no salário máximo do cargo

Seu relatório deve possuir as seguintes colunas:

  - A primeira deve possuir o alias "Cargo" e exibir o nome do cargo.
  - A segunda deve possuir o alias "Nível" e exibir o nível de remuneração do cargo com base no seu salário máximo, categorizando os níveis de remuneração da seguinte forma:
    - Salário máximo entre 5000 e 10000 :arrow_right: Baixo
    - Salário máximo entre 10001 e 20000 :arrow_right: Médio
    - Salário máximo entre 20001 e 30000 :arrow_right: Alto
    - Salário máximo acima de 30000 :arrow_right: Altíssimo
    - Os resultados devem estar ordenados pelo nome do cargo em ordem alfabética.
*/
SELECT j.JOB_TITLE 'Cargo', CASE WHEN j.MAX_SALARY > 30000 THEN 'Altíssimo' WHEN j.MAX_SALARY > 20000 THEN 'Alto' WHEN j.MAX_SALARY > 10000 THEN 'Médio' ELSE 'Baixo' END AS 'Nível' FROM hr.jobs j ORDER BY `Cargo`;
