-- Criação da base de dados
CREATE DATABASE semana4;

-- Criação da tabela
CREATE TABLE IF NOT EXISTS categorias(
categoria_id SERIAL PRIMARY KEY,
nome_categoria VARCHAR(50) NOT NULL UNIQUE);

-- Inclusão da coluna
ALTER TABLE produtos 
	ADD COLUMN categoria_id INT;

-- Alteração tabela produtos
ALTER TABLE produtos
	ADD CONSTRAINT categoria_id 
		FOREIGN KEY (categoria_id) 
			REFERENCES categorias(categoria_id);

-- Inserir dados na tabela de categorias
INSERT INTO categorias (nome_categoria) VALUES
('Eletronicos'),
('Casa'),
('Roupas'),	
('Pesca');

-- Update itens tabela produto
	UPDATE produtos
		set categoria_id = 4
		where produto_id in (2);

-- Remoção dependencia
ALTER TABLE produtos 
	DROP CONSTRAINT categoria_id;

-- Deleção tabela categorias
DROP TABLE categorias;

select * from produtos;
