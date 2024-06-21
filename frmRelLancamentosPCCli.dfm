object frmRelLancamentoPCCli: TfrmRelLancamentoPCCli
  Left = 319
  Top = 216
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Relat'#243'rio Gerencial por Cliente'
  ClientHeight = 343
  ClientWidth = 380
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
    Width = 380
    Height = 304
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 10
      Top = 117
      Width = 108
      Height = 16
      Caption = 'Vencimento Inicial'
    end
    object Label3: TLabel
      Left = 16
      Top = 146
      Width = 103
      Height = 16
      Caption = 'Vencimento Final'
    end
    object cmbFilial: TDBLookupComboBox
      Left = 9
      Top = 28
      Width = 369
      Height = 24
      KeyField = 'Filial'
      ListField = 'Nome'
      ListSource = dsFilial
      TabOrder = 0
    end
    object dtpIni: TDateTimePicker
      Left = 123
      Top = 113
      Width = 111
      Height = 24
      Date = 37994.000000000000000000
      Time = 37994.000000000000000000
      TabOrder = 1
    end
    object dtpFim: TDateTimePicker
      Left = 123
      Top = 143
      Width = 111
      Height = 24
      Date = 37994.000000000000000000
      Time = 37994.000000000000000000
      TabOrder = 2
    end
    object rdgPago: TRadioGroup
      Left = 5
      Top = 170
      Width = 369
      Height = 39
      Caption = 'Selecione'
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Previstos'
        'Pagos'
        'Ambos')
      TabOrder = 3
    end
    object rdgNivel: TRadioGroup
      Left = 5
      Top = 209
      Width = 369
      Height = 40
      Caption = 'Selecione'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Detalhes'
        'Nivel 3'
        'Nivel 2')
      TabOrder = 4
    end
    object chkFilial: TCheckBox
      Left = 9
      Top = 6
      Width = 227
      Height = 21
      Caption = 'Todas as Filiais ou selecione'
      TabOrder = 5
      OnClick = chkFilialClick
    end
    object cmbCliente: TDBLookupComboBox
      Left = 9
      Top = 81
      Width = 369
      Height = 24
      KeyField = 'CliFor'
      ListField = 'Nome'
      ListSource = dsCliente
      TabOrder = 6
      Visible = False
    end
    object chkCliente: TCheckBox
      Left = 9
      Top = 59
      Width = 227
      Height = 21
      Caption = 'Todos os Clientes ou selecione'
      Checked = True
      State = cbChecked
      TabOrder = 7
      OnClick = chkClienteClick
    end
    object rdgOrdem: TRadioGroup
      Left = 5
      Top = 250
      Width = 369
      Height = 39
      Caption = 'Selecione ordem de'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Cliente'
        'Plano de Contas')
      TabOrder = 8
    end
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 293
      Width = 378
      Height = 10
      Align = alBottom
      TabOrder = 9
    end
    object cmbMes: TComboBox
      Left = 241
      Top = 127
      Width = 68
      Height = 24
      ItemHeight = 16
      TabOrder = 10
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
      Top = 126
      Width = 66
      Height = 26
      EditorEnabled = False
      MaxValue = 0
      MinValue = 0
      TabOrder = 11
      Value = 1998
      OnChange = cmbMesChange
    end
  end
  object cmdImp: TBitBtn
    Left = 128
    Top = 311
    Width = 123
    Height = 29
    Hint = 'Imprimir'
    Caption = 'Imprimir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = cmdImpClick
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
    Left = 229
    Top = 17
    object dbFilialFilial: TIntegerField
      FieldName = 'Filial'
    end
    object dbFilialNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
  end
  object dsFilial: TDataSource
    DataSet = dbFilial
    Left = 261
    Top = 18
  end
  object dbCliente: TMSTable
    TableName = 'dbo.Clientes'
    Connection = frmMenu.dadosfin
    Filtered = True
    OnFilterRecord = dbClienteFilterRecord
    IndexFieldNames = 'Nome'
    Left = 229
    Top = 57
    object dbClienteCliFor: TAutoIncField
      FieldName = 'CliFor'
      ReadOnly = True
    end
    object dbClienteNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
    object dbClienteStatusCli: TBooleanField
      FieldName = 'StatusCli'
    end
  end
  object dsCliente: TDataSource
    DataSet = dbCliente
    Left = 261
    Top = 58
  end
end