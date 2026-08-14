#Exercicio 2
Update clientes set cidade = 'Contagem' where id_cliente = 3;
select nome, cidade from clientes where id_cliente = 3;

#Exercicio 3
Update clientes set idade = 41 where id_cliente = 6;
select nome, idade from clientes where id_cliente = 6;

#Exercicio 4
Update clientes set cidade = 'São Paulo - SP' where id_cliente = 2;
select nome, cidade from clientes where id_cliente = 2;

#Exercicio 5
Update clientes set email = '@empresa.com' where id_cliente = 11;
select nome, cidade from clientes where id_cliente = 11;

#Exercicio 6
Update clientes set cidade = 'Cariacica'  where id_cliente = 10;
select nome, cidade from clientes where id_cliente = 10;

#Exercicio 7
Update clientes set idade = 36 where id_cliente = 16;
select nome, idade from clientes where id_cliente = 16;

#Exercicio 8
Update clientes set cidade = 'Caxias do Sul' where id_cliente = 9;
select nome, cidade from clientes where id_cliente = 9;

#Exercicio 9
Update clientes set email = 'Vinicius@empresa@gmail.com' where id_cliente = 20;
select nome, email from clientes where id_cliente = 20;

#Exerciocio 10
Update clientes set idade = idade + 1 where cidade = 'Rio de Janeiro'; 
select nome, idade from clientes where cidade = 'Rio de Janeiro';
