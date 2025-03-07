--SCRIPT GERAL DE CRIAÇÃO DA BASE DE DADOS E DE TODAS AS TABELAS DO MEUCHEF RECEITAS
--Criação da data base
IF NOT EXISTS (SELECT 1 FROM sys.databases WHERE name = 'MEUCHEFRECEITAS')

BEGIN
	CREATE DATABASE MEUCHEFRECEITAS;
END
	
GO

--Usando a data base criada	
USE MEUCHEFRECEITAS;

-- Criação da tabela
IF NOT EXISTS( SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'ProdutoCardapio')

BEGIN
	CREATE TABLE ProdutoCardapio (
		id INT IDENTITY(1,1) PRIMARY KEY,
		nomeCardapio VARCHAR(100) NOT NULL,
		descricaoCardapio VARCHAR(200) NOT NULL,
		ingredientesCardapio VARCHAR(300) NOT NULL,
		preparoCardapio VARCHAR(1000) NOT NULL,
		observacaoCardapio VARCHAR(200),
		pesoFinal DECIMAL NOT NULL
	);
END