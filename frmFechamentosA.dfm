object frmFechamentoA: TfrmFechamentoA
  Left = 474
  Top = 330
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Retroagir Fechamento'
  ClientHeight = 156
  ClientWidth = 202
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
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 202
    Height = 13
    Align = alTop
    Alignment = taCenter
    Caption = 'Fechamento Anterior'
    Color = 11206642
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 0
    Top = 59
    Width = 202
    Height = 13
    Align = alTop
    Alignment = taCenter
    Caption = 'Selecione Fechamento'
    Color = 11206642
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object cmdFechamento: TSpeedButton
    Left = 51
    Top = 130
    Width = 100
    Height = 25
    Hint = 'Impedir lan'#231'amentos retroativos'
    Caption = 'Fechamento'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF069DCC49B7E060C1E854BCE33D
      B2DC4DB9E1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      08A1CE0EA5D17FD2F1A0DFFE97DAFB93D9FA7CCDEF73CAEE48B7E0FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF13A8D41DAFD883D8EEA0E3FB93DAF982
      D0F259BBE08FD7F79ADCFB76CBF0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      20AFD82EB7DE94DFEFB1EEFAA2E7FD64B2D1369BC06FC7EB95DAFB9ADCFB34B1
      DAFF00FFFF00FFFF00FFFF00FFFF00FF2DB5DD3FBEE4B1E5F1CFF8FDB6F4FF83
      C9DE287FA169BDE094DBFC95DAFA33B0D9FF00FFFF00FFFF00FFFF00FFFF00FF
      39BBE348C1E8C5E8F4ECFAFDCAF5FBB3ECF563A9BF8BCFE899DFFE94D8FA33B0
      D9FF00FFFF00FFFF00FFFF00FFFF00FF2EB3DB44C1E25EC0DB6CC8E062C8E260
      C7E26ECFE786D8EE9DE2F9A2E1FE34B1DAFF00FFFF00FFFF00FFFF00FFFF00FF
      2BB1D858CDE440B8D746BEDB45C2DF37B7D94AC2E26BCFEA9AE1F886D4F425AA
      D4FF00FFFF00FFFF00FFFF00FFFF00FF28B1D75CCCDF0C9BC43CB6D18AF5FB55
      D7EC24B6DA049DCA25ABD252C0E01FA7D2FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF0C94C10091BF2FAECF87F0F87AECF847C2DC0B96C0119DC41CA9D0FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0B99C6199BC3FF00FF3A
      BFE020A7CD0A95C00D96C2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF4FC3E62A9DC6FF00FFFF00FFFF00FF0994BF0C8AB5FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3BA6C677DEEE3DAAC8FF
      00FF148AB60C9DC8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF4AB5CD7BE0EC6BD1E64ABCE01898C3FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = True
    OnClick = cmdFechamentoClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 13
    Width = 202
    Height = 46
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label2: TLabel
      Left = 23
      Top = 5
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object Label3: TLabel
      Left = 22
      Top = 29
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object lblData: TLabel
      Left = 72
      Top = 3
      Width = 100
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'lblData'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblValor: TLabel
      Left = 72
      Top = 27
      Width = 100
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Label7'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 72
    Width = 202
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label5: TLabel
      Left = 23
      Top = 5
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object Label6: TLabel
      Left = 22
      Top = 29
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object DBEdit1: TDBEdit
      Left = 72
      Top = 1
      Width = 100
      Height = 21
      DataField = 'DataFechamento'
      DataSource = frmMovBanco.dsBanco
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 72
      Top = 25
      Width = 100
      Height = 21
      DataField = 'SaldoFechamento'
      DataSource = frmMovBanco.dsBanco
      TabOrder = 1
    end
  end
end
