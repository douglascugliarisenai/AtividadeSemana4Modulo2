-- Select todos clientes de São Paulo
select * from clientes as c where c.cidade = 'São Paulo';


-- Select todos pedidos e ordene pela data_pedido decrescente
select * from pedidos p order by p.data_pedido desc;


-- Select todos clientes com idade entre 25 e 35 anos
select * from clientes c where c.idade BETWEEN 25 and 35;