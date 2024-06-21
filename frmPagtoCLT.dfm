object frmPagtosCLT: TfrmPagtosCLT
  Left = 509
  Top = 90
  ActiveControl = cmbNome
  BorderStyle = bsSingle
  Caption = 'Pagamento de Funcion'#225'rios CLT'
  ClientHeight = 738
  ClientWidth = 1158
  Color = clBtnFace
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
  object CoolBar1: TCoolBar
    Left = 0
    Top = 36
    Width = 1158
    Height = 29
    Bands = <
      item
        Control = cmbData
        ImageIndex = -1
        MinHeight = 24
        Width = 1154
      end
      item
        Control = cmbNome
        ImageIndex = -1
        MinHeight = 24
        Width = 1154
      end
      item
        Control = cmbBanco
        ImageIndex = -1
        MinHeight = 24
        Width = 1154
      end>
    object cmbData: TDateTimePicker
      Left = 9
      Top = 0
      Width = 1141
      Height = 24
      Date = 37994.523032106480000000
      Time = 37994.523032106480000000
      TabOrder = 0
      OnChange = cmbDataChange
    end
    object cmbNome: TComboBox
      Left = 9
      Top = 26
      Width = 1141
      Height = 24
      ItemHeight = 16
      TabOrder = 1
      OnChange = cmbNomeChange
    end
    object cmbBanco: TDBLookupComboBox
      Left = 9
      Top = 52
      Width = 1141
      Height = 24
      KeyField = 'BancoID'
      ListField = 'Nome'
      ListSource = dsBanco
      TabOrder = 2
      OnCloseUp = cmbBancoCloseUp
    end
  end
  object tabCheque: TTabControl
    Left = 0
    Top = 65
    Width = 1158
    Height = 673
    Align = alClient
    TabOrder = 1
    Tabs.Strings = (
      'Emiss'#227'o'
      'Banco+Emiss'#227'o'
      'Cheque'
      'Favorecido'
      'Mov.Banco')
    TabIndex = 0
    OnChange = tabChequeChange
    object pnlLista: TPanel
      Left = 4
      Top = 27
      Width = 1150
      Height = 642
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Splitter2: TSplitter
        Left = 0
        Top = 528
        Width = 1150
        Height = 3
        Cursor = crVSplit
        Align = alBottom
      end
      object grdCheque: TDBGrid
        Left = 0
        Top = 30
        Width = 1150
        Height = 498
        Align = alClient
        DataSource = dsMovBanco
        FixedColor = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = grdChequeDrawColumnCell
        OnKeyDown = grdChequeKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'Filial'
            Title.Alignment = taRightJustify
            Width = 31
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MovBanco'
            Title.Alignment = taCenter
            Title.Caption = 'Movimto'
            Width = 50
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DataEntrada'
            Title.Alignment = taCenter
            Title.Caption = 'Emiss'#227'o'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Banco'
            Title.Alignment = taRightJustify
            Width = 42
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Agencia'
            Title.Alignment = taRightJustify
            Width = 50
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Conta'
            Title.Alignment = taRightJustify
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Doc'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Title.Alignment = taRightJustify
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TipoTexto'
            Title.Caption = 'TP'
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Favorecido'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DataMovimento'
            Title.Alignment = taCenter
            Title.Caption = 'Compensa'#231#227'o'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Usuario'
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1150
        Height = 30
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object chkEmitido: TRadioButton
          Left = 177
          Top = 5
          Width = 139
          Height = 21
          Caption = 'Emitidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = chkEmitidoClick
        end
        object chkCancelado: TRadioButton
          Left = 348
          Top = 5
          Width = 139
          Height = 21
          Caption = 'Cancelados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = chkCanceladoClick
        end
        object chkTodos: TRadioButton
          Left = 521
          Top = 5
          Width = 139
          Height = 21
          Caption = 'Ambos'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          TabStop = True
          OnClick = chkTodosClick
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 531
        Width = 1150
        Height = 111
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object Label15: TLabel
          Left = 0
          Top = 0
          Width = 1150
          Height = 16
          Align = alTop
          Alignment = taCenter
          Caption = 'Hist'#243'rico'
          Color = 11206642
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBMemo2: TDBMemo
          Left = 0
          Top = 16
          Width = 1150
          Height = 95
          Align = alClient
          DataField = 'Historico'
          DataSource = dsMovBanco
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
    object pnlFicha: TPanel
      Left = 4
      Top = 27
      Width = 1150
      Height = 642
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Panel2: TPanel
        Left = 0
        Top = 265
        Width = 1150
        Height = 377
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Label8: TLabel
          Left = 0
          Top = 0
          Width = 1150
          Height = 16
          Align = alTop
          Alignment = taCenter
          Caption = 'Pagamentos em Aberto'
          Color = 11206642
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Panel4: TPanel
          Left = 0
          Top = 16
          Width = 1150
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label3: TLabel
            Left = 11
            Top = 10
            Width = 106
            Height = 16
            Caption = 'Selecione a Filial '
          end
          object Label16: TLabel
            Left = 753
            Top = 7
            Width = 252
            Height = 16
            Caption = 'Total Selecionado para Pagamento:'
            FocusControl = cmpDoc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText8: TDBText
            Left = 1008
            Top = 5
            Width = 112
            Height = 21
            Alignment = taRightJustify
            Color = clWhite
            DataField = 'valorpago'
            DataSource = dsTotal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object cmbFilial: TDBLookupComboBox
            Left = 118
            Top = 4
            Width = 572
            Height = 24
            Color = clWhite
            KeyField = 'Filial'
            ListField = 'Nome'
            ListSource = dsFilial
            TabOrder = 0
            OnCloseUp = cmbFilialCloseUp
          end
          object cmdLancarC: TBitBtn
            Left = 697
            Top = 1
            Width = 30
            Height = 31
            Hint = 'Lan'#231'a TODOS pagamentos CLT nas previs'#245'es'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = cmdLancarCClick
            Glyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              08000000000000010000320B0000320B00000001000000010000EFA54A00C684
              6B00BD8C7300CE947300EFB57300FFC67300BD847B00C6947B00B5848400B58C
              8400CE9C8400EFCE94009C9C9C00C6A59C00EFCE9C00F7D69C00C6ADA500F7D6
              A500CEB5AD00D6B5AD00C6BDAD00F7D6AD00D6BDB500DEBDB500DEC6B500E7C6
              B500EFCEB500F7D6B500F7DEB500EFCEBD00F7DEBD00527BC600E7DEC600F7DE
              C600F7E7C600E7CECE00E7D6CE00F7E7D600FFEFD600DEDEDE00FFEFE700FFF7
              E700FFF7EF00FFF7F700FFFFF700FF00FF0039A5FF0000F7FF0094FFFF00FFFF
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
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002D2D08080808
              0808080808080808082D2D2D0D261F1F1C15110E0B0B0B0F082D2D2D0D262F1F
              1F0C0C0C0C0C0C0E082D2D2D10282E2F1F1F1F150E0E0B0E082D2D2D1029252E
              302F1F1F150E0E0B082D2D2D121F1F1F1F302F1F1F0C0C0E082D2D2D132E302F
              2F2F2F2F1F1F1111082D2D2D16312E302F1F1F22211E1B15082D2D2D1631272E
              302F1F1F0C0C0C1C082D2D2D1731312E302F2F1F1F21211B082D2D2D18313131
              2E302F2F1F1F2014082D2D2D1931270C0C2E302F2F1F1F09082D2D2D19313131
              3131312C23020400012D2D2D1D31313131313131240705032D2D2D2D192B2A2A
              2A2A2A2A23070A2D2D2D2D2D191A1A1A1A19191A16062D2D2D2D}
          end
        end
        object ListBox1: TListBox
          Left = 955
          Top = 118
          Width = 149
          Height = 120
          ItemHeight = 16
          TabOrder = 1
          Visible = False
        end
        object grdPagar: TDBGrid
          Left = 0
          Top = 49
          Width = 1150
          Height = 328
          Align = alClient
          DataSource = dsPagar
          FixedColor = clHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial Narrow'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = grdPagarDrawColumnCell
          OnDblClick = grdPagarDblClick
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'SelecionadoTexto'
              Title.Alignment = taCenter
              Title.Caption = 'Pagar'
              Width = 40
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DataVencto'
              Title.Alignment = taCenter
              Title.Caption = 'Vencimento'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ClienteNome'
              ReadOnly = True
              Title.Caption = 'Cliente'
              Width = 217
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Title.Alignment = taRightJustify
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ValorPago'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor Pago'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Doc'
              Title.Caption = 'Documento'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Historico'
              Title.Caption = 'Hist'#243'rico'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Lancamento'
              Visible = True
            end>
        end
      end
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 1150
        Height = 265
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Splitter1: TSplitter
          Left = 0
          Top = 261
          Width = 1150
          Height = 4
          Cursor = crVSplit
          Align = alBottom
        end
        object grdPrevisao1: TDBGrid
          Left = 0
          Top = 0
          Width = 1150
          Height = 261
          Align = alClient
          FixedColor = clHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clHighlightText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Lancamento'
              Title.Alignment = taRightJustify
              Title.Caption = 'Previs'#227'o'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DataVencto'
              Title.Alignment = taCenter
              Title.Caption = 'Vencimento'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Doc'
              Title.Caption = 'Documento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Historico'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Title.Alignment = taRightJustify
              Width = 90
              Visible = True
            end>
        end
        object pnlCheque: TPanel
          Left = 0
          Top = 0
          Width = 1150
          Height = 261
          Align = alClient
          BevelOuter = bvNone
          Caption = ' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Panel5: TPanel
            Left = 0
            Top = 165
            Width = 1150
            Height = 96
            Align = alClient
            BevelOuter = bvNone
            Caption = 'Panel5'
            TabOrder = 0
            object Label12: TLabel
              Left = 0
              Top = 0
              Width = 1150
              Height = 16
              Align = alTop
              Alignment = taCenter
              Caption = 'Hist'#243'rico'
              Color = 11468718
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object cmpHistorico: TDBMemo
              Left = 0
              Top = 16
              Width = 1150
              Height = 80
              Align = alClient
              BevelInner = bvNone
              DataField = 'Historico'
              DataSource = dsMovBanco
              ReadOnly = True
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 1150
            Height = 165
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object Label10: TLabel
              Left = 6
              Top = 2
              Width = 71
              Height = 13
              Caption = 'Conta Corrente'
            end
            object label20: TLabel
              Left = 142
              Top = 50
              Width = 55
              Height = 13
              Caption = 'Documento'
              FocusControl = cmpDoc
            end
            object Label7: TLabel
              Left = 142
              Top = 102
              Width = 66
              Height = 13
              Caption = 'Mov.Banc'#225'ria'
              FocusControl = cmpDoc
            end
            object DBText1: TDBText
              Left = 142
              Top = 121
              Width = 112
              Height = 21
              Alignment = taRightJustify
              Color = clWhite
              DataField = 'MovBanco'
              DataSource = dsMovBanco
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object DBText4: TDBText
              Left = 270
              Top = 121
              Width = 110
              Height = 21
              Alignment = taRightJustify
              Color = clWhite
              DataField = 'DataInclusao'
              DataSource = dsMovBanco
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label13: TLabel
              Left = 270
              Top = 102
              Width = 40
              Height = 13
              Caption = 'Inclus'#227'o'
              FocusControl = cmpDoc
            end
            object Label2: TLabel
              Left = 402
              Top = 52
              Width = 117
              Height = 13
              Caption = 'Favorecido - Funcion'#225'rio'
            end
            object Label5: TLabel
              Left = 358
              Top = 52
              Width = 24
              Height = 13
              Caption = 'Valor'
              FocusControl = cmpValor
            end
            object Label1: TLabel
              Left = 194
              Top = -27
              Width = 56
              Height = 13
              Caption = 'Vencimento'
            end
            object DBText3: TDBText
              Left = 273
              Top = 23
              Width = 37
              Height = 21
              Alignment = taRightJustify
              Color = clWhite
              DataField = 'Banco'
              DataSource = dsMovBanco
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object DBText5: TDBText
              Left = 315
              Top = 23
              Width = 49
              Height = 21
              Alignment = taRightJustify
              Color = clWhite
              DataField = 'Agencia'
              DataSource = dsMovBanco
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object DBText6: TDBText
              Left = 369
              Top = 23
              Width = 86
              Height = 21
              Alignment = taRightJustify
              Color = clWhite
              DataField = 'Conta'
              DataSource = dsMovBanco
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label11: TLabel
              Left = 268
              Top = 2
              Width = 108
              Height = 13
              Caption = 'Banco/Ag'#234'ncia/Conta'
            end
            object lblCancelado: TLabel
              Left = 0
              Top = 149
              Width = 1150
              Height = 16
              Align = alBottom
              Alignment = taCenter
              Caption = 'CANCELADO'
              Color = clRed
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label9: TLabel
              Left = 497
              Top = 2
              Width = 67
              Height = 13
              Caption = 'Fundo destino'
            end
            object Label19: TLabel
              Left = 6
              Top = 52
              Width = 39
              Height = 13
              Caption = 'Emiss'#227'o'
              FocusControl = cmpDoc
            end
            object lblDoc: TDBText
              Left = 142
              Top = 73
              Width = 112
              Height = 21
              Color = clWhite
              DataField = 'Doc'
              DataSource = dsMovBanco
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object cmpDoc: TDBEdit
              Left = 142
              Top = 70
              Width = 115
              Height = 21
              DataField = 'Doc'
              DataSource = dsMovBanco
              TabOrder = 3
            end
            object cmpBanco: TDBLookupComboBox
              Left = 6
              Top = 21
              Width = 246
              Height = 24
              DataField = 'BancoID'
              DataSource = dsMovBanco
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              KeyField = 'BancoID'
              ListField = 'Nome'
              ListSource = dsBanco
              ParentFont = False
              TabOrder = 0
              OnCloseUp = cmpBancoCloseUp
            end
            object cmpValor: TDBEdit
              Left = 270
              Top = 70
              Width = 116
              Height = 21
              DataField = 'Valor'
              DataSource = dsMovBanco
              TabOrder = 4
            end
            object Panel10: TPanel
              Left = 533
              Top = 98
              Width = 135
              Height = 46
              BevelInner = bvSpace
              BevelOuter = bvNone
              BorderStyle = bsSingle
              TabOrder = 7
              object Label6: TLabel
                Left = 1
                Top = 1
                Width = 129
                Height = 16
                Align = alTop
                Alignment = taCenter
                Caption = 'Usu'#225'rio Inclus'#227'o'
                Color = 177517
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlightText
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object DBText46: TDBText
                Left = 1
                Top = 17
                Width = 129
                Height = 24
                Align = alClient
                Alignment = taCenter
                DataField = 'UsuarioI'
                DataSource = dsMovBanco
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object cmpVencto: TDBDateTimePicker
              Left = 6
              Top = 70
              Width = 111
              Height = 21
              Date = 0.724925578702823300
              Time = 0.724925578702823300
              TabOrder = 2
              DataField = 'DataEntrada'
              DataSource = dsMovBanco
            end
            object Panel6: TPanel
              Left = 834
              Top = 101
              Width = 156
              Height = 45
              BevelInner = bvSpace
              BevelOuter = bvNone
              BorderStyle = bsSingle
              TabOrder = 8
              object Label14: TLabel
                Left = 1
                Top = 1
                Width = 150
                Height = 16
                Align = alTop
                Alignment = taCenter
                Caption = 'Saldo'
                Color = clGreen
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlightText
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object DBText2: TDBText
                Left = 1
                Top = 17
                Width = 150
                Height = 23
                Hint = 'Selecione primeiro os lan'#231'amentos'
                Align = alClient
                Alignment = taCenter
                Color = clWhite
                DataField = 'SaldoAtual'
                DataSource = dsBanco
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
            end
            object DBLookupComboBox4: TDBLookupComboBox
              Left = 497
              Top = 20
              Width = 331
              Height = 21
              DataField = 'Fundo'
              DataSource = dsMovBanco
              KeyField = 'Fundo'
              ListField = 'Nome'
              ListSource = dsFundos
              TabOrder = 1
            end
            object chkCruzado: TDBCheckBox
              Left = 6
              Top = 121
              Width = 86
              Height = 21
              Caption = 'Cruzado'
              DataField = 'Cruzado'
              DataSource = dsMovBanco
              TabOrder = 6
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object Panel8: TPanel
              Left = 681
              Top = 100
              Width = 135
              Height = 45
              BevelInner = bvSpace
              BevelOuter = bvNone
              BorderStyle = bsSingle
              TabOrder = 9
              object Label4: TLabel
                Left = 1
                Top = 1
                Width = 129
                Height = 16
                Align = alTop
                Alignment = taCenter
                Caption = 'Usu'#225'rio'
                Color = 177517
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlightText
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object DBText7: TDBText
                Left = 1
                Top = 17
                Width = 129
                Height = 23
                Align = alClient
                Alignment = taCenter
                DataField = 'Usuario'
                DataSource = dsMovBanco
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object cmpFavorecido: TDBEdit
              Left = 402
              Top = 70
              Width = 426
              Height = 21
              DataField = 'Favorecido'
              DataSource = dsMovBanco
              TabOrder = 5
            end
          end
        end
      end
    end
  end
  object Panel14: TPanel
    Left = 0
    Top = 0
    Width = 1158
    Height = 36
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 2
    object cmdFicha: TSpeedButton
      Left = 236
      Top = 2
      Width = 31
      Height = 31
      Hint = 'Exibe Ficha'
      AllowAllUp = True
      GroupIndex = 2
      Down = True
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000320B0000320B00000001000000010000EFA54A00C684
        6B00BD8C7300CE947300EFB57300FFC67300BD847B00C6947B00B5848400B58C
        8400CE9C8400B5948C00C6A59400EFCE9400C6A59C00EFCE9C00F7D69C00C6AD
        A500F7D6A500CEB5AD00D6B5AD00C6BDAD00F7D6AD00D6BDB500DEBDB500DEC6
        B500E7C6B500EFCEB500F7D6B500F7DEB500EFCEBD00F7DEBD00E7DEC600F7DE
        C600F7E7C600E7CECE00E7D6CE00F7E7CE00F7E7D600FFEFD600FFEFDE00FFEF
        E700FFF7E700FFF7EF00FFF7F700FFFFF700FF00FF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002E2E08080808
        0808080808080808082E2E2E0E27221F1D16120F0D0D0D10082E2E2E0E270E0E
        0E0E0E0E0E0E0E0F082E2E2E11292625211F1C160F0F0D0F082E2E2E112A2625
        22211D1C160F0F0D082E2E2E132D0E0E0E0E0E0E0E0E0E0F082E2E2E142F2B29
        262522211F161212082E2E2E172F2C2B28262522211F1C16082E2E2E172F0E0E
        0E0E0E0E0E0E0E1D082E2E2E182F2F2F2C2928262521211C082E2E2E192F2F2F
        2F2C292828272015082E2E2E1A2F0E0E0E0E0E2B260C0B09082E2E2E1A2F2F2F
        2F2F2F2D23020400012E2E2E1E2F2F2F2F2F2F2F240705032E2E2E2E1A2C2B2B
        2B2B2B2B23070A2E2E2E2E2E1A1B1B1B1B1A1A1B17062E2E2E2E}
      ParentShowHint = False
      ShowHint = True
      OnClick = cmdFichaClick
    end
    object cmdLista: TSpeedButton
      Left = 267
      Top = 2
      Width = 31
      Height = 31
      Hint = 'Exibe Lista'
      AllowAllUp = True
      GroupIndex = 2
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000220B0000220B000000010000000100008C5A5A009C6B
        63009C6B6B00EFB56B00A57B7300B5847300C68C7B00BD848400B58C8C00FFD6
        A500BDADAD00F7DEBD00D6C6C600F7DEC600FFDEC600FFE7C600EFDECE00F7DE
        CE00F7E7CE00FFE7CE00EFE7D600F7E7D600FFE7D600FFEFD600EFDEDE00EFE7
        DE00F7E7DE00F7EFDE00FFEFDE00FFF7DE00FFF7E700FFF7EF00FFFFEF00FFFF
        F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00222222222208
        000000000000000000222222222222081E1B1B1B1B1B1B120022222222222208
        1B110D0D0D0D101000222222222222081E090909090909100022220800000008
        1F0D0D0D0D0B1210012222081E1B1B081F120D0D0D0D1510022222081B110D08
        2109090909090914042222081E0909082116161512161E18042222081F0D0D08
        2323232121180C0A052222081F120D0823232321210808080822220821090908
        2323232323080306222222082116160808080808080807222222220823232321
        21180C0A05222222222222082323232121080808082222222222220823232323
        2308030622222222222222080808080808080722222222222222}
      ParentShowHint = False
      ShowHint = True
      OnClick = cmdListaClick
    end
    object Panel15: TPanel
      Left = 1010
      Top = 1
      Width = 147
      Height = 34
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object BitBtn8: TBitBtn
        Left = 55
        Top = 2
        Width = 37
        Height = 31
        Hint = 'Cliente Anterior'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BitBtn8Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FF4C2600602F00723800723800623000502800FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF643100643100984B00B85B00BC
          5D00BC5D00BA5C009C4D006C35006C3500FF00FFFF00FFFF00FFFF00FFFF00FF
          743900884300C05F00C26000BC5D00B85B00BC5D00BC5D00C05F00C260008A44
          00502800FF00FFFF00FFFF00FF743900944900D26800C86300BC5D00B85B00B8
          5B00BA5C00BA5C00BA5C00BC5D00C260008A44006C3500FF00FFFF00FF743900
          DE6E00D86B00CA6400BC5D00D3975DFAF3EDF6EADEC37020BA5C00BA5C00BC5D
          00C260006C3500FF00FF7A3C00B45900F07700D86B00C26000D39354FDFAF7FF
          FFFFE3BC96BC6108BA5C00BA5C00BA5C00C05F009C4D00602F007A3C00E06F00
          F07700DE6E00D69352FDF9F6FEFEFDE0B489BA5C00BA5C00BA5C00BA5C00BA5C
          00BE5E00B25800602F00904700F87B00FA7C00FCB26AFEF8F2FFFFFFFEFBF8F9
          DABCF8D8B9EDD5BDEDD5BDEDD5BEEED7C0BC5D00BC5D006A3400A04F00FF9125
          FF840BFEDCBAFFFFFFFFFFFFFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFBE5E00BC5D00723800A04F00FF9F41FF9833F58618FED0A3FFFFFFFFFCFAFC
          BD80E9923CE0954ADF944ADE944BDE934AC86300B85B00663200A04F00FF9833
          FFBF81FF7E00F27902FEC792FFFFFFFFF1E3F39D49DE6E00DA6C00DA6C00D268
          00CA6400AA5400663200FF00FFEC7500FFD3A9FFAD5DE87300F07802FEC38AFF
          FFFFFFFAF5E98522DA6C00D66A00CE6600D469008E4600FF00FFFF00FFEC7500
          FFA043FFE3C7FFAC5BFA7C00EE7905FDC893FED4AAEB7C0EE27000DE6E00E06F
          00C461008E4600FF00FFFF00FFFF00FFD26800FFAD5DFFE9D3FFCA97FF9E3FFF
          8E1FFF850DFF8813FF8813FF8105D66A008A4400FF00FFFF00FFFF00FFFF00FF
          FF00FFFF9833FF9833FFC995FFDFBFFFD2A7FFC58DFFB873FF9B39E06F00E06F
          00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE87300FF8A17FF
          952DFF9125FC7D00C66200FF00FFFF00FFFF00FFFF00FFFF00FF}
      end
      object BitBtn9: TBitBtn
        Left = 98
        Top = 2
        Width = 37
        Height = 31
        Hint = 'Pr'#243'ximo Cliente'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn9Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FF4C2600602F00723800723800623000502800FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF643100643100984B00B85B00BC
          5D00BC5D00BA5C009C4D006C35006C3500FF00FFFF00FFFF00FFFF00FFFF00FF
          743900884300C05F00C26000BC5D00B85B00BC5D00BC5D00C05F00C260008A44
          00502800FF00FFFF00FFFF00FF743900944900D26800C86300BC5D00B85B00B8
          5B00BA5C00BA5C00BA5C00BC5D00C260008A44006C3500FF00FFFF00FF743900
          DE6E00D86B00CA6400BC5D00C37020F6EADEFAF3EDD3975DBA5C00BA5C00BC5D
          00C260006C3500FF00FF7A3C00B45900F07700D86B00C26000BE5E00BC6108E3
          BC96FFFFFFFDFAF7D19254BA5C00BA5C00C05F009C4D00602F007A3C00E06F00
          F07700DE6E00C26000BC5D00BE5E00BC5D00DFB489FEFEFDFDF9F6D09052BA5C
          00BE5E00B25800602F00904700F87B00FA7C00FEDFC0FADCBEF7DABDFADBBDF9
          D9B9F8DABCFDFAF8FFFFFFFBF7F2D7A06ABC5D00BC5D006A3400A04F00FF9125
          FF840BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFFFFFFFFFFECD3
          BABE5E00BC5D00723800A04F00FF9F41FF9833F7A04AFDA34BFDA34AFDA34AFA
          9A3CF1B880FEFCFAFFFFFFEEC8A3D47518C86300B85B00663200A04F00FF9833
          FFBF81FF7E00F27800FC7D00FC7D00FDA249FDF0E3FFFFFFEFC092DA6D02D268
          00CA6400AA5400663200FF00FFEC7500FFD3A9FFAD5DE87300F07700FC8E22FF
          FAF5FFFFFFF4BE8ADA6D02D66A00CE6600D469008E4600FF00FFFF00FFEC7500
          FFA043FFE3C7FFAC5BFA7C00EF7E0EFDD3AAFEC893EA7705E27000DE6E00E06F
          00C461008E4600FF00FFFF00FFFF00FFD26800FFAD5DFFE9D3FFCA97FF9E3FFF
          8E1FFF850DFF8813FF8813FF8105D66A008A4400FF00FFFF00FFFF00FFFF00FF
          FF00FFFF9833FF9833FFC995FFDFBFFFD2A7FFC58DFFB873FF9B39E06F00E06F
          00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE87300FF8A17FF
          952DFF9125FC7D00C66200FF00FFFF00FFFF00FFFF00FFFF00FF}
      end
    end
    object cmdAltera: TBitBtn
      Left = 42
      Top = 2
      Width = 31
      Height = 31
      Hint = 'Alterar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = cmdAlteraClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000420B0000420B00000001000000010000000000000084
        0000210021005A4A29004A3939005A5242004A4A4A005A524A0073524A005A52
        52006300630073737300BD847B00C6947B00CE9C7B00B58484009C948400BD94
        9400EFCE9400F7CE9400C6A59C00EFCE9C00F7CE9C00F7D69C00C6ADA500CEAD
        A500F7D6A500C6ADAD00CEB5AD00D6B5AD00EFD6AD00F7D6AD00C6B5B500D6BD
        B500DEBDB500DEC6B500E7C6B500EFC6B500EFCEB500F7D6B500F7DEB500D6C6
        BD00DECEBD00EFCEBD00F7DEBD0000C6C600C6C6C600D6CEC600F7DEC600F7E7
        C600E7CECE00E7D6CE00F7E7CE00E7D6D600F7E7D600FFE7D600FFEFD600FFEF
        DE00FFEFE700FFF7E70021F7EF00FFF7EF0018F7F700FFF7F700FFFFF700FF00
        FF0000FFFF0021FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0041410F0F0F0F
        0F0F0F0F0F0F0F0F0F4141411438312C281E1A15121212170F41414114382E2E
        2E2E2E2E2E2E2E150F414141183A3634302C1E15151512150F414141183B3634
        31302805151515120F4141411C402E2E2E2E2E06002E2E150F4141411D443D3A
        363431070000291E0F41414121443F3D39363407422D00290F41414121442E2E
        2E2E2E0B3E2D002911414141224444443F3A393609422D001B41414123444444
        443F3A3910432D002041414124442E2E2E2E2E2E3604422D0041414124444444
        4444444032083C2D004141412B44444444444444330D030001004141243F3D3D
        3D3D3D3D320D0801010241412426262626242426210C410A0A41}
    end
    object cmdGrava: TBitBtn
      Left = 73
      Top = 2
      Width = 61
      Height = 31
      Hint = 'Gravar'
      Caption = 'Ok'
      Default = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = cmdGravaClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000220B0000220B00000001000000010000942929009431
        31009C3131009C393900A53939009C4242009C4A4A00A54A4A00B54A4A00AD52
        4A00B5524A00A5525200AD525200B5525200B55A5200AD525A00AD5A5A00B55A
        5A00BD5A5A00C65A5A00CE5A5A00CE636300CE6B6B00D66B6B00B5737300BD7B
        73009C7B7B009C848400AD848400B5848400C6848400AD8C8C00B58C8C00C694
        8C00AD949400C6949400A59C9C00B59C9C00D69C9C00BDA5A500D6A5A500D6AD
        A500CEADAD00D6ADAD00DEADAD00CEB5B500D6B5B500CEBDBD00DEBDBD00E7BD
        BD00E7C6C600C6CEC600CECEC600C6CECE00CECECE00D6CECE00E7CECE00E7D6
        CE00D6D6D600DED6D600EFD6D600DEDED600D6DEDE00DEDEDE00E7DEDE00E7E7
        E700EFEFEF00F7EFEF00F7F7EF00F7F7F700FFF7F700FFFFF700FF00FF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004848100C0722
        33343433332505050B4848191516111B27384647452D0002131048191515111A
        05184046492E0102121048191515111C03032F42493200011210481915151120
        0601243A493200011210481915151221231D1F27322C04041310481915151515
        1515151313151515160F48190D111E282B292B2828292B26150C481909384544
        4545454545454530130F48190A3C46434343434343434530130F48190A3C423A
        3A3A3A3A3A3A4230130F48190A3C423B3F3F3F3F3F3B4230130F48190A3C4440
        4040404040404230130F48190A3C423A3A3A3A3A3A3A4230130F48190A394643
        4343434343434630130F4848092D3A363636363636363A2A0748}
    end
    object cmdCancela: TBitBtn
      Left = 134
      Top = 2
      Width = 31
      Height = 31
      Hint = 'Cancela Inclus'#227'o/Altera'#231#227'o'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = cmdCancelaClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF00009A00009AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00009A0000
        9AFF00FFFF00FFFF00FFFF00FFFF00FF00009A174AFD103BF400009AFF00FFFF
        00FFFF00FFFF00FF00009A002CF80030FC00009AFF00FFFF00FFFF00FFFF00FF
        00009A1A47F81A4CFF123BF100009AFF00FFFF00FF00009A012DF60132FF002A
        F300009AFF00FFFF00FFFF00FFFF00FFFF00FF00009A1C47F61B4DFF143EF400
        009A00009A002DF80134FF032BF200009AFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF00009A1D48F61D50FF103DFB0431FE0132FF002CF600009AFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00009A1A48F913
        42FF0C3CFF0733F600009AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF00009A214EFC1D4BFF1847FF1743F600009AFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00009A2E5BF92C5FFF22
        4DF8204BF82355FF1B46F600009AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF00009A3664FA386BFF2D59F400009A00009A224CF42558FF1D49F60000
        9AFF00FFFF00FFFF00FFFF00FFFF00FF00009A4071FA4274FF325DF100009AFF
        00FFFF00FF00009A224DF1275AFF204CF800009AFF00FFFF00FFFF00FFFF00FF
        00009A497AFC3B66F300009AFF00FFFF00FFFF00FFFF00FF00009A2550F42655
        FA00009AFF00FFFF00FFFF00FFFF00FFFF00FF00009A00009AFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF00009A00009AFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object cmdExclui: TBitBtn
      Left = 165
      Top = 2
      Width = 31
      Height = 31
      Hint = 'Cancelar o cheque'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = cmdExcluiClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF0955A10857A60557AA0655A70954A00954A0FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0872DD0362C3006CDB0877E711
        7DEA0877E70069DD005DC70654A50654A5FF00FFFF00FFFF00FFFF00FFFF00FF
        0F6BC90872DD3E99F591C4F9D6E9FDEEF7FFE4F1FFB0D4FB59A5F50570E5035A
        B70B5095FF00FFFF00FFFF00FF1278E0127CE870B4F9F6FAFEFFFFFFEEF6FDD3
        E6FBE2EEFDFFFFFFFFFFFFAED2FA0E78ED025AB60653A2FF00FFFF00FF1278E0
        6DB2F9FEFEFFE9F3FD1E7FF00D73ED1474EB066BE90C6FE889B9F4E6F0FDB0D5
        FA0970E60653A2FF00FF0B70D53695F4E8F3FEFFFFFF89BAF48FC0F92A86F110
        75EE1275EC1E79EC84B5F489BAF4FFFFFF58A5F5005EC70858AB137AE371B5FB
        FFFFFFB2D7FC278CF992C4FBDAEAFD318BF3388DF2D7E8FC87B8F50D71EAE6F0
        FDB3D7FB016BDE0858AB1F85ECA2CFFDFFFFFF419EFD3495FB298DF992C5FBE6
        F1FEE5F1FD88BCF71075EE0B70EBB4D2F8E6F3FF0E7BE9065AB02F8FF1B7DAFD
        FFFFFF419FFF3196FE3094FC469EFCF1F8FEF1F8FE3892F5187DF11378EF9FC9
        F7F0F8FF1A82EC055CB53693F0B8DAFEFFFFFF59ACFF3499FF55A9FEE8F3FF85
        BFFD83BDFCE7F2FE4498F61A7FF2D3E6FCD9EBFE117DE9095CB22689EDAFD6FD
        FFFFFFC3E1FF4AA4FFEDF6FF81C0FF3296FE2E93FC7BBAFDEBF5FE59A5F8E9F3
        FE99C9FA0773E10958ABFF00FF3994F0F1F8FFFBFDFF78BBFF61AFFF3499FF34
        99FF3398FF3095FD68B0FCF4FAFFF5FAFE49A0F7076ACEFF00FFFF00FF3994F0
        CDE6FFF6FAFFFBFDFFC1DFFF58ABFF43A0FF49A3FF84C1FEFBFDFFFFFFFF78B9
        F9137BE6076ACEFF00FFFF00FFFF00FF64ACF6D4EAFFF9FCFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE7F3FE77B8FA1D85ED0D6DD0FF00FFFF00FFFF00FFFF00FF
        FF00FF459AF0A7D2FCD8ECFFE2F1FFE4F1FED1E7FE9DCDFD4DA2F7177FE8177F
        E8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3B94F061ABF665
        ADF7489EF42286EC127AE4FF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object cmdApaga: TBitBtn
      Left = 196
      Top = 2
      Width = 30
      Height = 31
      Hint = 'Apagar cheque cancelado e n'#227'o emitido'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = cmdApagaClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1B77DF1B77DF1B77DF1B7
        7DF1B77DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFF1B77DFFEBC9FED8B6F7C799F2B97FF1B77CF2BA81FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFF1B77DFFF8D8FEE9C7FDD6B3F7C699F2B9
        80F1B77DF1B77CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1
        B77DFFFCD8FEE9C7FDD7B4F7C79AF2B980F1B77CF1B77DFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFF7D6A6FFFFDEFFEDCBFEDBB9F8C99DF2B9
        82F1B77CF1B77DF1B77DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1B77DFE
        F5D4FFFBDAFBDDB5F8CA9EF5C290F2B87FF1B67BF1B77DF1B77DFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFF1BA81EDBD82E0974BE39950EAAA67EFBC80F2C6
        90F3C48CF1BA80F1B77CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE0954BC7
        5C00D57A24E69B53EEB87BF4D09CF9E3B7F7E0B3F2C992EFB67AFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFE39B54D07018D77F2CE79E59006600006600FDF2
        CCFCECC5F4CB97EFB77CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFE69C5600660033AF5053E081006600F1B77DFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFA97C78B0837AFF00FFFF00FF006600168B233DBE5F3AC95B199D
        29006600FF00FFFF00FFBF9992B38984D4B19BD1AD96B08378C6915FA77775FF
        00FF0066000066001F8B2A19A32B006600006600FF00FFFF00FFB58F8EE6C395
        B3764CB08581D0A992BE8F73A77874FF00FFFF00FFFF00FF077D0E006600FF00
        FFFF00FFFF00FFFF00FFA37474A67670C07928DCB590B5887DB5846BFF00FFFF
        00FFFF00FFFF00FF077D0E006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        B27954B58A7FD2BBBDAC8281FF00FFFF00FF006600006600006600FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFA57774A97F80AC8282FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object cmdImp: TBitBtn
      Left = 310
      Top = 2
      Width = 31
      Height = 31
      Hint = 'Impress'#227'o de Cheques'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = cmdImpClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6C6A6AAAA7A7A19F9F6C6A6A6C
        6A6A6C6A6AE5E3E36C6A6A6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FFFF00FF
        6C6A6ADAD9D9A19F9FA19F9FA19F9F3736363535356C6D6DBFBFBFE1E2E2B7B6
        B66C6A6A6C6A6A6C6A6AFF00FF6C6A6AD4D3D3CACACA8E8C8C8E8C8C8E8C8C3C
        3B3B0A090A0707070B0B0B0707077A7A7ABBBBBB6C6A6AFF00FF6C6A6ACACACA
        CACACA8E8C8CD7D4D4CECBCBBFBCBCB1AFAFA3A0A08886865E5B5C0707070909
        090808086C6A6A7673736C6A6ACACACA8E8C8CEFEEEEFFFEFEFBFAFAE3E0E1DE
        DEDEDEDDDDCFCECEBDBCBCADABAB8B89895856567A78787573736C6A6A8E8C8C
        FFFFFFFEFCFCFAFAFAD5D4D5989193A09899B2ABACC4C0C1D7D7D7D8D8D8C7C6
        C6B7B6B6918F8F6C6969FF00FF6C6A6A6C6A6AEDEBEBB1A6A77A6F728A838896
        92959690919D97989A93959E9899BBBABAD1D1D1C2C2C26C6A6AFF00FFFF00FF
        FF00FF6C6A6ABB897FA7876D8B6F647D67606F62657973798F8B8EA9A3A4CBCA
        CAC1C1C16C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFE3B4FFD39FE9
        B281C99973BA916CBD8281807D7E6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFBD8281FFE0B8FFD3A7FFD09DFFCE90FFC688BD8281FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC08683FFE7CFFFE0C0FFD9B2FF
        D3A5FFD099BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFBD8281FEEBD8FFE6CCFFDEBDFFD8B1FED3A4BD8281FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFFFF2FFFFF2FFEBD8FFE5CAFF
        E1BDF3C7A7BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        BD8281BD8281BD8281FBEFE2FBE3CFFBDDC2BD8281FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281BD8281BD
        8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object cmdImp2: TBitBtn
      Left = 341
      Top = 2
      Width = 31
      Height = 31
      Hint = 'Relat'#243'rio de Cheques Emitidos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = cmdImp2Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6C6A6AAAA7A7A19F9F6C6A6A6C
        6A6A6C6A6AE5E3E36C6A6A6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FFFF00FF
        6C6A6ADAD9D9A19F9FA19F9FA19F9F3736363535356C6D6DBFBFBFE1E2E2B7B6
        B66C6A6A6C6A6A6C6A6AFF00FF6C6A6AD4D3D3CACACA8E8C8C8E8C8C8E8C8C3C
        3B3B0A090A0707070B0B0B0707077A7A7ABBBBBB6C6A6AFF00FF6C6A6ACACACA
        CACACA8E8C8CD7D4D4CECBCBBFBCBCB1AFAFA3A0A08886865E5B5C0707070909
        090808086C6A6A7673736C6A6ACACACA8E8C8CEFEEEEFFFEFEFBFAFAE3E0E1DE
        DEDEDEDDDDCFCECEBDBCBCADABAB8B89895856567A78787573736C6A6A8E8C8C
        FFFFFFFEFCFCFAFAFAD5D4D5989193A09899B2ABACC4C0C1D7D7D7D8D8D8C7C6
        C6B7B6B6918F8F6C6969FF00FF6C6A6A6C6A6AEDEBEBB1A6A77A6F728A838896
        92959690919D97989A93959E9899BBBABAD1D1D1C2C2C26C6A6AFF00FFFF00FF
        FF00FF6C6A6ABB897FA7876D8B6F647D67606F62657973798F8B8EA9A3A4CBCA
        CAC1C1C16C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFE3B4FFD39FE9
        B281C99973BA916CBD8281807D7E6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFBD8281FFE0B8FFD3A7FFD09DFFCE90FFC688BD8281FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC08683FFE7CFFFE0C0FFD9B2FF
        D3A5FFD099BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFBD8281FEEBD8FFE6CCFFDEBDFFD8B1FED3A4BD8281FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFFFF2FFFFF2FFEBD8FFE5CAFF
        E1BDF3C7A7BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        BD8281BD8281BD8281FBEFE2FBE3CFFBDDC2BD8281FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281BD8281BD
        8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object cmdImp4: TBitBtn
      Left = 370
      Top = 2
      Width = 31
      Height = 31
      Hint = 'Carta Autoriza'#231#227'o de Pagamento'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = cmdImp4Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6C6A6AAAA7A7A19F9F6C6A6A6C
        6A6A6C6A6AE5E3E36C6A6A6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FFFF00FF
        6C6A6ADAD9D9A19F9FA19F9FA19F9F3736363535356C6D6DBFBFBFE1E2E2B7B6
        B66C6A6A6C6A6A6C6A6AFF00FF6C6A6AD4D3D3CACACA8E8C8C8E8C8C8E8C8C3C
        3B3B0A090A0707070B0B0B0707077A7A7ABBBBBB6C6A6AFF00FF6C6A6ACACACA
        CACACA8E8C8CD7D4D4CECBCBBFBCBCB1AFAFA3A0A08886865E5B5C0707070909
        090808086C6A6A7673736C6A6ACACACA8E8C8CEFEEEEFFFEFEFBFAFAE3E0E1DE
        DEDEDEDDDDCFCECEBDBCBCADABAB8B89895856567A78787573736C6A6A8E8C8C
        FFFFFFFEFCFCFAFAFAD5D4D5989193A09899B2ABACC4C0C1D7D7D7D8D8D8C7C6
        C6B7B6B6918F8F6C6969FF00FF6C6A6A6C6A6AEDEBEBB1A6A77A6F728A838896
        92959690919D97989A93959E9899BBBABAD1D1D1C2C2C26C6A6AFF00FFFF00FF
        FF00FF6C6A6ABB897FA7876D8B6F647D67606F62657973798F8B8EA9A3A4CBCA
        CAC1C1C16C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFE3B4FFD39FE9
        B281C99973BA916CBD8281807D7E6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFBD8281FFE0B8FFD3A7FFD09DFFCE90FFC688BD8281FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC08683FFE7CFFFE0C0FFD9B2FF
        D3A5FFD099BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFBD8281FEEBD8FFE6CCFFDEBDFFD8B1FED3A4BD8281FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFFFF2FFFFF2FFEBD8FFE5CAFF
        E1BDF3C7A7BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        BD8281BD8281BD8281FBEFE2FBE3CFFBDDC2BD8281FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281BD8281BD
        8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object cmdImp5: TBitBtn
      Left = 401
      Top = 2
      Width = 31
      Height = 31
      Hint = 'Rela'#231#227'o de Cheques Faltantes'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = cmdImp5Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6C6A6AAAA7A7A19F9F6C6A6A6C
        6A6A6C6A6AE5E3E36C6A6A6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FFFF00FF
        6C6A6ADAD9D9A19F9FA19F9FA19F9F3736363535356C6D6DBFBFBFE1E2E2B7B6
        B66C6A6A6C6A6A6C6A6AFF00FF6C6A6AD4D3D3CACACA8E8C8C8E8C8C8E8C8C3C
        3B3B0A090A0707070B0B0B0707077A7A7ABBBBBB6C6A6AFF00FF6C6A6ACACACA
        CACACA8E8C8CD7D4D4CECBCBBFBCBCB1AFAFA3A0A08886865E5B5C0707070909
        090808086C6A6A7673736C6A6ACACACA8E8C8CEFEEEEFFFEFEFBFAFAE3E0E1DE
        DEDEDEDDDDCFCECEBDBCBCADABAB8B89895856567A78787573736C6A6A8E8C8C
        FFFFFFFEFCFCFAFAFAD5D4D5989193A09899B2ABACC4C0C1D7D7D7D8D8D8C7C6
        C6B7B6B6918F8F6C6969FF00FF6C6A6A6C6A6AEDEBEBB1A6A77A6F728A838896
        92959690919D97989A93959E9899BBBABAD1D1D1C2C2C26C6A6AFF00FFFF00FF
        FF00FF6C6A6ABB897FA7876D8B6F647D67606F62657973798F8B8EA9A3A4CBCA
        CAC1C1C16C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFE3B4FFD39FE9
        B281C99973BA916CBD8281807D7E6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFBD8281FFE0B8FFD3A7FFD09DFFCE90FFC688BD8281FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC08683FFE7CFFFE0C0FFD9B2FF
        D3A5FFD099BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFBD8281FEEBD8FFE6CCFFDEBDFFD8B1FED3A4BD8281FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFFFF2FFFFF2FFEBD8FFE5CAFF
        E1BDF3C7A7BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        BD8281BD8281BD8281FBEFE2FBE3CFFBDDC2BD8281FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281BD8281BD
        8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object cmdImp6: TBitBtn
      Left = 432
      Top = 2
      Width = 31
      Height = 31
      Hint = 'Relat'#243'rio de Cheques n'#227'o Compensados'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = cmdImp6Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6C6A6AAAA7A7A19F9F6C6A6A6C
        6A6A6C6A6AE5E3E36C6A6A6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FFFF00FF
        6C6A6ADAD9D9A19F9FA19F9FA19F9F3736363535356C6D6DBFBFBFE1E2E2B7B6
        B66C6A6A6C6A6A6C6A6AFF00FF6C6A6AD4D3D3CACACA8E8C8C8E8C8C8E8C8C3C
        3B3B0A090A0707070B0B0B0707077A7A7ABBBBBB6C6A6AFF00FF6C6A6ACACACA
        CACACA8E8C8CD7D4D4CECBCBBFBCBCB1AFAFA3A0A08886865E5B5C0707070909
        090808086C6A6A7673736C6A6ACACACA8E8C8CEFEEEEFFFEFEFBFAFAE3E0E1DE
        DEDEDEDDDDCFCECEBDBCBCADABAB8B89895856567A78787573736C6A6A8E8C8C
        FFFFFFFEFCFCFAFAFAD5D4D5989193A09899B2ABACC4C0C1D7D7D7D8D8D8C7C6
        C6B7B6B6918F8F6C6969FF00FF6C6A6A6C6A6AEDEBEBB1A6A77A6F728A838896
        92959690919D97989A93959E9899BBBABAD1D1D1C2C2C26C6A6AFF00FFFF00FF
        FF00FF6C6A6ABB897FA7876D8B6F647D67606F62657973798F8B8EA9A3A4CBCA
        CAC1C1C16C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFE3B4FFD39FE9
        B281C99973BA916CBD8281807D7E6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFBD8281FFE0B8FFD3A7FFD09DFFCE90FFC688BD8281FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC08683FFE7CFFFE0C0FFD9B2FF
        D3A5FFD099BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFBD8281FEEBD8FFE6CCFFDEBDFFD8B1FED3A4BD8281FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFFFF2FFFFF2FFEBD8FFE5CAFF
        E1BDF3C7A7BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        BD8281BD8281BD8281FBEFE2FBE3CFFBDDC2BD8281FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281BD8281BD
        8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object cmdImp7: TBitBtn
      Left = 463
      Top = 2
      Width = 31
      Height = 31
      Hint = 'Relat'#243'rio de Cheques n'#227'o Compensados no Per'#237'odo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = cmdImp7Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6C6A6AAAA7A7A19F9F6C6A6A6C
        6A6A6C6A6AE5E3E36C6A6A6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FFFF00FF
        6C6A6ADAD9D9A19F9FA19F9FA19F9F3736363535356C6D6DBFBFBFE1E2E2B7B6
        B66C6A6A6C6A6A6C6A6AFF00FF6C6A6AD4D3D3CACACA8E8C8C8E8C8C8E8C8C3C
        3B3B0A090A0707070B0B0B0707077A7A7ABBBBBB6C6A6AFF00FF6C6A6ACACACA
        CACACA8E8C8CD7D4D4CECBCBBFBCBCB1AFAFA3A0A08886865E5B5C0707070909
        090808086C6A6A7673736C6A6ACACACA8E8C8CEFEEEEFFFEFEFBFAFAE3E0E1DE
        DEDEDEDDDDCFCECEBDBCBCADABAB8B89895856567A78787573736C6A6A8E8C8C
        FFFFFFFEFCFCFAFAFAD5D4D5989193A09899B2ABACC4C0C1D7D7D7D8D8D8C7C6
        C6B7B6B6918F8F6C6969FF00FF6C6A6A6C6A6AEDEBEBB1A6A77A6F728A838896
        92959690919D97989A93959E9899BBBABAD1D1D1C2C2C26C6A6AFF00FFFF00FF
        FF00FF6C6A6ABB897FA7876D8B6F647D67606F62657973798F8B8EA9A3A4CBCA
        CAC1C1C16C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFE3B4FFD39FE9
        B281C99973BA916CBD8281807D7E6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFBD8281FFE0B8FFD3A7FFD09DFFCE90FFC688BD8281FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC08683FFE7CFFFE0C0FFD9B2FF
        D3A5FFD099BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFBD8281FEEBD8FFE6CCFFDEBDFFD8B1FED3A4BD8281FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFFFF2FFFFF2FFEBD8FFE5CAFF
        E1BDF3C7A7BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        BD8281BD8281BD8281FBEFE2FBE3CFFBDDC2BD8281FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281BD8281BD
        8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object cmdImp8: TBitBtn
      Left = 494
      Top = 2
      Width = 30
      Height = 31
      Hint = 'Relat'#243'rio de Cheques Pr'#233'-Datados'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      OnClick = cmdImp8Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6C6A6AAAA7A7A19F9F6C6A6A6C
        6A6A6C6A6AE5E3E36C6A6A6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FFFF00FF
        6C6A6ADAD9D9A19F9FA19F9FA19F9F3736363535356C6D6DBFBFBFE1E2E2B7B6
        B66C6A6A6C6A6A6C6A6AFF00FF6C6A6AD4D3D3CACACA8E8C8C8E8C8C8E8C8C3C
        3B3B0A090A0707070B0B0B0707077A7A7ABBBBBB6C6A6AFF00FF6C6A6ACACACA
        CACACA8E8C8CD7D4D4CECBCBBFBCBCB1AFAFA3A0A08886865E5B5C0707070909
        090808086C6A6A7673736C6A6ACACACA8E8C8CEFEEEEFFFEFEFBFAFAE3E0E1DE
        DEDEDEDDDDCFCECEBDBCBCADABAB8B89895856567A78787573736C6A6A8E8C8C
        FFFFFFFEFCFCFAFAFAD5D4D5989193A09899B2ABACC4C0C1D7D7D7D8D8D8C7C6
        C6B7B6B6918F8F6C6969FF00FF6C6A6A6C6A6AEDEBEBB1A6A77A6F728A838896
        92959690919D97989A93959E9899BBBABAD1D1D1C2C2C26C6A6AFF00FFFF00FF
        FF00FF6C6A6ABB897FA7876D8B6F647D67606F62657973798F8B8EA9A3A4CBCA
        CAC1C1C16C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFE3B4FFD39FE9
        B281C99973BA916CBD8281807D7E6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFBD8281FFE0B8FFD3A7FFD09DFFCE90FFC688BD8281FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC08683FFE7CFFFE0C0FFD9B2FF
        D3A5FFD099BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFBD8281FEEBD8FFE6CCFFDEBDFFD8B1FED3A4BD8281FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFFFF2FFFFF2FFEBD8FFE5CAFF
        E1BDF3C7A7BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        BD8281BD8281BD8281FBEFE2FBE3CFFBDDC2BD8281FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281BD8281BD
        8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object cmdPagarC: TBitBtn
      Left = 12
      Top = 2
      Width = 31
      Height = 31
      Hint = 'Gera Pagamentos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      OnClick = cmdPagarCClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000130B0000130B00000001000000010000005A00000084
        000000C6000042424200008484008484840084FF840000C6C600C6C6C600C6FF
        C600FF00FF0084FFFF00C6FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000A0A0A0A0A0A
        0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A05040404050A0A0A0A0A0A05040404
        05040C0B0B040A0A0A0A0A0A040C0B0B04050404040504050A0A0A0A05040404
        050A0A04080808040A0A0A0A0A0A0A0A0A0A0A04070707040A0A0A0000000000
        000000040808080400000A0001010202020202040707070401000A0001020606
        060303040D0B0B0401000A0002090906030808040404040602000A0002090909
        030C08080306060602000A0001020909090303030606060201000A0001010209
        090909060606020101000A0000000000000000000000000000000A0A0A0A0A0A
        0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A}
    end
    object cmdRelCLT: TBitBtn
      Left = 539
      Top = 2
      Width = 31
      Height = 31
      Hint = 'Relatorio de Pagamentos Funcionarios'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
      OnClick = cmdRelCLTClick
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
  end
  object dbPagar: TMSTable
    TableName = 'dbo.Lancamentos'
    Connection = frmMenu.dadosfin
    Filtered = True
    AfterInsert = dbPagarAfterInsert
    BeforeEdit = dbPagarBeforeEdit
    AfterPost = dbPagarAfterPost
    OnCalcFields = dbPagarCalcFields
    OnFilterRecord = dbPagarFilterRecord
    IndexFieldNames = 'DataVencto;Historico'
    Left = 150
    Top = 383
    object dbPagarLancamento: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'Lancamento'
      Origin = 'dbo.Lancamentos.Lancamento'
      ReadOnly = True
    end
    object dbPagarCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.Lancamentos.Cliente'
    end
    object dbPagarCod1: TSmallintField
      FieldName = 'Cod1'
      Origin = 'dbo.Lancamentos.Cod1'
    end
    object dbPagarCod2: TSmallintField
      FieldName = 'Cod2'
      Origin = 'dbo.Lancamentos.Cod2'
    end
    object dbPagarCod3: TSmallintField
      FieldName = 'Cod3'
      Origin = 'dbo.Lancamentos.Cod3'
    end
    object dbPagarHistorico: TStringField
      FieldName = 'Historico'
      Origin = 'dbo.Lancamentos.Historico'
      Size = 60
    end
    object dbPagarDoc: TStringField
      FieldName = 'Doc'
      Origin = 'dbo.Lancamentos.Doc'
    end
    object dbPagarValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'dbo.Lancamentos.Valor'
    end
    object dbPagarBancoID: TIntegerField
      FieldName = 'BancoID'
      Origin = 'dbo.Lancamentos.BancoID'
    end
    object dbPagarValorPago: TCurrencyField
      FieldName = 'ValorPago'
      Origin = 'dbo.Lancamentos.ValorPago'
    end
    object dbPagarPago: TBooleanField
      FieldName = 'Pago'
      Origin = 'dbo.Lancamentos.Pago'
    end
    object dbPagarStatus: TStringField
      FieldName = 'Status'
      Origin = 'dbo.Lancamentos.Status'
      Size = 1
    end
    object dbPagarFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'dbo.Lancamentos.Filial'
    end
    object dbPagarUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.Lancamentos.Usuario'
      Size = 10
    end
    object dbPagarPagoTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'PagoTexto'
      Size = 2
      Calculated = True
    end
    object dbPagarClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'CliFor'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 60
      Lookup = True
    end
    object dbPagarPrevisao: TIntegerField
      FieldName = 'Previsao'
      Origin = 'dbo.Lancamentos.Previsao'
    end
    object dbPagarSelecionado: TBooleanField
      FieldName = 'Selecionado'
      Origin = 'dbo.Lancamentos.Selecionado'
    end
    object dbPagarCheque: TStringField
      FieldName = 'Cheque'
      Origin = 'dbo.Lancamentos.Cheque'
    end
    object dbPagarMovBanco: TIntegerField
      FieldName = 'MovBanco'
      Origin = 'dbo.Lancamentos.MovBanco'
    end
    object dbPagarClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
      Origin = 'dbo.Lancamentos.ClienteDeb'
    end
    object dbPagarPrazo: TIntegerField
      FieldName = 'Prazo'
      Origin = 'dbo.Lancamentos.Prazo'
    end
    object dbPagarNF: TIntegerField
      FieldName = 'NF'
      Origin = 'dbo.Lancamentos.NF'
    end
    object dbPagarPorcentagem: TFloatField
      FieldName = 'Porcentagem'
      Origin = 'dbo.Lancamentos.Porcentagem'
      Precision = 5
    end
    object dbPagarUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Origin = 'dbo.Lancamentos.UsuarioI'
      Size = 10
    end
    object dbPagarContabilizado: TBooleanField
      FieldName = 'Contabilizado'
      Origin = 'dbo.Lancamentos.Contabilizado'
    end
    object dbPagarTributo: TBooleanField
      FieldName = 'Tributo'
      Origin = 'dbo.Lancamentos.Tributo'
    end
    object dbPagarTipoPag: TStringField
      FieldName = 'TipoPag'
      Origin = 'dbo.Lancamentos.TipoPag'
      Size = 1
    end
    object dbPagarFuncionario: TIntegerField
      FieldName = 'Funcionario'
      Origin = 'dbo.Lancamentos.Funcionario'
    end
    object dbPagarValorBruto: TCurrencyField
      FieldName = 'ValorBruto'
      Origin = 'dbo.Lancamentos.ValorBruto'
    end
    object dbPagarSelecionadoTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'SelecionadoTexto'
      Size = 3
      Calculated = True
    end
    object dbPagarDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
    end
    object dbPagarDataVencto: TDateTimeField
      FieldName = 'DataVencto'
    end
    object dbPagarDataPagto: TDateTimeField
      FieldName = 'DataPagto'
    end
    object dbPagarDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
    end
    object dbPagarDataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
    end
  end
  object dsPagar: TDataSource
    DataSet = dbPagar
    Left = 152
    Top = 415
  end
  object dbFilial: TMSTable
    TableName = 'dbo.Filiais'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Filial'
    Left = 180
    Top = 383
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
    Left = 189
    Top = 414
  end
  object dbCliente: TMSTable
    TableName = 'dbo.Clientes'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'CliFor'
    Left = 211
    Top = 383
    object dbClienteCliFor: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'CliFor'
      Origin = 'dbo.Clientes.CliFor'
      ReadOnly = True
    end
    object dbClienteNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Clientes.Nome'
      Size = 60
    end
    object dbClienteCGC: TStringField
      FieldName = 'CGC'
      Origin = 'dbo.Clientes.CGC'
      Size = 18
    end
  end
  object dsCliente: TDataSource
    DataSet = dbCliente
    Left = 211
    Top = 415
  end
  object dbPagChq: TMSTable
    TableName = 'dbo.Lancamentos'
    MasterFields = 'MovBanco'
    DetailFields = 'MovBanco'
    MasterSource = dsMovBanco
    Connection = frmMenu.dadosfin
    Filtered = True
    OnFilterRecord = dbPagChqFilterRecord
    Left = 278
    Top = 383
    object dbPagChqFilial: TIntegerField
      FieldName = 'Filial'
    end
    object dbPagChqLancamento: TAutoIncField
      FieldName = 'Lancamento'
      ReadOnly = True
    end
    object dbPagChqCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbPagChqCod1: TSmallintField
      FieldName = 'Cod1'
    end
    object dbPagChqCod2: TSmallintField
      FieldName = 'Cod2'
    end
    object dbPagChqCod3: TSmallintField
      FieldName = 'Cod3'
    end
    object dbPagChqHistorico: TStringField
      FieldName = 'Historico'
      Size = 60
    end
    object dbPagChqDoc: TStringField
      FieldName = 'Doc'
    end
    object dbPagChqValor: TCurrencyField
      FieldName = 'Valor'
    end
    object dbPagChqBancoID: TIntegerField
      FieldName = 'BancoID'
    end
    object dbPagChqValorPago: TCurrencyField
      FieldName = 'ValorPago'
    end
    object dbPagChqPago: TBooleanField
      FieldName = 'Pago'
    end
    object dbPagChqStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object dbPagChqUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object dbPagChqSelecionado: TBooleanField
      FieldName = 'Selecionado'
    end
    object dbPagChqCheque: TStringField
      FieldName = 'Cheque'
    end
    object dbPagChqClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
    end
    object dbPagChqPrazo: TIntegerField
      FieldName = 'Prazo'
    end
    object dbPagChqMovBanco: TIntegerField
      FieldName = 'MovBanco'
    end
    object dbPagChqNF: TIntegerField
      FieldName = 'NF'
    end
    object dbPagChqPorcentagem: TFloatField
      FieldName = 'Porcentagem'
    end
    object dbPagChqUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Size = 10
    end
    object dbPagChqTipoPag: TStringField
      FieldName = 'TipoPag'
      Size = 1
    end
    object dbPagChqValorBruto: TCurrencyField
      FieldName = 'ValorBruto'
    end
    object dbPagChqFuncionario: TIntegerField
      FieldName = 'Funcionario'
    end
    object dbPagChqDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
    end
    object dbPagChqDataVencto: TDateTimeField
      FieldName = 'DataVencto'
    end
    object dbPagChqDataPagto: TDateTimeField
      FieldName = 'DataPagto'
    end
    object dbPagChqDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
    end
    object dbPagChqDataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
    end
  end
  object dbMovBanco: TMSTable
    TableName = 'dbo.MovBanco'
    Connection = frmMenu.dadosfin
    Filtered = True
    AfterInsert = dbMovBancoAfterInsert
    BeforeEdit = dbMovBancoBeforeEdit
    BeforePost = dbMovBancoBeforePost
    AfterPost = dbMovBancoAfterPost
    AfterCancel = dbMovBancoAfterCancel
    BeforeDelete = dbMovBancoBeforeDelete
    OnCalcFields = dbMovBancoCalcFields
    OnFilterRecord = dbMovBancoFilterRecord
    Left = 120
    Top = 383
    object dbMovBancoMovBanco: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'MovBanco'
      Origin = 'dbo.MovBanco.MovBanco'
      ReadOnly = True
    end
    object dbMovBancoBancoID: TIntegerField
      FieldName = 'BancoID'
      Origin = 'dbo.MovBanco.BancoID'
    end
    object dbMovBancoTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'dbo.MovBanco.Tipo'
      Size = 1
    end
    object dbMovBancoDoc: TStringField
      FieldName = 'Doc'
      Origin = 'dbo.MovBanco.Doc'
    end
    object dbMovBancoValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'dbo.MovBanco.Valor'
    end
    object dbMovBancoFavorecido: TStringField
      FieldName = 'Favorecido'
      Origin = 'dbo.MovBanco.Favorecido'
      Size = 50
    end
    object dbMovBancoHistorico: TMemoField
      FieldName = 'Historico'
      Origin = 'dbo.MovBanco.Historico'
      BlobType = ftMemo
    end
    object dbMovBancoStatus: TStringField
      FieldName = 'Status'
      Origin = 'dbo.MovBanco.Status'
      Size = 1
    end
    object dbMovBancoFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'dbo.MovBanco.Filial'
    end
    object dbMovBancoUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.MovBanco.Usuario'
      Size = 10
    end
    object dbMovBancoBanco: TSmallintField
      FieldKind = fkLookup
      FieldName = 'Banco'
      LookupDataSet = dbBanco
      LookupKeyFields = 'BancoID'
      LookupResultField = 'Banco'
      KeyFields = 'BancoID'
      Lookup = True
    end
    object dbMovBancoAgencia: TStringField
      FieldKind = fkLookup
      FieldName = 'Agencia'
      LookupDataSet = dbBanco
      LookupKeyFields = 'BancoID'
      LookupResultField = 'Agencia'
      KeyFields = 'BancoID'
      Size = 10
      Lookup = True
    end
    object dbMovBancoConta: TStringField
      FieldKind = fkLookup
      FieldName = 'Conta'
      LookupDataSet = dbBanco
      LookupKeyFields = 'BancoID'
      LookupResultField = 'Conta'
      KeyFields = 'BancoID'
      Size = 15
      Lookup = True
    end
    object dbMovBancoTipoTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'TipoTexto'
      Size = 2
      Calculated = True
    end
    object dbMovBancoFundo: TIntegerField
      FieldName = 'Fundo'
      Origin = 'dbo.MovBanco.Fundo'
    end
    object dbMovBancoCruzado: TBooleanField
      FieldName = 'Cruzado'
      Origin = 'dbo.MovBanco.Cruzado'
    end
    object dbMovBancoFilialNome: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialNome'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Nome'
      KeyFields = 'Filial'
      Size = 40
      Lookup = True
    end
    object dbMovBancoUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Origin = 'dbo.MovBanco.UsuarioI'
      Size = 10
    end
    object dbMovBancoSelecionado: TBooleanField
      FieldName = 'Selecionado'
      Origin = 'dbo.MovBanco.Selecionado'
    end
    object dbMovBancoTipoPag: TStringField
      FieldName = 'TipoPag'
      Origin = 'dbo.MovBanco.TipoPag'
      Size = 1
    end
    object dbMovBancoAplicacao: TIntegerField
      FieldName = 'Aplicacao'
      Origin = 'dbo.MovBanco.Aplicacao'
    end
    object dbMovBancoDataEntrada: TDateTimeField
      FieldName = 'DataEntrada'
      Origin = 'dbo.MovBanco.DataEntrada'
    end
    object dbMovBancoDataMovimento: TDateTimeField
      FieldName = 'DataMovimento'
      Origin = 'dbo.MovBanco.DataMovimento'
    end
    object dbMovBancoDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'dbo.MovBanco.DataInclusao'
    end
    object dbMovBancoDataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
      Origin = 'dbo.MovBanco.DataAlteracao'
    end
  end
  object dbBanco: TMSTable
    TableName = 'dbo.CCorrente'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'BancoID'
    Left = 246
    Top = 384
    object dbBancoBancoID: TAutoIncField
      FieldName = 'BancoID'
      Origin = 'dbo.CCorrente.BancoID'
      ReadOnly = True
    end
    object dbBancoAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'dbo.CCorrente.Agencia'
      Size = 10
    end
    object dbBancoBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'dbo.CCorrente.Banco'
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
    object dbBancoUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.CCorrente.Usuario'
      Size = 10
    end
    object dbBancoStatus: TStringField
      FieldName = 'Status'
      Origin = 'dbo.CCorrente.Status'
      Size = 1
    end
    object dbBancoDataFechamento: TDateTimeField
      FieldName = 'DataFechamento'
      Origin = 'dbo.CCorrente.DataFechamento'
    end
    object dbBancoDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'dbo.CCorrente.DataInclusao'
    end
  end
  object dsMovBanco: TDataSource
    DataSet = dbMovBanco
    OnStateChange = dsMovBancoStateChange
    OnDataChange = dsMovBancoDataChange
    Left = 120
    Top = 416
  end
  object dsBanco: TDataSource
    DataSet = dbBanco
    Left = 246
    Top = 417
  end
  object qryCheque: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'Select * from Lancamentos'
      'where Selecionado=1')
    Left = 341
    Top = 383
    object qryChequeClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'CliFor'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 60
      Lookup = True
    end
    object qryChequeFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'DADOS."Lancamentos.DB".Filial'
    end
    object qryChequeLancamento: TIntegerField
      FieldName = 'Lancamento'
      Origin = 'DADOS."Lancamentos.DB".Lancamento'
    end
    object qryChequeCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'DADOS."Lancamentos.DB".Cliente'
    end
    object qryChequeClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
      Origin = 'DADOS."Lancamentos.DB".ClienteDeb'
    end
    object qryChequeDataEmissao: TDateField
      FieldName = 'DataEmissao'
      Origin = 'DADOS."Lancamentos.DB".DataEmissao'
    end
    object qryChequeDataVencto: TDateField
      FieldName = 'DataVencto'
      Origin = 'DADOS."Lancamentos.DB".DataVencto'
    end
    object qryChequePrazo: TIntegerField
      FieldName = 'Prazo'
      Origin = 'DADOS."Lancamentos.DB".Prazo'
    end
    object qryChequeCod1: TSmallintField
      FieldName = 'Cod1'
      Origin = 'DADOS."Lancamentos.DB".Cod1'
    end
    object qryChequeCod2: TSmallintField
      FieldName = 'Cod2'
      Origin = 'DADOS."Lancamentos.DB".Cod2'
    end
    object qryChequeCod3: TSmallintField
      FieldName = 'Cod3'
      Origin = 'DADOS."Lancamentos.DB".Cod3'
    end
    object qryChequeHistorico: TStringField
      FieldName = 'Historico'
      Origin = 'DADOS."Lancamentos.DB".Historico'
      Size = 60
    end
    object qryChequeDoc: TStringField
      FieldName = 'Doc'
      Origin = 'DADOS."Lancamentos.DB".Doc'
    end
    object qryChequeValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'DADOS."Lancamentos.DB".Valor'
    end
    object qryChequeBancoID: TIntegerField
      FieldName = 'BancoID'
      Origin = 'DADOS."Lancamentos.DB".BancoID'
    end
    object qryChequeCheque: TStringField
      FieldName = 'Cheque'
      Origin = 'DADOS."Lancamentos.DB".Cheque'
    end
    object qryChequeDataPagto: TDateField
      FieldName = 'DataPagto'
      Origin = 'DADOS."Lancamentos.DB".DataPagto'
    end
    object qryChequeValorPago: TCurrencyField
      FieldName = 'ValorPago'
      Origin = 'DADOS."Lancamentos.DB".ValorPago'
    end
    object qryChequePago: TBooleanField
      FieldName = 'Pago'
      Origin = 'DADOS."Lancamentos.DB".Pago'
    end
    object qryChequeSelecionado: TBooleanField
      FieldName = 'Selecionado'
      Origin = 'DADOS."Lancamentos.DB".Selecionado'
    end
    object qryChequeStatus: TStringField
      FieldName = 'Status'
      Origin = 'DADOS."Lancamentos.DB".Status'
      Size = 1
    end
    object qryChequePrevisao: TIntegerField
      FieldName = 'Previsao'
      Origin = 'DADOS."Lancamentos.DB".Previsao'
    end
    object qryChequeMovBanco: TIntegerField
      FieldName = 'MovBanco'
      Origin = 'DADOS."Lancamentos.DB".MovBanco'
    end
    object qryChequeNF: TIntegerField
      FieldName = 'NF'
      Origin = 'DADOS."Lancamentos.DB".NF'
    end
    object qryChequePorcentagem: TFloatField
      FieldName = 'Porcentagem'
      Origin = 'DADOS."Lancamentos.DB".Porcentagem'
    end
    object qryChequeDataInclusao: TDateField
      FieldName = 'DataInclusao'
      Origin = 'DADOS."Lancamentos.DB".DataInclusao'
    end
    object qryChequeUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DADOS."Lancamentos.DB".Usuario'
      Size = 10
    end
  end
  object dbPlanoC: TMSTable
    TableName = 'dbo.PlanoContas'
    Connection = frmMenu.dadosfin
    Filtered = True
    OnFilterRecord = dbPlanoCFilterRecord
    IndexFieldNames = 'Cod1;Cod2;Cod3'
    Left = 310
    Top = 383
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
      Size = 40
    end
  end
  object dsPlanoC: TDataSource
    DataSet = dbPlanoC
    Left = 310
    Top = 415
  end
  object dsPagChq: TDataSource
    DataSet = dbPagChq
    Left = 279
    Top = 415
  end
  object dbMovBanco1: TMSTable
    TableName = 'dbo.MovBanco'
    Connection = frmMenu.dadosfin
    Filtered = True
    IndexFieldNames = 'BancoID;Doc'
    Left = 372
    Top = 383
    object dbMovBanco1MovBanco: TAutoIncField
      FieldName = 'MovBanco'
      ReadOnly = True
    end
    object dbMovBanco1BancoID: TIntegerField
      FieldName = 'BancoID'
    end
    object dbMovBanco1Tipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object dbMovBanco1Doc: TStringField
      FieldName = 'Doc'
    end
    object dbMovBanco1Valor: TCurrencyField
      FieldName = 'Valor'
    end
    object dbMovBanco1Favorecido: TStringField
      FieldName = 'Favorecido'
      Size = 50
    end
    object dbMovBanco1Historico: TMemoField
      FieldName = 'Historico'
      BlobType = ftMemo
      Size = 10
    end
    object dbMovBanco1Status: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object dbMovBanco1Filial: TIntegerField
      FieldName = 'Filial'
    end
    object dbMovBanco1Usuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object dbMovBanco1UsuarioI: TStringField
      FieldName = 'UsuarioI'
      Size = 10
    end
    object dbMovBanco1TipoPag: TStringField
      FieldName = 'TipoPag'
      Size = 1
    end
    object dbMovBanco1DataEntrada: TDateTimeField
      FieldName = 'DataEntrada'
    end
    object dbMovBanco1DataMovimento: TDateTimeField
      FieldName = 'DataMovimento'
    end
    object dbMovBanco1DataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
    end
    object dbMovBanco1DataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
    end
  end
  object dsMovBanco1: TDataSource
    DataSet = dbMovBanco1
    OnStateChange = dsMovBancoStateChange
    OnDataChange = dsMovBancoDataChange
    Left = 371
    Top = 416
  end
  object dbFundos: TMSTable
    TableName = 'dbo.Fundos'
    MasterFields = 'BancoID'
    DetailFields = 'BancoID'
    MasterSource = dsBanco
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'BancoID;Fundo'
    Left = 401
    Top = 382
    object dbFundosBancoID: TIntegerField
      FieldName = 'BancoID'
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
    Left = 403
    Top = 415
  end
  object dbPagarNovo: TMSTable
    TableName = 'dbo.Lancamentos'
    Connection = frmMenu.dadosfin
    AfterInsert = dbPagarNovoAfterInsert
    BeforePost = dbPagarNovoBeforePost
    IndexFieldNames = 'DataVencto;Cliente'
    Left = 433
    Top = 383
    object dbPagarNovoFilial: TIntegerField
      FieldName = 'Filial'
    end
    object dbPagarNovoLancamento: TAutoIncField
      FieldName = 'Lancamento'
      ReadOnly = True
    end
    object dbPagarNovoCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbPagarNovoClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
    end
    object dbPagarNovoPrazo: TIntegerField
      FieldName = 'Prazo'
    end
    object dbPagarNovoCod1: TSmallintField
      FieldName = 'Cod1'
    end
    object dbPagarNovoCod2: TSmallintField
      FieldName = 'Cod2'
    end
    object dbPagarNovoCod3: TSmallintField
      FieldName = 'Cod3'
    end
    object dbPagarNovoHistorico: TStringField
      FieldName = 'Historico'
      Size = 60
    end
    object dbPagarNovoDoc: TStringField
      FieldName = 'Doc'
    end
    object dbPagarNovoValor: TCurrencyField
      FieldName = 'Valor'
    end
    object dbPagarNovoBancoID: TIntegerField
      FieldName = 'BancoID'
    end
    object dbPagarNovoCheque: TStringField
      FieldName = 'Cheque'
    end
    object dbPagarNovoValorPago: TCurrencyField
      FieldName = 'ValorPago'
    end
    object dbPagarNovoPago: TBooleanField
      FieldName = 'Pago'
    end
    object dbPagarNovoSelecionado: TBooleanField
      FieldName = 'Selecionado'
    end
    object dbPagarNovoStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object dbPagarNovoPrevisao: TIntegerField
      FieldName = 'Previsao'
    end
    object dbPagarNovoMovBanco: TIntegerField
      FieldName = 'MovBanco'
    end
    object dbPagarNovoNF: TIntegerField
      FieldName = 'NF'
    end
    object dbPagarNovoPorcentagem: TFloatField
      FieldName = 'Porcentagem'
    end
    object dbPagarNovoUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object dbPagarNovoUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Size = 10
    end
    object dbPagarNovoTipoPag: TStringField
      FieldName = 'TipoPag'
      Size = 1
    end
    object dbPagarNovoDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
    end
    object dbPagarNovoDataVencto: TDateTimeField
      FieldName = 'DataVencto'
    end
    object dbPagarNovoDataPagto: TDateTimeField
      FieldName = 'DataPagto'
    end
    object dbPagarNovoDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
    end
    object dbPagarNovoDataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
    end
  end
  object dsPagarNovo: TDataSource
    DataSet = dbPagarNovo
    Left = 435
    Top = 415
  end
  object dbFuncionario: TMSTable
    TableName = 'dbo.Funcionario'
    Connection = frmMenu.dadosfin
    Filtered = True
    OnFilterRecord = dbFuncionarioFilterRecord
    IndexFieldNames = 'Nome'
    Left = 467
    Top = 384
    object dbFuncionarioFuncionario: TIntegerField
      FieldName = 'Funcionario'
    end
    object dbFuncionarioNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object dbFuncionarioBanco: TSmallintField
      FieldName = 'Banco'
    end
    object dbFuncionarioAgencia: TStringField
      FieldName = 'Agencia'
      Size = 10
    end
    object dbFuncionarioConta: TStringField
      FieldName = 'Conta'
      Size = 10
    end
    object dbFuncionarioCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object dbFuncionarioSalarioBruto: TCurrencyField
      FieldName = 'SalarioBruto'
    end
    object dbFuncionarioCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbFuncionarioStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object dbFuncionarioDataFim: TDateTimeField
      FieldName = 'DataFim'
    end
    object dbFuncionarioFilial: TSmallintField
      FieldName = 'Filial'
    end
  end
  object dsFuncionario: TDataSource
    DataSet = dbFuncionario
    Left = 467
    Top = 416
  end
  object qryTotal: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'Select sum(valorpago) as valorpago from Lancamentos'
      'where Selecionado=1')
    Left = 499
    Top = 384
    object qryTotalvalorpago: TCurrencyField
      FieldName = 'valorpago'
      Origin = 'DADOS."Lancamentos.DB".ValorPago'
    end
  end
  object dsTotal: TDataSource
    DataSet = qryTotal
    Left = 499
    Top = 415
  end
end
