  set sql_safe_updates = 0;
#exercicio 1
Update produtos set quantidade_estoque = 25 where sku = 'HW005';
select nome_Produto, quantidade_estoque from produtos where sku = 'HW005';

#EXERCICIO 2
Update produtos set quantidade_estoque = 10 where sku = 'HW010';
select nome_Produto, quantidade_estoque from produtos where sku = 'HW010';

#EXERCICIO 3
Update produtos set preco = 4999.00 where sku = 'HW012';
select nome_Produto, quantidade_estoque from produtos where sku = 'HW012';

#Exercicio 4
Update produtos set nome_produto = 'Fonte 80 Plus Gold' where sku = 'HW017';
select nome_produto from produtos where sku = 'HW017';  

#Exercicio 5
Update produtos set preco = 329.00 where sku= 'PER002';
select nome_produto, preco from produtos where sku = 'PER002';

#EXERCICIO 6
Update produtos set quantidade_estoque = 25 where sku= 'PER009';
select nome_Produto, quantidade_estoque from produtos where sku = 'PER009';

#Exercicio 7
UPDATE produtos set preco = 2699.00 where sku= 'PER011';
select nome_produto, preco from produtos where sku = 'PER011';

#EXERCICIO 8
 UPDATE produtos set quantidade_estoque = 8 where sku= 'PER016';
 select nome_produto, quantidade_estoque from produtos where sku = 'PER016';
 
 #Exercicio 9
 UPDATE produtos set nome_produto = 'Microsoft 365 Assinatura Anual' where sku= 'SW012';
 select nome_produto  from produtos where sku = 'SW012';
 
 #Exercicio Exclusão 

 #Exercicio 1
 delete from produtos where sku = 'HW005';
 select * from produtos  where sku= 'HW005';
 
 #EXERCICIO 2
 delete from produtos where sku = 'SW008';
 select * from produtos  where sku= 'SW008';
 
 #Exercicio 3
 delete from produtos where sku = 'ACC011';
 select * from produtos  where sku= 'ACC011';
 
 #EXERCICIO 4

 delete from produtos where sku ='HW010';
 select * from produtos where sku = 'HW010';
 
 #Execicio 5
 delete from produtos where sku ='SW007';
select * from produtos where sku ='SW007';

select * from produtos;
