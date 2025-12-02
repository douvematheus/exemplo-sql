-- ESTUDO SOBRE MYSQL 
-- Exemplo 1. Selecionando todas as linhas e colunas da:
-- a) tabela pedidos
SELECT * FROM pedidos;

-- b) tabela clientes
SELECT * FROM clientes;
SELECT * FROM categorias;
SELECT * FROM locais;
SELECT * FROM produtos;
-- Exemplo 2. Selecionar apenas algumas colunas da tabela clientes
SELECT 
	ID_Cliente AS 'ID Cliente', 
    Nome AS 'Nome do Cliente', 
    Data_Nascimento AS 'Data de Nascimento', 
    Email AS 'E-mail do Clientes' 
FROM clientes;

-- Exemplo 3. Selecionar apenas as 5 primeiras linhas da tabela de produtos
select * from produtos
LIMIT 8;

-- Exemplo 4. Selecionar todas as linhas da tabela produtos, MAS...alter
-- ... ordenando pela coluna Preco_Unit
select * from produtos
ORDER BY Preco_Unit DESC;

select Custo_Unit from produtos;
SELECT * FROM produtos
ORDER BY Custo_Unit DESC;

select 
	ID_Produto,
    Nome_Produto
from produtos;

select * from lojas;

select Sexo from clientes 
WHERE Sexo = 'F';

SELECT Data_Nascimento from clientes
WHERE DAY (Data_Nascimento) = 4 ;

select Nome from clientes
where Estado_Civil = 'S' and Sexo = 'F'
LIMIT 5;

select Nome, Escolaridade from clientes
where Escolaridade = 'Parcial';

select Nome from clientes
limit 5;

 select Custo_venda, Data_Venda from pedidos
 ORDER BY Custo_venda
 limit 10 ;
 
 select 
	Custo_Venda, 
    ID_Loja, 
    Data_Venda 
from pedidos
 where Custo_Venda > '200' 
 and ID_Loja = '2';
 

-- select 
	*
--from customers
--WHERE country = 'Brazil' 
--and state = 'SP'
--and city = 'São Paulo'

--select
	--State,
	--count(*)
--from customers
--where country = 'Brazil';


-- SUM = SOMAR
-- COUNT = COONTAR
-- AVG = TIRAR MÉDIA
-- MAX = MAIOR VALOR
-- MIN = MENOR VALOR
