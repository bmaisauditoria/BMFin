object frmPagtoCLTLan: TfrmPagtoCLTLan
  Left = 495
  Top = 254
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Gera Previs'#245'es CLT'
  ClientHeight = 208
  ClientWidth = 278
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
  object cmdCopia2: TBitBtn
    Left = 84
    Top = 176
    Width = 110
    Height = 25
    Hint = 'Copia dados de outra competencia'
    Caption = 'Gerar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = cmdCopia2Click
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
    Width = 278
    Height = 169
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 5
      Top = 48
      Width = 89
      Height = 13
      Caption = 'Selecione o Fundo'
    end
    object Label4: TLabel
      Left = 11
      Top = 95
      Width = 56
      Height = 13
      Caption = 'Vencimento'
    end
    object Label2: TLabel
      Left = 5
      Top = 4
      Width = 79
      Height = 13
      Caption = 'Selecione a Filial'
    end
    object barPagar: TProgressBar
      Left = 1
      Top = 161
      Width = 276
      Height = 7
      Align = alBottom
      TabOrder = 0
    end
    object cmbFundo: TDBLookupComboBox
      Left = 5
      Top = 64
      Width = 248
      Height = 21
      KeyField = 'Fundo'
      ListField = 'Nome'
      ListSource = dsFundos
      TabOrder = 1
    end
    object dtpVencto: TDateTimePicker
      Left = 73
      Top = 92
      Width = 90
      Height = 21
      Date = 37994.000000000000000000
      Time = 37994.000000000000000000
      TabOrder = 2
    end
    object rdgSalario: TRadioGroup
      Left = 8
      Top = 117
      Width = 262
      Height = 35
      Caption = 'Selecione'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Sal'#225'rio Mensal'
        '13o. Salario')
      TabOrder = 3
    end
    object cmbFilial: TDBLookupComboBox
      Left = 5
      Top = 21
      Width = 265
      Height = 21
      KeyField = 'Filial'
      ListField = 'Nome'
      ListSource = dsFilial
      TabOrder = 4
    end
  end
  object dbFilial: TMSTable
    TableName = 'dbo.Filiais'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Filial'
    Left = 207
    Top = 9
    object dbFilialFilial: TIntegerField
      FieldName = 'Filial'
    end
    object dbFilialNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
  end
  object dbFundos: TMSTable
    TableName = 'dbo.Fundos'
    MasterFields = 'BancoID'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'BancoID;Fundo'
    Left = 207
    Top = 76
    object dbFundosBancoID: TAutoIncField
      FieldName = 'BancoID'
      ReadOnly = True
    end
    object dbFundosFundo: TAutoIncField
      FieldName = 'Fundo'
      ReadOnly = True
    end
    object dbFundosNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object dbFundosSaldoFechamento: TCurrencyField
      FieldName = 'SaldoFechamento'
    end
    object dbFundosUsuarioFechamento: TStringField
      FieldName = 'UsuarioFechamento'
      Size = 10
    end
    object dbFundosSaldoAtual: TCurrencyField
      FieldName = 'SaldoAtual'
    end
    object dbFundosStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object dbFundosUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object dbFundosDataFechamento: TDateTimeField
      FieldName = 'DataFechamento'
    end
    object dbFundosDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
    end
  end
  object dsFundos: TDataSource
    DataSet = dbFundos
    Left = 238
    Top = 76
  end
  object dsFilial: TDataSource
    DataSet = dbFilial
    Left = 237
    Top = 10
  end
end
