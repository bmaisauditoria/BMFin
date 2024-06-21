object frmClassificaFin: TfrmClassificaFin
  Left = 407
  Top = 157
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Classifica'#231#227'o do Lan'#231'amento'
  ClientHeight = 431
  ClientWidth = 448
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 448
    Height = 49
    Align = alTop
    BorderWidth = 3
    Caption = ' '
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 4
      Width = 440
      Height = 22
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Lan'#231'amento n'#227'o previsto. Classifique-o financeiramente'
      Color = 11206642
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object Label7: TLabel
      Left = 4
      Top = 26
      Width = 440
      Height = 19
      Align = alBottom
      Alignment = taCenter
      AutoSize = False
      Caption = 'Label7'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 49
    Width = 448
    Height = 160
    Align = alTop
    Caption = ' '
    TabOrder = 1
    object Label19: TLabel
      Left = 11
      Top = 77
      Width = 54
      Height = 26
      Alignment = taCenter
      Caption = 'Espec'#237'fico do Cliente'
      WordWrap = True
    end
    object Label3: TLabel
      Left = 33
      Top = 24
      Width = 32
      Height = 13
      Alignment = taCenter
      Caption = 'Cliente'
      WordWrap = True
    end
    object cmdOk: TBitBtn
      Left = 174
      Top = 131
      Width = 100
      Height = 25
      Caption = 'Ok'
      Default = True
      Enabled = False
      ModalResult = 1
      TabOrder = 4
      OnClick = cmdOkClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF97433F97433FB59A9BB59A9BB59A9BB5
        9A9BB59A9BB59A9BB59A9B93303097433FFF00FFFF00FFFF00FFFF00FF97433F
        D66868C66060E5DEDF92292A92292AE4E7E7E0E3E6D9DFE0CCC9CC8F201FAF46
        4697433FFF00FFFF00FFFF00FF97433FD06566C25F5FE9E2E292292A92292AE2
        E1E3E2E6E8DDE2E4CFCCCF8F2222AD464697433FFF00FFFF00FFFF00FF97433F
        D06565C15D5DECE4E492292A92292ADFDDDFE1E6E8E0E5E7D3D0D28A1E1EAB44
        4497433FFF00FFFF00FFFF00FF97433FD06565C15B5CEFE6E6EDE5E5E5DEDFE0
        DDDFDFE0E2E0E1E3D6D0D2962A2AB24A4A97433FFF00FFFF00FFFF00FF97433F
        CD6263C86060C96767CC7272CA7271C66969C46464CC6D6CCA6667C55D5DCD65
        6597433FFF00FFFF00FFFF00FF97433FB65553C27B78D39D9CD7A7A5D8A7A6D8
        A6A5D7A09FD5A09FD7A9A7D8ABABCC666797433FFF00FFFF00FFFF00FF97433F
        CC6667F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9CC66
        6797433FFF00FFFF00FFFF00FF97433FCC6667F9F9F9F9F9F9F9F9F9F9F9F9F9
        F9F9F9F9F9F9F9F9F9F9F9F9F9F9CC666797433FFF00FFFF00FFFF00FF97433F
        CC6667F9F9F9CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDF9F9F9CC66
        6797433FFF00FFFF00FFFF00FF97433FCC6667F9F9F9F9F9F9F9F9F9F9F9F9F9
        F9F9F9F9F9F9F9F9F9F9F9F9F9F9CC666797433FFF00FFFF00FFFF00FF97433F
        CC6667F9F9F9CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDF9F9F9CC66
        6797433FFF00FFFF00FFFF00FF97433FCC6667F9F9F9F9F9F9F9F9F9F9F9F9F9
        F9F9F9F9F9F9F9F9F9F9F9F9F9F9CC666797433FFF00FFFF00FFFF00FFFF00FF
        97433FF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F99743
        3FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object pagCli: TPageControl
      Left = 71
      Top = 4
      Width = 327
      Height = 46
      ActivePage = TabSheet1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Small Fonts'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Cliente Nome'
        object cmbCliente: TDBLookupComboBox
          Left = 4
          Top = -1
          Width = 313
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'CliFor'
          ListField = 'Nome'
          ListSource = dsCliente
          ParentFont = False
          TabOrder = 0
          OnCloseUp = cmbClienteCloseUp
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'CNPJ'
        ImageIndex = 1
        object cmbCliente1: TDBLookupComboBox
          Left = 3
          Top = -1
          Width = 313
          Height = 21
          DataField = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'CliFor'
          ListField = 'CGC'
          ListSource = dsCliente
          ParentFont = False
          TabOrder = 0
          OnCloseUp = cmbCliente1CloseUp
        end
      end
    end
    object pagCliDeb: TPageControl
      Left = 71
      Top = 57
      Width = 327
      Height = 46
      ActivePage = TabSheet4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Small Fonts'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object TabSheet4: TTabSheet
        Caption = 'Cliente Nome'
        object cmbClienteDeb: TDBLookupComboBox
          Left = 3
          Top = -1
          Width = 313
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'CliFor'
          ListField = 'Nome'
          ListSource = dsClienteDeb
          ParentFont = False
          TabOrder = 0
          OnCloseUp = cmbClienteDebCloseUp
        end
      end
      object TabSheet7: TTabSheet
        Caption = 'CNPJ'
        ImageIndex = 1
        object cmbClienteDeb1: TDBLookupComboBox
          Left = 3
          Top = -1
          Width = 313
          Height = 21
          DataField = 'ClienteDeb'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'CliFor'
          ListField = 'CGC'
          ListSource = dsClienteDeb
          ParentFont = False
          TabOrder = 0
          OnCloseUp = cmbClienteDeb1CloseUp
        end
      end
    end
    object BitBtn1: TBitBtn
      Left = 408
      Top = 25
      Width = 25
      Height = 25
      Hint = 'Limpa Cliente'
      TabOrder = 2
      OnClick = BitBtn1Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF2B90EF278DE7FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2A8FEC27
        8CED2489E42388DD1E84D5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF298FD63DA2EB3EA3F0379CEA2186DA1A81D1187ECA157C
        C41177BBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3CA2E158BDF260
        C4F93D9EE557BCF73398DF1E83CD1076BC0B73B40B72AF086FAAFF00FFFF00FF
        FF00FFFF00FF046B164AB0F953B7F72F87D163C7FB3D9EE55BBFFB55BAFA3499
        DE2D93D80F76B3066DA7FF00FFFF00FFFF00FF187D5F2B7A83046B162884DE3C
        99D9227BCE40A0EA5ABEFE4FB2F556B9FF56B9FF46AAF3FF00FFFF00FFFF00FF
        0F7D153CBE6131C64831C64831C648046B16046B162D87B63998E844A5F052B6
        FF52B5FFFF00FFFF00FFFF00FF15872231AF4A62F99250EB6F31C6481DA74623
        987631C64831C648046B16046B16FF00FFFF00FFFF00FFFF00FFFF00FF30AD48
        2BA6414FE77837D0531AB427029D01009B0010A41E32B97246A7ACFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0A75102AAE3F22BC32049A060094000C
        A118027804027804FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        259E3942DC640B9F110077000278040B8717FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF1D912C44DE680FA315006F00FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF13831D43D964
        12AB1C007300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF1C9A2A1AB127007900FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF18A024027F04
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object BitBtn2: TBitBtn
      Left = 408
      Top = 78
      Width = 25
      Height = 25
      Hint = 'Limpa Cliente Espec'#237'fico'
      TabOrder = 3
      OnClick = BitBtn2Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF2B90EF278DE7FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2A8FEC27
        8CED2489E42388DD1E84D5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF298FD63DA2EB3EA3F0379CEA2186DA1A81D1187ECA157C
        C41177BBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3CA2E158BDF260
        C4F93D9EE557BCF73398DF1E83CD1076BC0B73B40B72AF086FAAFF00FFFF00FF
        FF00FFFF00FF046B164AB0F953B7F72F87D163C7FB3D9EE55BBFFB55BAFA3499
        DE2D93D80F76B3066DA7FF00FFFF00FFFF00FF187D5F2B7A83046B162884DE3C
        99D9227BCE40A0EA5ABEFE4FB2F556B9FF56B9FF46AAF3FF00FFFF00FFFF00FF
        0F7D153CBE6131C64831C64831C648046B16046B162D87B63998E844A5F052B6
        FF52B5FFFF00FFFF00FFFF00FF15872231AF4A62F99250EB6F31C6481DA74623
        987631C64831C648046B16046B16FF00FFFF00FFFF00FFFF00FFFF00FF30AD48
        2BA6414FE77837D0531AB427029D01009B0010A41E32B97246A7ACFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0A75102AAE3F22BC32049A060094000C
        A118027804027804FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        259E3942DC640B9F110077000278040B8717FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF1D912C44DE680FA315006F00FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF13831D43D964
        12AB1C007300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF1C9A2A1AB127007900FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF18A024027F04
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object chkContabilizado: TCheckBox
      Left = 74
      Top = 111
      Width = 97
      Height = 17
      Caption = 'Contabilizado'
      Checked = True
      State = cbChecked
      TabOrder = 5
      OnClick = chkContabilizadoClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 209
    Width = 448
    Height = 222
    Align = alClient
    Caption = ' '
    TabOrder = 2
    object Label2: TLabel
      Left = 1
      Top = 1
      Width = 446
      Height = 13
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Plano de Contas'
      Color = 11206642
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Outline1: TOutline
      Left = 1
      Top = 14
      Width = 446
      Height = 207
      ItemHeight = 13
      Align = alClient
      TabOrder = 0
      OnClick = Outline1Click
      OnKeyPress = Outline1KeyPress
      ItemSeparator = '\'
    end
  end
  object dbPlanoC: TMSTable
    TableName = 'dbo.PlanoContas'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Cod1;Cod2;Cod3'
    Left = 16
    Top = 216
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
  end
  object dsPlanoC: TDataSource
    DataSet = dbPlanoC
    Left = 48
    Top = 216
  end
  object dbCliente: TMSTable
    TableName = 'dbo.Clientes'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Nome'
    Left = 16
    Top = 248
    object dbClienteCliFor: TAutoIncField
      FieldName = 'CliFor'
      ReadOnly = True
    end
    object dbClienteNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
    object dbClienteCGC: TStringField
      FieldName = 'CGC'
      Size = 18
    end
  end
  object dsCliente: TDataSource
    DataSet = dbCliente
    Left = 48
    Top = 248
  end
  object dbClienteDeb: TMSTable
    TableName = 'dbo.Clientes'
    Connection = frmMenu.dadosfin
    Filtered = True
    IndexFieldNames = 'Nome'
    Left = 11
    Top = 280
    object dbClienteDebCliFor: TAutoIncField
      FieldName = 'CliFor'
      ReadOnly = True
    end
    object dbClienteDebNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
    object dbClienteDebCGC: TStringField
      FieldName = 'CGC'
      Size = 18
    end
    object dbClienteDebStatusCli: TBooleanField
      FieldName = 'StatusCli'
    end
  end
  object dsClienteDeb: TDataSource
    DataSet = dbClienteDeb
    Left = 43
    Top = 280
  end
end
