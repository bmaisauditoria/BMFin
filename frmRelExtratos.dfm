object frmRelExtrato: TfrmRelExtrato
  Left = 450
  Top = 196
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Extrato Banc'#225'rio'
  ClientHeight = 171
  ClientWidth = 295
  Color = clHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object SpeedButton1: TSpeedButton
    Left = 86
    Top = 138
    Width = 123
    Height = 31
    Caption = 'Imprimir'
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
    OnClick = SpeedButton1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 295
    Height = 129
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 36
      Top = 43
      Width = 108
      Height = 16
      Caption = 'Vencimento Inicial'
    end
    object Label4: TLabel
      Left = 42
      Top = 73
      Width = 103
      Height = 16
      Caption = 'Vencimento Final'
    end
    object Label1: TLabel
      Left = 10
      Top = 14
      Width = 35
      Height = 16
      Caption = 'Conta'
    end
    object dtpIni: TDateTimePicker
      Left = 149
      Top = 39
      Width = 111
      Height = 24
      Date = 37994.000000000000000000
      Time = 37994.000000000000000000
      TabOrder = 0
    end
    object dtpFim: TDateTimePicker
      Left = 149
      Top = 69
      Width = 111
      Height = 24
      Date = 37994.000000000000000000
      Time = 37994.000000000000000000
      TabOrder = 1
    end
    object cmpConta: TDBLookupComboBox
      Left = 52
      Top = 9
      Width = 237
      Height = 24
      KeyField = 'BancoID'
      ListField = 'Nome'
      ListSource = dsBanco
      TabOrder = 2
    end
    object chkConciliado: TCheckBox
      Left = 10
      Top = 101
      Width = 119
      Height = 21
      Caption = 'Conciliado'
      TabOrder = 3
    end
  end
  object dsBanco: TDataSource
    DataSet = dbBanco
    Left = 30
    Top = 48
  end
  object dbBanco: TMSTable
    TableName = 'dbo.CCorrente'
    Connection = frmMenu.dadosfin
    Filtered = True
    IndexFieldNames = 'BancoID'
    Left = 2
    Top = 48
    object dbBancoBancoID: TAutoIncField
      FieldName = 'BancoID'
      ReadOnly = True
    end
    object dbBancoAgencia: TStringField
      FieldName = 'Agencia'
      Size = 10
    end
    object dbBancoBanco: TSmallintField
      FieldName = 'Banco'
    end
    object dbBancoConta: TStringField
      FieldName = 'Conta'
      Size = 15
    end
    object dbBancoNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
  end
  object dbMovBanco: TMSTable
    TableName = 'dbo.MovBanco'
    MasterFields = 'BancoID'
    MasterSource = dsBanco
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'BancoID'
    Top = 104
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
