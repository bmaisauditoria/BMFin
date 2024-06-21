object frmParam: TfrmParam
  Left = 578
  Top = 254
  Width = 347
  Height = 480
  Caption = 'Parametros NF Prestadores'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Label2: TLabel
    Left = 30
    Top = 33
    Width = 128
    Height = 16
    Caption = 'Imposto de Renda'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 30
    Top = 89
    Width = 32
    Height = 16
    Caption = 'GPS'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 30
    Top = 144
    Width = 25
    Height = 16
    Caption = 'PIS'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 30
    Top = 201
    Width = 44
    Height = 16
    Caption = 'Cofins'
    FocusControl = DBEdit7
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 30
    Top = 256
    Width = 37
    Height = 16
    Caption = 'CSLL'
    FocusControl = DBEdit9
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 30
    Top = 314
    Width = 98
    Height = 16
    Caption = 'Dia Pagto Pre'
    FocusControl = DBEdit10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label18: TLabel
    Left = 25
    Top = 7
    Width = 128
    Height = 21
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Isento se <='
    Color = 11206642
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
  end
  object Label11: TLabel
    Left = 207
    Top = 7
    Width = 74
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = '%'
    Color = 11206642
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
  end
  object Label1: TLabel
    Left = 165
    Top = 314
    Width = 144
    Height = 16
    Caption = 'Dia Vencto Impostos'
    FocusControl = DBEdit11
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 207
    Top = 53
    Width = 74
    Height = 24
    DataField = 'IRendaP'
    DataSource = dsParam
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 30
    Top = 53
    Width = 123
    Height = 24
    DataField = 'IRendaMin'
    DataSource = dsParam
    TabOrder = 0
  end
  object DBEdit3: TDBEdit
    Left = 207
    Top = 108
    Width = 74
    Height = 24
    DataField = 'GPSP'
    DataSource = dsParam
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 207
    Top = 164
    Width = 74
    Height = 24
    DataField = 'PisP'
    DataSource = dsParam
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 30
    Top = 164
    Width = 123
    Height = 24
    DataField = 'PisMin'
    DataSource = dsParam
    TabOrder = 3
  end
  object DBEdit6: TDBEdit
    Left = 207
    Top = 219
    Width = 74
    Height = 24
    DataField = 'CofinsP'
    DataSource = dsParam
    TabOrder = 6
  end
  object DBEdit7: TDBEdit
    Left = 30
    Top = 219
    Width = 123
    Height = 24
    DataField = 'CofinsMin'
    DataSource = dsParam
    TabOrder = 5
  end
  object DBEdit8: TDBEdit
    Left = 207
    Top = 274
    Width = 74
    Height = 24
    DataField = 'CSLLP'
    DataSource = dsParam
    TabOrder = 8
  end
  object DBEdit9: TDBEdit
    Left = 30
    Top = 274
    Width = 123
    Height = 24
    DataField = 'CSLLMin'
    DataSource = dsParam
    TabOrder = 7
  end
  object DBEdit10: TDBEdit
    Left = 30
    Top = 332
    Width = 61
    Height = 24
    DataField = 'DiaVencto'
    DataSource = dsParam
    TabOrder = 9
  end
  object cmdCopia2: TBitBtn
    Left = 105
    Top = 374
    Width = 135
    Height = 31
    Hint = 'Grava Parametros'
    Caption = 'Ok'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    OnClick = cmdCopia2Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF7F2B287F2B28A18283A18283A18283A1
      8283A18283A18283A182837A1C1C7F2B28FF00FFFF00FFFF00FFFF00FF7F2B28
      CA4D4DB64545DDD4D5791617791617DCE0E0D7DADECED5D7BDBABD76100F9A2D
      2D7F2B28FF00FFFF00FFFF00FF7F2B28C24A4BB14444E2D9D9791617791617D9
      D8DAD9DEE1D3D9DCC1BDC1761111982D2D7F2B28FF00FFFF00FFFF00FF7F2B28
      C24A4AB04242E6DCDC791617791617D5D3D5D8DEE1D7DDE0C6C2C5700F0F962C
      2C7F2B28FF00FFFF00FFFF00FF7F2B28C24A4AB04141EADEDEE7DDDDDDD4D5D7
      D3D5D5D7D9D7D8DACAC2C57E17179E31317F2B28FF00FFFF00FFFF00FF7F2B28
      BF4748B84545BA4C4CBD5757BB5756B64E4EB44949BD5251BB4B4CB54242BF4A
      4A7F2B28FF00FFFF00FFFF00FF7F2B28A33B39B1605DC68684CB918FCC9190CC
      908FCB8988C98988CB9391CC9696BD4B4C7F2B28FF00FFFF00FFFF00FF7F2B28
      BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B
      4C7F2B28FF00FFFF00FFFF00FF7F2B28BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7
      F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B4C7F2B28FF00FFFF00FFFF00FF7F2B28
      BD4B4CF7F7F7BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFF7F7F7BD4B
      4C7F2B28FF00FFFF00FFFF00FF7F2B28BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7
      F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B4C7F2B28FF00FFFF00FFFF00FF7F2B28
      BD4B4CF7F7F7BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFF7F7F7BD4B
      4C7F2B28FF00FFFF00FFFF00FF7F2B28BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7
      F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B4C7F2B28FF00FFFF00FFFF00FFFF00FF
      7F2B28F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F77F2B
      28FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
  end
  object DBEdit11: TDBEdit
    Left = 207
    Top = 332
    Width = 61
    Height = 24
    DataField = 'DiaVenctoI'
    DataSource = dsParam
    TabOrder = 10
  end
  object dbParam: TMSTable
    TableName = 'dbo.ParametrosNF'
    Connection = frmMenu.dadosfin
    Left = 252
    Top = 375
    object dbParamIRendaP: TFloatField
      FieldName = 'IRendaP'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object dbParamIRendaMin: TCurrencyField
      FieldName = 'IRendaMin'
    end
    object dbParamGPSP: TFloatField
      FieldName = 'GPSP'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object dbParamPisP: TFloatField
      FieldName = 'PisP'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object dbParamPisMin: TCurrencyField
      FieldName = 'PisMin'
    end
    object dbParamCofinsP: TFloatField
      FieldName = 'CofinsP'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object dbParamCofinsMin: TCurrencyField
      FieldName = 'CofinsMin'
    end
    object dbParamCSLLP: TFloatField
      FieldName = 'CSLLP'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object dbParamCSLLMin: TCurrencyField
      FieldName = 'CSLLMin'
    end
    object dbParamDiaVencto: TIntegerField
      FieldName = 'DiaVencto'
    end
    object dbParamDiaVenctoI: TIntegerField
      FieldName = 'DiaVenctoI'
    end
  end
  object dsParam: TDataSource
    DataSet = dbParam
    Left = 284
    Top = 374
  end
end
