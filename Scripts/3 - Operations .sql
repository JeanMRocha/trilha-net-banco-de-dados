-- Operaçoes para SQL

-- Conta as linhas da tabela Produtos
SELECT COUNT(*) QuantidadeProdutos From Produtos

-- Conta as linhas da tabela Produtos com Tamanho M
SELECT COUNT(*) QuantidadeProdutosTamanhoM From Produtos WHERE  Tamanho = 'M'

--Soma os preços dos Produtos 
SELECT SUM(Preco) PrecoTotal From Produtos

--Soma os preços dos Produtos com condição específica
SELECT SUM(Preco) PrecoTotalProdutosTamanhoM From Produtos WHERE Tamanho = 'M'

-- Max dos Produtos - Produto mais caro da tabela
SELECT Max (Preco) ProdutoMaisCaro From Produtos

-- Max dos Produtos - Produto mais caro da tabela com condição específica
SELECT Max (Preco) ProdutoMaisCaroTamanhoM From Produtos WHERE Tamanho = 'M'

-- Min dos Produtos - produto mais barato da tabela
SELECT Min (Preco) ProdutoMaisBarato From Produtos

-- Min dos Produtos - produto mais caro da tabela
SELECT Min (Preco) ProdutoMaisBaratoTamanhoM From Produtos WHERE Tamanho = 'M'

--Média dos preços Produtos AVG
SELECT AVG (Preco) MediaPrecoProduto From Produtos

-- Média dos Produtos - AVG - Média dos preços dos produtos
SELECT Min (Preco) PMediaPrecoProdutoTamanhoM From Produtos WHERE Tamanho = 'M'

---------------------Operações com Texto------------------------------------------

--Concatenação de Strings/texto
SELECT Nome + ', Cor' + Cor NomeProduto
FROM Produtos

--Mudar para Maiúsculo e minúsculo
SELECT Nome + ', Cor' + Cor NomeProduto2
UPPER (Nome)   --Coloca todas as letras em maiúsculo
Lower (Cor)    -- Coloca todas as letras em minúsculo
FROM Produtos

--------------Operações de Tabela ----------------------------------------------------


--Cria uma tabela 
CREATE TABLE Produtos (
	Id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	Nome varchar(255) NOT NULL,
	Cor varchar(50) NULL,
	Preco decimal(13, 2) NOT NULL,
	Tamanho varchar(5) NULL,
	Genero char(1) NULL
)

-- Verifica se existe uma tabela antes de tentar Criar
DROP TABLE IF EXISTS dbo.Produtos

-- Insere UM ELEMENTO NA TABELA CRIADA
INSERT INTO Produtos VALUES ('Mountain Bike Socks, M','Branco','9.50','M','U') 
