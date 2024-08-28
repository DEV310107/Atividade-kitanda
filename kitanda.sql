-- criar database --
create database kitanda;
-- utilizar a database criada --
use kitanda;

-- criar tabela --
create table produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo varchar(50),
    nome varchar(100),
    quantidade int,
    valor decimal(10, 2)
);

-- inserir valores --
insert into produtos (tipo, nome, quantidade, valor)
values
("fruta","laranja","30","1.50"),
("fruta","maça","20","1.20"),
("hortaliça","alface","43","0.90"),
("hortaliça","cove","50","2.00"),
("fruta","limao","40","3.50");

-- filtragem --
select
	id as ID,
    tipo as TIPO,
    nome as NOME,
    quantidade as QTD,
    valor as valor_uni,  
    quantidade * valor as valor_total
from
	produtos
where
	quantidade > 10
order by
	quantidade ASC;

-- media dos valores--    
select
	avg(valor * quantidade) as media_valor_total
from
	produtos;
-- soma total --
select
	sum(valor * quantidade) as soma_total
from
	produtos;

-- possui a menor quantidade no estoque --    
select
	tipo as TIPO,
    quantidade as QTD
from
	produtos
order by
	quantidade asc
	limit 1;
    
    
	

-- valores distintos --
select
	count(distinct valor) as quantidade_valores_distintos
from
	produtos