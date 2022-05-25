#!/usr/bin/env bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	create table produtos(
	id serial primary key,
	nome varchar,
	descricao varchar,
	preco decimal,
	quantidade integer
);


insert into produtos(nome, descricao, preco, quantidade) values
('Camiseta', 'Preta', 19, 10),
('Fone', 'Muito Bom', 99, 5);
EOSQL