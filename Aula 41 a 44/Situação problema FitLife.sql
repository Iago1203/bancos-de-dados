update usuarios set cidade = 'Sao Paulo' where id_usuario = 5;
select nome, cidade from usuarios where id_usuario = 5;
select * from usuarios; 

update metas set status = 'Concluida' where id_meta = 2;
select * from metas;

select nome, email from usuario where status = 'Ativa' ; 

select count(*) as usuario_rj from usuarios where cidade like 'Rio de Janeiro';

select u.nome, a.tipo_exercicio 
from usuarios as u inner join atividades as a 
on u.id_usuario = a.id_usuario;

select u.nome, m.tipo_meta, m.valor_alvo , m.status  
from usuarios as u
 inner join metas as m on u.id_usuario = m.id_usuario
 where nome like 'Juliana Castro';