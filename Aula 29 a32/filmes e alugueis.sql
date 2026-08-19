create database filmes_iagao;
use filmes_iagao; 

create table clientes (
id_cliente int primary key auto_increment,
nome_cliente varchar(60),
estado varchar(45),
regiao varchar(45),
sexo varchar(10),
data_nascimento date,
data_conta date
);

create table filmes(
id_filme int primary key auto_increment,
titulo varchar(60),
genero varchar(45),
duracao varchar(45),
ano_lancamento int,
preco_aluguel double
);
create table atores(
id_ator int primary key auto_increment,
nome_ator varchar(60),
ano_nascimento date,
nacionalidade varchar(20),
sexo varchar (10)
);
create table alugueis(
id_aluguel int primary key auto_increment,
id_cliente INT,
id_filme int,
foreign key(id_cliente) references clientes(id_cliente),
foreign key (id_filme) references filmes (id_filme),
nota double,
data_alugel date
);
create table atuacoes(
id_protagonista int primary key auto_increment,
id_filme int,
id_ator int,
foreign key (id_filme) references filmes (id_filme),
foreign key (id_ator) references autores(id_autor)
);

insert into clientes(id_cliente, nome_cliente, estado, regiao, sexo, data_nascimento, data_conta)
values (1, 'João Mendes', 'Rio de Janeiro', 'Sudeste','Masculino',1990-03-26,2026-03-15,) (2, 'Larissa Ramos','Minas Gerais', 'Nordeste', 'feminino',2001-06-29, 2026-09-23), (3, 'Lucas Rangel', 'São Paulo','Sudoeste', 'Masculino', 1997-02-28, 2026-10-21);
select* from clientes;

insert into 

