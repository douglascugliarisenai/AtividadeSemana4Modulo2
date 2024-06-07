-- Select todos clientes cujo nome comece com A
select * from clientes c where UPPER(c.nome) like UPPER('a%');


-- Calcule o valor total de todos os pedidos por cliente
select c.cliente_id, c.nome, sum(p.valor) from clientes c inner join pedidos p on p.cliente_id = c.cliente_id group by c.cliente_id;



-- Calcule a média de idade
select avg(idade) from clientes c 
