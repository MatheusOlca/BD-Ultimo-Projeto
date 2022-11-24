use industria_beleza;

insert into Regiao(idRegiao)
values('Itaim Paulista');
insert into Regiao(idRegiao)
values('Jardim Helena');
insert into Regiao(idRegiao)
values('Jardim Robru');
insert into Regiao(idRegiao)
values('AE Carvalho');
insert into Regiao(idRegiao)
values('Burgo Paulista');

insert into PontosEstrategicos(idPonto, idRegiao)
values('Banquinha de Jornais - Tio Jorge', 'Jardim Helena');
insert into PontosEstrategicos(idPonto, idRegiao)
values('Padaria São Pedro', 'Jardim Helena');
insert into PontosEstrategicos(idPonto, idRegiao)
values('Panificadora Alfa', 'Jardim Helena');
insert into PontosEstrategicos(idPonto, idRegiao)
values('Padaria Rio d`Ouro', 'Burgo Paulista');
insert into PontosEstrategicos(idPonto, idRegiao)
values('Mercado Tayo', 'Burgo Paulista');
insert into PontosEstrategicos(idPonto, idRegiao)
values('Jardim', 'Jardim Robru');
insert into PontosEstrategicos(idPonto, idRegiao)
values('Robru', 'Jardim Robru');
insert into PontosEstrategicos(idPonto, idRegiao)
values('Padaria de Pobre', 'Itaim Paulista');
insert into PontosEstrategicos(idPonto, idRegiao)
values('Cemitério de Pobre', 'Itaim Paulista');
insert into PontosEstrategicos(idPonto, idRegiao)
values('Praça dos Professores', 'AE Carvalho');

insert into Veiculo(idVeiculo, modeloVeiculo, marcaVeiculo, corVeiculo)
values('BRA34P4', 'Fiesta', 'Fiat', 'Ciano Marinho');
insert into Veiculo(idVeiculo, modeloVeiculo, marcaVeiculo, corVeiculo)
values('BRA2RT4', 'Fiesta', 'Toyota', 'Preto');
insert into Veiculo(idVeiculo, modeloVeiculo, marcaVeiculo, corVeiculo)
values('BRO3479', 'Fiesta', 'Volkswagem', 'Ciano Escuro');
insert into Veiculo(idVeiculo, modeloVeiculo, marcaVeiculo, corVeiculo)
values('BRA098F', 'Fiesta', 'Ford', 'Cianeto');
insert into Veiculo(idVeiculo, modeloVeiculo, marcaVeiculo, corVeiculo)
values('BRA29JK', 'Fiesta', 'BMW', 'Cianinho');
insert into Veiculo(idVeiculo, modeloVeiculo, marcaVeiculo, corVeiculo)
values('BRAZIL', 'Fiesta', 'Nissan', 'Azul Ciano');

insert into Vendedor(nomeVendedor, cpfVendedor,	idRegiao, idVeiculo)
values('Pedro Henrique Galdino', '54216753894', 'Jardim Helena', 'BRO3479');
insert into Vendedor(nomeVendedor, cpfVendedor,	idRegiao, idVeiculo)
values('Pedro Henrique dos Anjos Ferreira', '215734681952', 'Jardim Helena', 'BRA29JK');
insert into Vendedor(nomeVendedor, cpfVendedor,	idRegiao, idVeiculo)
values('Pedro Henrique Hiroshi Nakamura', '975461238561', 'Jardim Robru', 'BRAZIL');
insert into Vendedor(nomeVendedor, cpfVendedor,	idRegiao, idVeiculo)
values('Pedro Henrique Botelho', '123457648851', 'Itaim Paulista', 'BRA098F');

insert into Cliente(nomeCliente, cpfCliente)
values('Rogrio Silva Santana', '45142376425');
insert into Cliente(nomeCliente, cpfCliente)
values('Jefersinho da Cunha Costa', '59486575215');
insert into Cliente(nomeCliente, cpfCliente)
values('Wagner Moreira', '23458976164');

insert into NotaFiscal(idVendedor, idCliente)
values(1, 2);
insert into NotaFiscal(idVendedor, idCliente)
values(2, 2);
insert into NotaFiscal(idVendedor, idCliente)
values(1, 3);
insert into NotaFiscal(idVendedor, idCliente)
values(0, 1);

insert into Produto(nomeProduto, estoqueProduto, precoProduto, vendivel)
values('Delineador', 1, 100.0, 1);
insert into Produto(nomeProduto, estoqueProduto, precoProduto, vendivel)
values('Shampoo de Brigadeiro', 5, 10.0, 1);
insert into Produto(nomeProduto, estoqueProduto, precoProduto, vendivel)
values('Shampoo de Brizadeiro', 50, 100.0, 0);
insert into Produto(nomeProduto, estoqueProduto, precoProduto, vendivel)
values('Esmalte Base', 50, 50.0, 1);
insert into Produto(nomeProduto, estoqueProduto, precoProduto, vendivel)
values('Esmalte Azul', 39, 40.0, 1);

insert into Pedido(idNota, idProduto, quantidadeProduto)
values(0, 0, 2);
insert into Pedido(idNota, idProduto, quantidadeProduto)
values(0, 1, 10);
insert into Pedido(idNota, idProduto, quantidadeProduto)
values(0, 3, 2);
insert into Pedido(idNota, idProduto, quantidadeProduto)
values(1, 4, 5);
insert into Pedido(idNota, idProduto, quantidadeProduto)
values(2, 3, 4);
insert into Pedido(idNota, idProduto, quantidadeProduto)
values(3, 3, 2);