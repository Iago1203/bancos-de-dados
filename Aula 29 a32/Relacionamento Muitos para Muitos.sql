create database escola;
use escola;

create table aluno(
id_aluno int primary key auto_increment,
nome varchar(60),
cpf char(11) unique,
data_nascimento date, 
email varchar (80)
);
drop table turma;
create table turma (
id_turma int primary key auto_increment,
codigo_turma char (10),
curso varchar (60),
turno varchar (20),
sala varchar (10)
);


create table aluno_turma(
id_aluno int,
id_turma int,
foreign key (id_aluno) references aluno (id_aluno),
foreign key (id_turma) references turma(id_turma)
);

insert into aluno (id_aluno, nome, cpf, data_nascimento, email)
value (1, 'Iago', 13639087747, 2006-03-12, 'iagocadinelli1@gmail.com');
select* from aluno;

insert into turma(id_turma, codigo_turma, curso, turma, sala)
values (20, 'TEC0068', 'Tecnico em Desenvolvimento de Sistemas', 'Tarde', 'Informatica');

select * from turma;

insert into aluno_turma (id_aluno, id_turma) values(1, 20);
select * from aluno_turma;


 
