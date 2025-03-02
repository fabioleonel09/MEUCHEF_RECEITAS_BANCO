--Script para alterar a coluna PesoFinal para decimal com duas casas

ALTER TABLE ProdutoCardapio
ALTER COLUMN PesoFinal DECIMAL(10,2) NOT NULL;
