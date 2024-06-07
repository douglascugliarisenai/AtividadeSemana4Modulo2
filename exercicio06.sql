-- Select com total de itens pedidos em cada mês
SELECT 
	DATE_TRUNC('month', p.data_pedido) AS mes_pedido,
	SUM(i.quantidade) AS total_items
FROM pedidos AS p
INNER JOIN itens_pedidos AS i 
	ON p.pedido_id = i.pedido_id
GROUP BY mes_pedido
ORDER BY mes_pedido;


	-- Select com os clientes que não têm pedidos associados
	select * from pedidos p 
		right join clientes c
		on p.cliente_id = c.cliente_id
		where pedido_id is null;

	-- Select o pedido de maior valor
		select max(valor) from pedidos;


	-- Select o total de itens pedidos para cada produto
		select 
			sum(i.quantidade) as qtdProdutos,
			i.pedido_id as idPedido
		from itens_pedidos as i
		inner join produtos as p 
		on i.produto_id = p.produto_id
		group by i.pedido_id
			order by i.pedido_id;


		-- Calcule a soma dos valores dos pedidos para cada cliente que tenha feito mais de um pedido
			select 
			p.cliente_id as cliente,
			sum(p.valor) as valor_total
			from pedidos p
			inner join clientes c
			on p.cliente_id = c.cliente_id
			group by p.cliente_id;

		-- Select o preço médio dos produtos em cada categoria

			select
			c.categoria_id as categoria,	
			trunc(avg(p.preco), 2) as preco_medio
			from categorias c
			inner join produtos p
			on c.categoria_id = p.categoria_id
			group by c.categoria_id
			order by c.categoria_id
				
		-- Select o cliente que fez o pedido de maior valor
			select 
				p.pedido_id,
				sum(p.valor) as total_compras
				from clientes c
			inner join pedidos p
			on c.cliente_id = p.cliente_id
			group by p.pedido_id
			order by total_compras desc
			limit 1;



				