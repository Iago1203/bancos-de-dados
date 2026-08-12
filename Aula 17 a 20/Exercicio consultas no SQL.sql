	#Exercicio 1:
	select nome from clientes order by nome asc;

	#Exercicio 2: 
	select nome from clientes order by nome desc;

	#Exercicio 3
	select nome, idade from clientes order by idade asc;
	 
	 #exercicio 4 :
	 select nome, idade from clientes order by idade desc;

	#Exercicio 5 :
	 select nome from clientes limit 5;
	 
	 #Exercicio 6: 
	 select nome, idade  from clientes order by idade desc limit 3;
	 
	 #exercicio 7: 
	 select nome, idade from clientes order by idade asc limit 2;
	 
	 #Exercicio 8 : 
	 select nome, cidade from clientes order by cidade asc;
	 
	 #Exercicio 9:
	 select nome from clientes order by nome  asc limit 10;
	 
	 #Exercicio 10:
	 select  nome, cidade, idade from clientes where cidade = 'Rio de Janeiro' order by idade desc limit 5;
	 
 