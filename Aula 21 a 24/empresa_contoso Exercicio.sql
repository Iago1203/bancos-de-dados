#Nivel 1
select * from funcionarios order by nome asc;
select * from funcionarios order by salario desc;
select * from funcionarios order by nascimento asc; 

#Nivel 2
select * from funcionarios order by salario desc limit 5;
select * from funcionarios order by nascimento desc limit 3;

#Nivel 3
select * from funcionarios where cargo like 'Analista de Dados';
select * from funcionarios where salario = 3.500;
select * from funcionarios where salario >5000;
select * from funcionarios where salario > 2000;
select * from funcionarios where idade >'1990-01-01';
select * from funcionarios where cargo like 'Medico' and salario > 4.000;
select * from funcionarios where cargo like 'Contador' or cargo like 'Contador Fiscal';

#Nivel 4 
select * from funcionarios where cargo like 'Nutricionista' order by nome asc;
select * from funcionarios where salario > 3.000 order by salario desc;

#Nivel 5 
select nome, cargo, salario from funcionarios where nome like 'M%';
select nome, cargo from funcionarios where cargo like'%Analista%';
select nome, CPF , nascimento from funcionarios where nome like '%Williams';


