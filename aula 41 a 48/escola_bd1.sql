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

INSERT INTO alunos (nome) VALUES 
('Gabriel Silva Santos'), ('Maria Eduarda Oliveira'), ('Lucas Ferreira Lima'),
('Beatriz Costa Souza'), ('João Pedro Rodrigues'), ('Ana Clara Alves'),
('Matheus Pereira Carvalho'), ('Larissa Gomes Ribeiro'), ('Guilherme Martins Araujo'),
('Camila Melo Barbosa'), ('Felipe Pinto Cardoso'), ('Amanda Teixeira Martins'),
('Rafael Rocha Cavalcanti'), ('Letícia Castro Fernandes'), ('Thiago Dias Moreira');

-- 2. PROFESSOR (10 registros)
INSERT INTO professor (nome, cpf) VALUES 
('Carlos Henrique Almeida', '12345678901'), ('Ana Paula Ribeiro', '23456789012'),
('Roberto de Souza Mendes', '34567890123'), ('Juliana Costa Marques', '45678901234'),
('Ricardo Augusto Frota', '56789012345'), ('Fernanda Lima Moreira', '67890123456'),
('Marcelo Vieira Ramos', '78901234567'), ('Patrícia Antunes Dias', '89012345678'),
('André Luiz Fonseca', '90123456789'), ('Camila Guimarães Ortis', '01234567890');

-- 3. CURSO (5 registros)
INSERT INTO curso (nome, carga_horaria) VALUES 
('Técnico em Informática', 1200),
('Administração de Empresas', 1600),
('Desenvolvimento de Sistemas', 2000),
('Recursos Humanos', 800),
('Logística Integrada', 1000);

-- 4. DICIPLINA (10 registros)
INSERT INTO diciplina (nome, carga_horaria) VALUES 
('Algoritmos e Lógica de Programação', 80), ('Banco de Dados SQL', 60),
('Gestão de Pessoas', 40), ('Contabilidade Geral', 60),
('Programação Web Full Stack', 120), ('Engenharia de Software', 80),
('Cadeia de Suprimentos', 60), ('Comportamento Organizacional', 40),
('Redes de Computadores', 60), ('Matemática Financeira', 40);

-- 5. TURMA (5 registros) 
INSERT INTO turma (id_turma, nome, id_curso) VALUES 
(101, 'Turma INF-A 2026', 1),
(102, 'Turma ADM-M 2026', 2),
(103, 'Turma DEV-N 2026', 3),
(104, 'Turma RH-A 2026', 4),
(105, 'Turma LOG-M 2026', 5);

-- 6. MATRICULA (15 registros)
INSERT INTO matricula (data_maticula, id_aluno, id_turma) VALUES 
('2026-01-10', 1, 101), ('2026-01-11', 2, 101), ('2026-01-12', 3, 101),
('2026-01-15', 4, 102), ('2026-01-16', 5, 102), ('2026-01-17', 6, 102),
('2026-01-20', 7, 103), ('2026-01-21', 8, 103), ('2026-01-22', 9, 103),
('2026-01-25', 10, 104), ('2026-01-26', 11, 104), ('2026-01-27', 12, 104),
('2026-01-28', 13, 105), ('2026-01-29', 14, 105), ('2026-01-30', 15, 105);

-- 7. DOCUMENTO (12 registros)
INSERT INTO documento (nome_documento, numero_documento, data_entrega, id_matricula) VALUES 
('RG', '45.123.456-7', '2026-01-10', 1), ('CPF', '123.456.789-00', '2026-01-10', 1),
('RG', '12.345.678-9', '2026-01-11', 2), ('Histórico Escolar', 'HE-9988', '2026-01-15', 4),
('RG', '50.987.654-3', '2026-01-16', 5), ('Certidão de Nascimento', 'CNT-4432', '2026-01-20', 7),
('CPF', '789.123.456-11', '2026-01-21', 8), ('RG', '23.456.789-0', '2026-01-25', 10),
('Comprovante de Residência', 'Luz-0226', '2026-01-26', 11), ('RG', '34.567.890-1', '2026-01-28', 13),
('CPF', '456.789.012-33', '2026-01-29', 14), ('Histórico Escolar', 'HE-1122', '2026-01-30', 15);

-- 8. ALUNO_TELEFONE (10 registros)
INSERT INTO aluno_telefone (telefone, id_aluno) VALUES 
('(11) 99876-5432', 1), ('(11) 98765-4321', 2), ('(21) 97654-3210', 3),
('(21) 96543-2109', 4), ('(31) 95432-1098', 5), ('(31) 94321-0987', 6),
('(41) 93210-9876', 7), ('(51) 92109-8765', 8), ('(61) 91098-7654', 9),
('(71) 90987-6543', 10);

-- 9. ALUNO_EMAIL (10 registros)
INSERT INTO aluno_email (email, id_aluno) VALUES 
('gabriel.silva@gmail.com', 1), ('madu.oliveira@outlook.com', 2), ('lucas.lima@yahoo.com.br', 3),
('bia.souza@gmail.com', 4), ('joao.pedro@hotmail.com', 5), ('anaclara.alves@gmail.com', 6),
('matheus.carvalho@outlook.com', 7), ('larissa.ribeiro@gmail.com', 8), ('gui.martins@uol.com.br', 9),
('camila.melo@gmail.com', 10);

-- 10. HORARIOS (6 registros)
INSERT INTO horarios (dia_semana, hora_inicio, hora_final, id_turma) VALUES 
('Segunda-feira', '08:00:00', '12:00:00', 101),
('Terça-feira', '08:00:00', '12:00:00', 102),
('Quarta-feira', '19:00:00', '22:30:00', 103),
('Quinta-feira', '14:00:00', '18:00:00', 104),
('Sexta-feira', '08:00:00', '12:00:00', 105),
('Segunda-feira', '19:00:00', '22:30:00', 103);

-- 11. CURSO_MODALIDADES (5 registros)
INSERT INTO curso_modalidades (modalidade, id_curso) VALUES 
('Presencial', 101),
('EAD', 102),
('Semipresencial', 103),
('Presencial', 104),
('EAD', 105);

-- 12. GRADE_CURRICULAR (10 registros)
INSERT INTO grade_curricular (id_curso, id_diciplina) VALUES 
(1, 1), (1, 2), (1, 5), (1, 6), (1, 9),
(2, 3), (2, 4), (2, 8), (2, 10),
(3, 1);

-- 13. TURMA_PROFESSOR (5 registros)
INSERT INTO turma_professor (id_curso, id_turma, id_professor) VALUES 
(1, 101, 1),
(2, 102, 2),
(3, 103, 3),
(4, 104, 4),
(5, 105, 5);

-- 14. PROFESSOR_EMAIL (5 registros) 
INSERT INTO professor_email (id_email_professor, email, id_professor) VALUES 
(1, 'carlos.almeida@escola.edu.br', 1),
(2, 'ana.paula@escola.edu.br', 2),
(3, 'roberto.mendes@escola.edu.br', 3),
(4, 'juliana.marques@escola.edu.br', 4),
(5, 'ricardo.frota@escola.edu.br', 5);

-- 15. PROFESSOR_TELEFONE (5 registros) 
INSERT INTO professor_telefone (id_telefone_professor, telefone, id_professor) VALUES 
(1, '(11) 97777-1111', 1),
(2, '(11) 97777-2222', 2),
(3, '(21) 96666-3333', 3),
(4, '(31) 95555-4444', 4),
(5, '(81) 94444-5555', 5);

-- 16. BIBLIOGRAFIA (8 registros)
INSERT INTO bibliografia (referencia, id_diciplina) VALUES 
('Deitel - Java Como Programar', 1),
('Date - Introdução a B.D.', 2),
('Chiavenato - Adm Geral', 3),
('Ashton - Contabilidade Comum', 4),
('Flanagan - JavaScript Guia', 5),
('Pressman - Eng. Software', 6),
('Ballou - Gerenciamento Log.', 7),
('Robbins - Comportamento Org.', 8);