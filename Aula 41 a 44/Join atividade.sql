select l.titulo, e.nome_editora from livros as l
 inner join editoras as e
 on l.id_editora = e.id_editora
 where e.nome_editora like '%Alfa%'; 