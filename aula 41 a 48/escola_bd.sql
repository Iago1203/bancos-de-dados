create database escola_bd;
use escola_bd;

create table alunos(
id_aluno int primary key auto_increment,
nome varchar (100)
);

create table turma(
id_turma int primary key,
nome varchar (45),
id_curso int,
foreign key (id_curso) references curso (id_curso)
);

create table matricula (
id_matricula int primary key auto_increment,
data_maticula date,
id_aluno int,
id_turma int,
foreign key (id_aluno) references alunos (id_aluno),
foreign key (id_turma) references turma(id_curso)
);

create table documento(
id_documento int primary key auto_increment,
nome_documento varchar (100),
numero_documento varchar (45),
data_entrega date,
id_matricula int,
foreign key (id_matricula) references matricula (id_matricula)
);

create table professor(
id_professor int primary key auto_increment,
nome varchar(100),
cpf char(11)
);

create table curso(
id_curso int primary key auto_increment,
nome varchar (100),
carga_horaria int
); 


create table diciplina(
id_diciplina  int primary key auto_increment,
nome varchar(100),
carga_horaria int
);

create table aluno_telefone(
id_aluno_telefone int primary key auto_increment,
telefone varchar(100),
id_aluno int,
foreign key (id_aluno) references alunos (id_aluno)
);

create table aluno_email (
id_aluno_email int primary key auto_increment,
email varchar(150),
id_aluno int,
foreign key (id_aluno) references alunos(id_aluno)
);

create table horarios(
id_horario int primary key auto_increment,
dia_semana varchar(25),
hora_inicio time,
hora_final time,
id_turma int,
foreign key (id_turma) references turma (id_turma) 
);  

create table curso_modalidades(
id_modalidade int primary key auto_increment,
modalidade varchar(50),
id_curso int,
foreign key (id_curso) references turma (id_turma)
);

create table  grade_curricular(
id_curso int,
id_diciplina int,
foreign key (id_curso) references curso (id_curso),
foreign key (id_diciplina) references diciplina (id_diciplina)
);

create table turma_professor (
id_curso int,
id_turma int,
id_professor int,
foreign key (id_curso) references curso (id_curso),
foreign key (id_turma) references turma (id_turma),
foreign key (id_professor) references professor (id_professor)
);

create table professor_email(
id_email_professor int  primary key,
email varchar(150),
id_professor int,
foreign key (id_professor) references professor (id_professor)
);

create table professor_telefone(
id_telefone_professor int  primary key,
telefone varchar(15),
id_professor int,
foreign key (id_professor) references professor (id_professor)
);
create table bibliografia(
id_bibliografia int primary key auto_increment,
referencia varchar(30),
id_diciplina int,
foreign key (id_diciplina) references diciplina (id_diciplina)
);