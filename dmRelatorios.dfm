object dmRelatorio: TdmRelatorio
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 432
  Top = 193
  Height = 568
  Width = 956
  object dbBanco: TMSTable
    TableName = 'dbo.CCorrente'
    Connection = frmMenu.dadosfin
    FilterOptions = [foNoPartialCompare]
    IndexFieldNames = 'BancoID'
    Left = 31
    Top = 9
    object dbBancoBancoID: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'BancoID'
      Origin = 'dbo.CCorrente.BancoID'
      ReadOnly = True
    end
    object dbBancoAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'dbo.CCorrente.Agencia'
      Size = 10
    end
    object dbBancoBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'dbo.CCorrente.Banco'
    end
    object dbBancoConta: TStringField
      FieldName = 'Conta'
      Origin = 'dbo.CCorrente.Conta'
      Size = 15
    end
    object dbBancoNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.CCorrente.Nome'
      Size = 40
    end
    object dbBancoSigla: TStringField
      FieldName = 'Sigla'
      Origin = 'dbo.CCorrente.Sigla'
      Size = 3
    end
    object dbBancoEndereco: TMemoField
      FieldName = 'Endereco'
      Origin = 'dbo.CCorrente.Endereco'
      BlobType = ftMemo
    end
    object dbBancoGerente: TStringField
      FieldName = 'Gerente'
      Origin = 'dbo.CCorrente.Gerente'
      Size = 30
    end
    object dbBancoFone: TStringField
      FieldName = 'Fone'
      Origin = 'dbo.CCorrente.Fone'
      Size = 25
    end
    object dbBancoFax: TStringField
      FieldName = 'Fax'
      Origin = 'dbo.CCorrente.Fax'
      Size = 25
    end
    object dbBancoSite: TStringField
      FieldName = 'Site'
      Origin = 'dbo.CCorrente.Site'
      Size = 60
    end
    object dbBancoFilial: TSmallintField
      FieldName = 'Filial'
      Origin = 'dbo.CCorrente.Filial'
    end
    object dbBancoUltimoCheque: TIntegerField
      FieldName = 'UltimoCheque'
      Origin = 'dbo.CCorrente.UltimoCheque'
    end
    object dbBancoSaldoFechamento: TCurrencyField
      FieldName = 'SaldoFechamento'
      Origin = 'dbo.CCorrente.SaldoFechamento'
    end
    object dbBancoUsuarioFechamento: TStringField
      FieldName = 'UsuarioFechamento'
      Origin = 'dbo.CCorrente.UsuarioFechamento'
      Size = 10
    end
    object dbBancoSaldoAtual: TCurrencyField
      FieldName = 'SaldoAtual'
      Origin = 'dbo.CCorrente.SaldoAtual'
    end
    object dbBancoUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.CCorrente.Usuario'
      Size = 10
    end
    object dbBancoLimiteCredito: TCurrencyField
      FieldName = 'LimiteCredito'
      Origin = 'dbo.CCorrente.LimiteCredito'
    end
    object dbBancoStatus: TStringField
      FieldName = 'Status'
      Origin = 'dbo.CCorrente.Status'
      Size = 1
    end
    object dbBancoNomeBanco: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeBanco'
      LookupDataSet = dbBco
      LookupKeyFields = 'Banco'
      LookupResultField = 'Nome'
      KeyFields = 'Banco'
      Size = 30
      Lookup = True
    end
    object dbBancoNomeFilial: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeFilial'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Nome'
      KeyFields = 'Filial'
      Size = 40
      Lookup = True
    end
    object dbBancoDataFechamento: TDateTimeField
      FieldName = 'DataFechamento'
      Origin = 'dbo.CCorrente.DataFechamento'
    end
    object dbBancoDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'dbo.CCorrente.DataInclusao'
    end
  end
  object relCheque: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'select * from MovBanco,CCorrente'
      'where MovBanco.BancoID=CCorrente.BancoID')
    OnCalcFields = relChequeCalcFields
    Left = 181
    Top = 10
    object relChequeValorExtenso: TStringField
      FieldKind = fkCalculated
      FieldName = 'ValorExtenso'
      Size = 300
      Calculated = True
    end
    object relChequeMovBanco: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'MovBanco'
      Origin = 'MovBanco.MovBanco'
    end
    object relChequeBancoID: TIntegerField
      FieldName = 'BancoID'
      Origin = 'MovBanco.BancoID'
    end
    object relChequeTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'MovBanco.Tipo'
      Size = 1
    end
    object relChequeDoc: TStringField
      FieldName = 'Doc'
      Origin = 'MovBanco.Doc'
    end
    object relChequeValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'MovBanco.Valor'
    end
    object relChequeFavorecido: TStringField
      FieldName = 'Favorecido'
      Origin = 'MovBanco.Favorecido'
      Size = 50
    end
    object relChequeHistorico: TMemoField
      FieldName = 'Historico'
      Origin = 'MovBanco.Historico'
      BlobType = ftMemo
    end
    object relChequeStatus: TStringField
      FieldName = 'Status'
      Origin = 'MovBanco.Status'
      Size = 1
    end
    object relChequeFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'MovBanco.Filial'
    end
    object relChequeUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'MovBanco.Usuario'
      Size = 10
    end
    object relChequeBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'CCorrente.Banco'
    end
    object relChequeConta: TStringField
      FieldName = 'Conta'
      Origin = 'CCorrente.Conta'
      Size = 15
    end
    object relChequeAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'CCorrente.Agencia'
      Size = 10
    end
    object relChequeNome: TStringField
      FieldName = 'Nome'
      Origin = 'CCorrente.Nome'
      Size = 40
    end
    object relChequeSigla: TStringField
      FieldName = 'Sigla'
      Origin = 'CCorrente.Sigla'
      Size = 3
    end
    object relChequeCruzado: TBooleanField
      FieldName = 'Cruzado'
      Origin = 'MovBanco.Cruzado'
    end
    object relChequeFilialNome: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialNome'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Nome'
      KeyFields = 'Filial'
      Size = 40
      Lookup = True
    end
    object relChequeFilialEndereco: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialEndereco'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Endereco'
      KeyFields = 'Filial'
      Size = 40
      Lookup = True
    end
    object relChequeFilialCidade: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialCidade'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Cidade'
      KeyFields = 'Filial'
      Size = 30
      Lookup = True
    end
    object relChequeFilialUF: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialUF'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'UF'
      KeyFields = 'Filial'
      Size = 2
      Lookup = True
    end
    object relChequeFilialCep: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialCep'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Cep'
      KeyFields = 'Filial'
      Size = 9
      Lookup = True
    end
    object relChequeFilialFone: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialFone'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Fone'
      KeyFields = 'Filial'
      Size = 30
      Lookup = True
    end
    object relChequeFilialCGC: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialCGC'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'CGC'
      KeyFields = 'Filial'
      EditMask = '00\.000\.000\/0000\-00;0;_'
      Size = 18
      Lookup = True
    end
    object relChequeBancoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'BancoNome'
      LookupDataSet = dbBco
      LookupKeyFields = 'Banco'
      LookupResultField = 'Nome'
      KeyFields = 'Banco'
      Lookup = True
    end
    object relChequeValorcheque: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Valorcheque'
      Calculated = True
    end
    object relChequeFilial_1: TSmallintField
      FieldName = 'Filial_1'
      Origin = 'CCorrente.Filial'
    end
    object relChequeFilial1Nome: TStringField
      FieldKind = fkLookup
      FieldName = 'Filial1Nome'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Nome'
      KeyFields = 'Filial_1'
      Size = 40
      Lookup = True
    end
    object relChequeDias: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Dias'
      Calculated = True
    end
    object relChequePreDatado: TStringField
      FieldKind = fkCalculated
      FieldName = 'PreDatado'
      Size = 40
      Calculated = True
    end
    object relChequeFilialzero: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Filialzero'
      Calculated = True
    end
    object relChequeDataEntrada: TDateTimeField
      FieldName = 'DataEntrada'
      Origin = 'MovBanco.DataEntrada'
    end
    object relChequeDataMovimento: TDateTimeField
      FieldName = 'DataMovimento'
      Origin = 'MovBanco.DataMovimento'
    end
    object relChequeDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'MovBanco.DataInclusao'
    end
    object relChequeDataExtenso: TStringField
      FieldKind = fkCalculated
      FieldName = 'DataExtenso'
      Size = 100
      Calculated = True
    end
    object relChequeNumeroDoc: TStringField
      FieldName = 'NumeroDoc'
      Origin = 'MovBanco.NumeroDoc'
      FixedChar = True
    end
  end
  object dbFilial: TMSTable
    TableName = 'dbo.Filiais'
    Connection = frmMenu.dadosfin
    FilterOptions = [foNoPartialCompare]
    IndexFieldNames = 'Filial'
    Left = 31
    Top = 58
    object dbFilialFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'dbo.Filiais.Filial'
    end
    object dbFilialNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Filiais.Nome'
      Size = 60
    end
    object dbFilialRazao: TStringField
      FieldName = 'Razao'
      Origin = 'dbo.Filiais.Razao'
      FixedChar = True
      Size = 60
    end
    object dbFilialEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'dbo.Filiais.Endereco'
      Size = 40
    end
    object dbFilialCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'dbo.Filiais.Cidade'
      Size = 30
    end
    object dbFilialUF: TStringField
      FieldName = 'UF'
      Origin = 'dbo.Filiais.UF'
      Size = 2
    end
    object dbFilialCep: TStringField
      FieldName = 'Cep'
      Origin = 'dbo.Filiais.Cep'
      Size = 9
    end
    object dbFilialFone: TStringField
      FieldName = 'Fone'
      Origin = 'dbo.Filiais.Fone'
      Size = 30
    end
    object dbFilialCGC: TStringField
      FieldName = 'CGC'
      Origin = 'dbo.Filiais.CGC'
      Size = 18
    end
    object dbFilialIE: TStringField
      FieldName = 'IE'
      Origin = 'dbo.Filiais.IE'
      Size = 18
    end
    object dbFilialUltimaNF: TIntegerField
      FieldName = 'UltimaNF'
      Origin = 'dbo.Filiais.UltimaNF'
    end
    object dbFilialCod1: TSmallintField
      FieldName = 'Cod1'
      Origin = 'dbo.Filiais.Cod1'
    end
    object dbFilialCod2: TSmallintField
      FieldName = 'Cod2'
      Origin = 'dbo.Filiais.Cod2'
    end
    object dbFilialCod3: TSmallintField
      FieldName = 'Cod3'
      Origin = 'dbo.Filiais.Cod3'
    end
    object dbFilialUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.Filiais.Usuario'
      Size = 10
    end
    object dbFilialDataInicio: TDateTimeField
      FieldName = 'DataInicio'
      Origin = 'dbo.Filiais.DataInicio'
    end
    object dbFilialCCM: TStringField
      FieldName = 'CCM'
      Origin = 'dbo.Filiais.CCM'
      FixedChar = True
      Size = 10
    end
  end
  object dbCliente: TMSTable
    TableName = 'dbo.Clientes'
    Connection = frmMenu.dadosfin
    FilterOptions = [foNoPartialCompare]
    IndexFieldNames = 'CliFor'
    Left = 31
    Top = 198
    object dbClienteCliFor: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'CliFor'
      Origin = 'dbo.Clientes.CliFor'
      ReadOnly = True
    end
    object dbClienteNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Clientes.Nome'
      Size = 60
    end
    object dbClienteStatusPre: TBooleanField
      FieldName = 'StatusPre'
      Origin = 'dbo.Clientes.StatusPre'
    end
    object dbClienteCGC: TStringField
      FieldName = 'CGC'
      Origin = 'dbo.Clientes.CGC'
      Size = 18
    end
    object dbClienteIE: TStringField
      FieldName = 'IE'
      Origin = 'dbo.Clientes.IE'
      Size = 18
    end
    object dbClienteEmail: TStringField
      FieldName = 'Email'
      Origin = 'dbo.Clientes.Email'
      Size = 150
    end
    object dbClienteHomePage: TStringField
      FieldName = 'HomePage'
      Origin = 'dbo.Clientes.HomePage'
      Size = 60
    end
    object dbClienteStatusCli: TBooleanField
      FieldName = 'StatusCli'
      Origin = 'dbo.Clientes.StatusCli'
    end
    object dbClienteStatusFor: TBooleanField
      FieldName = 'StatusFor'
      Origin = 'dbo.Clientes.StatusFor'
    end
    object dbClienteObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'dbo.Clientes.Observacao'
      BlobType = ftMemo
    end
    object dbClienteLogotipo: TGraphicField
      FieldName = 'Logotipo'
      Origin = 'dbo.Clientes.Logotipo'
      BlobType = ftGraphic
    end
    object dbClienteJuridica: TBooleanField
      FieldName = 'Juridica'
      Origin = 'dbo.Clientes.Juridica'
    end
    object dbClienteUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.Clientes.Usuario'
      Size = 10
    end
    object dbClienteBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'dbo.Clientes.Banco'
    end
    object dbClienteAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'dbo.Clientes.Agencia'
      Size = 10
    end
    object dbClienteConta: TStringField
      FieldName = 'Conta'
      Origin = 'dbo.Clientes.Conta'
      Size = 15
    end
  end
  object dbFuncionario: TMSTable
    TableName = 'dbo.Funcionario'
    Connection = frmMenu.dadosfin
    FilterOptions = [foNoPartialCompare]
    IndexFieldNames = 'Funcionario'
    Left = 31
    Top = 245
    object dbFuncionarioFuncionario: TIntegerField
      FieldName = 'Funcionario'
    end
    object dbFuncionarioNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object dbFuncionarioBanco: TSmallintField
      FieldName = 'Banco'
    end
    object dbFuncionarioAgencia: TStringField
      FieldName = 'Agencia'
      Size = 10
    end
    object dbFuncionarioConta: TStringField
      FieldName = 'Conta'
      Size = 10
    end
    object dbFuncionarioCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object dbFuncionarioSalarioBruto: TCurrencyField
      FieldName = 'SalarioBruto'
    end
    object dbFuncionarioEndereco: TStringField
      FieldName = 'Endereco'
      Size = 50
    end
    object dbFuncionarioBairro: TStringField
      FieldName = 'Bairro'
      Size = 40
    end
    object dbFuncionarioCidade: TStringField
      FieldName = 'Cidade'
      Size = 30
    end
    object dbFuncionarioUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object dbFuncionarioCep: TStringField
      FieldName = 'Cep'
      Size = 9
    end
    object dbFuncionarioFone: TStringField
      FieldName = 'Fone'
      Size = 60
    end
    object dbFuncionarioRG: TStringField
      FieldName = 'RG'
      Size = 15
    end
    object dbFuncionarioEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object dbFuncionarioFilial: TIntegerField
      FieldName = 'Filial'
    end
    object dbFuncionarioObservacao: TMemoField
      FieldName = 'Observacao'
      BlobType = ftMemo
      Size = 10
    end
    object dbFuncionarioUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object dbFuncionarioDataInicio: TDateTimeField
      FieldName = 'DataInicio'
    end
    object dbFuncionarioDataFim: TDateTimeField
      FieldName = 'DataFim'
    end
    object dbFuncionarioDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
    end
  end
  object dbPlanoC: TMSTable
    TableName = 'dbo.PlanoContas'
    Connection = frmMenu.dadosfin
    Left = 31
    Top = 339
    object dbPlanoCCod1: TSmallintField
      FieldName = 'Cod1'
      Origin = 'dbo.PlanoContas.Cod1'
    end
    object dbPlanoCCod2: TSmallintField
      FieldName = 'Cod2'
      Origin = 'dbo.PlanoContas.Cod2'
    end
    object dbPlanoCCod3: TSmallintField
      FieldName = 'Cod3'
      Origin = 'dbo.PlanoContas.Cod3'
    end
    object dbPlanoCDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'dbo.PlanoContas.Descricao'
      Size = 60
    end
    object dbPlanoCDescricaoFC: TStringField
      FieldName = 'DescricaoFC'
      Origin = 'dbo.PlanoContas.DescricaoFC'
      Size = 60
    end
    object dbPlanoCIndicativo: TStringField
      FieldName = 'Indicativo'
      Origin = 'dbo.PlanoContas.Indicativo'
      Size = 1
    end
  end
  object dbMovBanco: TMSTable
    TableName = 'dbo.MovBanco'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'MovBanco'
    Left = 107
    Top = 9
    object dbMovBancoMovBanco: TAutoIncField
      FieldName = 'MovBanco'
      ReadOnly = True
    end
    object dbMovBancoDataEntrada: TDateField
      FieldName = 'DataEntrada'
    end
    object dbMovBancoBancoID: TIntegerField
      FieldName = 'BancoID'
    end
    object dbMovBancoTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object dbMovBancoDoc: TStringField
      FieldName = 'Doc'
    end
    object dbMovBancoValor: TCurrencyField
      FieldName = 'Valor'
    end
    object dbMovBancoFavorecido: TStringField
      FieldName = 'Favorecido'
      Size = 50
    end
    object dbMovBancoHistorico: TMemoField
      FieldName = 'Historico'
      BlobType = ftMemo
      Size = 10
    end
    object dbMovBancoStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object dbMovBancoFilial: TIntegerField
      FieldName = 'Filial'
    end
    object dbMovBancoDataMovimento: TDateField
      FieldName = 'DataMovimento'
    end
    object dbMovBancoDataInclusao: TDateField
      FieldName = 'DataInclusao'
    end
    object dbMovBancoUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
  end
  object dbBco: TMSTable
    TableName = 'dbo.Bancos'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Banco'
    Left = 31
    Top = 394
    object dbBcoBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'dbo.Bancos.Banco'
    end
    object dbBcoNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Bancos.Nome'
      Size = 30
    end
  end
  object qryTotBanco: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'select MovBanco.BancoID,'
      '          sum(FolhaCLTItens.SalarioLiquido) as SalarioLiquido'
      'from MovBanco,FolhaCLTItens'
      'where FolhaCLTItens.MovBanco=MovBanco.MovBanco'
      'group by BancoID')
    Left = 505
    Top = 151
    object qryTotBancoBancoID: TIntegerField
      FieldName = 'BancoID'
      Origin = 'DADOS."MovBanco.DB".BancoID'
    end
    object qryTotBancoSalarioLiquido: TCurrencyField
      FieldName = 'SalarioLiquido'
      Origin = 'DADOS."FolhaCLTItens.DB".SalarioLiquido'
    end
  end
  object dbProprietario: TMSTable
    TableName = 'dbo.Proprietario'
    Connection = frmMenu.dadosfin
    Left = 31
    Top = 433
    object dbProprietarioEndereco: TStringField
      FieldName = 'Endereco'
      Size = 60
    end
    object dbProprietarioCidade: TStringField
      FieldName = 'Cidade'
      Size = 30
    end
    object dbProprietarioUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object dbProprietarioCep: TStringField
      FieldName = 'Cep'
      Size = 9
    end
    object dbProprietarioCGC: TStringField
      FieldName = 'CGC'
      Size = 18
    end
    object dbProprietarioIE: TStringField
      FieldName = 'IE'
      Size = 15
    end
    object dbProprietarioTelefone: TStringField
      FieldName = 'Telefone'
      Size = 40
    end
    object dbProprietarioFax: TStringField
      FieldName = 'Fax'
      Size = 40
    end
  end
  object relPrevisao: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'select * from previsao,clientes'
      'where previsao.cliente=clientes.clifor'
      'order by cod1,nome, dia')
    OnCalcFields = relPrevisaoCalcFields
    Left = 182
    Top = 206
    object relPrevisaoFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'DADOS."previsao.DB".Filial'
    end
    object relPrevisaoPrevisao: TIntegerField
      FieldName = 'Previsao'
      Origin = 'DADOS."previsao.DB".Previsao'
    end
    object relPrevisaoCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'DADOS."previsao.DB".Cliente'
    end
    object relPrevisaoClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
      Origin = 'DADOS."previsao.DB".ClienteDeb'
    end
    object relPrevisaoHistorico: TStringField
      FieldName = 'Historico'
      Origin = 'DADOS."previsao.DB".Historico'
      Size = 60
    end
    object relPrevisaoValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'DADOS."previsao.DB".Valor'
    end
    object relPrevisaoCod1: TSmallintField
      FieldName = 'Cod1'
      Origin = 'DADOS."previsao.DB".Cod1'
    end
    object relPrevisaoCod2: TSmallintField
      FieldName = 'Cod2'
      Origin = 'DADOS."previsao.DB".Cod2'
    end
    object relPrevisaoCod3: TSmallintField
      FieldName = 'Cod3'
      Origin = 'DADOS."previsao.DB".Cod3'
    end
    object relPrevisaoDia: TSmallintField
      FieldName = 'Dia'
      Origin = 'DADOS."previsao.DB".Dia'
    end
    object relPrevisaoTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'DADOS."previsao.DB".Tipo'
      Size = 1
    end
    object relPrevisaoRepetir: TIntegerField
      FieldName = 'Repetir'
      Origin = 'DADOS."previsao.DB".Repetir'
    end
    object relPrevisaoAtivo: TBooleanField
      FieldName = 'Ativo'
      Origin = 'DADOS."previsao.DB".Ativo'
    end
    object relPrevisaoUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DADOS."previsao.DB".Usuario'
      Size = 10
    end
    object relPrevisaoNome: TStringField
      FieldName = 'Nome'
      Origin = 'DADOS."previsao.DB".Filial'
      Size = 60
    end
    object relPrevisaoTipoTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'TipoTexto'
      Calculated = True
    end
    object relPrevisaoCodTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'CodTexto'
      Size = 30
      Calculated = True
    end
    object relPrevisaoPlanoTexto: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoTexto'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1;Cod2;Cod3'
      LookupResultField = 'Descricao'
      KeyFields = 'Cod1;Cod2;Cod3'
      Size = 60
      Lookup = True
    end
    object relPrevisaoDataIni: TDateTimeField
      FieldName = 'DataIni'
    end
    object relPrevisaoDataFim: TDateTimeField
      FieldName = 'DataFim'
    end
  end
  object relLancamento: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'select * from lancamentos'
      'order by Cod1,DataVencto,Cliente'
      '')
    OnCalcFields = relLancamentoCalcFields
    Left = 279
    Top = 198
    object relLancamentoFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'lancamentos.Filial'
    end
    object relLancamentoLancamento: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Lancamento'
      Origin = 'lancamentos.Lancamento'
    end
    object relLancamentoCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'lancamentos.Cliente'
    end
    object relLancamentoClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
      Origin = 'lancamentos.ClienteDeb'
    end
    object relLancamentoPrazo: TIntegerField
      FieldName = 'Prazo'
      Origin = 'lancamentos.Prazo'
    end
    object relLancamentoCod1: TSmallintField
      FieldName = 'Cod1'
      Origin = 'lancamentos.Cod1'
    end
    object relLancamentoCod2: TSmallintField
      FieldName = 'Cod2'
      Origin = 'lancamentos.Cod2'
    end
    object relLancamentoCod3: TSmallintField
      FieldName = 'Cod3'
      Origin = 'lancamentos.Cod3'
    end
    object relLancamentoDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
      Origin = 'lancamentos.DataEmissao'
    end
    object relLancamentoDataVencto: TDateTimeField
      FieldName = 'DataVencto'
      Origin = 'lancamentos.DataVencto'
    end
    object relLancamentoDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'lancamentos.DataInclusao'
    end
    object relLancamentoDataPagto: TDateTimeField
      FieldName = 'DataPagto'
      Origin = 'lancamentos.DataPagto'
    end
    object relLancamentoHistorico: TStringField
      FieldName = 'Historico'
      Origin = 'lancamentos.Historico'
      Size = 60
    end
    object relLancamentoDoc: TStringField
      FieldName = 'Doc'
      Origin = 'lancamentos.Doc'
    end
    object relLancamentoValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'lancamentos.Valor'
    end
    object relLancamentoBancoID: TIntegerField
      FieldName = 'BancoID'
      Origin = 'lancamentos.BancoId'
    end
    object relLancamentoCheque: TStringField
      FieldName = 'Cheque'
      Origin = 'lancamentos.Cheque'
    end
    object relLancamentoValorPago: TCurrencyField
      FieldName = 'ValorPago'
      Origin = 'lancamentos.ValorPago'
    end
    object relLancamentoPago: TBooleanField
      FieldName = 'Pago'
      Origin = 'lancamentos.Pago'
    end
    object relLancamentoSelecionado: TBooleanField
      FieldName = 'Selecionado'
      Origin = 'lancamentos.Selecionado'
    end
    object relLancamentoStatus: TStringField
      FieldName = 'Status'
      Origin = 'lancamentos.Status'
      Size = 1
    end
    object relLancamentoPrevisao: TIntegerField
      FieldName = 'Previsao'
      Origin = 'lancamentos.Previsao'
    end
    object relLancamentoMovBanco: TIntegerField
      FieldName = 'MovBanco'
      Origin = 'lancamentos.MovBanco'
    end
    object relLancamentoNF: TIntegerField
      FieldName = 'NF'
      Origin = 'lancamentos.NF'
    end
    object relLancamentoSeq: TStringField
      FieldName = 'Seq'
      Origin = 'lancamentos.Seq'
      Size = 1
    end
    object relLancamentoPorcentagem: TFloatField
      FieldName = 'Porcentagem'
      Origin = 'lancamentos.Porcentagem'
      Precision = 5
    end
    object relLancamentoTributo: TBooleanField
      FieldName = 'Tributo'
      Origin = 'lancamentos.Tributo'
    end
    object relLancamentoUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'lancamentos.Usuario'
      Size = 10
    end
    object relLancamentoFilial1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Filial1'
      Calculated = True
    end
    object relLancamentoClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'CliFor'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 60
      Lookup = True
    end
    object relLancamentoValorD: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorD'
      Calculated = True
    end
    object relLancamentoValorC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorC'
      Calculated = True
    end
    object relLancamentoPlanoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1;Cod2;Cod3'
      LookupResultField = 'Descricao'
      KeyFields = 'Cod1;Cod2;Cod3'
      Size = 40
      Lookup = True
    end
    object relLancamentoValorReal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorReal'
      Calculated = True
    end
    object relLancamentoPlanoNome1: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome1'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1'
      LookupResultField = 'Descricao'
      KeyFields = 'Cod1'
      Size = 40
      Lookup = True
    end
    object relLancamentoPlanoNome2: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome2'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1;Cod2'
      LookupResultField = 'Descricao'
      KeyFields = 'Cod1;Cod2'
      Size = 40
      Lookup = True
    end
    object relLancamentoFCNome: TStringField
      FieldKind = fkLookup
      FieldName = 'FCNome'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1;Cod2;Cod3'
      LookupResultField = 'DescricaoFC'
      KeyFields = 'Cod1;Cod2;Cod3'
      Size = 60
      Lookup = True
    end
    object relLancamentoFCNome1: TStringField
      FieldKind = fkLookup
      FieldName = 'FCNome1'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1'
      LookupResultField = 'DescricaoFC'
      KeyFields = 'Cod1'
      Size = 60
      Lookup = True
    end
    object relLancamentoFCNome2: TStringField
      FieldKind = fkLookup
      FieldName = 'FCNome2'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1;Cod2'
      LookupResultField = 'DescricaoFC'
      KeyFields = 'Cod1;Cod2'
      Size = 60
      Lookup = True
    end
    object relLancamentoPlanoNomeCalc: TStringField
      FieldKind = fkCalculated
      FieldName = 'PlanoNomeCalc'
      Size = 60
      Calculated = True
    end
  end
  object dbLancamento: TMSTable
    TableName = 'dbo.Lancamentos'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Filial;Lancamento'
    Left = 107
    Top = 58
    object dbLancamentoFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'dbo.Lancamentos.Filial'
    end
    object dbLancamentoLancamento: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'Lancamento'
      Origin = 'dbo.Lancamentos.Lancamento'
      ReadOnly = True
    end
    object dbLancamentoCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.Lancamentos.Cliente'
    end
    object dbLancamentoClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
      Origin = 'dbo.Lancamentos.ClienteDeb'
    end
    object dbLancamentoDataEmissao: TDateField
      FieldName = 'DataEmissao'
      Origin = 'dbo.Lancamentos.DataEmissao'
    end
    object dbLancamentoDataVencto: TDateField
      FieldName = 'DataVencto'
      Origin = 'dbo.Lancamentos.DataVencto'
    end
    object dbLancamentoPrazo: TIntegerField
      FieldName = 'Prazo'
      Origin = 'dbo.Lancamentos.Prazo'
    end
    object dbLancamentoCod1: TSmallintField
      FieldName = 'Cod1'
      Origin = 'dbo.Lancamentos.Cod1'
    end
    object dbLancamentoCod2: TSmallintField
      FieldName = 'Cod2'
      Origin = 'dbo.Lancamentos.Cod2'
    end
    object dbLancamentoCod3: TSmallintField
      FieldName = 'Cod3'
      Origin = 'dbo.Lancamentos.Cod3'
    end
    object dbLancamentoHistorico: TStringField
      FieldName = 'Historico'
      Origin = 'dbo.Lancamentos.Historico'
      Size = 60
    end
    object dbLancamentoDoc: TStringField
      FieldName = 'Doc'
      Origin = 'dbo.Lancamentos.Doc'
    end
    object dbLancamentoValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'dbo.Lancamentos.Valor'
    end
    object dbLancamentoBancoID: TIntegerField
      FieldName = 'BancoID'
      Origin = 'dbo.Lancamentos.BancoID'
    end
    object dbLancamentoCheque: TStringField
      FieldName = 'Cheque'
      Origin = 'dbo.Lancamentos.Cheque'
    end
    object dbLancamentoDataPagto: TDateField
      FieldName = 'DataPagto'
      Origin = 'dbo.Lancamentos.DataPagto'
    end
    object dbLancamentoValorPago: TCurrencyField
      FieldName = 'ValorPago'
      Origin = 'dbo.Lancamentos.ValorPago'
    end
    object dbLancamentoPago: TBooleanField
      FieldName = 'Pago'
      Origin = 'dbo.Lancamentos.Pago'
    end
    object dbLancamentoSelecionado: TBooleanField
      FieldName = 'Selecionado'
      Origin = 'dbo.Lancamentos.Selecionado'
    end
    object dbLancamentoStatus: TStringField
      FieldName = 'Status'
      Origin = 'dbo.Lancamentos.Status'
      Size = 1
    end
    object dbLancamentoPrevisao: TIntegerField
      FieldName = 'Previsao'
      Origin = 'dbo.Lancamentos.Previsao'
    end
    object dbLancamentoMovBanco: TIntegerField
      FieldName = 'MovBanco'
      Origin = 'dbo.Lancamentos.MovBanco'
    end
    object dbLancamentoNF: TIntegerField
      FieldName = 'NF'
      Origin = 'dbo.Lancamentos.NF'
    end
    object dbLancamentoPorcentagem: TFloatField
      FieldName = 'Porcentagem'
      Origin = 'dbo.Lancamentos.Porcentagem'
      Precision = 5
    end
    object dbLancamentoTributo: TBooleanField
      FieldName = 'Tributo'
      Origin = 'dbo.Lancamentos.Tributo'
    end
    object dbLancamentoDataInclusao: TDateField
      FieldName = 'DataInclusao'
      Origin = 'dbo.Lancamentos.DataInclusao'
    end
    object dbLancamentoUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.Lancamentos.Usuario'
      Size = 10
    end
  end
  object relLancamento3: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'select  Cod1,Cod2,Cod3,'
      '          sum(valorPago) as ValorPago,'
      '          sum(valor) as valor,'
      '          sum(valorreal) as valorreal'
      'from RelLancamentos'
      'group by Cod1,Cod2,Cod3'
      'order  by Cod1,Cod2,Cod3')
    Filtered = True
    OnCalcFields = relLancamento3CalcFields
    OnFilterRecord = relLancamento3FilterRecord
    Left = 176
    Top = 245
    object relLancamento3Cod1: TSmallintField
      FieldName = 'Cod1'
      Origin = 'RelLancamentos.Cod1'
    end
    object relLancamento3Cod2: TSmallintField
      FieldName = 'Cod2'
      Origin = 'RelLancamentos.Cod2'
    end
    object relLancamento3Cod3: TSmallintField
      FieldName = 'Cod3'
      Origin = 'RelLancamentos.Cod3'
    end
    object relLancamento3ValorPago: TCurrencyField
      FieldName = 'ValorPago'
      Origin = '.'
    end
    object relLancamento3valor: TCurrencyField
      FieldName = 'valor'
      Origin = '.'
    end
    object relLancamento3PlanoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1;Cod2;Cod3'
      LookupResultField = 'Descricao'
      KeyFields = 'Cod1;Cod2;Cod3'
      Size = 40
      Lookup = True
    end
    object relLancamento3PlanoNome1: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome1'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1'
      LookupResultField = 'Descricao'
      KeyFields = 'Cod1'
      Size = 40
      Lookup = True
    end
    object relLancamento3PlanoNome2: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome2'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1;Cod2'
      LookupResultField = 'Descricao'
      KeyFields = 'Cod1;Cod2'
      Size = 40
      Lookup = True
    end
    object relLancamento3Filial: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Filial'
      Calculated = True
    end
    object relLancamento3PFaturamento: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PFaturamento'
      DisplayFormat = '##0.00%'
      EditFormat = '##0.00%'
      Calculated = True
    end
    object relLancamento3Faturamento: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Faturamento'
      Calculated = True
    end
    object relLancamento3PlanoNomeCalc: TStringField
      FieldKind = fkCalculated
      FieldName = 'PlanoNomeCalc'
      Size = 40
      Calculated = True
    end
    object relLancamento3valorreal: TCurrencyField
      FieldName = 'valorreal'
      Origin = '.'
    end
  end
  object relNF: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'select * from NF'
      'order by NF')
    OnCalcFields = relNFCalcFields
    Left = 176
    Top = 339
    object relNFFilial: TSmallintField
      FieldName = 'Filial'
      Origin = 'NF.Filial'
    end
    object relNFNF: TIntegerField
      FieldName = 'NF'
      Origin = 'NF.NF'
    end
    object relNFFatura: TStringField
      FieldName = 'Fatura'
      Origin = 'NF.Fatura'
      Size = 10
    end
    object relNFNatureza: TStringField
      FieldName = 'Natureza'
      Origin = 'NF.Natureza'
      Size = 30
    end
    object relNFCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'NF.Cliente'
    end
    object relNFDescricao: TMemoField
      FieldName = 'Descricao'
      Origin = 'NF.Descricao'
      BlobType = ftMemo
    end
    object relNFIRenda: TFloatField
      FieldName = 'IRenda'
      Origin = 'NF.IRenda'
      Precision = 3
    end
    object relNFImpostos: TFloatField
      FieldName = 'Impostos'
      Origin = 'NF.Impostos'
      Precision = 3
    end
    object relNFNFBruto: TCurrencyField
      FieldName = 'NFBruto'
      Origin = 'NF.NFBruto'
    end
    object relNFValorIRenda: TCurrencyField
      FieldName = 'ValorIRenda'
      Origin = 'NF.ValorIRenda'
    end
    object relNFValorImpostos: TCurrencyField
      FieldName = 'ValorImpostos'
      Origin = 'NF.ValorImpostos'
    end
    object relNFNFLiquida: TCurrencyField
      FieldName = 'NFLiquida'
      Origin = 'NF.NFLiquida'
    end
    object relNFObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'NF.Observacao'
      BlobType = ftMemo
    end
    object relNFStatus: TBooleanField
      FieldName = 'Status'
      Origin = 'NF.Status'
    end
    object relNFBancoIDDep: TIntegerField
      FieldName = 'BancoIDDep'
      Origin = 'NF.BancoIDDep'
    end
    object relNFUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'NF.Usuario'
      Size = 10
    end
    object relNFClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'CliFor'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 60
      Lookup = True
    end
    object relNFClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
      Origin = 'NF.ClienteDeb'
    end
    object relNFClienteDebNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteDebNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'CliFor'
      LookupResultField = 'Nome'
      KeyFields = 'ClienteDeb'
      Size = 60
      Lookup = True
    end
    object relNFRepresentatividade: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Representatividade'
      DisplayFormat = '##0.00%'
      EditFormat = '##0.00%'
      Calculated = True
    end
    object relNFFilial1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Filial1'
      Calculated = True
    end
    object relNFFilialNome: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialNome'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Nome'
      KeyFields = 'Filial'
      Size = 40
      Lookup = True
    end
    object relNFClienteDebCNPJ: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteDebCNPJ'
      LookupDataSet = dbCliente
      LookupKeyFields = 'CliFor'
      LookupResultField = 'CGC'
      KeyFields = 'ClienteDeb'
      EditMask = '00\.000\.000\/0000\-00;0;_'
      Lookup = True
    end
    object relNFDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
      Origin = 'NF.DataEmissao'
    end
    object relNFDataVencto: TDateTimeField
      FieldName = 'DataVencto'
      Origin = 'NF.DataVencto'
    end
    object relNFDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'NF.DataInclusao'
    end
  end
  object relLancamento2: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'select Cod1,Cod2,'
      '          sum(valorPago) as ValorPago,'
      '          sum(valor) as valor,'
      '          sum(valorreal) as valorreal'
      'from RelLancamentos'
      'group by Cod1,Cod2'
      'order  by Cod1,Cod2')
    Filtered = True
    OnCalcFields = relLancamento2CalcFields
    OnFilterRecord = relLancamento2FilterRecord
    Left = 176
    Top = 292
    object relLancamento2Cod1: TSmallintField
      FieldName = 'Cod1'
      Origin = 'DADOS."Lancamentos.DB".Cod1'
    end
    object relLancamento2Cod2: TSmallintField
      FieldName = 'Cod2'
      Origin = 'DADOS."Lancamentos.DB".Cod2'
    end
    object relLancamento2ValorPago: TCurrencyField
      FieldName = 'ValorPago'
      Origin = 'DADOS."Lancamentos.DB".ValorPago'
    end
    object relLancamento2Filial: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Filial'
      Calculated = True
    end
    object relLancamento2PlanoNome2: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome2'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1;Cod2'
      LookupResultField = 'Descricao'
      KeyFields = 'Cod1;Cod2'
      Size = 40
      Lookup = True
    end
    object StringField2: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome1'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1'
      LookupResultField = 'Descricao'
      KeyFields = 'Cod1'
      Size = 40
      Lookup = True
    end
    object relLancamento2PFaturamento: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PFaturamento'
      DisplayFormat = '##0.00%'
      EditFormat = '##0.00%'
      Calculated = True
    end
    object relLancamento2Faturamento: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Faturamento'
      Calculated = True
    end
    object relLancamento2valor: TCurrencyField
      FieldName = 'valor'
      Origin = 'DADOS."Lancamentos.DB".Valor'
    end
    object relLancamento2valorreal: TCurrencyField
      FieldName = 'valorreal'
      Origin = 'DADOS."RelLancamentos.DB".ValorReal'
    end
  end
  object relGPS: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'select * from RelGPS,CCorrente,Lancamentos'
      'where RelGPS.BancoID=CCorrente.BancoID and'
      '           Lancamentos.MovBanco=RelGPS.MovBanco')
    OnCalcFields = relGPSCalcFields
    Left = 181
    Top = 57
    object relGPSMovBanco: TIntegerField
      FieldName = 'MovBanco'
      Origin = 'RelGPS.MovBanco'
    end
    object relGPSBancoID: TIntegerField
      FieldName = 'BancoID'
      Origin = 'RelGPS.BancoID'
    end
    object relGPSTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'RelGPS.Tipo'
      Size = 1
    end
    object relGPSDoc: TStringField
      FieldName = 'Doc'
      Origin = 'RelGPS.Doc'
    end
    object relGPSValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'RelGPS.Valor'
    end
    object relGPSOutros: TCurrencyField
      FieldName = 'Outros'
      Origin = 'RelGPS.Outros'
    end
    object relGPSMulta: TCurrencyField
      FieldName = 'Multa'
      Origin = 'RelGPS.Multa'
    end
    object relGPSValorGPS: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorGPS'
      Calculated = True
    end
    object relGPSFavorecido: TStringField
      FieldName = 'Favorecido'
      Origin = 'RelGPS.Favorecido'
      Size = 50
    end
    object relGPSHistorico: TMemoField
      FieldName = 'Historico'
      Origin = 'RelGPS.Historico'
      BlobType = ftMemo
    end
    object relGPSStatus: TStringField
      FieldName = 'Status'
      Origin = 'RelGPS.Status'
      Size = 1
    end
    object relGPSFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'RelGPS.Filial'
    end
    object relGPSUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'RelGPS.Usuario'
      Size = 10
    end
    object relGPSBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'CCorrente.Banco'
    end
    object relGPSAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'CCorrente.Agencia'
      Size = 10
    end
    object relGPSConta: TStringField
      FieldName = 'Conta'
      Origin = 'CCorrente.Conta'
      Size = 15
    end
    object relGPSNome: TStringField
      FieldName = 'Nome'
      Origin = 'CCorrente.Nome'
      Size = 40
    end
    object relGPSSigla: TStringField
      FieldName = 'Sigla'
      Origin = 'CCorrente.Sigla'
      Size = 3
    end
    object relGPSCruzado: TBooleanField
      FieldName = 'Cruzado'
      Origin = 'RelGPS.Cruzado'
    end
    object relGPSFilialNome: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialNome'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Nome'
      KeyFields = 'Filial'
      Size = 40
      Lookup = True
    end
    object relGPSFilialEndereco: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialEndereco'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Endereco'
      KeyFields = 'Filial'
      Size = 40
      Lookup = True
    end
    object relGPSFilialCidade: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialCidade'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Cidade'
      KeyFields = 'Filial'
      Size = 30
      Lookup = True
    end
    object relGPSFilialUF: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialUF'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'UF'
      KeyFields = 'Filial'
      Size = 2
      Lookup = True
    end
    object relGPSFilialCep: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialCep'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Cep'
      KeyFields = 'Filial'
      Size = 9
      Lookup = True
    end
    object relGPSFilialFone: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialFone'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Fone'
      KeyFields = 'Filial'
      Size = 30
      Lookup = True
    end
    object relGPSFilialCGC: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialCGC'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'CGC'
      KeyFields = 'Filial'
      EditMask = '00\.000\.000\/0000\-00;0;_'
      Size = 18
      Lookup = True
    end
    object relGPSBancoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'BancoNome'
      LookupDataSet = dbBco
      LookupKeyFields = 'Banco'
      LookupResultField = 'Nome'
      KeyFields = 'Banco'
      Lookup = True
    end
    object relGPSCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'Lancamentos.Cliente'
    end
    object relGPSClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'CliFor'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 60
      Lookup = True
    end
    object relGPSClienteCGC: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteCGC'
      LookupDataSet = dbCliente
      LookupKeyFields = 'CliFor'
      LookupResultField = 'CGC'
      KeyFields = 'Cliente'
      EditMask = '00\.000\.000\/0000\-00;0;_'
      Size = 18
      Lookup = True
    end
    object relGPSClienteEndereco: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteEndereco'
      LookupDataSet = dbClienteEnd
      LookupKeyFields = 'Cliente'
      LookupResultField = 'Endereco'
      KeyFields = 'Cliente'
      Size = 50
      Lookup = True
    end
    object relGPSClienteCidade: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteCidade'
      LookupDataSet = dbClienteEnd
      LookupKeyFields = 'Cliente'
      LookupResultField = 'Cidade'
      KeyFields = 'Cliente'
      Size = 30
      Lookup = True
    end
    object relGPSClienteUF: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteUF'
      LookupDataSet = dbClienteEnd
      LookupKeyFields = 'Cliente'
      LookupResultField = 'UF'
      KeyFields = 'Cliente'
      Size = 2
      Lookup = True
    end
    object relGPSClienteCep: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteCep'
      LookupDataSet = dbClienteEnd
      LookupKeyFields = 'Cliente'
      LookupResultField = 'Cep'
      KeyFields = 'Cliente'
      Size = 9
      Lookup = True
    end
    object relGPSDataEntrada: TDateTimeField
      FieldName = 'DataEntrada'
      Origin = 'RelGPS.DataEntrada'
    end
    object relGPSDataMovimento: TDateTimeField
      FieldName = 'DataMovimento'
      Origin = 'RelGPS.DataMovimento'
    end
    object relGPSDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'RelGPS.DataInclusao'
    end
  end
  object dbClienteEnd: TMSTable
    TableName = 'dbo.ClienteEnd'
    Connection = frmMenu.dadosfin
    Filtered = True
    FilterOptions = [foNoPartialCompare]
    OnFilterRecord = dbClienteEndFilterRecord
    IndexFieldNames = 'Cliente;Cep'
    Left = 66
    Top = 198
    object dbClienteEndCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.ClienteEnd.Cliente'
    end
    object dbClienteEndCep: TStringField
      FieldName = 'Cep'
      Origin = 'dbo.ClienteEnd.Cep'
      Size = 9
    end
    object dbClienteEndEntrega: TBooleanField
      FieldName = 'Entrega'
      Origin = 'dbo.ClienteEnd.Entrega'
    end
    object dbClienteEndCobranca: TBooleanField
      FieldName = 'Cobranca'
      Origin = 'dbo.ClienteEnd.Cobranca'
    end
    object dbClienteEndFaturamento: TBooleanField
      FieldName = 'Faturamento'
      Origin = 'dbo.ClienteEnd.Faturamento'
    end
    object dbClienteEndEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'dbo.ClienteEnd.Endereco'
      Size = 60
    end
    object dbClienteEndBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'dbo.ClienteEnd.Bairro'
      Size = 30
    end
    object dbClienteEndComplemento: TStringField
      FieldName = 'Complemento'
      Origin = 'dbo.ClienteEnd.Complemento'
      Size = 30
    end
    object dbClienteEndCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'dbo.ClienteEnd.Cidade'
      Size = 30
    end
    object dbClienteEndUF: TStringField
      FieldName = 'UF'
      Origin = 'dbo.ClienteEnd.UF'
      Size = 2
    end
    object dbClienteEndContato: TStringField
      FieldName = 'Contato'
      Origin = 'dbo.ClienteEnd.Contato'
      Size = 30
    end
    object dbClienteEndFone: TStringField
      FieldName = 'Fone'
      Origin = 'dbo.ClienteEnd.Fone'
      Size = 30
    end
    object dbClienteEndFax: TStringField
      FieldName = 'Fax'
      Origin = 'dbo.ClienteEnd.Fax'
    end
    object dbClienteEndCGC: TStringField
      FieldName = 'CGC'
      Origin = 'dbo.ClienteEnd.CGC'
      Size = 18
    end
    object dbClienteEndIE: TStringField
      FieldName = 'IE'
      Origin = 'dbo.ClienteEnd.IE'
      Size = 15
    end
    object dbClienteEndUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.ClienteEnd.Usuario'
      Size = 10
    end
  end
  object relAutDeb: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'Select * from MovBanco, CCorrente'
      'where MovBAnco.BancoId=CCorrente.BancoID')
    OnCalcFields = relAutDebCalcFields
    Left = 181
    Top = 104
    object relAutDebMovBanco: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'MovBanco'
      Origin = 'MovBanco.MovBanco'
    end
    object relAutDebBancoID: TIntegerField
      FieldName = 'BancoID'
      Origin = 'MovBanco.BancoID'
    end
    object relAutDebFundo: TIntegerField
      FieldName = 'Fundo'
      Origin = 'MovBanco.Fundo'
    end
    object relAutDebTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'MovBanco.Tipo'
      Size = 1
    end
    object relAutDebDoc: TStringField
      FieldName = 'Doc'
      Origin = 'MovBanco.Doc'
    end
    object relAutDebValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'MovBanco.Valor'
    end
    object relAutDebFavorecido: TStringField
      FieldName = 'Favorecido'
      Origin = 'MovBanco.Favorecido'
      Size = 50
    end
    object relAutDebCruzado: TBooleanField
      FieldName = 'Cruzado'
      Origin = 'MovBanco.Cruzado'
    end
    object relAutDebHistorico: TMemoField
      FieldName = 'Historico'
      Origin = 'MovBanco.Historico'
      BlobType = ftMemo
    end
    object relAutDebStatus: TStringField
      FieldName = 'Status'
      Origin = 'MovBanco.Status'
      Size = 1
    end
    object relAutDebFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'MovBanco.Filial'
    end
    object relAutDebFilial_1: TSmallintField
      FieldName = 'Filial_1'
      Origin = 'CCorrente.Filial'
    end
    object relAutDebBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'CCorrente.Banco'
    end
    object relAutDebConta: TStringField
      FieldName = 'Conta'
      Origin = 'CCorrente.Conta'
      Size = 15
    end
    object relAutDebAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'CCorrente.Agencia'
      Size = 10
    end
    object relAutDebGerente: TStringField
      FieldName = 'Gerente'
      Origin = 'CCorrente.Gerente'
      Size = 30
    end
    object relAutDebTipoPagtoTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'TipoPagtoTexto'
      Size = 15
      Calculated = True
    end
    object relAutDebBancoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'BancoNome'
      LookupDataSet = dbBco
      LookupKeyFields = 'Banco'
      LookupResultField = 'Nome'
      KeyFields = 'Banco'
      Size = 30
      Lookup = True
    end
    object relAutDebExtenso: TStringField
      FieldKind = fkCalculated
      FieldName = 'Extenso'
      Size = 1000
      Calculated = True
    end
    object relAutDebFilialNome: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialNome'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Nome'
      KeyFields = 'Filial_1'
      Size = 50
      Lookup = True
    end
    object relAutDebDataEntrada: TDateTimeField
      FieldName = 'DataEntrada'
      Origin = 'MovBanco.DataEntrada'
    end
    object relAutDebDataMovimento: TDateTimeField
      FieldName = 'DataMovimento'
      Origin = 'MovBanco.DataMovimento'
    end
    object relAutDebDataExtenso: TStringField
      FieldKind = fkCalculated
      FieldName = 'DataExtenso'
      Size = 100
      Calculated = True
    end
  end
  object qryExtrato: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'select * from movbanco')
    Left = 504
    Top = 58
    object qryExtratoBancoID: TIntegerField
      FieldName = 'BancoID'
      Origin = 'DADOS."movbanco.DB".BancoID'
    end
    object qryExtratoFundo: TIntegerField
      FieldName = 'Fundo'
      Origin = 'DADOS."movbanco.DB".Fundo'
    end
    object qryExtratoTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'DADOS."movbanco.DB".Tipo'
      Size = 1
    end
    object qryExtratoDoc: TStringField
      FieldName = 'Doc'
      Origin = 'DADOS."movbanco.DB".Doc'
    end
    object qryExtratoValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'DADOS."movbanco.DB".Valor'
    end
    object qryExtratoFavorecido: TStringField
      FieldName = 'Favorecido'
      Origin = 'DADOS."movbanco.DB".Favorecido'
      Size = 50
    end
    object qryExtratoCruzado: TBooleanField
      FieldName = 'Cruzado'
      Origin = 'DADOS."movbanco.DB".Cruzado'
    end
    object qryExtratoHistorico: TMemoField
      FieldName = 'Historico'
      Origin = 'DADOS."movbanco.DB".Historico'
      BlobType = ftMemo
      Size = 10
    end
    object qryExtratoStatus: TStringField
      FieldName = 'Status'
      Origin = 'DADOS."movbanco.DB".Status'
      Size = 1
    end
    object qryExtratoFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'DADOS."movbanco.DB".Filial'
    end
    object qryExtratoUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DADOS."movbanco.DB".Usuario'
      Size = 10
    end
    object qryExtratoMovBanco: TIntegerField
      FieldName = 'MovBanco'
      ReadOnly = True
    end
    object qryExtratoDataEntrada: TDateTimeField
      FieldName = 'DataEntrada'
    end
    object qryExtratoDataMovimento: TDateTimeField
      FieldName = 'DataMovimento'
    end
    object qryExtratoDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
    end
  end
  object relLancamento3Cli: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'select ClienteDeb,'
      '           Cod1,Cod2,Cod3,'
      '          sum(valorPago) as ValorPago,'
      '          sum(valor) as valor,'
      '          sum(valorreal) as valorReal'
      'from RelLancamentos'
      'group by ClienteDeb,Cod1,Cod2,Cod3'
      'order  by Cod1,Cod2,Cod3,ClienteDeb')
    Filtered = True
    OnCalcFields = relLancamento3CliCalcFields
    OnFilterRecord = relLancamento3CliFilterRecord
    Left = 248
    Top = 245
    object relLancamento3CliClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
      Origin = 'DADOS."Lancamentos.DB".ClienteDeb'
    end
    object relLancamento3CliCod1: TSmallintField
      FieldName = 'Cod1'
      Origin = 'DADOS."Lancamentos.DB".Cod1'
    end
    object relLancamento3CliCod2: TSmallintField
      FieldName = 'Cod2'
      Origin = 'DADOS."Lancamentos.DB".Cod2'
    end
    object relLancamento3CliCod3: TSmallintField
      FieldName = 'Cod3'
      Origin = 'DADOS."Lancamentos.DB".Cod3'
    end
    object relLancamento3Clivalor: TCurrencyField
      FieldName = 'valor'
      Origin = 'DADOS."Lancamentos.DB".Valor'
    end
    object relLancamento3ClivalorReal: TCurrencyField
      FieldName = 'valorReal'
      Origin = 'DADOS."RelLancamentos.DB".ValorReal'
    end
    object relLancamento3CliValorPago: TCurrencyField
      FieldName = 'ValorPago'
      Origin = 'DADOS."Lancamentos.DB".ValorPago'
    end
    object relLancamento3CliPlanoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1;Cod2;Cod3'
      LookupResultField = 'Descricao'
      KeyFields = 'Cod1;Cod2;Cod3'
      Size = 40
      Lookup = True
    end
    object relLancamento3CliPlanoNome1: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome1'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1'
      LookupResultField = 'Descricao'
      KeyFields = 'Cod1'
      Size = 40
      Lookup = True
    end
    object relLancamento3CliPlanoNome2: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome2'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1;Cod2'
      LookupResultField = 'Descricao'
      KeyFields = 'Cod1;Cod2'
      Size = 40
      Lookup = True
    end
    object relLancamento3CliPFaturamento: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PFaturamento'
      DisplayFormat = '##0.00%'
      EditFormat = '##0.00%'
      Calculated = True
    end
    object relLancamento3CliFaturamento: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Faturamento'
      Calculated = True
    end
    object relLancamento3CliClienteDebNome: TStringField
      FieldKind = fkCalculated
      FieldName = 'ClienteDebNome'
      Size = 50
      Calculated = True
    end
    object relLancamento3CliFilial: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Filial'
      Calculated = True
    end
  end
  object relLancamento2Cli: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'select  ClienteDeb,'
      '           Cod1,Cod2,'
      '          sum(valorPago) as ValorPago,'
      '          sum(valor) as valor,'
      '          sum(valorreal) as valorReal'
      'from RelLancamentos'
      'group by Cod1,Cod2,ClienteDeb'
      'order  by Cod1,Cod2')
    Filtered = True
    OnCalcFields = relLancamento2CliCalcFields
    OnFilterRecord = relLancamento2CliFilterRecord
    Left = 248
    Top = 292
    object relLancamento2CliClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
      Origin = 'DADOS."Lancamentos.DB".ClienteDeb'
    end
    object relLancamento2CliCod1: TSmallintField
      FieldName = 'Cod1'
      Origin = 'DADOS."Lancamentos.DB".Cod1'
    end
    object relLancamento2CliCod2: TSmallintField
      FieldName = 'Cod2'
      Origin = 'DADOS."Lancamentos.DB".Cod2'
    end
    object relLancamento2CliValorPago: TCurrencyField
      FieldName = 'ValorPago'
      Origin = 'DADOS."Lancamentos.DB".ValorPago'
    end
    object relLancamento2CliFilial: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Filial'
      Calculated = True
    end
    object relLancamento2CliPlanoNome2: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome2'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1;Cod2'
      LookupResultField = 'Descricao'
      KeyFields = 'Cod1;Cod2'
      Size = 40
      Lookup = True
    end
    object relLancamento2CliPlanoNome1: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome1'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1'
      LookupResultField = 'Descricao'
      KeyFields = 'Cod1'
      Size = 40
      Lookup = True
    end
    object relLancamento2CliPFaturamento: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PFaturamento'
      DisplayFormat = '##0.00%'
      EditFormat = '##0.00%'
      Calculated = True
    end
    object relLancamento2CliFaturamento: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Faturamento'
      Calculated = True
    end
    object relLancamento2CliClienteDebNome: TStringField
      FieldKind = fkCalculated
      FieldName = 'ClienteDebNome'
      Size = 50
      Calculated = True
    end
    object relLancamento2Clivalor: TCurrencyField
      FieldName = 'valor'
      Origin = 'DADOS."Lancamentos.DB".Valor'
    end
    object relLancamento2ClivalorReal: TCurrencyField
      FieldName = 'valorReal'
      Origin = 'DADOS."RelLancamentos.DB".ValorReal'
    end
  end
  object relLancamentoTot: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'select ClienteDeb,'
      '          sum(valorPago) as ValorPago,'
      '          sum(valor) as valor,'
      '          sum(valorreal) as valorReal'
      'from RelLancamentos'
      'where Cod1=1 '
      'group by ClienteDeb'
      'order  by ClienteDeb')
    Left = 276
    Top = 245
    object relLancamentoTotClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
      Origin = 'DADOS."Lancamentos.DB".ClienteDeb'
    end
    object relLancamentoTotValorPago: TCurrencyField
      FieldName = 'ValorPago'
      Origin = 'DADOS."Lancamentos.DB".ValorPago'
    end
    object relLancamentoTotvalor: TCurrencyField
      FieldName = 'valor'
      Origin = 'DADOS."Lancamentos.DB".Valor'
    end
    object relLancamentoTotvalorReal: TCurrencyField
      FieldName = 'valorReal'
      Origin = 'DADOS."RelLancamentos.DB".ValorReal'
    end
  end
  object dbNF: TMSTable
    TableName = 'dbo.NF'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Filial;NF'
    Left = 31
    Top = 292
    object dbNFFilial: TSmallintField
      FieldName = 'Filial'
    end
    object dbNFNF: TIntegerField
      FieldName = 'NF'
    end
    object dbNFFatura: TStringField
      FieldName = 'Fatura'
      Size = 10
    end
    object dbNFNatureza: TStringField
      FieldName = 'Natureza'
      Size = 30
    end
    object dbNFCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbNFDescricao: TMemoField
      FieldName = 'Descricao'
      BlobType = ftMemo
      Size = 10
    end
    object dbNFIRenda: TFloatField
      FieldName = 'IRenda'
    end
    object dbNFImpostos: TFloatField
      FieldName = 'Impostos'
    end
    object dbNFNFBruto: TCurrencyField
      FieldName = 'NFBruto'
    end
    object dbNFValorIRenda: TCurrencyField
      FieldName = 'ValorIRenda'
    end
    object dbNFValorImpostos: TCurrencyField
      FieldName = 'ValorImpostos'
    end
    object dbNFNFLiquida: TCurrencyField
      FieldName = 'NFLiquida'
    end
    object dbNFObservacao: TMemoField
      FieldName = 'Observacao'
      BlobType = ftMemo
      Size = 10
    end
    object dbNFStatus: TBooleanField
      FieldName = 'Status'
    end
    object dbNFBancoIDDep: TIntegerField
      FieldName = 'BancoIDDep'
    end
    object dbNFUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object dbNFClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
    end
    object dbNFDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
    end
    object dbNFDataVencto: TDateTimeField
      FieldName = 'DataVencto'
    end
    object dbNFDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
    end
  end
  object relNF1: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'select clientedeb, '
      '          sum(nfbruto) as nfbruto'
      'from NF'
      'group by clientedeb'
      'order by clientedeb')
    Left = 248
    Top = 339
    object relNF1clientedeb: TIntegerField
      FieldName = 'clientedeb'
      Origin = 'DADOS."NF.DB".ClienteDeb'
    end
    object relNF1nfbruto: TCurrencyField
      FieldName = 'nfbruto'
      Origin = 'DADOS."NF.DB".NFBruto'
    end
  end
  object relNF2: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'select filial, '
      '          sum(nfbruto) as Bruto,'
      '          sum(valorirenda) as IRenda,'
      '          sum(valorImpostos) as Impostos,'
      '          sum(nfliquida) as Liquido'
      'from NF'
      'group by filial'
      'order by filial')
    OnCalcFields = relNF2CalcFields
    Left = 288
    Top = 339
    object relNF2filial: TSmallintField
      FieldName = 'filial'
      Origin = 'NF.filial'
    end
    object relNF2Bruto: TCurrencyField
      FieldName = 'Bruto'
      Origin = '.'
    end
    object relNF2IRenda: TCurrencyField
      FieldName = 'IRenda'
      Origin = '.'
    end
    object relNF2Impostos: TCurrencyField
      FieldName = 'Impostos'
      Origin = '.'
    end
    object relNF2Liquido: TCurrencyField
      FieldName = 'Liquido'
      Origin = '.'
    end
    object relNF2FilialTexto: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialTexto'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Nome'
      KeyFields = 'filial'
      Size = 40
      Lookup = True
    end
    object relNF2Filial1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Filial1'
      Calculated = True
    end
  end
  object qryLanCli: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'select * from RelLancamentoCli')
    Left = 370
    Top = 245
    object qryLanCliClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
      Origin = 'DADOS."RelLancamentoCli.DB".ClienteDeb'
    end
    object qryLanCliCod1: TSmallintField
      FieldName = 'Cod1'
      Origin = 'DADOS."RelLancamentoCli.DB".Cod1'
    end
    object qryLanCliCod2: TSmallintField
      FieldName = 'Cod2'
      Origin = 'DADOS."RelLancamentoCli.DB".Cod2'
    end
    object qryLanCliCod3: TSmallintField
      FieldName = 'Cod3'
      Origin = 'DADOS."RelLancamentoCli.DB".Cod3'
    end
    object qryLanCliFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'DADOS."RelLancamentoCli.DB".Filial'
    end
    object qryLanCliValorReal: TCurrencyField
      FieldName = 'ValorReal'
      Origin = 'DADOS."RelLancamentoCli.DB".ValorReal'
    end
    object qryLanCliFaturamento: TCurrencyField
      FieldName = 'Faturamento'
      Origin = 'DADOS."RelLancamentoCli.DB".Faturamento'
    end
    object qryLanCliPFaturamento: TFloatField
      FieldName = 'PFaturamento'
      Origin = 'DADOS."RelLancamentoCli.DB".PFaturamento'
    end
    object qryLanCliValorRateado: TCurrencyField
      FieldName = 'ValorRateado'
      Origin = 'DADOS."RelLancamentoCli.DB".ValorRateado'
    end
    object qryLanCliPFaturamentoCli: TFloatField
      FieldName = 'PFaturamentoCli'
      Origin = 'DADOS."RelLancamentoCli.DB".PFaturamentoCli'
    end
  end
  object qryDup: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'select * from Receber'
      'where  DataPagto is null '
      'order by Filial, Duplicata, Seq')
    OnCalcFields = qryDupCalcFields
    Left = 502
    Top = 106
    object qryDupFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'Receber.Filial'
    end
    object qryDupDuplicata: TIntegerField
      FieldName = 'Duplicata'
      Origin = 'Receber.Duplicata'
    end
    object qryDupSeq: TStringField
      FieldName = 'Seq'
      Origin = 'Receber.Seq'
      Size = 1
    end
    object qryDupSeqNum: TSmallintField
      FieldName = 'SeqNum'
      Origin = 'Receber.SeqNum'
    end
    object qryDupPrazo: TIntegerField
      FieldName = 'Prazo'
      Origin = 'Receber.Prazo'
    end
    object qryDupCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'Receber.Cliente'
    end
    object qryDupPraca: TStringField
      FieldName = 'Praca'
      Origin = 'Receber.Praca'
    end
    object qryDupValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'Receber.Valor'
    end
    object qryDupAcrescimos: TCurrencyField
      FieldName = 'Acrescimos'
      Origin = 'Receber.Acrescimos'
    end
    object qryDupDescontos: TCurrencyField
      FieldName = 'Descontos'
      Origin = 'Receber.Descontos'
    end
    object qryDupBancoID: TIntegerField
      FieldName = 'BancoID'
      Origin = 'Receber.BancoID'
    end
    object qryDupValorPago: TCurrencyField
      FieldName = 'ValorPago'
      Origin = 'Receber.ValorPago'
    end
    object qryDupDocPagto: TStringField
      FieldName = 'DocPagto'
      Origin = 'Receber.DocPagto'
      Size = 30
    end
    object qryDupHistorico: TMemoField
      FieldName = 'Historico'
      Origin = 'Receber.Historico'
      BlobType = ftMemo
    end
    object qryDupQuitado: TBooleanField
      FieldName = 'Quitado'
      Origin = 'Receber.Quitado'
    end
    object qryDupPorcentagem: TFloatField
      FieldName = 'Porcentagem'
      Origin = 'Receber.Porcentagem'
      Precision = 5
    end
    object qryDupSelecionado: TBooleanField
      FieldName = 'Selecionado'
      Origin = 'Receber.Selecionado'
    end
    object qryDupNumero: TIntegerField
      FieldName = 'Numero'
      Origin = 'Receber.Numero'
    end
    object qryDupUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'Receber.Usuario'
      Size = 10
    end
    object qryDupClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
      Origin = 'Receber.ClienteDeb'
    end
    object qryDupClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'CliFor'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 40
      Lookup = True
    end
    object qryDupFilialNome: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialNome'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Nome'
      KeyFields = 'Filial'
      Size = 40
      Lookup = True
    end
    object qryDupDias: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Dias'
      Calculated = True
    end
    object qryDupFilial1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Filial1'
      Calculated = True
    end
    object qryDupFilial2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Filial2'
      Calculated = True
    end
    object qryDupDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
      Origin = 'Receber.DataEmissao'
    end
    object qryDupDataVencto: TDateTimeField
      FieldName = 'DataVencto'
      Origin = 'Receber.DataVencto'
    end
    object qryDupDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'Receber.DataInclusao'
    end
    object qryDupDataPagto: TDateTimeField
      FieldName = 'DataPagto'
      Origin = 'Receber.DataPagto'
    end
  end
  object qrySocio: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'select  Lancamentos.Cod1,Lancamentos.Cod2,Lancamentos.Cod3,'
      '        sum(valorPago) as ValorPago,'
      '        sum(valor) as valor'
      'from Lancamentos, PlanoContas'
      'where Lancamentos.Cod1=PlanoContas.Cod1 and'
      '      Lancamentos.Cod2=PlanoContas.Cod2 and'
      '      Lancamentos.Cod3=PlanoContas.Cod3 and '
      
        '     (Lancamentos.Cod1=1) or (Lancamentos.Cod1=2 and Lancamentos' +
        '.Cod2=94) '
      'group by Lancamentos.Cod1,Lancamentos.Cod2,Lancamentos.Cod3 '
      'order by Lancamentos.Cod1,Lancamentos.Cod2,Lancamentos.Cod3 ')
    OnCalcFields = qrySocioCalcFields
    Left = 368
    Top = 292
    object qrySocioCod1: TSmallintField
      FieldName = 'Cod1'
      Origin = 'Lancamentos.Cod1'
    end
    object qrySocioCod2: TSmallintField
      FieldName = 'Cod2'
      Origin = 'Lancamentos.Cod2'
    end
    object qrySocioCod3: TSmallintField
      FieldName = 'Cod3'
      Origin = 'Lancamentos.Cod3'
    end
    object qrySocioValorPago: TCurrencyField
      FieldName = 'ValorPago'
      Origin = '.'
    end
    object qrySociovalor: TCurrencyField
      FieldName = 'valor'
      Origin = '.'
    end
    object qrySociovalorreal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'valorreal'
      Origin = 'DADOS."RelLancamentos.DB".ValorReal'
      Calculated = True
    end
    object qrySocioPlanoNome2: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome2'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1;Cod2'
      LookupResultField = 'Descricao'
      KeyFields = 'Cod1;Cod2'
      Size = 40
      Lookup = True
    end
    object qrySocioPlanoNome1: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome1'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1'
      LookupResultField = 'Descricao'
      KeyFields = 'Cod1'
      Size = 40
      Lookup = True
    end
    object qrySocioPFaturamento: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PFaturamento'
      DisplayFormat = '##0.00%'
      EditFormat = '##0.00%'
      Calculated = True
    end
    object qrySocioFaturamento: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Faturamento'
      Calculated = True
    end
    object qrySocioFilial: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Filial'
      Calculated = True
    end
    object qrySocioPlanoNomeCalc: TStringField
      FieldKind = fkCalculated
      FieldName = 'PlanoNomeCalc'
      Size = 60
      Calculated = True
    end
    object qrySocioPlanoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1;Cod2;Cod3'
      LookupResultField = 'Descricao'
      KeyFields = 'Cod1;Cod2;Cod3'
      Size = 60
      Lookup = True
    end
  end
  object rvqLancamento: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Query = relLancamento
    Left = 314
    Top = 198
  end
  object rptCLT: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'select *  from Lancamentos, Funcionario, MovBanco'
      'where  Lancamentos.MovBanco=MovBanco.MovBanco and '
      '       Lancamentos.Funcionario=Funcionario.Funcionario  and'
      '       Lancamentos.TipoPag='#39'C'#39' '
      'order by Filial, Nome'
      ''
      ' ')
    OnCalcFields = rptCLTCalcFields
    Left = 505
    Top = 10
    object rptCLTFilial: TIntegerField
      FieldName = 'Filial'
    end
    object rptCLTLancamento: TIntegerField
      FieldName = 'Lancamento'
    end
    object rptCLTTipoPag: TStringField
      FieldName = 'TipoPag'
      Size = 1
    end
    object rptCLTCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object rptCLTClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
    end
    object rptCLTCod1: TSmallintField
      FieldName = 'Cod1'
    end
    object rptCLTCod2: TSmallintField
      FieldName = 'Cod2'
    end
    object rptCLTCod3: TSmallintField
      FieldName = 'Cod3'
    end
    object rptCLTHistorico: TStringField
      FieldName = 'Historico'
      Size = 60
    end
    object rptCLTDoc: TStringField
      FieldName = 'Doc'
    end
    object rptCLTValor: TCurrencyField
      FieldName = 'Valor'
    end
    object rptCLTBancoID: TIntegerField
      FieldName = 'BancoID'
    end
    object rptCLTCheque: TStringField
      FieldName = 'Cheque'
    end
    object rptCLTValorBruto: TCurrencyField
      FieldName = 'ValorBruto'
    end
    object rptCLTValorPago: TCurrencyField
      FieldName = 'ValorPago'
    end
    object rptCLTPago: TBooleanField
      FieldName = 'Pago'
    end
    object rptCLTStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object rptCLTMovBanco: TIntegerField
      FieldName = 'MovBanco'
    end
    object rptCLTFuncionario: TIntegerField
      FieldName = 'Funcionario'
    end
    object rptCLTNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object rptCLTBanco: TSmallintField
      FieldName = 'Banco'
    end
    object rptCLTAgencia: TStringField
      FieldName = 'Agencia'
      Size = 10
    end
    object rptCLTConta: TStringField
      FieldName = 'Conta'
      Size = 10
    end
    object rptCLTTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object rptCLTFormaPag: TStringField
      FieldKind = fkCalculated
      FieldName = 'FormaPag'
      Size = 15
      Calculated = True
    end
    object rptCLTClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'CliFor'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 40
      Lookup = True
    end
    object rptCLTBancoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'BancoNome'
      LookupDataSet = dbBanco
      LookupKeyFields = 'BancoID'
      LookupResultField = 'Nome'
      KeyFields = 'BancoID'
      Size = 40
      Lookup = True
    end
    object rptCLTGerente: TStringField
      FieldKind = fkLookup
      FieldName = 'Gerente'
      LookupDataSet = dbBanco
      LookupKeyFields = 'BancoID'
      LookupResultField = 'Gerente'
      KeyFields = 'BancoID'
      Size = 40
      Lookup = True
    end
    object rptCLTextenso: TStringField
      FieldKind = fkCalculated
      FieldName = 'extenso'
      Size = 200
      Calculated = True
    end
    object rptCLTCPF: TStringField
      FieldName = 'CPF'
      Origin = 'DADOS."Lancamentos.DB".Filial'
      EditMask = '000\.000\.000\-00;0;_'
      Size = 18
    end
    object rptCLTFilialNome: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialNome'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Nome'
      KeyFields = 'Filial'
      Size = 40
      Lookup = True
    end
    object rptCLTAgenciaBanco: TStringField
      FieldKind = fkLookup
      FieldName = 'AgenciaBanco'
      LookupDataSet = dbBanco
      LookupKeyFields = 'BancoID'
      LookupResultField = 'Agencia'
      KeyFields = 'BancoID'
      Size = 15
      Lookup = True
    end
    object rptCLTContaBanco: TStringField
      FieldKind = fkLookup
      FieldName = 'ContaBanco'
      LookupDataSet = dbBanco
      LookupKeyFields = 'BancoID'
      LookupResultField = 'Conta'
      KeyFields = 'BancoID'
      Size = 15
      Lookup = True
    end
    object rptCLTPlanoContasNome: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoContasNome'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1;Cod2;Cod3'
      LookupResultField = 'Descricao'
      KeyFields = 'Cod1;Cod2;Cod3'
      Size = 50
      Lookup = True
    end
    object rptCLTDataExtenso: TStringField
      FieldKind = fkCalculated
      FieldName = 'DataExtenso'
      Size = 100
      Calculated = True
    end
  end
  object qryFuncionario: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'Select * from Funcionario'
      'order by nome ')
    OnCalcFields = qryFuncionarioCalcFields
    Left = 179
    Top = 386
    object qryFuncionarioFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'Funcionario.Filial'
    end
    object qryFuncionarioFilialNome: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialNome'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Nome'
      KeyFields = 'Filial'
      Size = 40
      Lookup = True
    end
    object qryFuncionarioStatus: TStringField
      FieldName = 'Status'
      Origin = 'Funcionario.Status'
      FixedChar = True
      Size = 1
    end
    object qryFuncionarioStatusTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'StatusTexto'
      Size = 25
      Calculated = True
    end
    object qryFuncionarioFuncionario: TIntegerField
      FieldName = 'Funcionario'
      Origin = 'Funcionario.Funcionario'
    end
    object qryFuncionarioNome: TStringField
      FieldName = 'Nome'
      Origin = 'Funcionario.Nome'
      Size = 50
    end
    object qryFuncionarioSexo: TStringField
      FieldName = 'Sexo'
      Origin = 'Funcionario.Sexo'
      FixedChar = True
      Size = 1
    end
    object qryFuncionarioNascimento: TDateTimeField
      FieldName = 'Nascimento'
      Origin = 'Funcionario.Nascimento'
    end
    object qryFuncionarioLocalNascimento: TStringField
      FieldName = 'LocalNascimento'
      Origin = 'Funcionario.LocalNascimento'
      Size = 40
    end
    object qryFuncionarioUFNascimento: TStringField
      FieldName = 'UFNascimento'
      Origin = 'Funcionario.UFNascimento'
      FixedChar = True
      Size = 2
    end
    object qryFuncionarioNacionalidade: TStringField
      FieldName = 'Nacionalidade'
      Origin = 'Funcionario.Nacionalidade'
      FixedChar = True
      Size = 30
    end
    object qryFuncionarioEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'Funcionario.Endereco'
      Size = 50
    end
    object qryFuncionarioBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'Funcionario.Bairro'
      Size = 40
    end
    object qryFuncionarioCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'Funcionario.Cidade'
      Size = 30
    end
    object qryFuncionarioUF: TStringField
      FieldName = 'UF'
      Origin = 'Funcionario.UF'
      Size = 2
    end
    object qryFuncionarioCep: TStringField
      FieldName = 'Cep'
      Origin = 'Funcionario.Cep'
      EditMask = '00000\-999;1;_'
      Size = 9
    end
    object qryFuncionarioFone: TStringField
      FieldName = 'Fone'
      Origin = 'Funcionario.Fone'
      Size = 60
    end
    object qryFuncionarioCelular: TStringField
      FieldName = 'Celular'
      Origin = 'Funcionario.Celular'
      FixedChar = True
      Size = 60
    end
    object qryFuncionarioEmail: TStringField
      FieldName = 'Email'
      Origin = 'Funcionario.Email'
      Size = 50
    end
    object qryFuncionarioRG: TStringField
      FieldName = 'RG'
      Origin = 'Funcionario.RG'
      EditMask = '00\.000\.000\-A;0;_'
      Size = 15
    end
    object qryFuncionarioRGEmissor: TStringField
      FieldName = 'RGEmissor'
      Origin = 'Funcionario.RGEmissor'
      FixedChar = True
      Size = 15
    end
    object qryFuncionarioRGEmissao: TDateTimeField
      FieldName = 'RGEmissao'
      Origin = 'Funcionario.RGEmissao'
    end
    object qryFuncionarioCPF: TStringField
      FieldName = 'CPF'
      Origin = 'Funcionario.CPF'
      EditMask = '000\.000\.000\-00;0;_'
      Size = 18
    end
    object qryFuncionarioCT: TStringField
      FieldName = 'CT'
      Origin = 'Funcionario.CT'
      EditMask = '999\.999;0;_'
      FixedChar = True
      Size = 10
    end
    object qryFuncionarioCTSerie: TStringField
      FieldName = 'CTSerie'
      Origin = 'Funcionario.CTSerie'
      EditMask = '99999\-AA;1;_'
      FixedChar = True
      Size = 10
    end
    object qryFuncionarioPis: TStringField
      FieldName = 'Pis'
      Origin = 'Funcionario.Pis'
      EditMask = '000\.000\.000\-00;0;_'
      FixedChar = True
      Size = 15
    end
    object qryFuncionarioTituloEleitor: TStringField
      FieldName = 'TituloEleitor'
      Origin = 'Funcionario.TituloEleitor'
      EditMask = '0000\.0000\.0000;0;_'
      FixedChar = True
      Size = 15
    end
    object qryFuncionarioDataInicio: TDateTimeField
      DisplayLabel = 'DataAdmissao'
      FieldName = 'DataInicio'
      Origin = 'Funcionario.DataInicio'
    end
    object qryFuncionarioReservista: TStringField
      FieldName = 'Reservista'
      Origin = 'Funcionario.Reservista'
      EditMask = '000\.000\.000\.000;0;_'
      FixedChar = True
      Size = 15
    end
    object qryFuncionarioSalarioBruto: TCurrencyField
      FieldName = 'SalarioBruto'
      Origin = 'Funcionario.SalarioBruto'
    end
    object qryFuncionarioCargo: TIntegerField
      FieldName = 'Cargo'
      Origin = 'Funcionario.Cargo'
    end
    object qryFuncionarioCargoTexto: TStringField
      FieldKind = fkLookup
      FieldName = 'CargoTexto'
      LookupDataSet = dbCargo
      LookupKeyFields = 'Cargo'
      LookupResultField = 'Descricao'
      KeyFields = 'Cargo'
      Size = 40
      Lookup = True
    end
    object qryFuncionarioBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'Funcionario.Banco'
    end
    object qryFuncionarioBancoTexto: TStringField
      FieldKind = fkLookup
      FieldName = 'BancoTexto'
      LookupDataSet = dbBco
      LookupKeyFields = 'Banco'
      LookupResultField = 'Nome'
      KeyFields = 'Banco'
      Lookup = True
    end
    object qryFuncionarioAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'Funcionario.Agencia'
      Size = 10
    end
    object qryFuncionarioConta: TStringField
      FieldName = 'Conta'
      Origin = 'Funcionario.Conta'
      Size = 10
    end
    object qryFuncionarioTipoConta: TStringField
      FieldName = 'TipoConta'
      Origin = 'Funcionario.TipoConta'
      FixedChar = True
      Size = 1
    end
    object qryFuncionarioTipoContaTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'TipoContaTexto'
      Calculated = True
    end
    object qryFuncionarioEstadoCivil: TStringField
      FieldName = 'EstadoCivil'
      Origin = 'Funcionario.EstadoCivil'
      FixedChar = True
      Size = 1
    end
    object qryFuncionarioEstadoCivilTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'EstadoCivilTexto'
      Size = 15
      Calculated = True
    end
    object qryFuncionarioGrauEscolariedade: TSmallintField
      FieldName = 'GrauEscolariedade'
      Origin = 'Funcionario.GrauEscolariedade'
    end
    object qryFuncionarioGrauEscolariedadeTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'GrauEscolariedadeTexto'
      Size = 40
      Calculated = True
    end
    object qryFuncionarioNomePai: TStringField
      FieldName = 'NomePai'
      Origin = 'Funcionario.NomePai'
      FixedChar = True
      Size = 40
    end
    object qryFuncionarioNomeMae: TStringField
      FieldName = 'NomeMae'
      Origin = 'Funcionario.NomeMae'
      FixedChar = True
      Size = 40
    end
    object qryFuncionarioContatoUrgencia: TStringField
      FieldName = 'ContatoUrgencia'
      Origin = 'Funcionario.ContatoUrgencia'
      Size = 100
    end
    object qryFuncionarioParentescoUrgencia: TStringField
      FieldName = 'ParentescoUrgencia'
      Origin = 'Funcionario.ParentescoUrgencia'
      FixedChar = True
      Size = 30
    end
    object qryFuncionarioEnderecoUrgencia: TStringField
      FieldName = 'EnderecoUrgencia'
      Origin = 'Funcionario.EnderecoUrgencia'
      FixedChar = True
      Size = 60
    end
    object qryFuncionarioFoneUrgencia: TStringField
      FieldName = 'FoneUrgencia'
      Origin = 'Funcionario.FoneUrgencia'
      FixedChar = True
      Size = 40
    end
    object qryFuncionarioCelularUrgencia: TStringField
      FieldName = 'CelularUrgencia'
      Origin = 'Funcionario.CelularUrgencia'
      FixedChar = True
      Size = 40
    end
    object qryFuncionarioComercialUrgencia: TStringField
      FieldName = 'ComercialUrgencia'
      Origin = 'Funcionario.ComercialUrgencia'
      FixedChar = True
      Size = 40
    end
    object qryFuncionarioCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'Funcionario.Cliente'
    end
    object qryFuncionarioHorarioIni: TDateTimeField
      DisplayLabel = 'HorarioSegQui'
      FieldName = 'HorarioIni'
      Origin = 'Funcionario.HorarioIni'
      DisplayFormat = 'HH:MM'
      EditMask = '!90:00;1;_'
    end
    object qryFuncionarioHorarioFim: TDateTimeField
      DisplayLabel = 'HorarioSegQui'
      FieldName = 'HorarioFim'
      Origin = 'Funcionario.HorarioFim'
      DisplayFormat = 'HH:MM'
      EditMask = '!90:00;1;_'
    end
    object qryFuncionarioHorarioIni1: TDateTimeField
      DisplayLabel = 'HorarioSex'
      FieldName = 'HorarioIni1'
      Origin = 'Funcionario.HorarioIni1'
      DisplayFormat = 'HH:MM'
      EditMask = '!90:00;1;_'
    end
    object qryFuncionarioHorarioFim1: TDateTimeField
      DisplayLabel = 'HorarioSex'
      FieldName = 'HorarioFim1'
      Origin = 'Funcionario.HorarioFim1'
      DisplayFormat = 'HH:MM'
      EditMask = '!90:00;1;_'
    end
    object qryFuncionarioAlmocoIni: TDateTimeField
      FieldName = 'AlmocoIni'
      Origin = 'Funcionario.AlmocoIni'
      DisplayFormat = 'HH:MM'
      EditMask = '!90:00;1;_'
    end
    object qryFuncionarioAlmocoFim: TDateTimeField
      FieldName = 'AlmocoFim'
      Origin = 'Funcionario.AlmocoFim'
      DisplayFormat = 'HH:MM'
      EditMask = '!90:00;1;_'
    end
    object qryFuncionarioDataFim: TDateTimeField
      DisplayLabel = 'DataDemissao'
      FieldName = 'DataFim'
      Origin = 'Funcionario.DataFim'
    end
    object qryFuncionarioContatoMenor: TStringField
      FieldName = 'ContatoMenor'
      Origin = 'Funcionario.ContatoMenor'
      FixedChar = True
      Size = 40
    end
    object qryFuncionarioParentescoMenor: TStringField
      FieldName = 'ParentescoMenor'
      Origin = 'Funcionario.ParentescoMenor'
      FixedChar = True
      Size = 30
    end
    object qryFuncionarioCPFMenor: TStringField
      FieldName = 'CPFMenor'
      Origin = 'Funcionario.CPFMenor'
      FixedChar = True
      Size = 18
    end
    object qryFuncionarioMesTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'MesTexto'
      Size = 15
      Calculated = True
    end
    object qryFuncionarioValeTransporte: TSmallintField
      FieldName = 'ValeTransporte'
      Origin = 'Funcionario.ValeTransporte'
    end
    object qryFuncionarioTransporte: TStringField
      FieldKind = fkCalculated
      FieldName = 'Transporte'
      Size = 500
      Calculated = True
    end
    object qryFuncionarioObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'Funcionario.Observacao'
      BlobType = ftMemo
    end
    object qryFuncionarioDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'Funcionario.DataInclusao'
    end
    object qryFuncionarioUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'Funcionario.Usuario'
      FixedChar = True
      Size = 10
    end
    object qryFuncionarioLogin: TStringField
      FieldName = 'Login'
      Origin = 'Funcionario.Login'
      FixedChar = True
      Size = 10
    end
    object qryFuncionarioTicket: TStringField
      FieldName = 'Ticket'
      Origin = 'Funcionario.Ticket'
      FixedChar = True
      Size = 18
    end
    object qryFuncionarioFoto: TMemoField
      FieldName = 'Foto'
      Origin = 'Funcionario.Foto'
      BlobType = ftMemo
    end
    object qryFuncionarioDataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
      Origin = 'Funcionario.DataAlteracao'
    end
    object qryFuncionarioPendenciaTexto: TMemoField
      FieldName = 'PendenciaTexto'
      Origin = 'Funcionario.PendenciaTexto'
      BlobType = ftMemo
    end
    object qryFuncionarioPendencia: TBooleanField
      FieldName = 'Pendencia'
      Origin = 'Funcionario.Pendencia'
    end
    object qryFuncionarioBolsaEducacao: TSmallintField
      FieldName = 'BolsaEducacao'
      Origin = 'Funcionario.BolsaEducacao'
    end
    object qryFuncionarioCursando: TBooleanField
      FieldName = 'Cursando'
      Origin = 'Funcionario.Cursando'
    end
    object qryFuncionarioDataAtualizacao: TDateTimeField
      FieldName = 'DataAtualizacao'
      Origin = 'Funcionario.DataAtualizacao'
    end
    object qryFuncionarioDiaAniversario: TSmallintField
      FieldName = 'DiaAniversario'
      Origin = 'Funcionario.DiaAniversario'
    end
    object qryFuncionarioMesAniversario: TSmallintField
      FieldName = 'MesAniversario'
      Origin = 'Funcionario.MesAniversario'
    end
    object qryFuncionarioCursandoTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'CursandoTexto'
      Size = 3
      Calculated = True
    end
  end
  object rvRelCheque: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = relCheque
    Left = 213
    Top = 10
  end
  object rvRelGPS: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = relGPS
    Left = 215
    Top = 58
  end
  object rvAutDeb: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = relAutDeb
    Left = 216
    Top = 104
  end
  object rvLancamento: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = relLancamento1
    Left = 211
    Top = 151
  end
  object rvFilial: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dbFilial
    Left = 64
    Top = 58
  end
  object rvLancamento3: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = relLancamento3
    Left = 210
    Top = 245
  end
  object rvPrevisao: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = relPrevisao
    Left = 217
    Top = 198
  end
  object rvLancamentoCli: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = relLanCli
    Left = 338
    Top = 245
  end
  object rvLancamento2: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = relLancamento2
    Left = 210
    Top = 292
  end
  object rvLancamento2Cli: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = relLancamento2Cli
    Left = 290
    Top = 292
  end
  object rvSocio: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qrySocio
    Left = 402
    Top = 292
  end
  object rvNF: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = relNF
    Left = 210
    Top = 339
  end
  object rvRelNF2: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = relNF2
    Left = 320
    Top = 339
  end
  object rvFuncionario: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryFuncionario
    Left = 211
    Top = 386
  end
  object rvrpCLT: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = rptCLT
    Left = 536
    Top = 10
  end
  object rvExtrato: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dbExtrato
    Left = 568
    Top = 58
  end
  object rvDup: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryDup
    Left = 536
    Top = 106
  end
  object rvProprietario: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dbProprietario
    Left = 65
    Top = 433
  end
  object qryProdEmpPag: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'Select *  from PagtoPre'
      'full outer join MovBanco'
      'on (PagtoPre.PagtoPre=MovBanco.PagtoPre)'
      'full outer join Clientes '
      'on (PagtoPre.Empresa=Clientes.CliFor) '
      'where Mes=5  and Ano=2012 and '
      '      PagtoPre.PagtoPre>0 '
      'order by DataEntrada,PagtoPre.Filial,Nome,MovBanco ')
    OnCalcFields = qryProdEmpPagCalcFields
    Left = 504
    Top = 212
    object qryProdEmpPagEmpresa: TIntegerField
      FieldName = 'Empresa'
      Origin = 'PagtoPre.Empresa'
    end
    object qryProdEmpPagNome: TStringField
      FieldName = 'Nome'
      Origin = 'Clientes.Nome'
      Size = 60
    end
    object qryProdEmpPagAno: TSmallintField
      FieldName = 'Ano'
      Origin = 'PagtoPre.Ano'
    end
    object qryProdEmpPagMes: TSmallintField
      FieldName = 'Mes'
      Origin = 'PagtoPre.Mes'
    end
    object qryProdEmpPagFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'PagtoPre.Filial'
    end
    object qryProdEmpPagBancoID: TSmallintField
      FieldName = 'BancoID'
      Origin = 'PagtoPre.BancoID'
    end
    object qryProdEmpPagPagtoPre: TIntegerField
      FieldName = 'PagtoPre'
      Origin = 'PagtoPre.PagtoPre'
    end
    object qryProdEmpPagValorBruto: TCurrencyField
      FieldName = 'ValorBruto'
      Origin = 'PagtoPre.ValorBruto'
    end
    object qryProdEmpPagIRenda: TCurrencyField
      FieldName = 'IRenda'
      Origin = 'PagtoPre.IRenda'
    end
    object qryProdEmpPagGPS: TCurrencyField
      FieldName = 'GPS'
      Origin = 'PagtoPre.GPS'
    end
    object qryProdEmpPagPis: TCurrencyField
      FieldName = 'Pis'
      Origin = 'PagtoPre.PIS'
    end
    object qryProdEmpPagCofins: TCurrencyField
      FieldName = 'Cofins'
      Origin = 'PagtoPre.Cofins'
    end
    object qryProdEmpPagCSLL: TCurrencyField
      FieldName = 'CSLL'
      Origin = 'PagtoPre.CSLL'
    end
    object qryProdEmpPagISSNF: TCurrencyField
      FieldName = 'ISSNF'
      Origin = 'PagtoPre.ISSNF'
    end
    object qryProdEmpPagMovBanco: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'MovBanco'
      Origin = 'MovBanco.MovBanco'
    end
    object qryProdEmpPagTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'MovBanco.Tipo'
      Size = 1
    end
    object qryProdEmpPagTipoPag: TStringField
      FieldName = 'TipoPag'
      Origin = 'MovBanco.TipoPag'
      Size = 1
    end
    object qryProdEmpPagDoc: TStringField
      FieldName = 'Doc'
      Origin = 'MovBanco.Doc'
    end
    object qryProdEmpPagValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'MovBanco.Valor'
    end
    object qryProdEmpPagValorLiquido: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorLiquido'
      Calculated = True
    end
    object qryProdEmpPagTipoPagTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'TipoPagTexto'
      Size = 15
      Calculated = True
    end
    object qryProdEmpPagFilialTexto: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialTexto'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Razao'
      KeyFields = 'Filial'
      Size = 30
      Lookup = True
    end
    object qryProdEmpPagCGC: TStringField
      FieldName = 'CGC'
      Origin = 'Clientes.CGC'
      EditMask = '00\.000\.000\/0000\-00;0;_'
      Size = 18
    end
    object qryProdEmpPagBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'Clientes.Banco'
    end
    object qryProdEmpPagAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'Clientes.Agencia'
      Size = 10
    end
    object qryProdEmpPagConta: TStringField
      FieldName = 'Conta'
      Origin = 'Clientes.Conta'
      Size = 15
    end
    object qryProdEmpPagDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'PagtoPre.DataInclusao'
    end
    object qryProdEmpPagDataEntrada: TDateTimeField
      FieldName = 'DataEntrada'
      Origin = 'MovBanco.DataEntrada'
    end
    object qryProdEmpPagDataMovimento: TDateTimeField
      FieldName = 'DataMovimento'
      Origin = 'MovBanco.DataMovimento'
    end
    object qryProdEmpPagStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
  end
  object RvProdEmpPag: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryProdEmpPag
    Left = 536
    Top = 212
  end
  object dbExtrato: TMSQuery
    SQLDelete.Strings = (
      'DELETE FROM relExtrato'
      'WHERE'
      '  Data = :Old_Data AND Tipo = :Old_Tipo AND Seq = :Old_Seq')
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'Select * from relExtrato'
      'order by Data,Tipo,Seq')
    FetchRows = 1
    IndexFieldNames = 'Data;Tipo;Seq'
    Left = 535
    Top = 58
    object dbExtratoData: TDateTimeField
      FieldName = 'Data'
    end
    object dbExtratoTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object dbExtratoSeq: TIntegerField
      FieldName = 'Seq'
      ReadOnly = True
    end
    object dbExtratoDoc: TStringField
      FieldName = 'Doc'
      FixedChar = True
    end
    object dbExtratoHistorico: TStringField
      FieldName = 'Historico'
      FixedChar = True
      Size = 60
    end
    object dbExtratoCredito: TCurrencyField
      FieldName = 'Credito'
    end
    object dbExtratoDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object dbExtratoSaldo: TCurrencyField
      FieldName = 'Saldo'
    end
    object dbExtratoConciliado: TBooleanField
      FieldName = 'Conciliado'
    end
  end
  object qryGraf: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'Select * from Lancamentos'
      'order by DataPagto')
    Left = 504
    Top = 268
    object qryGrafFilial: TSmallintField
      FieldName = 'Filial'
      Origin = 'Lancamentos.Filial'
    end
    object qryGrafDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
      Origin = 'Lancamentos.DataEmissao'
    end
    object qryGrafDataVencto: TDateTimeField
      FieldName = 'DataVencto'
      Origin = 'Lancamentos.DataVencto'
    end
    object qryGrafDataPagto: TDateTimeField
      FieldName = 'DataPagto'
      Origin = 'Lancamentos.DataPagto'
    end
    object qryGrafCod1: TSmallintField
      FieldName = 'Cod1'
      Origin = 'Lancamentos.Cod1'
    end
    object qryGrafCod2: TSmallintField
      FieldName = 'Cod2'
      Origin = 'Lancamentos.Cod2'
    end
    object qryGrafCod3: TSmallintField
      FieldName = 'Cod3'
      Origin = 'Lancamentos.Cod3'
    end
    object qryGrafValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'Lancamentos.Valor'
    end
    object qryGrafValorPago: TCurrencyField
      FieldName = 'ValorPago'
      Origin = 'Lancamentos.ValorPago'
    end
  end
  object dbGraf: TMSTable
    TableName = 'dbo.relGrafico'
    OrderFields = 'Ano,Mes'
    Connection = frmMenu.dadosfin
    Left = 536
    Top = 268
    object dbGrafTexto: TStringField
      FieldName = 'Texto'
      Origin = 'dbo.relGrafico.Texto'
      FixedChar = True
      Size = 10
    end
    object dbGrafAno: TSmallintField
      FieldName = 'Ano'
      Origin = 'dbo.relGrafico.Ano'
    end
    object dbGrafMes: TSmallintField
      FieldName = 'Mes'
      Origin = 'dbo.relGrafico.Mes'
    end
    object dbGrafValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'dbo.relGrafico.Valor'
    end
  end
  object dbEnfermeiro: TMSTable
    TableName = 'dbo.Enfermeiros'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Enfermeiro'
    Left = 32
    Top = 156
    object dbEnfermeiroEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
    end
    object dbEnfermeiroNome: TStringField
      FieldName = 'Nome'
      FixedChar = True
      Size = 40
    end
    object dbEnfermeiroCOREN: TIntegerField
      FieldName = 'COREN'
    end
  end
  object dbMedico: TMSTable
    TableName = 'dbo.Auditores'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Auditor'
    Left = 32
    Top = 104
    object dbMedicoAuditor: TIntegerField
      FieldName = 'Auditor'
      Origin = 'dbo.Auditores.Auditor'
    end
    object dbMedicoNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Auditores.Nome'
      Size = 40
    end
    object dbMedicoCRM: TIntegerField
      FieldName = 'CRM'
      Origin = 'dbo.Auditores.CRM'
    end
  end
  object dbCargo: TMSTable
    TableName = 'dbo.CargosCLT'
    Connection = frmMenu.dadosfin
    Left = 108
    Top = 105
    object dbCargoCargo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Cargo'
      Origin = 'dbo.CargosCLT.Cargo'
      ReadOnly = True
    end
    object dbCargoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'dbo.CargosCLT.Descricao'
      Size = 60
    end
  end
  object dbFunTR: TMSTable
    TableName = 'dbo.FuncionarioTR'
    Connection = frmMenu.dadosfin
    Left = 108
    Top = 153
    object dbFunTRFuncionario: TIntegerField
      FieldName = 'Funcionario'
    end
    object dbFunTRTransporte: TStringField
      FieldName = 'Transporte'
      FixedChar = True
      Size = 10
    end
    object dbFunTRQtd: TIntegerField
      FieldName = 'Qtd'
    end
    object dbFunTRUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
    object dbFunTRDataUsuario: TDateTimeField
      FieldName = 'DataUsuario'
    end
  end
  object qryAtivos: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'Select * from Funcionario'
      'order by nome ')
    OnCalcFields = qryAtivosCalcFields
    Left = 250
    Top = 386
    object qryAtivosFuncionario: TIntegerField
      FieldName = 'Funcionario'
      Origin = 'Funcionario.Funcionario'
    end
    object qryAtivosNome: TStringField
      FieldName = 'Nome'
      Origin = 'Funcionario.Nome'
      FixedChar = True
      Size = 50
    end
    object qryAtivosDataInicio: TDateTimeField
      FieldName = 'DataInicio'
      Origin = 'Funcionario.DataInicio'
    end
    object qryAtivosDataFim: TDateTimeField
      FieldName = 'DataFim'
      Origin = 'Funcionario.DataFim'
    end
    object qryAtivosStatus: TStringField
      FieldName = 'Status'
      Origin = 'Funcionario.Status'
      FixedChar = True
      Size = 1
    end
    object qryAtivosStatusTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'StatusTexto'
      Size = 1
      Calculated = True
    end
  end
  object rvAtivos: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryAtivos
    Left = 282
    Top = 386
  end
  object rvAdmitidos: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryAdmitidos
    Left = 347
    Top = 386
  end
  object qryAdmitidos: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'Select * from Funcionario'
      'order by nome ')
    Left = 315
    Top = 386
    object qryAdmitidosFuncionario: TIntegerField
      FieldName = 'Funcionario'
      Origin = 'Funcionario.Funcionario'
    end
    object qryAdmitidosNome: TStringField
      FieldName = 'Nome'
      Origin = 'Funcionario.Nome'
      FixedChar = True
      Size = 50
    end
    object qryAdmitidosDataInicio: TDateTimeField
      FieldName = 'DataInicio'
      Origin = 'Funcionario.DataInicio'
    end
    object qryAdmitidosDataFim: TDateTimeField
      FieldName = 'DataFim'
      Origin = 'Funcionario.DataFim'
    end
    object qryAdmitidosStatus: TStringField
      FieldName = 'Status'
      Origin = 'Funcionario.Status'
      FixedChar = True
      Size = 1
    end
  end
  object rvDemitidos: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryDemitidos
    Left = 410
    Top = 386
  end
  object qryDemitidos: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'Select * from Funcionario'
      'order by nome ')
    Left = 378
    Top = 386
    object qryDemitidosFuncionario: TIntegerField
      FieldName = 'Funcionario'
      Origin = 'Funcionario.Funcionario'
    end
    object qryDemitidosNome: TStringField
      FieldName = 'Nome'
      Origin = 'Funcionario.Nome'
      FixedChar = True
      Size = 50
    end
    object qryDemitidosDataInicio: TDateTimeField
      FieldName = 'DataInicio'
      Origin = 'Funcionario.DataInicio'
    end
    object qryDemitidosDataFim: TDateTimeField
      FieldName = 'DataFim'
      Origin = 'Funcionario.DataFim'
    end
    object qryDemitidosStatus: TStringField
      FieldName = 'Status'
      Origin = 'Funcionario.Status'
      FixedChar = True
      Size = 1
    end
  end
  object qryFluxoD: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'select * from Lancamentos  '
      'INNER JOIN CCorrente ON Lancamentos.BancoId = CCorrente.BancoID'
      
        'INNER JOIN PlanoContas on (Lancamentos.Cod1=PlanoContas.Cod1 and' +
        ' '
      
        '                           Lancamentos.Cod2=PlanoContas.Cod2 and' +
        ' '
      '                           Lancamentos.Cod3=PlanoContas.Cod3)'
      'where year(datapagto)=2022')
    OnCalcFields = qryFluxoDCalcFields
    Left = 175
    Top = 438
    object qryFluxoDFilial: TSmallintField
      FieldName = 'Filial'
      Origin = 'Lancamentos.Filial'
    end
    object qryFluxoDLancamento: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Lancamento'
      Origin = 'Lancamentos.Lancamento'
      ReadOnly = True
    end
    object qryFluxoDTipoPag: TStringField
      FieldName = 'TipoPag'
      Origin = 'Lancamentos.TipoPag'
      FixedChar = True
      Size = 1
    end
    object qryFluxoDCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'Lancamentos.Cliente'
    end
    object qryFluxoDClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
      Origin = 'Lancamentos.ClienteDeb'
    end
    object qryFluxoDDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
      Origin = 'Lancamentos.DataEmissao'
    end
    object qryFluxoDDataVencto: TDateTimeField
      FieldName = 'DataVencto'
      Origin = 'Lancamentos.DataVencto'
    end
    object qryFluxoDPrazo: TIntegerField
      FieldName = 'Prazo'
      Origin = 'Lancamentos.Prazo'
    end
    object qryFluxoDCod1: TSmallintField
      FieldName = 'Cod1'
      Origin = 'Lancamentos.Cod1'
    end
    object qryFluxoDCod2: TSmallintField
      FieldName = 'Cod2'
      Origin = 'Lancamentos.Cod2'
    end
    object qryFluxoDCod3: TSmallintField
      FieldName = 'Cod3'
      Origin = 'Lancamentos.Cod3'
    end
    object qryFluxoDHistorico: TStringField
      FieldName = 'Historico'
      Origin = 'Lancamentos.Historico'
      Size = 60
    end
    object qryFluxoDDoc: TStringField
      FieldName = 'Doc'
      Origin = 'Lancamentos.Doc'
      FixedChar = True
    end
    object qryFluxoDValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'Lancamentos.Valor'
    end
    object qryFluxoDTributo: TBooleanField
      FieldName = 'Tributo'
      Origin = 'Lancamentos.Tributo'
    end
    object qryFluxoDBancoId: TSmallintField
      FieldName = 'BancoId'
      Origin = 'Lancamentos.BancoId'
    end
    object qryFluxoDCheque: TStringField
      FieldName = 'Cheque'
      Origin = 'Lancamentos.Cheque'
      FixedChar = True
    end
    object qryFluxoDDataPagto: TDateTimeField
      FieldName = 'DataPagto'
      Origin = 'Lancamentos.DataPagto'
    end
    object qryFluxoDValorPago: TCurrencyField
      FieldName = 'ValorPago'
      Origin = 'Lancamentos.ValorPago'
    end
    object qryFluxoDValorBruto: TCurrencyField
      FieldName = 'ValorBruto'
      Origin = 'Lancamentos.ValorBruto'
    end
    object qryFluxoDPago: TBooleanField
      FieldName = 'Pago'
      Origin = 'Lancamentos.Pago'
    end
    object qryFluxoDStatus: TStringField
      FieldName = 'Status'
      Origin = 'Lancamentos.Status'
      FixedChar = True
      Size = 1
    end
    object qryFluxoDPrevisao: TIntegerField
      FieldName = 'Previsao'
      Origin = 'Lancamentos.Previsao'
    end
    object qryFluxoDMovBanco: TIntegerField
      FieldName = 'MovBanco'
      Origin = 'Lancamentos.MovBanco'
    end
    object qryFluxoDNF: TIntegerField
      FieldName = 'NF'
      Origin = 'Lancamentos.NF'
    end
    object qryFluxoDBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'CCorrente.Banco'
    end
    object qryFluxoDDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'PlanoContas.Descricao'
      Size = 60
    end
    object qryFluxoDDescricaoFC: TStringField
      FieldName = 'DescricaoFC'
      Origin = 'PlanoContas.DescricaoFC'
      Size = 60
    end
    object qryFluxoDIndicativo: TStringField
      FieldName = 'Indicativo'
      Origin = 'PlanoContas.Indicativo'
      FixedChar = True
      Size = 1
    end
    object qryFluxoDValorReal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorReal'
      Calculated = True
    end
    object qryFluxoDPlanoNome1: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome1'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1'
      LookupResultField = 'Descricao'
      KeyFields = 'Cod1'
      Size = 40
      Lookup = True
    end
    object qryFluxoDPlanoNome2: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome2'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1;Cod2'
      LookupResultField = 'Descricao'
      KeyFields = 'Cod1;Cod2'
      Size = 40
      Lookup = True
    end
    object qryFluxoDIndicativoTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'IndicativoTexto'
      Size = 40
      Calculated = True
    end
    object qryFluxoDClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'CliFor'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 60
      Lookup = True
    end
    object qryFluxoDValorRD: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorRD'
      Calculated = True
    end
  end
  object rvFluxoD: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Query = qryFluxoD
    Left = 210
    Top = 438
  end
  object qryFluxoD3: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      
        'select  Lancamentos.Filial,Lancamentos.Cod1,Indicativo,Lancament' +
        'os.Cod2,Lancamentos.Cod3,'
      '        sum(Lancamentos.valorPago) as ValorPago,'
      '        sum(Lancamentos.valor) as Valor'
      'from Lancamentos'
      'INNER JOIN CCorrente ON Lancamentos.BancoId = CCorrente.BancoID'
      
        'INNER JOIN PlanoContas on (Lancamentos.Cod1=PlanoContas.Cod1 and' +
        ' '
      
        '                           Lancamentos.Cod2=PlanoContas.Cod2 and' +
        ' '
      '                           Lancamentos.Cod3=PlanoContas.Cod3)'
      ''
      
        'group by Lancamentos.Filial,Lancamentos.Cod1,Indicativo,Lancamen' +
        'tos.Cod2,Lancamentos.Cod3'
      
        'order  by Lancamentos.Filial,Lancamentos.Cod1,Indicativo,Lancame' +
        'ntos.Cod2,Lancamentos.Cod3')
    OnCalcFields = qryFluxoD3CalcFields
    Left = 250
    Top = 439
    object qryFluxoD3Filial: TSmallintField
      FieldName = 'Filial'
      Origin = 'Lancamentos.Filial'
    end
    object qryFluxoD3Cod1: TSmallintField
      FieldName = 'Cod1'
      Origin = 'Lancamentos.Cod1'
    end
    object qryFluxoD3Indicativo: TStringField
      FieldName = 'Indicativo'
      Origin = 'PlanoContas.Indicativo'
      FixedChar = True
      Size = 1
    end
    object qryFluxoD3Cod2: TSmallintField
      FieldName = 'Cod2'
      Origin = 'Lancamentos.Cod2'
    end
    object qryFluxoD3Cod3: TSmallintField
      FieldName = 'Cod3'
      Origin = 'Lancamentos.Cod3'
    end
    object qryFluxoD3ValorPago: TCurrencyField
      FieldName = 'ValorPago'
      Origin = '.'
      ReadOnly = True
    end
    object qryFluxoD3Valor: TCurrencyField
      FieldName = 'Valor'
      Origin = '.'
      ReadOnly = True
    end
    object qryFluxoD3ValorReal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorReal'
      Calculated = True
    end
    object qryFluxoD3IndicativoTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'IndicativoTexto'
      Size = 40
      Calculated = True
    end
    object qryFluxoD3PlanoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1;Cod2;Cod3'
      LookupResultField = 'DescricaoFC'
      KeyFields = 'Cod1;Cod2;Cod3'
      Size = 40
      Lookup = True
    end
    object qryFluxoD3PlanoNome1: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome1'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1'
      LookupResultField = 'DescricaoFC'
      KeyFields = 'Cod1'
      Size = 40
      Lookup = True
    end
    object qryFluxoD3PlanoNome2: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome2'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1;Cod2'
      LookupResultField = 'DescricaoFC'
      KeyFields = 'Cod1;Cod2'
      Size = 40
      Lookup = True
    end
    object qryFluxoD3ValorRD: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorRD'
      Calculated = True
    end
  end
  object rvFluxoD3: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryFluxoD3
    Left = 284
    Top = 439
  end
  object qryFluxoD2: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      
        'select  Lancamentos.Filial,Lancamentos.Cod1,Indicativo,Lancament' +
        'os.Cod2,'
      '        sum(Lancamentos.valorPago) as ValorPago,'
      '        sum(Lancamentos.valor) as Valor'
      'from Lancamentos'
      'INNER JOIN CCorrente ON Lancamentos.BancoId = CCorrente.BancoID'
      
        'INNER JOIN PlanoContas on (Lancamentos.Cod1=PlanoContas.Cod1 and' +
        ' '
      '                           Lancamentos.Cod2=PlanoContas.Cod2 and'
      '                           Lancamentos.Cod3=0 )'
      ''
      
        'group by Lancamentos.Filial,Lancamentos.Cod1,Indicativo,Lancamen' +
        'tos.Cod2'
      
        'order  by Lancamentos.Filial,Lancamentos.Cod1,Indicativo,Lancame' +
        'ntos.Cod2')
    Filtered = True
    OnCalcFields = qryFluxoD2CalcFields
    OnFilterRecord = relLancamento2FilterRecord
    Left = 326
    Top = 439
    object qryFluxoD2Filial: TSmallintField
      FieldName = 'Filial'
      Origin = 'Lancamentos.Filial'
    end
    object qryFluxoD2Cod1: TSmallintField
      FieldName = 'Cod1'
      Origin = 'Lancamentos.Cod1'
    end
    object qryFluxoD2Indicativo: TStringField
      FieldName = 'Indicativo'
      Origin = 'PlanoContas.Indicativo'
      FixedChar = True
      Size = 1
    end
    object qryFluxoD2Cod2: TSmallintField
      FieldName = 'Cod2'
      Origin = 'Lancamentos.Cod2'
    end
    object qryFluxoD2ValorPago: TCurrencyField
      FieldName = 'ValorPago'
      Origin = '.'
      ReadOnly = True
    end
    object qryFluxoD2Valor: TCurrencyField
      FieldName = 'Valor'
      Origin = '.'
      ReadOnly = True
    end
    object qryFluxoD2ValorReal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorReal'
      Calculated = True
    end
    object qryFluxoD2IndicativoTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'IndicativoTexto'
      Size = 40
      Calculated = True
    end
    object qryFluxoD2PlanoNome1: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome1'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1'
      LookupResultField = 'DescricaoFC'
      KeyFields = 'Cod1'
      Size = 40
      Lookup = True
    end
    object qryFluxoD2PlanoNome2: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome2'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1;Cod2'
      LookupResultField = 'DescricaoFC'
      KeyFields = 'Cod1;Cod2'
      Size = 40
      Lookup = True
    end
    object qryFluxoD2ValorRD: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorRD'
      Calculated = True
    end
  end
  object rvFluxoD2: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryFluxoD2
    Left = 361
    Top = 439
  end
  object relLancamento1: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'SELECT * FROM relLancamentos')
    OnCalcFields = relLancamento1CalcFields
    Left = 176
    Top = 152
    object relLancamento1Filial: TIntegerField
      FieldName = 'Filial'
      Origin = 'relLancamentos.Filial'
    end
    object relLancamento1Lancamento: TIntegerField
      FieldName = 'Lancamento'
      Origin = 'relLancamentos.Lancamento'
    end
    object relLancamento1Sequencial: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'Sequencial'
      Origin = 'relLancamentos.Sequencial'
      ReadOnly = True
    end
    object relLancamento1Cliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'relLancamentos.Cliente'
    end
    object relLancamento1ClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
      Origin = 'relLancamentos.ClienteDeb'
    end
    object relLancamento1Prazo: TIntegerField
      FieldName = 'Prazo'
      Origin = 'relLancamentos.Prazo'
    end
    object relLancamento1Cod1: TSmallintField
      FieldName = 'Cod1'
      Origin = 'relLancamentos.Cod1'
    end
    object relLancamento1Cod2: TSmallintField
      FieldName = 'Cod2'
      Origin = 'relLancamentos.Cod2'
    end
    object relLancamento1Cod3: TSmallintField
      FieldName = 'Cod3'
      Origin = 'relLancamentos.Cod3'
    end
    object relLancamento1Historico: TStringField
      FieldName = 'Historico'
      Origin = 'relLancamentos.Historico'
      Size = 60
    end
    object relLancamento1Doc: TStringField
      FieldName = 'Doc'
      Origin = 'relLancamentos.Doc'
      Size = 10
    end
    object relLancamento1Valor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'relLancamentos.Valor'
    end
    object relLancamento1Tributo: TBooleanField
      FieldName = 'Tributo'
      Origin = 'relLancamentos.Tributo'
    end
    object relLancamento1BancoID: TIntegerField
      FieldName = 'BancoID'
      Origin = 'relLancamentos.BancoID'
    end
    object relLancamento1Cheque: TStringField
      FieldName = 'Cheque'
      Origin = 'relLancamentos.Cheque'
    end
    object relLancamento1ValorPago: TCurrencyField
      FieldName = 'ValorPago'
      Origin = 'relLancamentos.ValorPago'
    end
    object relLancamento1Pago: TBooleanField
      FieldName = 'Pago'
      Origin = 'relLancamentos.Pago'
    end
    object relLancamento1Selecionado: TBooleanField
      FieldName = 'Selecionado'
      Origin = 'relLancamentos.Selecionado'
    end
    object relLancamento1Status: TStringField
      FieldName = 'Status'
      Origin = 'relLancamentos.Status'
      Size = 1
    end
    object relLancamento1Previsao: TIntegerField
      FieldName = 'Previsao'
      Origin = 'relLancamentos.Previsao'
    end
    object relLancamento1MovBanco: TIntegerField
      FieldName = 'MovBanco'
      Origin = 'relLancamentos.MovBanco'
    end
    object relLancamento1NF: TIntegerField
      FieldName = 'NF'
      Origin = 'relLancamentos.NF'
    end
    object relLancamento1DataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
      Origin = 'relLancamentos.DataEmissao'
    end
    object relLancamento1DataVencto: TDateTimeField
      FieldName = 'DataVencto'
      Origin = 'relLancamentos.DataVencto'
    end
    object relLancamento1DataPagto: TDateTimeField
      FieldName = 'DataPagto'
      Origin = 'relLancamentos.DataPagto'
    end
    object relLancamento1DataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'relLancamentos.DataInclusao'
    end
    object relLancamento1Seq: TStringField
      FieldName = 'Seq'
      Origin = 'relLancamentos.Seq'
      Size = 1
    end
    object relLancamento1Usuario: TStringField
      FieldName = 'Usuario'
      Origin = 'relLancamentos.Usuario'
      Size = 10
    end
    object relLancamento1ClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'CliFor'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 60
      Lookup = True
    end
    object relLancamento1ValorD: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorD'
      Calculated = True
    end
    object relLancamento1ValorC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorC'
      Calculated = True
    end
    object relLancamento1DocOrigem: TStringField
      FieldKind = fkLookup
      FieldName = 'DocOrigem'
      LookupDataSet = dbLancamento
      LookupKeyFields = 'Filial;Cliente;Doc'
      LookupResultField = 'Doc'
      KeyFields = 'Filial;Cliente;Doc'
      Lookup = True
    end
    object relLancamento1FilialNome: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialNome'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Nome'
      KeyFields = 'Filial'
      Size = 40
      Lookup = True
    end
    object relLancamento1CNPJ: TStringField
      FieldKind = fkLookup
      FieldName = 'CNPJ'
      LookupDataSet = dbCliente
      LookupKeyFields = 'CGC'
      LookupResultField = 'CGC'
      KeyFields = 'Cliente'
      Size = 18
      Lookup = True
    end
    object relLancamento1ValorOrigem: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'ValorOrigem'
      LookupDataSet = dbLancamento
      LookupKeyFields = 'Filial;Cliente;Doc'
      LookupResultField = 'Valor'
      KeyFields = 'Filial;Cliente;Doc'
      Lookup = True
    end
    object relLancamento1ClienteDebNome: TStringField
      FieldKind = fkCalculated
      FieldName = 'ClienteDebNome'
      Size = 50
      Calculated = True
    end
    object relLancamento1Filial1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Filial1'
      Calculated = True
    end
    object relLancamento1ValorReal: TCurrencyField
      FieldName = 'ValorReal'
      Origin = 'relLancamentos.ValorReal'
    end
    object relLancamento1ValorRateado: TCurrencyField
      FieldName = 'ValorRateado'
      Origin = 'relLancamentos.ValorRateado'
    end
    object relLancamento1Indicativo: TStringField
      FieldName = 'Indicativo'
      Origin = 'relLancamentos.Indicativo'
      Size = 1
    end
    object relLancamento1PlanoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1;Cod2;Cod3'
      LookupResultField = 'Descricao'
      KeyFields = 'Cod1;Cod2;Cod3'
      Size = 40
      Lookup = True
    end
    object relLancamento1PlanoNome1: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome1'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1'
      LookupResultField = 'Descricao'
      KeyFields = 'Cod1'
      Size = 40
      Lookup = True
    end
    object relLancamento1PlanoNome2: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome2'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1;Cod2'
      LookupResultField = 'Descricao'
      KeyFields = 'Cod1;Cod2'
      Size = 40
      Lookup = True
    end
    object relLancamento1FCNome: TStringField
      FieldKind = fkLookup
      FieldName = 'FCNome'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1;Cod2;Cod3'
      LookupResultField = 'DescricaoFC'
      KeyFields = 'Cod1;Cod2;Cod3'
      Size = 60
      Lookup = True
    end
    object relLancamento1FCNome1: TStringField
      FieldKind = fkLookup
      FieldName = 'FCNome1'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1'
      LookupResultField = 'DescricaoFC'
      KeyFields = 'Cod1'
      Size = 60
      Lookup = True
    end
    object relLancamento1FCNome2: TStringField
      FieldKind = fkLookup
      FieldName = 'FCNome2'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1;Cod2'
      LookupResultField = 'DescricaoFC'
      KeyFields = 'Cod1;Cod2'
      Size = 60
      Lookup = True
    end
  end
  object relLanCli: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'SELECT * FROM relLancamentoCli')
    AfterInsert = relLanCliAfterInsert
    OnCalcFields = relLanCliCalcFields
    IndexFieldNames = 'ClienteDeb;Cod1;Cod2;Cod3'
    Left = 308
    Top = 245
    object relLanCliClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
      Origin = 'relLancamentoCli.ClienteDeb'
    end
    object relLanCliCod1: TSmallintField
      FieldName = 'Cod1'
      Origin = 'relLancamentoCli.Cod1'
    end
    object relLanCliCod2: TSmallintField
      FieldName = 'Cod2'
      Origin = 'relLancamentoCli.Cod2'
    end
    object relLanCliCod3: TSmallintField
      FieldName = 'Cod3'
      Origin = 'relLancamentoCli.Cod3'
    end
    object relLanCliFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'relLancamentoCli.Filial'
    end
    object relLanCliValorReal: TCurrencyField
      FieldName = 'ValorReal'
      Origin = 'relLancamentoCli.ValorReal'
    end
    object relLanCliValorRateado: TCurrencyField
      FieldName = 'ValorRateado'
      Origin = 'relLancamentoCli.ValorRateado'
    end
    object relLanCliFaturamento: TCurrencyField
      FieldName = 'Faturamento'
      Origin = 'relLancamentoCli.Faturamento'
    end
    object relLanCliPFaturamento: TFloatField
      FieldName = 'PFaturamento'
      Origin = 'relLancamentoCli.PFaturamento'
      DisplayFormat = '##0.00%'
      EditFormat = '##0.00%'
      Precision = 5
    end
    object relLanCliPFaturamentoCli: TFloatField
      FieldName = 'PFaturamentoCli'
      Origin = 'relLancamentoCli.PFaturamentoCli'
      DisplayFormat = '##0.00%'
      EditFormat = '##0.00%'
      Precision = 5
    end
    object relLanCliPlanoNome2: TStringField
      FieldKind = fkCalculated
      FieldName = 'PlanoNome2'
      Size = 40
      Calculated = True
    end
    object relLanCliPlanoNome1: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome1'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1'
      LookupResultField = 'Descricao'
      KeyFields = 'Cod1'
      Size = 40
      Lookup = True
    end
    object relLanCliPlanoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoNome'
      LookupDataSet = dbPlanoC
      LookupKeyFields = 'Cod1;Cod2;Cod3'
      LookupResultField = 'Descricao'
      KeyFields = 'Cod1;Cod2;Cod3'
      Size = 40
      Lookup = True
    end
    object relLanCliClienteDebNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteDebNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'CliFor'
      LookupResultField = 'Nome'
      KeyFields = 'ClienteDeb'
      Size = 50
      Lookup = True
    end
    object relLanCliValorTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorTotal'
      Calculated = True
    end
  end
end
