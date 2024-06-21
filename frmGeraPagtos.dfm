object frmGeraPagto: TfrmGeraPagto
  Left = 536
  Top = 241
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Gera Pagamentos'
  ClientHeight = 178
  ClientWidth = 257
  Color = clHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cmdGerar: TBitBtn
    Left = 74
    Top = 150
    Width = 110
    Height = 25
    Hint = 'Copia dados de outra competencia'
    Caption = 'Gerar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = cmdGerarClick
    Glyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      08000000000000010000D30E0000D30E000000010000000100004A7BB500296B
      C600527BC600186BD600528CD6003194D600397BE7005284E700107BEF00317B
      EF001084EF0029ADEF0039ADEF0010B5EF0008BDEF000073F7001873F7002973
      F7000884F7000894F70018A5F70000CEF70018DEF70063DEF700FF00FF000073
      FF00007BFF000084FF00008CFF000094FF00009CFF0000A5FF0010A5FF0039A5
      FF0052A5FF005AA5FF0000ADFF0029ADFF0031ADFF0000B5FF006BB5FF0084B5
      FF0000BDFF0008BDFF0010BDFF0000C6FF0008C6FF006BC6FF0000CEFF0018CE
      FF0000D6FF0008D6FF0010D6FF0021D6FF0031D6FF0000DEFF0018DEFF0029DE
      FF0042DEFF0000E7FF0010E7FF0018E7FF0039E7FF0000EFFF0018EFFF0039EF
      FF004AEFFF0000F7FF0008F7FF0029F7FF0031F7FF0042F7FF004AF7FF005AF7
      FF0000FFFF0008FFFF0018FFFF0021FFFF0031FFFF0039FFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00181818181818
      1818181818181818181818181802181818181818181818181818181818090201
      18181818181818181818181818061A0F02181818181818181818181818181E1C
      1C0218181818181818181818181818271C1D0202181818181818181818181818
      272E1E1E02181818181818181818181818272B241E0218181818181818180202
      022D4B462C240202181818181818252D3F43434A42311F02181818181818212D
      3F433F374A4A412E021818181818182E3E42474C4A4A4B4D0218181818181818
      1836444A43322702181818181818181818181836433F241F0218181818181818
      1818181818363A34230218181818181818181818181818362202}
  end
  object frmCopiaFolha: TPanel
    Left = 0
    Top = 0
    Width = 257
    Height = 145
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 3
      Width = 90
      Height = 13
      Caption = 'Selecione o Banco'
    end
    object DBText1: TDBText
      Left = 5
      Top = 43
      Width = 28
      Height = 17
      DataField = 'Banco'
      DataSource = dsBanco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 42
      Top = 43
      Width = 46
      Height = 17
      DataField = 'Agencia'
      DataSource = dsBanco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 92
      Top = 43
      Width = 65
      Height = 17
      DataField = 'Conta'
      DataSource = dsBanco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 5
      Top = 114
      Width = 248
      Height = 17
      DataField = 'FilialNome'
      DataSource = dsBanco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 5
      Top = 98
      Width = 20
      Height = 13
      Caption = 'Filial'
    end
    object Label3: TLabel
      Left = 5
      Top = 58
      Width = 89
      Height = 13
      Caption = 'Selecione o Fundo'
    end
    object barPagar: TProgressBar
      Left = 1
      Top = 131
      Width = 255
      Height = 13
      Align = alBottom
      TabOrder = 0
    end
    object cmbBanco: TDBLookupComboBox
      Left = 5
      Top = 19
      Width = 155
      Height = 21
      KeyField = 'BancoID'
      ListField = 'Nome'
      ListSource = dsBanco
      TabOrder = 1
    end
    object cmbFundo: TDBLookupComboBox
      Left = 5
      Top = 74
      Width = 248
      Height = 21
      KeyField = 'Fundo'
      ListField = 'Nome'
      ListSource = dsFundos
      TabOrder = 2
    end
  end
  object dbBco: TMSTable
    TableName = 'dbo.CCorrente'
    Connection = frmMenu.dadosfin
    Active = True
    Left = 172
    Top = 8
    object dbBcoBancoID: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'BancoID'
      Origin = 'dbo.CCorrente.BancoID'
      ReadOnly = True
    end
    object dbBcoAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'dbo.CCorrente.Agencia'
      Size = 10
    end
    object dbBcoBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'dbo.CCorrente.Banco'
    end
    object dbBcoConta: TStringField
      FieldName = 'Conta'
      Origin = 'dbo.CCorrente.Conta'
      Size = 15
    end
    object dbBcoNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.CCorrente.Nome'
      Size = 40
    end
    object dbBcoSigla: TStringField
      FieldName = 'Sigla'
      Origin = 'dbo.CCorrente.Sigla'
      Size = 3
    end
    object dbBcoFilial: TSmallintField
      FieldName = 'Filial'
      Origin = 'dbo.CCorrente.Filial'
    end
    object dbBcoUltimoCheque: TIntegerField
      FieldName = 'UltimoCheque'
      Origin = 'dbo.CCorrente.UltimoCheque'
    end
    object dbBcoSaldoFechamento: TCurrencyField
      FieldName = 'SaldoFechamento'
      Origin = 'dbo.CCorrente.SaldoFechamento'
    end
    object dbBcoUsuarioFechamento: TStringField
      FieldName = 'UsuarioFechamento'
      Origin = 'dbo.CCorrente.UsuarioFechamento'
      Size = 10
    end
    object dbBcoSaldoAtual: TCurrencyField
      FieldName = 'SaldoAtual'
      Origin = 'dbo.CCorrente.SaldoAtual'
    end
    object dbBcoLimiteCredito: TCurrencyField
      FieldName = 'LimiteCredito'
      Origin = 'dbo.CCorrente.LimiteCredito'
    end
    object dbBcoStatus: TStringField
      FieldName = 'Status'
      Origin = 'dbo.CCorrente.Status'
      Size = 1
    end
    object dbBcoUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.CCorrente.Usuario'
      Size = 10
    end
    object dbBcoFilialNome: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialNome'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Nome'
      KeyFields = 'Filial'
      Size = 40
      Lookup = True
    end
    object dbBcoDataFechamento: TDateTimeField
      FieldName = 'DataFechamento'
      Origin = 'dbo.CCorrente.DataFechamento'
    end
    object dbBcoDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'dbo.CCorrente.DataInclusao'
    end
  end
  object dsBanco: TDataSource
    DataSet = dbBco
    Left = 204
    Top = 8
  end
  object dbFilial: TMSTable
    TableName = 'dbo.Filiais'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Filial'
    Left = 64
    Top = 96
    object dbFilialFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'dbo.Filiais.Filial'
    end
    object dbFilialNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Filiais.Nome'
      Size = 60
    end
  end
  object dbFundo: TMSTable
    TableName = 'dbo.Fundos'
    MasterFields = 'BancoID'
    DetailFields = 'BancoID'
    MasterSource = dsBanco
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'BancoID;Fundo'
    Left = 171
    Top = 40
    object dbFundoBancoID: TAutoIncField
      FieldName = 'BancoID'
      ReadOnly = True
    end
    object dbFundoFundo: TAutoIncField
      FieldName = 'Fundo'
      ReadOnly = True
    end
    object dbFundoNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object dbFundoSaldoFechamento: TCurrencyField
      FieldName = 'SaldoFechamento'
    end
    object dbFundoUsuarioFechamento: TStringField
      FieldName = 'UsuarioFechamento'
      Size = 10
    end
    object dbFundoSaldoAtual: TCurrencyField
      FieldName = 'SaldoAtual'
    end
    object dbFundoStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object dbFundoUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object dbFundoDataFechamento: TDateTimeField
      FieldName = 'DataFechamento'
    end
    object dbFundoDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
    end
  end
  object dsFundos: TDataSource
    DataSet = dbFundo
    Left = 202
    Top = 40
  end
  object dbMovBco: TMSTable
    TableName = 'dbo.MovBanco'
    Connection = frmMenu.dadosfin
    Filtered = True
    Left = 96
    Top = 95
    object dbMovBcoMovBanco: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'MovBanco'
      Origin = 'dbo.MovBanco.MovBanco'
      ReadOnly = True
    end
    object dbMovBcoBancoID: TIntegerField
      FieldName = 'BancoID'
      Origin = 'dbo.MovBanco.BancoID'
    end
    object dbMovBcoTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'dbo.MovBanco.Tipo'
      Size = 1
    end
    object dbMovBcoDoc: TStringField
      FieldName = 'Doc'
      Origin = 'dbo.MovBanco.Doc'
    end
    object dbMovBcoValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'dbo.MovBanco.Valor'
    end
    object dbMovBcoFavorecido: TStringField
      FieldName = 'Favorecido'
      Origin = 'dbo.MovBanco.Favorecido'
      Size = 50
    end
    object dbMovBcoHistorico: TMemoField
      FieldName = 'Historico'
      Origin = 'dbo.MovBanco.Historico'
      BlobType = ftMemo
    end
    object dbMovBcoStatus: TStringField
      FieldName = 'Status'
      Origin = 'dbo.MovBanco.Status'
      Size = 1
    end
    object dbMovBcoFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'dbo.MovBanco.Filial'
    end
    object dbMovBcoUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.MovBanco.Usuario'
      Size = 10
    end
    object dbMovBcoBanco: TSmallintField
      FieldKind = fkLookup
      FieldName = 'Banco'
      LookupDataSet = dbBco
      LookupKeyFields = 'BancoID'
      LookupResultField = 'Banco'
      KeyFields = 'BancoID'
      Lookup = True
    end
    object dbMovBcoAgencia: TStringField
      FieldKind = fkLookup
      FieldName = 'Agencia'
      LookupDataSet = dbBco
      LookupKeyFields = 'BancoID'
      LookupResultField = 'Agencia'
      KeyFields = 'BancoID'
      Size = 10
      Lookup = True
    end
    object dbMovBcoConta: TStringField
      FieldKind = fkLookup
      FieldName = 'Conta'
      LookupDataSet = dbBco
      LookupKeyFields = 'BancoID'
      LookupResultField = 'Conta'
      KeyFields = 'BancoID'
      Size = 15
      Lookup = True
    end
    object dbMovBcoTipoTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'TipoTexto'
      Size = 2
      Calculated = True
    end
    object dbMovBcoFundo: TIntegerField
      FieldName = 'Fundo'
      Origin = 'dbo.MovBanco.Fundo'
    end
    object dbMovBcoCruzado: TBooleanField
      FieldName = 'Cruzado'
      Origin = 'dbo.MovBanco.Cruzado'
    end
    object dbMovBcoFilialNome: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialNome'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Nome'
      KeyFields = 'Filial'
      Size = 40
      Lookup = True
    end
    object dbMovBcoUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Origin = 'dbo.MovBanco.UsuarioI'
      Size = 10
    end
    object dbMovBcoSelecionado: TBooleanField
      FieldName = 'Selecionado'
      Origin = 'dbo.MovBanco.Selecionado'
    end
    object dbMovBcoTipoPag: TStringField
      FieldName = 'TipoPag'
      Origin = 'dbo.MovBanco.TipoPag'
      Size = 1
    end
    object dbMovBcoAplicacao: TIntegerField
      FieldName = 'Aplicacao'
      Origin = 'dbo.MovBanco.Aplicacao'
    end
    object dbMovBcoDataEntrada: TDateTimeField
      FieldName = 'DataEntrada'
      Origin = 'dbo.MovBanco.DataEntrada'
    end
    object dbMovBcoDataMovimento: TDateTimeField
      FieldName = 'DataMovimento'
      Origin = 'dbo.MovBanco.DataMovimento'
    end
    object dbMovBcoDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'dbo.MovBanco.DataInclusao'
    end
    object dbMovBcoDataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
      Origin = 'dbo.MovBanco.DataAlteracao'
    end
  end
  object dbFun: TMSTable
    TableName = 'dbo.Funcionario'
    Connection = frmMenu.dadosfin
    Filtered = True
    IndexFieldNames = 'Nome'
    Left = 131
    Top = 96
    object dbFunFuncionario: TIntegerField
      FieldName = 'Funcionario'
    end
    object dbFunNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object dbFunBanco: TSmallintField
      FieldName = 'Banco'
    end
    object dbFunAgencia: TStringField
      FieldName = 'Agencia'
      Size = 10
    end
    object dbFunConta: TStringField
      FieldName = 'Conta'
      Size = 10
    end
    object dbFunCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object dbFunSalarioBruto: TCurrencyField
      FieldName = 'SalarioBruto'
    end
    object dbFunCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbFunDataFim: TDateTimeField
      FieldName = 'DataFim'
    end
  end
end
