object frmGrafPlano: TfrmGrafPlano
  Left = 519
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Grafico Evoluc'#227'o Creditos/Despesas'
  ClientHeight = 430
  ClientWidth = 542
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
  object grafico: TDBChart
    Left = -274
    Top = 11
    Width = 800
    Height = 400
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    LeftWall.Color = clBlue
    Title.Text.Strings = (
      '')
    Legend.LegendStyle = lsValues
    Legend.TextStyle = ltsXValue
    Legend.Visible = False
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 2
    Visible = False
    object Series1: TFastLineSeries
      Marks.ArrowLength = 8
      Marks.Style = smsValue
      Marks.Visible = True
      DataSource = dmRelatorio.dbGraf
      SeriesColor = clBlue
      ValueFormat = 'R$ ###,##0.00'
      XLabelsSource = 'Texto'
      LinePen.Color = clBlue
      LinePen.Width = 3
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = 'Valor'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 542
    Height = 381
    Align = alTop
    TabOrder = 0
    object cmbFilial: TDBLookupComboBox
      Left = 7
      Top = 23
      Width = 402
      Height = 21
      KeyField = 'Filial'
      ListField = 'Nome'
      ListSource = dsFilial
      TabOrder = 0
    end
    object chkFilial: TCheckBox
      Left = 7
      Top = 5
      Width = 185
      Height = 17
      Caption = 'Todas as Filiais ou selecione'
      TabOrder = 1
      OnClick = chkFilialClick
    end
    object ProgressBar: TProgressBar
      Left = 1
      Top = 56
      Width = 540
      Height = 8
      Align = alBottom
      TabOrder = 2
    end
    object Panel2: TPanel
      Left = 1
      Top = 64
      Width = 540
      Height = 316
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
      object Label12: TLabel
        Left = 0
        Top = 0
        Width = 540
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'Plano de Contas'
        Color = 11206642
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Outline1: TOutline
        Left = 0
        Top = 13
        Width = 540
        Height = 303
        ItemHeight = 13
        Align = alClient
        TabOrder = 0
        ItemSeparator = '\'
        PicturePlus.Data = {
          46030000424D460300000000000036000000280000000E0000000E0000000100
          200000000000100300000000000000000000000000000000000000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000000000000000000000
          000000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000000000FFFFFF000000000000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000000000FFFFFF000000000000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF000000000000000000000000000000
          0000FFFFFF000000000000000000000000000000000000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000000000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000000000000000000000000000000000FFFFFF0000000000000000000000
          00000000000000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000000000FFFFFF000000000000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF000000
          0000FFFFFF000000000000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000000000000000000000
          000000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF00}
        PictureMinus.Data = {
          46030000424D460300000000000036000000280000000E0000000E0000000100
          200000000000100300000000000000000000000000000000000000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000BFBF0000BF
          BF0000BFBF0000BFBF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF000000000000BFBF0000BFBF0000BFBF0000BF
          BF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
          BF0000BFBF0000BFBF00}
        PictureOpen.Data = {
          46030000424D460300000000000036000000280000000E0000000E0000000100
          2000000000001003000000000000000000000000000000000000800080008000
          8000800080008000800080008000800080008000800080008000800080008000
          8000800080008000800080008000800080008000800080008000800080008000
          8000800080008000800080008000800080008000800080008000800080008000
          8000800080008000800080008000800080008000800080008000800080008000
          8000800080008000800080008000800080008000800080008000800080008000
          8000800080000000000000000000000000000000000000000000000000000000
          0000000000008000800080008000800080008000800080008000000000000000
          000000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF000000
          0000800080008000800080008000800080000000000000FFFF000000000000FF
          FF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00000000008000
          800080008000800080000000000000FFFF0000FFFF000000000000FFFF00C0C0
          C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF0000000000800080008000
          800000000000FFFFFF0000FFFF0000FFFF000000000000000000000000000000
          00000000000000000000000000000000000080008000800080000000000000FF
          FF00FFFFFF0000FFFF000000000000FFFF000000000000FFFF000000000000FF
          FF000000000080008000800080008000800000000000FFFFFF0000FFFF00FFFF
          FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000008000
          800080008000800080000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
          FF00FFFFFF000000000000000000000000008000800080008000800080008000
          8000800080000000000000FFFF00FFFFFF0000FFFF00FFFFFF00000000008000
          8000800080008000800080008000800080008000800080008000800080008080
          8000000000000000000000000000000000008080800080008000800080008000
          8000800080008000800080008000800080008000800080008000800080008000
          8000800080008000800080008000800080008000800080008000800080008000
          80008000800080008000}
        PictureClosed.Data = {
          46030000424D460300000000000036000000280000000E0000000E0000000100
          2000000000001003000000000000000000000000000000000000800080008000
          8000800080008000800080008000800080008000800080008000800080008000
          8000800080008000800080008000800080008000800080008000800080008000
          8000800080008000800080008000800080008000800080008000800080008000
          8000800080008000800080008000800080008000800080008000800080008000
          8000800080008000800080008000800080008000800080008000800080008000
          8000800080000000000000000000000000000000000000000000000000000000
          00000000000000000000000000008000800080008000800080000000000000FF
          FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
          FF000000000080008000800080008000800000000000FFFFFF0000FFFF00FFFF
          FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000008000
          800080008000800080000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
          FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000080008000800080008000
          800000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF00FFFFFF00000000008000800080008000800080000000000000FF
          FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
          FF000000000080008000800080008000800000000000FFFFFF0000FFFF00FFFF
          FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000008000
          8000800080008000800000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008000800080008000800080008000
          80008000800000000000FFFFFF0000FFFF00FFFFFF0000FFFF00000000008000
          8000800080008000800080008000800080008000800080008000800080008080
          8000000000000000000000000000000000008080800080008000800080008000
          8000800080008000800080008000800080008000800080008000800080008000
          8000800080008000800080008000800080008000800080008000800080008000
          80008000800080008000}
        PictureLeaf.Data = {
          46030000424D460300000000000036000000280000000E0000000E0000000100
          2000000000001003000000000000000000000000000000000000800080008000
          8000800080008000800080008000800080008000800080008000800080008000
          8000800080008000800080008000800080008000800080008000800080008000
          8000800080008000800080008000800080008000800080008000800080008000
          8000800080008000800080008000800080008000800080008000800080008000
          8000800080008000800080008000800080008000800080008000800080008000
          8000000000000000000000000000000000000000000000000000000000000000
          000000000000800080008000800080008000800080008000800000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008000
          80008000800080008000800080008000800000000000FFFFFF00000000000000
          0000000000000000000000000000FFFFFF000000000080008000800080008000
          8000800080008000800000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000800080008000800080008000800080008000
          800000000000FFFFFF000000000000000000000000000000000000000000FFFF
          FF0000000000800080008000800080008000800080008000800000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008000
          80008000800080008000800080008000800000000000FFFFFF00000000000000
          000000000000FFFFFF00FFFFFF00FFFFFF000000000080008000800080008000
          8000800080008000800000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000800080008000800080008000800080008000
          800000000000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFF
          FF0000000000800080008000800080008000800080008000800000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000800080008000
          8000800080008000800080008000800080000000000000000000000000000000
          0000000000000000000000000000800080008000800080008000800080008000
          80008000800080008000}
        Data = {1F}
      end
    end
  end
  object cmdImp: TBitBtn
    Left = 213
    Top = 387
    Width = 100
    Height = 25
    Hint = 'Imprimir'
    Caption = 'Imprimir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = cmdImpClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF8936157D32137B31137B31137B31137B31137B31137B
      31137B31137B31137B31137B31137B31137B31137E33138A3715692A11FFF3E7
      FFEFE06E6C6AFBE7CFFCE5C96E6C6AFFDEBBFFDEBB6E6C6AFED4A7FBCE9C6E6C
      6AFCCB97FCCB97783012652810EFE7DD6E6C6A6E6C6A6E6C6A6E6C6A6E6C6A6E
      6C6A6E6C6A6E6C6A6E6C6A6E6C6A6E6C6A6E6C6A6E6C6A762F126628106E6C6A
      6E6C6A3C5AF70D8B0C6CB75CFEE9D3FEE6CAFEE2C4FEDEBBFEDAB4FCD7ADFCD3
      A7E9CC95FCCF9D762F12662810FEF3E76E6C6A2243FB326E9F0F8C0D73BA60FF
      E7CFFEE3C9FEE1C0FEDDB8FED9B147A0300F8A0A168E0E50420C65280F6E6C6A
      6E6C6AC6CCF20F31FCFEF2E22E9E28FFEAD4FEE6CCFEE2C5FEDEBC81B65D0D8A
      09FED1A3FED1A35F3A0F65280FFFF7EE6E6C6AFEFAF24D69F71652A6148F14EE
      E5D3BFBBDAD5C9CFBCCC900A890783AC720525FB485BDC762F126628106E6C6A
      6E6C6AFFFBF4FEF7F02849FA046539056E2A1335F80C2DFA0C841141A1311635
      F3546ACB1131F35E2D2D65280FFFFCFA6E6C6AFEFCF7FFFAF3FFF6EEE1DDEA11
      8818FEEED9FEE9D101760F0A3BC1405ADEFCDAB59191C2642D246B2D126E6C6A
      6E6C6AFFFCFAFFFAF6FFF8F2FFF4EBDCE5C51D95190B8A09419553465EE9EED5
      C1FEDCB7FED9B17B34169E5123CB9346C68C42C68C41C68C41C68C41C68C41C6
      8C41C68C41C78E42CC9952CB9347CE9951C1914EBB955CA15222994115CC6414
      D06514CF6514CF6514CF6514CF6514CF6514CF6514D16818F3A966E07011F3A9
      669F63393553C7A6420CFF00FF93401A95401B95401B95401B95401B95401B95
      401B95401B95411B99441D953E159A451C8C3C1A843D24FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
  end
  object dbFilial: TMSTable
    TableName = 'dbo.Filiais'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Filial'
    Left = 13
    Top = 384
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
    Left = 45
    Top = 385
  end
  object dbPlano: TMSTable
    TableName = 'dbo.PlanoContas'
    Connection = frmMenu.dadosfin
    Filtered = True
    Left = 76
    Top = 384
    object dbPlanoCod1: TSmallintField
      FieldName = 'Cod1'
    end
    object dbPlanoCod2: TSmallintField
      FieldName = 'Cod2'
    end
    object dbPlanoCod3: TSmallintField
      FieldName = 'Cod3'
    end
    object dbPlanoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object dbPlanoDescricaoFC: TStringField
      FieldName = 'DescricaoFC'
      Size = 60
    end
    object dbPlanoIndicativo: TStringField
      FieldName = 'Indicativo'
      FixedChar = True
      Size = 1
    end
  end
  object dsPlano: TDataSource
    DataSet = dbPlano
    Left = 112
    Top = 383
  end
  object rvGrafico: TRvCustomConnection
    RuntimeVisibility = rtDeveloper
    OnGetCols = rvGraficoGetCols
    OnGetRow = rvGraficoGetRow
    Left = 145
    Top = 384
  end
end