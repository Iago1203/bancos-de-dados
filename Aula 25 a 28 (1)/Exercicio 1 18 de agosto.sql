create database exercicio_1;
use exercicio_1;

create table clientes(
id Varchar(200),
nome Int,
cpf Date,
data_nacimento Varchar (10),
renda_mensal Boolean
);
alter table clientes modify column id int;
alter table clientes modify column nome varchar(120);
alter table clientes modify column cpf char(11);
alter table clientes modify column data_nacimento date;
alter table clientes modify column renda_mensal float;
describe clientes;



create table produtos(
id Text, 
nome Boolean,
preco varchar (5),
quantidade decimal(10,2),
ativo int
);

alter table produtos modify column id int;
alter table produtos modify column nome varchar(120);
alter table produtos modify column preco decimal (10,2);
alter table produtos modify column quantidade int;
alter table produtos modify column ativo boolean;  
describe produtos;


create table pedidos(
id varchar (100),
cliente_id Date,
valor_total char (5),
data_pedido int,
status varchar (3)
);
alter table pedidos modify column id int;
alter table pedidos modify column cliente_id int ;
alter table pedidos modify column valor_total decimal (10,2);
alter table pedidos modify column data_pedido date;
alter table pedidos modify column status Enum('Em andamento', 'Parado');
describe pedidos; 