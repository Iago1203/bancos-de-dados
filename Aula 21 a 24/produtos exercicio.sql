#Relatorio 1 
select * from produtos order by  categoria like 'Hardware'and  quantidade_estoque > 0 limit 3;

#Relatorio 2
select nome_produto, sku from produtos where quantidade_estoque = 0;  

#relatorio 3
select * from produtos order by preco desc limit 2; 

#Relatorio 4
select * from produtos where nome_produto like 	'Placa%';

#Relatorio 5 
select * from produtos where categoria like 'Perífericos' order by preco desc limit 3; 