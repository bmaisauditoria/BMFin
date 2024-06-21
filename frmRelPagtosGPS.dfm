object frmRelPagtoGPS: TfrmRelPagtoGPS
  Left = 958
  Top = 237
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Autoriza'#231#227'o Pagamento de GPS'
  ClientHeight = 375
  ClientWidth = 428
  Color = clHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Label6: TLabel
    Left = 11
    Top = 154
    Width = 80
    Height = 16
    Alignment = taRightJustify
    Caption = 'Compet'#234'ncia'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 428
    Height = 343
    Align = alTop
    TabOrder = 0
    object DBText1: TDBText
      Left = 112
      Top = 6
      Width = 308
      Height = 21
      Color = clWhite
      DataField = 'FilialNome'
      DataSource = dsRelGPS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label7: TLabel
      Left = 77
      Top = 6
      Width = 28
      Height = 16
      Alignment = taRightJustify
      Caption = 'Filial'
    end
    object Label1: TLabel
      Left = 52
      Top = 34
      Width = 53
      Height = 16
      Alignment = taRightJustify
      Caption = 'Historico'
    end
    object Label2: TLabel
      Left = 61
      Top = 126
      Width = 44
      Height = 16
      Alignment = taRightJustify
      Caption = 'C'#243'digo'
    end
    object Label3: TLabel
      Left = 25
      Top = 154
      Width = 80
      Height = 16
      Alignment = taRightJustify
      Caption = 'Compet'#234'ncia'
    end
    object Label4: TLabel
      Left = 73
      Top = 181
      Width = 32
      Height = 16
      Alignment = taRightJustify
      Caption = 'Valor'
    end
    object DBText3: TDBText
      Left = 112
      Top = 181
      Width = 123
      Height = 21
      Alignment = taRightJustify
      Color = clWhite
      DataField = 'ValorGPS'
      DataSource = dsRelGPS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 2
      Top = 213
      Width = 103
      Height = 16
      Alignment = taRightJustify
      Caption = 'Outras Entidades'
    end
    object Label8: TLabel
      Left = 36
      Top = 242
      Width = 69
      Height = 16
      Alignment = taRightJustify
      Caption = 'Multa/Juros'
    end
    object Label9: TLabel
      Left = 74
      Top = 270
      Width = 31
      Height = 16
      Alignment = taRightJustify
      Caption = 'Total'
    end
    object DBText2: TDBText
      Left = 112
      Top = 267
      Width = 123
      Height = 21
      Alignment = taRightJustify
      Color = clWhite
      DataField = 'Valor'
      DataSource = dsRelGPS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBMemo1: TDBMemo
      Left = 112
      Top = 33
      Width = 308
      Height = 81
      BorderStyle = bsNone
      DataField = 'Historico'
      DataSource = dsRelGPS
      ReadOnly = True
      TabOrder = 4
    end
    object rdgDados: TRadioGroup
      Left = 9
      Top = 295
      Width = 412
      Height = 43
      Caption = 'Selecione - Dados'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Empresa'
        'Prestador')
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 112
      Top = 208
      Width = 123
      Height = 21
      DataField = 'Outros'
      DataSource = dsRelGPS
      TabOrder = 2
      OnEnter = DBEdit3Enter
    end
    object DBEdit4: TDBEdit
      Left = 112
      Top = 238
      Width = 123
      Height = 21
      DataField = 'Multa'
      DataSource = dsRelGPS
      TabOrder = 3
      OnEnter = DBEdit4Enter
    end
    object cmpCodigo: TEdit
      Left = 112
      Top = 121
      Width = 123
      Height = 21
      TabOrder = 0
    end
    object cmpCompetencia: TEdit
      Left = 112
      Top = 149
      Width = 123
      Height = 21
      TabOrder = 1
    end
  end
  object cmdImp: TBitBtn
    Left = 153
    Top = 347
    Width = 123
    Height = 28
    Hint = 'Imprimir'
    Caption = 'Imprimir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = cmdImpClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object dbRelGPS: TMSTable
    TableName = 'dbo.relGPS'
    Connection = frmMenu.dadosfin
    OnCalcFields = dbRelGPSCalcFields
    Left = 248
    Top = 104
    object dbRelGPSMovBanco: TIntegerField
      FieldName = 'MovBanco'
    end
    object dbRelGPSBancoID: TIntegerField
      FieldName = 'BancoID'
    end
    object dbRelGPSFundo: TIntegerField
      FieldName = 'Fundo'
    end
    object dbRelGPSTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object dbRelGPSDoc: TStringField
      FieldName = 'Doc'
    end
    object dbRelGPSValor: TCurrencyField
      FieldName = 'Valor'
    end
    object dbRelGPSMulta: TCurrencyField
      FieldName = 'Multa'
    end
    object dbRelGPSOutros: TCurrencyField
      FieldName = 'Outros'
    end
    object dbRelGPSFavorecido: TStringField
      FieldName = 'Favorecido'
      Size = 50
    end
    object dbRelGPSCruzado: TBooleanField
      FieldName = 'Cruzado'
    end
    object dbRelGPSHistorico: TMemoField
      FieldName = 'Historico'
      BlobType = ftMemo
      Size = 10
    end
    object dbRelGPSStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object dbRelGPSFilial: TIntegerField
      FieldName = 'Filial'
    end
    object dbRelGPSUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object dbRelGPSValorGPS: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorGPS'
      Calculated = True
    end
    object dbRelGPSFilialNome: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialNome'
      LookupDataSet = frmCheque.dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Nome'
      KeyFields = 'Filial'
      Size = 40
      Lookup = True
    end
    object dbRelGPSDataEntrada: TDateTimeField
      FieldName = 'DataEntrada'
    end
    object dbRelGPSDataMovimento: TDateTimeField
      FieldName = 'DataMovimento'
    end
    object dbRelGPSDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
    end
  end
  object dsRelGPS: TDataSource
    DataSet = dbRelGPS
    Left = 280
    Top = 104
  end
end
