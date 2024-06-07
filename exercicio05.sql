-- Select com INNER JOIN
select 
	c.cliente_id, 
	c.nome, sum(p.valor) 
	from clientes c 
	inner join pedidos p 
	on p.cliente_id = c.cliente_id 
	group by c.cliente_id;	
	
-- Select com LEFT JOIN
	select * from clientes c 
		left join pedidos p 
		on c.cliente_id = p.cliente_id;

-- Select com RIGHT JOIN
	select * from produtos p
	right join itens_pedidos i
	on p.produto_id = i.produto_id;
	
-- Select com UNION
	select * from clientes 
		where cidade = 'São Paulo' 
		union 
		select * from clientes
		where cidade = 'Rio de Janeiro';

	