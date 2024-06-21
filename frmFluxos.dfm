object frmFluxo: TfrmFluxo
  Left = 307
  Top = 143
  Width = 780
  Height = 550
  HelpContext = 6
  Caption = 'Fluxo de Caixa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object TabControl1: TTabControl
    Left = 0
    Top = 80
    Width = 762
    Height = 423
    Align = alClient
    MultiLine = True
    Style = tsButtons
    TabOrder = 0
    Tabs.Strings = (
      'Janeiro'
      'Fevereiro'
      'Mar'#231'o'
      'Abril'
      'Maio'
      'Junho'
      'Julho'
      'Agosto'
      'Setembro'
      'Outubro'
      'Novembro'
      'Dezembro')
    TabIndex = 0
    OnChange = TabControl1Change
    object Image1: TImage
      Left = 167
      Top = 10
      Width = 16
      Height = 16
      AutoSize = True
      Center = True
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        000010000000010018000000000000030000120B0000120B0000000000000000
        0000FF00FF078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE
        078DBE078DBE078DBE078DBEFF00FFFF00FF078DBE63CBF8078DBEA3E1FB66CD
        F965CDF865CDF965CDF965CDF865CDF965CDF866CDF83AADD8ACE7F5078DBEFF
        00FF078DBE6AD1F9078DBEA8E5FC6FD4FA6FD4F96ED4FA6FD4F96FD4FA6FD4FA
        6FD4FA6ED4F93EB1D9B1EAF5078DBEFF00FF078DBE72D6FA078DBEAEEAFC79DC
        FB79DCFB79DCFB79DCFB79DCFB7ADCFB79DCFA79DCFA44B5D9B6EEF6078DBEFF
        00FF078DBE79DDFB078DBEB5EEFD83E4FB84E4FB83E4FC83E4FC84E4FC83E4FC
        83E4FB84E5FC48B9DABBF2F6078DBEFF00FF078DBE82E3FC078DBEBAF3FD8DEB
        FC8DEBFC8DEBFC8DEBFD8DEBFD8DEBFC8DEBFD8DEBFC4CBBDABEF4F7078DBEFF
        00FF078DBE8AEAFC078DBEFFFFFFC9F7FEC8F7FEC9F7FEC9F7FEC9F7FEC8F7FE
        C9F7FEC8F7FE9BD5E7DEF9FB078DBEFF00FF078DBE93F0FE078DBE078DBE078D
        BE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBEFF
        00FF078DBE9BF5FE9AF6FE9AF6FE9BF5FD9BF6FE9AF6FE9BF5FE9AF6FD9BF5FE
        9AF6FE9AF6FE0989BAFF00FFFF00FFFF00FF078DBEFEFEFEA0FBFFA0FBFEA0FB
        FEA1FAFEA1FBFEA0FAFEA1FBFEA1FBFFA0FBFFA1FBFF0989BAFF00FFFF00FFFF
        00FFFF00FF078DBEFEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBE078DBE
        078DBE078DBEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF078DBE078DBE078D
        BE078DBEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF}
      Transparent = True
      Visible = False
    end
    object Image2: TImage
      Left = 187
      Top = 10
      Width = 16
      Height = 16
      AutoSize = True
      Center = True
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        000010000000010018000000000000030000120B0000120B0000000000000000
        0000FF00FF0274AC0274AC0274AC0274AC0274AC0274AC0274AC0274AC0274AC
        0274AC0274AC0274ACFF00FFFF00FFFF00FF0274AC138AC456B6E16ACBF84BBF
        F74ABFF74ABFF74ABFF74ABFF64ABFF74ABFF64BC0F72398CC0C81BAFF00FFFF
        00FF0274AC33AAE02392C489D9FA54C7F854C7F753C7F854C7F754C7F854C7F8
        54C7F853C7F7279DCEBAEBEF0274ACFF00FF0274AC57CAF80274AC99E2FB5ED1
        FA5ED1FA5ED1FA5ED1FA5ED1FA5FD1FA5ED1F85ED1F82CA1CEBAEBEF0274ACFF
        00FF0274AC5ED3FA0B81B782D5EF79E0FB6ADCFA69DCFB69DCFB6ADCFB69DCFB
        69DCFA6ADDFB2FA6CFBAEBEF097EB4FF00FF0274AC68DAFB2BA4D14AB1D796EB
        FB74E5FB74E5FB74E5FC74E5FC74E5FB74E5FC74E5FB33A9CFBAEBEFBAEBEF02
        74AC0274AC70E3FB5CD1EF1184B7FEFFFFB8F4FCBAF4FCBAF4FCBAF4FEB8F4FE
        BAF4FCB8F4FE83C9DEE3FEFEC5EFF60274AC0274AC7AEBFE7AEBFC0A7FB50274
        AC0274AC0274AC0274AC0274AC0274AC0274AC0274AC0274AC0274AC0274AC02
        74AC0274AC83F2FE82F3FE82F3FE83F2FC83F3FE82F3FE83F2FE82F3FC83F2FE
        82F3FE82F3FE036FA7FF00FFFF00FFFF00FF0274ACFEFEFE89FAFF89FAFE89FA
        FE8AF8FE8AFAFE89F8FE8AFAFE8AFAFF89FAFF8AFAFF036FA7FF00FFFF00FFFF
        00FFFF00FF0274ACFEFEFE8FFEFF8FFEFF8FFEFF0274AC0274AC0274AC0274AC
        0274AC0274ACFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0274AC0274AC0274
        AC0274ACFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF}
      Stretch = True
      Transparent = True
      Visible = False
    end
    object StringAlignGrid1: TStringAlignGrid
      Left = 4
      Top = 57
      Width = 754
      Height = 362
      Align = alClient
      ColCount = 31
      Ctl3D = False
      DefaultRowHeight = 18
      FixedColor = clSilver
      FixedCols = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      GridLineWidth = 0
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnDrawCell = StringAlignGrid1DrawCell
      OnKeyDown = StringAlignGrid1KeyDown
      OnMouseDown = StringAlignGrid1MouseDown
      SelectedCellColor = clGray
      ColWidths = (
        64
        216
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64)
      RowHeights = (
        18
        18
        18
        18
        18)
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 762
    Height = 80
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Left = 10
      Top = 15
      Width = 28
      Height = 16
      Caption = 'Filial'
    end
    object cmdDecimal: TSpeedButton
      Left = 876
      Top = 2
      Width = 31
      Height = 31
      GroupIndex = 3
      Down = True
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -10
      Font.Name = 'Small Fonts'
      Font.Style = []
      ParentFont = False
      Visible = False
      OnClick = cmdDecimalClick
    end
    object cmdInteiro: TSpeedButton
      Left = 906
      Top = 2
      Width = 31
      Height = 31
      GroupIndex = 3
      Caption = '000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -10
      Font.Name = 'Small Fonts'
      Font.Style = []
      ParentFont = False
      Visible = False
      OnClick = cmdInteiroClick
    end
    object Panel2: TPanel
      Left = 1
      Top = 39
      Width = 760
      Height = 40
      Align = alBottom
      Color = clHighlight
      TabOrder = 0
      object Label1: TLabel
        Left = 256
        Top = 14
        Width = 31
        Height = 16
        Caption = 'N'#237'vel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cmdResumo: TSpeedButton
        Left = 465
        Top = 6
        Width = 74
        Height = 31
        Hint = 'Resumo do mes'
        AllowAllUp = True
        GroupIndex = 2
        Down = True
        Caption = 'Resumo'
        ParentShowHint = False
        ShowHint = True
        OnClick = cmdResumoClick
      end
      object cmdN4: TSpeedButton
        Left = 383
        Top = 6
        Width = 31
        Height = 31
        GroupIndex = 1
        Caption = '4'
        OnClick = cmdN1Click
      end
      object cmdN3: TSpeedButton
        Left = 354
        Top = 6
        Width = 31
        Height = 31
        GroupIndex = 1
        Down = True
        Caption = '3'
        OnClick = cmdN3Click
      end
      object cmdN2: TSpeedButton
        Left = 325
        Top = 6
        Width = 31
        Height = 31
        GroupIndex = 1
        Caption = '2'
        OnClick = cmdN2Click
      end
      object cmdN1: TSpeedButton
        Left = 295
        Top = 6
        Width = 31
        Height = 31
        GroupIndex = 1
        Caption = '1'
        OnClick = cmdN1Click
      end
      object cmdDiario: TSpeedButton
        Left = 542
        Top = 6
        Width = 73
        Height = 31
        Hint = 'Di'#225'rio'
        AllowAllUp = True
        GroupIndex = 2
        Caption = 'Di'#225'rio'
        ParentShowHint = False
        ShowHint = True
        OnClick = cmdDiarioClick
      end
      object cmdSaldo: TSpeedButton
        Left = 660
        Top = 6
        Width = 30
        Height = 31
        Hint = 'Recalcula Saldos Banc'#225'rios'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE602A
          AE602AAE602AAE602AAE602AAE602AAE602AAE602AAE602AAE602AAE602AAE60
          2AAE602AAE602AFF00FFDAA039FFD195EAB777E4AE67FFBD60F1AE4FDC9C3EFC
          AA32FFA922FB9F14FB9A05FB9800FB9801FC9900FF9F00AE602AE7AC1DEEC093
          584E44534A41D39D5B866A46433E39BA8338D5902F50433054452F5243305544
          2B624A28F69702AE602AE7AC1DFFD0A0CAA276C09768FBBD6DD69F58B98847ED
          A540E9A142AF7F56C58538E08D12B67937B97B37FE9D02AE602AE7AC1DEDC299
          60554C5C5147D2A2688B704F4F463CB5843F977D922E42DE6D64A1CA8A483047
          D33649CCEB9317AE602AE7AC1DFED1A2BC9B78B3916CFDC47FD3A165A17B4DEF
          AA4DE9A657887394C78D55FEA3179C7469A1745FFE9D01AE602AE7AC1DE9BF97
          63584D5A5149CDA5748A715547413CB386499D8397263EE36E66A5CE904B3148
          D23448CCE3911EAE602AE7AC1DFFD4A5FCC794F5C190FFCF92FEC07DEFB06AFF
          BD61FFB74FE3A45BFCAB3CFFAC24EE9B2CF2981BFF9F00AE602AE7AC1DF5CAA0
          E1DEC0E2E0C1DEDBBCE1DCB9E3DAB1DED5A8E6D39FFFBF5DFCAB3CF3A333F69F
          20F89D13FF9F04AE602AE7AC1DD4AF8C6BD3CA6CD7CE6CD7CE6CD7CF6CD7CF66
          D7D18DE0D9FCC57BCA8D3DB58139AD7A31C18225FFA20BAE602AEFB53EF8C9A2
          D1AC86D1AD86D1AD86D1AC85D1AA7BCFA46EDCAB6BFFBD6AF6AF52FCAF46E79D
          37F3A028FFA716AE602AFF00FFE4A70AEDB339F0B84DEEB64DE9B24DF2BA62F2
          B65AEEB04FEAA945E9A43AE79F31E89B27E6971FD2851AFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentShowHint = False
        ShowHint = True
        OnClick = cmdSaldoClick
      end
      object cmbMes: TComboBox
        Left = 11
        Top = 9
        Width = 108
        Height = 24
        ItemHeight = 16
        TabOrder = 0
        Text = 'Janeiro'
        OnChange = cmbMesChange
        Items.Strings = (
          'Janeiro'
          'Fevereiro'
          'Mar'#231'o'
          'Abril'
          'Maio'
          'Junho'
          'Julho'
          'Agosto'
          'Setembro'
          'Outubro'
          'Novembro'
          'Dezembro')
      end
      object cmbAno: TSpinEdit
        Left = 134
        Top = 7
        Width = 70
        Height = 26
        EditorEnabled = False
        MaxValue = 0
        MinValue = 0
        TabOrder = 1
        Value = 1998
        OnChange = cmbAnoChange
      end
      object cmdReclass: TBitBtn
        Left = 631
        Top = 6
        Width = 31
        Height = 31
        Hint = 'Reclassifica'#231#227'o de Movimenta'#231#227'o Banc'#225'ria'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = cmdReclassClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
          078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
          BE078DBEFF00FFFF00FFA47874A47874A47874A47874A47874A478748C5D5C65
          CDF965CDF865CDF965CDF866CEF939ADD8078DBEFF00FFFF00FFAB7E77FFFEE4
          FFEDCCFFE9C2FFE3B7FFF3B93D76320C85180C85180C851851BDB66ED4F93EB1
          D984D7EB078DBEFF00FFB5887AFFFCF2FFEAD6FFE5CBFFDEBFFFECBF8C5D5C67
          CED60C85181398250C85184BB79A42B4D4AEF1F9078DBEFF00FFC0927FFFFCFA
          FFF0E0FEECD6FFE4C9FFF2CB8C5D5C83E4FC84E4FC0C851826B73F0C851836A8
          A1B3F4F9078DBEFF00FFCC9D84FFFEFEFFF7EDFEF1E2FEEAD4FFFBDB8C5D5C8D
          EBFD8DEBFD5DC0A70C851837C4580C8518ACF0EB6DCAE0078DBED8A889FFFFFF
          FEF9F4FFF8EEFFF7E9FFFFEC8C5D5CACE4DA9FDBCA7EA77C0C85184EDB780C85
          1893B6939DBAA5078DBEE1B28DFFFFFFFFFDFBFDF7F0E4D0C8CBB8BB8C5D5C07
          87800C85180C851847D06E59E38842C6670C85180C8518078DBEE8B890FEFCFB
          FEFCFBEFE7E7B48176B48176DEB37B9BF5FE63C5A40C85185DE88E63EE984CD0
          750C8518F1E5B58C5D5CE8B890DCA887DCA887DCA887B48176D0C28AA5EEEDA0
          FAFEA1FBFE7884510C851846CB6E0C8518F0DDBDFFF2CB8C5D5CFF00FF078DBE
          FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBECC9D8484BA860C8518ECE7
          D2FEEAD4FFFBDB8C5D5CFF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
          00FFFF00FFD8A889FFFFFFFEF9F4FFF8EEFFF7E9FFFFEC8C5D5CFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE1B28DFFFFFFFFFDFBFDF7
          F0E4D0C8CBB8BB8C5D5CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFE8B890FEFCFBFEFCFBEFE7E7B48176B48176DEB37BFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE8B890DCA887DCA887DCA8
          87B48176DEB37BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      end
    end
    object cmbFilial: TDBLookupComboBox
      Left = 49
      Top = 10
      Width = 730
      Height = 24
      KeyField = 'Filial'
      ListField = 'Nome'
      ListSource = dsFilial
      TabOrder = 1
      OnCloseUp = cmbFilialCloseUp
    end
  end
  object dbPlanoC: TMSTable
    TableName = 'dbo.PlanoContas'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Cod1'
    Left = 16
    Top = 184
    object dbPlanoCCod1: TSmallintField
      FieldName = 'Cod1'
    end
    object dbPlanoCCod2: TSmallintField
      FieldName = 'Cod2'
    end
    object dbPlanoCCod3: TSmallintField
      FieldName = 'Cod3'
    end
    object dbPlanoCDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object dbPlanoCDescricaoFC: TStringField
      FieldName = 'DescricaoFC'
      Size = 60
    end
  end
  object dsPlanoC: TDataSource
    DataSet = dbPlanoC
    Left = 16
    Top = 216
  end
  object dsLancamentos: TDataSource
    DataSet = qryLancamento
    Left = 48
    Top = 216
  end
  object dbBanco: TMSTable
    TableName = 'dbo.CCorrente'
    Connection = frmMenu.dadosfin
    Filtered = True
    OnFilterRecord = dbBancoFilterRecord
    IndexFieldNames = 'BancoID'
    Left = 76
    Top = 185
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
    object dbBancoFilial: TSmallintField
      FieldName = 'Filial'
    end
    object dbBancoSaldoAtual: TCurrencyField
      FieldName = 'SaldoAtual'
    end
    object dbBancoStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object dbBancoAplicacoes: TCurrencyField
      FieldName = 'Aplicacoes'
    end
  end
  object dsBanco: TDataSource
    DataSet = dbBanco
    Left = 80
    Top = 217
  end
  object dbFilial: TMSTable
    TableName = 'dbo.Filiais'
    Connection = frmMenu.dadosfin
    Left = 172
    Top = 185
    object dbFilialFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'dbo.Filiais.Filial'
    end
    object dbFilialNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Filiais.Nome'
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
  end
  object dsFilial: TDataSource
    DataSet = dbFilial
    Left = 176
    Top = 217
  end
  object dbBanco1: TMSTable
    TableName = 'dbo.CCorrente'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'BancoID'
    Left = 204
    Top = 185
    object dbBanco1BancoID: TAutoIncField
      FieldName = 'BancoID'
      ReadOnly = True
    end
    object dbBanco1SaldoAtual: TCurrencyField
      FieldName = 'SaldoAtual'
    end
  end
  object dbMovBanco: TMSTable
    TableName = 'dbo.MovBanco'
    Connection = frmMenu.dadosfin
    Filtered = True
    OnFilterRecord = dbMovBancoFilterRecord
    IndexFieldNames = 'DataEntrada;BancoID;Doc'
    Left = 108
    Top = 185
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
  object dbMovAplic: TMSTable
    TableName = 'dbo.MovBancoAplic'
    MasterFields = 'BancoID'
    DetailFields = 'BancoID'
    MasterSource = dsMovBanco
    Connection = frmMenu.dadosfin
    Filtered = True
    IndexFieldNames = 'BancoID'
    Left = 141
    Top = 182
    object dbMovAplicBancoID: TIntegerField
      FieldName = 'BancoID'
    end
    object dbMovAplicAplicacao: TIntegerField
      FieldName = 'Aplicacao'
    end
    object dbMovAplicTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object dbMovAplicMovBanco: TIntegerField
      FieldName = 'MovBanco'
    end
    object dbMovAplicValor: TCurrencyField
      FieldName = 'Valor'
    end
    object dbMovAplicData: TDateTimeField
      FieldName = 'Data'
    end
  end
  object dsMovBanco: TDataSource
    DataSet = dbMovBanco
    Left = 108
    Top = 217
  end
  object qryLancamento: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'SELECT * FROM Lancamentos')
    Left = 48
    Top = 185
    object qryLancamentoFilial: TSmallintField
      FieldName = 'Filial'
      Origin = 'Lancamentos.Filial'
    end
    object qryLancamentoLancamento: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Lancamento'
      Origin = 'Lancamentos.Lancamento'
      ReadOnly = True
    end
    object qryLancamentoCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'Lancamentos.Cliente'
    end
    object qryLancamentoClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
      Origin = 'Lancamentos.ClienteDeb'
    end
    object qryLancamentoDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
      Origin = 'Lancamentos.DataEmissao'
    end
    object qryLancamentoDataVencto: TDateTimeField
      FieldName = 'DataVencto'
      Origin = 'Lancamentos.DataVencto'
    end
    object qryLancamentoCod1: TSmallintField
      FieldName = 'Cod1'
      Origin = 'Lancamentos.Cod1'
    end
    object qryLancamentoCod2: TSmallintField
      FieldName = 'Cod2'
      Origin = 'Lancamentos.Cod2'
    end
    object qryLancamentoCod3: TSmallintField
      FieldName = 'Cod3'
      Origin = 'Lancamentos.Cod3'
    end
    object qryLancamentoHistorico: TStringField
      FieldName = 'Historico'
      Origin = 'Lancamentos.Historico'
      Size = 60
    end
    object qryLancamentoDoc: TStringField
      FieldName = 'Doc'
      Origin = 'Lancamentos.Doc'
      FixedChar = True
    end
    object qryLancamentoValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'Lancamentos.Valor'
    end
    object qryLancamentoTributo: TBooleanField
      FieldName = 'Tributo'
      Origin = 'Lancamentos.Tributo'
    end
    object qryLancamentoBancoId: TSmallintField
      FieldName = 'BancoId'
      Origin = 'Lancamentos.BancoId'
    end
    object qryLancamentoCheque: TStringField
      FieldName = 'Cheque'
      Origin = 'Lancamentos.Cheque'
      FixedChar = True
    end
    object qryLancamentoDataPagto: TDateTimeField
      FieldName = 'DataPagto'
      Origin = 'Lancamentos.DataPagto'
    end
    object qryLancamentoValorPago: TCurrencyField
      FieldName = 'ValorPago'
      Origin = 'Lancamentos.ValorPago'
    end
    object qryLancamentoValorBruto: TCurrencyField
      FieldName = 'ValorBruto'
      Origin = 'Lancamentos.ValorBruto'
    end
    object qryLancamentoPago: TBooleanField
      FieldName = 'Pago'
      Origin = 'Lancamentos.Pago'
    end
    object qryLancamentoSelecionado: TBooleanField
      FieldName = 'Selecionado'
      Origin = 'Lancamentos.Selecionado'
    end
    object qryLancamentoStatus: TStringField
      FieldName = 'Status'
      Origin = 'Lancamentos.Status'
      FixedChar = True
      Size = 1
    end
    object qryLancamentoPrevisao: TIntegerField
      FieldName = 'Previsao'
      Origin = 'Lancamentos.Previsao'
    end
    object qryLancamentoMovBanco: TIntegerField
      FieldName = 'MovBanco'
      Origin = 'Lancamentos.MovBanco'
    end
    object qryLancamentoNF: TIntegerField
      FieldName = 'NF'
      Origin = 'Lancamentos.NF'
    end
    object qryLancamentoDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'Lancamentos.DataInclusao'
    end
    object qryLancamentoUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Origin = 'Lancamentos.UsuarioI'
      FixedChar = True
      Size = 10
    end
    object qryLancamentoDataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
      Origin = 'Lancamentos.DataAlteracao'
    end
    object qryLancamentoUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'Lancamentos.Usuario'
      FixedChar = True
      Size = 10
    end
  end
end
