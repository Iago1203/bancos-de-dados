-- criação do banco
CREATE DATABASE empresa_tech; #faltou o A no DataBase e ; no final
USE empresa_tech; # faltou o ch no Tech

-- tabela setores
CREATE TABLE setores (
id_setor INT PRIMARY KEY AUTO_INCREMENT,
nome_setor VARCHAR(50),
localizacao VARCHAR(30) # estava com ,  
);

-- tabela funcionarios
CREATE TABLE funcionarios (
id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
nome_funcionario VARCHAR(80), # faltou a virgula
salario DECIMAL(8.2), # faltou a virgula
data_admissao DATE,
id_setor INT # estava com virgula
);

-- inserindo setores
INSERT INTO setores (nome_setor, localizacao)
 VALUES
('Administrativo', '1º andar'), #faltou a vígula 
('Financeiro', '2º andar'),
('Produção', 'Galpão A'),
('Limpeza' ,'Térreo');

select * from setores; # Estava com _ empresa 

-- inserindo funcionários
INSERT INTO funcionarios (nome_funcionario, salario, data_admissao, id_setor) 
VALUES
('Carlos Silva', 3500.00, '2022-03-01', 1), # Estava com , no lugar do .
('Maria Souza', 4100.00, '2021-08-10', 2), # faltou a vígula no 4100.00
('João Lima', '2800', '2023-02-20',3), #faltou a vígula e '' no 2800
('Fernanda Alves', '3200', '2024-01-15', 4);

-- consulta
SELECT * FROM funcionarios; #faltou o ; e o FROM estava minusculo
