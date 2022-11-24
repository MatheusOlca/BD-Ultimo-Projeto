use industria_beleza;

	/*
		SUBQUERY
		Consultar Regiões e seus Pontos Estratégicos
	*/
	select PontosEstrategicos.idRegiao as 'Região', PontosEstrategicos.idPonto as 'Ponto Estratégico'
	from PontosEstrategicos 
	where exists(
		select * 
		from Regiao 
		where Regiao.idRegiao = PontosEstrategicos.idRegiao)
	order by PontosEstrategicos.idRegiao asc;

	/*
		SUBQUERY
		Consultar Vendedores e seus Veículos
	*/
	select Vendedor.nomeVendedor as 'Nome', Vendedor.idVeiculo as 'Veiculo'
	from Vendedor
	where exists(
		select * 
		from Veiculo
		where Vendedor.idVeiculo = Veiculo.idVeiculo)
	order by Vendedor.nomeVendedor asc;

	/*
		SUBQUERY
		Consultar Notas Fiscais de um Cliente
	*/
	select NotaFiscal.idCliente as 'ID Cliente', NotaFiscal.idNota as 'ID Nota'
	from NotaFiscal
	where exists(
		select *
		from Cliente
		where Cliente.idCliente = NotaFiscal.idCliente)
	order by NotaFiscal.idCliente asc;


/*
	INNER JOIN
	Produtos de uma Nota Fiscal
*/
select NotaFiscal.idNota as 'ID Nota', Produto.nomeProduto as 'Produto', Pedido.quantidadeProduto as 'Quantidade', Produto.precoProduto as 'Preço'
from NotaFiscal
inner join Pedido
on NotaFiscal.idNota = Pedido.idNota
inner join Produto
on Pedido.idProduto = Produto.idProduto
order by NotaFiscal.idNota asc;

/*
	LEFT JOIN
	Todos os Vendedores e todas as suas informações
*/
select Vendedor.nomeVendedor as 'Nome', Vendedor.cpfVendedor as 'CPF', Vendedor.idRegiao as 'Regiao', Vendedor.idVeiculo as 'Placa do Veículo', Veiculo.modeloVeiculo as 'Modelo', Veiculo.marcaVeiculo as 'Marca'
from Vendedor
left join Regiao
on Regiao.idRegiao = Vendedor.idRegiao
left join Veiculo
on Veiculo.idVeiculo = Vendedor.idVeiculo
order by Vendedor.nomeVendedor asc;

select Vendedor.nomeVendedor as 'Vendedor', Vendedor.idRegiao as 'Região', NotaFiscal.idNota as 'ID Nota', NotaFiscal.idCliente as 'ID Cliente'
from Vendedor
full outer join NotaFiscal
on NotaFiscal.idVendedor = Vendedor.idVendedor
order by Vendedor.nomeVendedor asc;


	/*
		SELECT
		Todos os Clientes
	*/
	select Cliente.nomeCliente as 'Nome', Cliente.cpfCliente as 'CPF'
	from Cliente
	order by Cliente.nomeCliente asc;

	/*
		SELECT
		Todos os Vendedores
	*/
	select Vendedor.nomeVendedor as 'Nome', Vendedor.cpfVendedor as 'CPF'
	from Vendedor
	order by Vendedor.nomeVendedor asc;

	/*
		SELECT
		Todas as Regiões
	*/
	select *
	from Regiao
	order by Regiao.idRegiao asc;
