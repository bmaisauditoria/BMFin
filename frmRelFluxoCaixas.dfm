object frmRelFluxoCaixa: TfrmRelFluxoCaixa
  Left = 920
  Top = 330
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Fluxo de Caixa'
  ClientHeight = 266
  ClientWidth = 390
  Color = clHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 390
    Height = 219
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Left = 7
      Top = 63
      Width = 107
      Height = 16
      Caption = 'Pagamento Inicial'
    end
    object Label3: TLabel
      Left = 14
      Top = 92
      Width = 102
      Height = 16
      Caption = 'Pagamento Final'
    end
    object cmbFilial: TDBLookupComboBox
      Left = 9
      Top = 28
      Width = 375
      Height = 24
      KeyField = 'Filial'
      ListField = 'Nome'
      ListSource = dsFilial
      TabOrder = 1
    end
    object dtpIni: TDateTimePicker
      Left = 121
      Top = 59
      Width = 110
      Height = 24
      Date = 37994.000000000000000000
      Time = 37994.000000000000000000
      TabOrder = 2
    end
    object dtpFim: TDateTimePicker
      Left = 121
      Top = 89
      Width = 110
      Height = 24
      Date = 37994.000000000000000000
      Time = 37994.000000000000000000
      TabOrder = 3
    end
    object rdgNivel: TRadioGroup
      Left = 7
      Top = 145
      Width = 375
      Height = 63
      Caption = 'Selecione'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Detalhes'
        'Nivel 3'
        'Nivel 2'
        'Apenas Pequeno Caixa')
      TabOrder = 6
    end
    object chkFilial: TCheckBox
      Left = 9
      Top = 6
      Width = 227
      Height = 21
      Caption = 'Todas as Filiais ou selecione'
      TabOrder = 0
      OnClick = chkFilialClick
    end
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 209
      Width = 388
      Height = 9
      Align = alBottom
      TabOrder = 4
    end
    object chkPeqCaixa: TCheckBox
      Left = 9
      Top = 123
      Width = 256
      Height = 21
      Caption = 'Detalhar Contas de Pequeno Caixa'
      TabOrder = 5
    end
  end
  object cmbMes: TComboBox
    Left = 241
    Top = 78
    Width = 68
    Height = 24
    ItemHeight = 16
    TabOrder = 2
    Text = 'Jan'
    OnChange = cmbMesChange
    Items.Strings = (
      'Jan'
      'Fev'
      'Mar'
      'Abr'
      'Mai'
      'Jun'
      'Jul'
      'Ago'
      'Set'
      'Out'
      'Nov'
      'Dez')
  end
  object cmbAno: TSpinEdit
    Left = 311
    Top = 76
    Width = 66
    Height = 26
    EditorEnabled = False
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 1998
    OnChange = cmbAnoChange
  end
  object cmdRelFluxo: TBitBtn
    Left = 133
    Top = 226
    Width = 124
    Height = 31
    Hint = 'Imprimir'
    Caption = 'Imprimir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = cmdRelFluxoClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FF868484868484FF00FFFF00FF868484868484FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF868484BCBABAB5B3B386848486
      8484868484EBEAEA868484868484868484FF00FFFF00FFFF00FFFF00FFFF00FF
      868484E3E2E2B5B3B3B5B3B3B5B3B35150504F4F4F868787CDCDCDE8E9E9C7C6
      C6868484868484868484FF00FF868484DEDDDDD6D6D6A4A3A3A4A3A3A4A3A356
      5555161516121212181818121212939393CACACA868484FF00FF868484D6D6D6
      D6D6D6A4A3A3E0DEDED9D7D7CDCBCBC2C0C0B6B4B49F9D9D7976771212121414
      141313138684848F8C8C868484D6D6D6A4A3A3F3F2F2FFFEFEFCFBFBEAE7E8E6
      E6E6E6E5E5DAD9D9CCCBCBBFBDBDA2A0A07371719391918E8C8C868484A4A3A3
      FFFFFFFEFDFDFBFBFBDFDEDFADA7A9B4ADAEC3BDBED1CECFE0E0E0E1E1E1D4D3
      D3C7C6C6A7A5A5868383FF00FF868484868484F1F0F0C2B9BA93898BA19B9FAB
      A8AAABA6A7B1ACADAFA9AAB2ADAECAC9C9DCDCDCD0D0D0868484FF00FFFF00FF
      FF00FF868484CAA097BA9E87A2897E95817B897C7F928C92A5A2A4BBB6B7D7D6
      D6CFCFCF868484FF00FFFF00FFFF00FFFF00FFFF00FFCC9A99FFEAC4FFDDB3EE
      C399D5AE8CC9A786CC9A99989596868484868484FF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFCC9A99FFE7C8FFDDBAFFDBB1FFD9A6FFD39FCC9A99FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCE9D9BFFEDDAFFE7CEFFE2C3FF
      DDB8FFDBAECC9A99FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFCC9A99FEF0E1FFECD8FFE6CCFFE1C2FEDDB7CC9A99FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFCC9A99FFFFF5FFFFF5FFF0E1FFEBD6FF
      E8CCF6D4BACC9A99FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      CC9A99CC9A99CC9A99FCF3E9FCEADAFCE5D0CC9A99FF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC9A99CC9A99CC
      9A99FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
  end
  object dbFilial: TMSTable
    TableName = 'dbo.Filiais'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Filial'
    Left = 165
    Top = 17
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
  object dsFilial: TDataSource
    DataSet = dbFilial
    Left = 197
    Top = 18
  end
  object dbBanco: TMSTable
    TableName = 'dbo.CCorrente'
    Connection = frmMenu.dadosfin
    Filtered = True
    OnFilterRecord = dbBancoFilterRecord
    IndexFieldNames = 'BancoID'
    Left = 228
    Top = 17
    object dbBancoBancoID: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'BancoID'
      Origin = 'dbo.CCorrente.BancoID'
      ReadOnly = True
    end
    object dbBancoBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'dbo.CCorrente.Banco'
    end
    object dbBancoAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'dbo.CCorrente.Agencia'
      FixedChar = True
      Size = 10
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
    object dbBancoStatus: TStringField
      FieldName = 'Status'
      Origin = 'dbo.CCorrente.Status'
      Size = 1
    end
    object dbBancoUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.CCorrente.Usuario'
      Size = 10
    end
    object dbBancoDataFechamento: TDateTimeField
      FieldName = 'DataFechamento'
      Origin = 'dbo.CCorrente.DataFechamento'
    end
    object dbBancoPeqCaixa: TBooleanField
      FieldName = 'PeqCaixa'
      Origin = 'dbo.CCorrente.PeqCaixa'
    end
  end
  object dbMovBanco: TMSTable
    TableName = 'dbo.MovBanco'
    Connection = frmMenu.dadosfin
    Filtered = True
    OnFilterRecord = dbMovBancoFilterRecord
    IndexFieldNames = 'DataEntrada;BancoID;Doc'
    Left = 260
    Top = 17
    object dbMovBancoMovBanco: TAutoIncField
      FieldName = 'MovBanco'
      ReadOnly = True
    end
    object dbMovBancoBancoID: TIntegerField
      FieldName = 'BancoID'
    end
    object dbMovBancoFundo: TIntegerField
      FieldName = 'Fundo'
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
    object dbMovBancoCruzado: TBooleanField
      FieldName = 'Cruzado'
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
    object dbMovBancoUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object dbMovBancoDataEntrada: TDateTimeField
      FieldName = 'DataEntrada'
    end
    object dbMovBancoDataMovimento: TDateTimeField
      FieldName = 'DataMovimento'
    end
    object dbMovBancoDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
    end
  end
end
