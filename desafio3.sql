/* 3 - Exiba os cargos com a diferença entre seus salários máximo e mínimo
Crie uma query que exiba 02 colunas:

  - A primeira deve possuir o alias "Cargo" e exibir o nome do cargo.

  - A segunda deve possuir o alias "Diferença entre salários máximo e mínimo" e exibir a diferença entre os salários máximo e mínimo para o cargo em questão.

Os resultados devem estar ordenados pela diferença entre salários máximo e mínimo em ordem crescente.

Em caso de empate nessa diferença os resultados devem ser ordenados pelo nome do cargo em ordem alfabética. */
SELECT j.JOB_TITLE 'Cargo', (j.MAX_SALARY - j.MIN_SALARY) 'Diferença entre salários máximo e mínimo' FROM hr.jobs j ORDER BY `Diferença entre salários máximo e mínimo`, `Cargo`;
