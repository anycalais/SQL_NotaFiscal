CREATE DATABASE NotaFiscal;
USE NotaFiscal;

CREATE TABLE Cliente (
CPF CHAR(11) PRIMARY KEY,
Nome VARCHAR(100),
Endereco VARCHAR(200),
Telefone VARCHAR(15)
);

CREATE TABLE Produto (
Codigo INT PRIMARY KEY,
Descricao VARCHAR(100),
Preco_Unitario DECIMAL(10, 2)
);

CREATE TABLE NotaFiscal (
Numero INT PRIMARY KEY,
DataEmissao DATE,
ValorTotal DECIMAL(10, 2),
CPF_Cliente CHAR(11),
FOREIGN KEY (CPF_Cliente) REFERENCES Cliente(CPF)
);

CREATE TABLE ItensNota (
ID INT PRIMARY KEY,
NumeroNota INT,
CodigoProduto INT,
Quantidade INT,
PrecoTotal DECIMAL(10, 2),
FOREIGN KEY (NumeroNota) REFERENCES NotaFiscal(Numero),
FOREIGN KEY (CodigoProduto) REFERENCES Produto(Codigo)
);
