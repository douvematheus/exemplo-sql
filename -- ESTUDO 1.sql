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

select
	State,
	count(*) AS QtdClientes
from customers
where country = 'Brazil'
group by
	state;

    select 
	city,
	state,
	COUNT(*)
from customers
where country = 'Brazil'
order by 
	city,
	state;


select	
	Agencia, 
	COUNT(TipoConta) AS TotalContas
from Contas_Bancarias                -- fazer uma seleção de  número de contas bancárias abertas por agência.
group BY 
Agencia;

select
	BillingCity,
	BillingState,
	COUNT(*) AS QTDNotas,
	SUM(total) AS VlrNotas
FROM invoices 
WHERE BillingCountry = 'Brazil'
GROUP BY 
	BillingCity,
	BillingState
HAVING COUNT(*) < 10 
AND SUM(total) > 38;

COUNT
SELECT
	COUNT(Telefone)
FROM clientes;

 -- MIN
 SELECT
	MIN(Receita_Venda)
FROM pedidos;

-- MAX
SELECT
	MAX(Receita_Venda)	
FROM pedidos;

-- SUM
SELECT
	SUM(Receita_Venda)		
FROM pedidos;

-- AVG
SELECT
	AVG(Receita_Venda)
FROM pedidos;	

-- Exemplo de uso do DISTINCT
SELECT
	DISTINCT Estado_Civil
FROM clientes;	
-- Exemplo de uso do DISTINCT
SELECT
	DISTINCT Escolaridade	
FROM clientes;	
-- Exemplo de uso do DISTINCT
SELECT
	DISTINCT Sexo
FROM clientes;
-- Exemplo de uso do DISTINCT
SELECT
	DISTINCT ID_Loja	
FROM pedidos;
-- Exemplo de uso do DISTINCT
SELECT
	COUNT(DISTINCT Escolaridade)	
FROM clientes;		


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
LIMIT 5;		
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
	  select		
	*from customers	
WHERE country = 'Brazil'			
and state = 'SP'			
and city = 'São Paulo'

select		
	State,		
	count(*)
from customers		
where country = 'Brazil';		
	select 	
	city,	
	state,	
	COUNT(*)				
from customers
where country = 'Brazil'	
order by
	city,	
	state;	

select	
	Agencia,		
	COUNT(TipoConta) AS TotalContas
from Contas_Bancarias
group BY 	
Agencia;	
select	
	BillingCity,	
	BillingState,	
	COUNT(*) AS QtdNotas,	
	SUM(total) AS VlrNotas
FROM invoices 	
WHERE BillingCountry = 'Brazil'	
GROUP BY 	
	BillingCity,	
	BillingState
HAVING COUNT(*) < 10
AND SUM(total) > 38;
COUNT	
SELECT	
	COUNT(Telefone)
FROM clientes;

 -- ESTUDO DE HOJE E INNER JOIN 
 -- CHAVE PRIMARIA E CHAVE ESTRANGEIRA
 -- uma chave primaria e uma coluna que identifica as informações distintas em uma tabela
 -- uma chave estrangeira e uma coluna que referencia a chave primaria de outra tabela

 -- INNER JOIN	

SELECT
	c.Nome AS 'Nome do Cliente',	
	p.ID_Pedido AS 'ID do Pedido',
	p.Data_Venda AS 'Data da Venda',
	p.Receita_Venda AS 'Receita da Venda'	
FROM clientes c	
INNER JOIN pedidos p	
ON c.ID_Cliente = p.ID_Cliente	
WHERE c.ID_Cliente = 1;

-- Tabela Fato vs Tabela Dimensão

-- Tabela Fato = tabela que armazena os dados principais de um negócio	
-- Tabela Dimensão = tabela que armazena os atributos descritivos relacionados às tabelas fato

#inner join:
 -- Exemplo 1. Faça uma consulta que tenha como resultado todas as colunas da tabela de pedidos e as colunas loja, Gerente e telefone.
SELECT * from pedidos;
select * from lojas;

-- Tabela A --> Tabela Fato --> Tabela Pedidos
-- Tabela B --> Tabela Dimensão --> Tabela Lojas

SELECT
	pedidos.*,
	lojas.Loja,
	lojas.Gerente,
	lojas.Telefone
FROM pedidos
INNER JOIN lojas	
ON pedidos.ID_Loja = lojas.ID_Loja;	
-- Exemplo 2. Faça uma consulta que retorne o nome do cliente, o ID do pedido, a data da venda e o custo da venda.
SELECT
	clientes.Nome AS 'Nome do Cliente',
	pedidos.ID_Pedido AS 'ID do Pedido',
	pedidos.Data_Venda AS 'Data da Venda',
	pedidos.Custo_Venda AS 'Custo da Venda'
FROM clientes
INNER JOIN pedidos
ON clientes.ID_Cliente = pedidos.ID_Cliente;	
-- Exemplo 3. Faça uma consulta que retorne o nome do produto, a categoria do produto e o preço unitário.
SELECT			
	produtos.Nome_Produto AS 'Nome do Produto',
	categorias.Categoria AS 'Categoria do Produto',
	produtos.Preco_Unit AS 'Preço Unitário'	
FROM produtos	
INNER JOIN categorias
ON produtos.ID_Categoria = categorias.ID_Categoria;	
-- Exemplo 4. Faça uma consulta que retorne o nome do cliente, o nome do produto, a data da venda e a receita da venda.
SELECT			
	clientes.Nome AS 'Nome do Cliente',	
	produtos.Nome_Produto AS 'Nome do Produto',	
	pedidos.Data_Venda AS 'Data da Venda',	
	pedidos.Receita_Venda AS 'Receita da Venda'
FROM clientes
INNER JOIN pedidos	
ON clientes.ID_Cliente = pedidos.ID_Cliente
INNER JOIN produtos
ON pedidos.ID_Produto = produtos.ID_Produto;

