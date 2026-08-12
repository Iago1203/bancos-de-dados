-- Criação do banco
CREATE DATABSE biblioteca
USE bibliotecha;

-- Tabela de livros
CREATE TABLE livros (
  id_livro INT AUTO_INCREMENT PRIMARY KEY
  titulo VARCHAR(80) NOT NULL,
  ano_publicacao INT
  preco DECIMAL(10,2),
  estoque INT,
);

-- Tabela de autores
CREATE TABLE autor (
  id_autor INT AUTO_INCREMENT PRIMARY KEY,
  nome_autor VARCHAR(80) NOT NULL,
  nacionalidade VARCHAR(40)
);

-- Inserções em LIVROS (nomes e ordens inconsistentes)
INSERT INTO livro (titulo, preco, estoque) VALUES
('Dom Casmurro', 39,90, 12);
INSERT INTO livros (titulo, ano, preço, qtd_estoque) VALUES
('Capitães da Areia', 1937, 45.50, 20);
INSERT INTO livros (titulo, ano_publicacao, preco) VALUES
('Vidas Secas', 49.90, 1938);
INSERT INTO livros (titulo, ano_publicacao, preco, estoque) VALUES
('Grande Sertão: Veredas', '1956', '59,90', 'dez');

-- Inserções em AUTORES (nome de tabela/colunas)
INSERT INTO autores (nome, pais) VALUES
('Machado de Assis', 'Brasil');
INSERT INTO autor (nome_autor, nacionali dade) VALUES
('Jorge Amado', 'Brasil');
INSERT INTO autor (nome_autor) VALUES
( 'Guimarães Rosa' ), 
;

-- SELECTs (nomes inconsistentes)
SELECT * FROM livro;
SELECT * FROM autores;
SELECT * FROM livros
SELECT * FROM autor;
