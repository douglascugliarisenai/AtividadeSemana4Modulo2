	-- Select a média de idade dos clientes que têm pedidos com valor total superior a 300,00
		select
		trunc(avg(idade), 2) as media_idade	
		from clientes c
		inner join pedidos p
		on c.cliente_id = p.cliente_id
		where p.valor > 300.00


	-- Select todos os produtos que foram pedidos mais de uma vez
		select p.produto_id
		from produtos p 
		inner join itens_pedidos i
 		on p.produto_id = i.produto_id
		group by p.produto_id
		having count(p.produto_id) > 1
		order by p.produto_id