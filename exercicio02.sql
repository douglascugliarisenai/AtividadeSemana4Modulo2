-- Inserir novo cliente
	INSERT INTO clientes (nome, cidade, idade) VALUES
('Lucas Lima', 'Salvador', 29);


	-- Update cidade cliente 3
		UPDATE clientes
		set cidade = 'Fortaleza'
		where cliente_id = 3;

	-- Delete todos pedidos com valor inferior a 150.00
	Delete from itens_pedidos i
		where i.pedido_id in (
			select p.pedido_id
			from pedidos p
			 where valor < 150.00);		

		DELETE from pedidos
		where valor < 150.00;
