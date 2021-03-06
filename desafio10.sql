/*10 - Exibe todos os produtos que já foram pedidos, que possuem uma média de quantidade nos pedidos registrados acima de 20.00

Monte uma query que exiba 04 colunas:
  - A primeira deve possuir o alias "Produto" e exibir o nome do produto.
  - A segunda deve possuir o alias "Mínima" e exibir a quantidade mínima que já foi pedida desse produto.
  - A terceira deve possuir o alias "Máxima" e exibir a quantidade máxima que já foi pedida desse produto.
  - A quarta deve deve possuir o alias "Média" e exibir a média de quantidade nos pedidos deste produto, arredondada para duas casas decimais.

Os resultados devem estar ordenados pela média de quantidade nos pedidos em ordem crescente.
Em caso de empate na média, os resultados devem ser ordenados pelo nome do produto em ordem alfabética.*/
-- Créditos ao colega Raphael Gumieri
SELECT p.ProductName 'Produto', MIN(od.Quantity) 'Mínima', MAX(od.Quantity) 'Máxima', ROUND(AVG(od.Quantity), 2) 'Média' FROM w3schools.products p INNER JOIN w3schools.order_details od ON p.ProductID = od.ProductID GROUP BY `Produto` HAVING `Média` > 20 ORDER BY `Média`, `Produto`;
