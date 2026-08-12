-- Criação do banco
CREATE DATABASE biblioteca; # Faltou a ; e A no Database
USE biblioteca; #Estava com um h na biblioteca

-- Tabela de livros
CREATE TABLE livros (
  id_livro INT AUTO_INCREMENT PRIMARY KEY, # faltou a vígula
  titulo VARCHAR(80),
  ano_publicacao INT, #faltpu a vírgula
  preco DECIMAL(10,2),
  estoque INT
);

-- Tabela de autores
CREATE TABLE autor (
  id_autor INT AUTO_INCREMENT PRIMARY KEY,
  nome_autor VARCHAR(80) ,
  nacionalidade VARCHAR(40)
);

-- Inserções em LIVROS (nomes e ordens inconsistentes)
INSERT INTO livro (titulo, ano_publicacao, preco, estoque) VALUES
('Dom Casmurro', '1998', '39.90', '12'); #Estava com , em vez do . e sem '', sem o ano_publicacao 
INSERT INTO livros (titulo, ano_publicacao, preco, estoque) VALUES
('Capitães da Areia', '1937', '45.50', '20'); #Estava sem ''
INSERT INTO livros (titulo, ano_publicacao, preco, estoque) VALUES
('Vidas Secas', '1938', '49.90', '30'); #Estava com o preco alterado com o ano_publicação e sem ''
INSERT INTO livros (titulo, ano_publicacao, preco, estoque) VALUES
('Grande Sertão: Veredas', '1956', '59.90', '10'); #confundiu a , com .

-- Inserções em AUTORES (nome de tabela/colunas)
INSERT INTO autor (nome_autor, nacionalidade) VALUES
('Machado de Assis', 'Brasil');
INSERT INTO autor (nome_autor, nacionalidade) VALUES
('Jorge Amado', 'Brasil');
INSERT INTO autor (nome_autor, nacionalidade) VALUES
( 'Guimarães Rosa', 'brasil') # Estava com vígula
;

-- SELECTs (nomes inconsistentes)
SELECT * FROM livros; #esqueceu do s
SELECT * FROM autores;
SELECT * FROM livros; # faltou o ;
SELECT * FROM autor;
