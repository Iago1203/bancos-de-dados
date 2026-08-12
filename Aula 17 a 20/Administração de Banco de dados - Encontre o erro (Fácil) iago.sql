-- Criar banco de dados
CREATE DATABASE papelaria_ia;  # Faltou ; e o A no DataBase

USE papelaria_ia;  # Faltou o ;

-- Criar tabela produtos
CREATE TABLE produtos (
id INT PRIMARY KEY AUTO_INCREMENT,  #Faltou a vírgula
nome VARCHAR(50),  #Faltou o parentese
preco DECIMAL (10.2),  #estava com um S no Decimal
quantidade INT,
ativo BOOL
);

-- Inserir registros
INSERT INTO produto (nome, preco, quantidade,  ativo)  # faltou a vírgula
VALUES 
('Caneta Azul', 2.50, 100 ,TRUE),  #Faltou a vígula no True e virgula em vez do ponto
('Lápis', 1.20, 200, TRUE),
('Caderno', 15.00, 50, TRUE),
('Borracha', 0.50, 300, TRUE);  # Estava escrito yes inves de TRUE 

-- Consultar dados
SELECT * FROM produtos; #faltou * e o ponto e virgula
