-- Cria o banco industria_beleza
create database industria_beleza;
use industria_beleza;

-- Cria no banco a tabela Regiao
create table Regiao(
	idRegiao varchar(127) primary key
);

-- Cria no banco a tabela PontosEstrategicos
create table PontosEstrategicos(
	idPonto varchar(63) primary key,
	idRegiao varchar(127),
	foreign key (idRegiao) references Regiao(idRegiao)
);

-- Cria no banco a tabela Veiculo
create table Veiculo(
	idVeiculo varchar(7) primary key,
	modeloVeiculo varchar(23),
	marcaVeiculo varchar(15),
	corVeiculo varchar(23)
);

-- Cria no banco a tabela Vendedor
create table Vendedor(
	idVendedor int primary key identity(0, 1),
	nomeVendedor varchar(127),
	cpfVendedor varchar(11),
	idRegiao varchar(127),
	idVeiculo varchar(7),
	foreign key (idRegiao) references Regiao(idRegiao),
	foreign key (idVeiculo) references Veiculo(idVeiculo)
);

-- Cria no banco a tabela Cliente
create table Cliente(
	idCliente int primary key identity(0, 1),
	nomeCliente varchar(127),
	cpfCliente varchar(11),
);

-- Cria no banco a tabela Nota Fiscal
create table NotaFiscal(
	idNota int primary key identity(0, 1),
	idVendedor int,
	idCliente int,
	foreign key (idVendedor) references Vendedor(idVendedor),
	foreign key (idCliente) references Cliente(idCliente)
);

-- Cria no banco a tabela Produto
create table Produto(
	idProduto int primary key identity(0, 1),
	nomeProduto varchar(31),
	estoqueProduto int,
	precoProduto float,
	vendivel bit
);

-- Cria no banco a tabela Pedido
create table Pedido(
	idPedido int primary key identity(0, 1),
	idNota int,
	idProduto int,
	quantidadeProduto int,
	foreign key (idProduto) references Produto(idProduto),
	foreign key (idNota) references NotaFiscal(idNota)
);