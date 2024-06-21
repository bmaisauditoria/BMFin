object frmCheque: TfrmCheque
  Left = 553
  Top = 222
  ActiveControl = cmbNome
  BorderStyle = bsSingle
  Caption = 'Emiss'#227'o de Cheques e Autoriza'#231#227'o de Pagamentos'
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
      'Movimento')
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
            FieldName = 'NumeroDoc'
            Title.Caption = 'NF/Recibo'
            Width = 100
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
        object grdPagar: TDBGrid
          Left = 0
          Top = 49
          Width = 1150
          Height = 328
          Align = alClient
          DataSource = dsPagar
          FixedColor = 16765864
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Arial Narrow'
          TitleFont.Style = []
          OnDrawColumnCell = grdPagarDrawColumnCell
          OnDblClick = grdPagarDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'SelecionadoTexto'
              Title.Caption = 'Pagar'
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Filial'
              Title.Alignment = taRightJustify
              Width = 60
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DataVencto'
              Title.Alignment = taCenter
              Title.Caption = 'Vencto'
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
              Width = 111
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Historico'
              Title.Caption = 'Hist'#243'rico'
              Width = 289
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Lancamento'
              Width = 87
              Visible = True
            end>
        end
        object Panel4: TPanel
          Left = 0
          Top = 16
          Width = 1150
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label3: TLabel
            Left = 11
            Top = 10
            Width = 106
            Height = 16
            Caption = 'Selecione a Filial '
          end
          object Label16: TLabel
            Left = 724
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
            Left = 978
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
        end
        object ListBox1: TListBox
          Left = 591
          Top = 108
          Width = 149
          Height = 120
          ItemHeight = 16
          TabOrder = 2
          Visible = False
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
              Width = 89
              Height = 16
              Caption = 'Conta Corrente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object label20: TLabel
              Left = 124
              Top = 50
              Width = 69
              Height = 16
              Caption = 'Documento'
              FocusControl = cmpDoc
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 171
              Top = 102
              Width = 83
              Height = 16
              Caption = 'Mov.Banc'#225'ria'
              FocusControl = cmpDoc
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
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
              Width = 50
              Height = 16
              Caption = 'Inclus'#227'o'
              FocusControl = cmpDoc
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label2: TLabel
              Left = 529
              Top = 52
              Width = 69
              Height = 16
              Caption = 'Favorecido'
              FocusControl = cmpFavorecido
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 485
              Top = 52
              Width = 32
              Height = 16
              Caption = 'Valor'
              FocusControl = cmpValor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label1: TLabel
              Left = 194
              Top = -27
              Width = 56
              Height = 13
              Caption = 'Vencimento'
            end
            object DBText3: TDBText
              Left = 268
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
              Left = 308
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
              Left = 362
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
              Width = 132
              Height = 16
              Caption = 'Banco/Ag'#234'ncia/Conta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
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
              Left = 529
              Top = 2
              Width = 85
              Height = 16
              Caption = 'Fundo destino'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label19: TLabel
              Left = 6
              Top = 52
              Width = 53
              Height = 16
              Caption = 'Emiss'#227'o'
              FocusControl = cmpDoc
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblDoc: TDBText
              Left = 124
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
            object Label17: TLabel
              Left = 247
              Top = 50
              Width = 66
              Height = 16
              Caption = 'NF/Recibo'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label18: TLabel
              Left = 469
              Top = 2
              Width = 28
              Height = 16
              Alignment = taRightJustify
              Caption = 'Filial'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBText9: TDBText
              Left = 460
              Top = 23
              Width = 37
              Height = 21
              Alignment = taRightJustify
              Color = clWhite
              DataField = 'Filial'
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
              Left = 124
              Top = 70
              Width = 116
              Height = 24
              DataField = 'Doc'
              DataSource = dsMovBanco
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
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
              Left = 396
              Top = 70
              Width = 117
              Height = 24
              DataField = 'Valor'
              DataSource = dsMovBanco
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object Panel10: TPanel
              Left = 402
              Top = 98
              Width = 136
              Height = 46
              BevelInner = bvSpace
              BevelOuter = bvNone
              BorderStyle = bsSingle
              TabOrder = 7
              object Label6: TLabel
                Left = 1
                Top = 1
                Width = 130
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
                Width = 130
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
              Height = 24
              Date = 36526.000000000000000000
              Time = 36526.000000000000000000
              Checked = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              DataField = 'DataEntrada'
              DataSource = dsMovBanco
            end
            object Panel6: TPanel
              Left = 801
              Top = 100
              Width = 155
              Height = 45
              BevelInner = bvSpace
              BevelOuter = bvNone
              BorderStyle = bsSingle
              TabOrder = 8
              object Label14: TLabel
                Left = 1
                Top = 1
                Width = 149
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
                Width = 149
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
            object cmpHistorico1: TDBMemo
              Left = 576
              Top = 70
              Width = 145
              Height = 26
              BevelInner = bvNone
              DataField = 'Historico'
              DataSource = dsMovBanco1
              ScrollBars = ssVertical
              TabOrder = 9
            end
            object cmpFavorecido: TDBEdit
              Left = 529
              Top = 70
              Width = 427
              Height = 24
              DataField = 'Favorecido'
              DataSource = dsMovBanco
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object DBLookupComboBox4: TDBLookupComboBox
              Left = 529
              Top = 20
              Width = 331
              Height = 24
              DataField = 'Fundo'
              DataSource = dsMovBanco
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              KeyField = 'Fundo'
              ListField = 'Nome'
              ListSource = dsFundos
              ParentFont = False
              TabOrder = 10
            end
            object chkCruzado: TDBCheckBox
              Left = 6
              Top = 121
              Width = 86
              Height = 21
              Caption = 'Cruzado'
              DataField = 'Cruzado'
              DataSource = dsMovBanco
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object Panel8: TPanel
              Left = 550
              Top = 100
              Width = 136
              Height = 45
              BevelInner = bvSpace
              BevelOuter = bvNone
              BorderStyle = bsSingle
              TabOrder = 11
              object Label4: TLabel
                Left = 1
                Top = 1
                Width = 130
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
                Width = 130
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
            object DBEdit1: TDBEdit
              Left = 246
              Top = 70
              Width = 143
              Height = 24
              CharCase = ecUpperCase
              DataField = 'NumeroDoc'
              DataSource = dsMovBanco
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
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
      Left = 266
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
      Left = 297
      Top = 2
      Width = 30
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
    object cmdNovo: TBitBtn
      Left = 10
      Top = 2
      Width = 31
      Height = 31
      Hint = 'Incluir novo cheque'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = cmdNovoClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000420B0000420B00000001000000010000CE630000FFD6
        AD00FFE7C600FFEFDE00FFEFE700FFF7EF0042B5F7008CD6F700B5DEF700FF00
        FF003184FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00090909090909
        090909090909090909090900000000000000000000000000000009000B0B0505
        0303030402020101010009000B0B0B050505030303020202010009000B0B0B0B
        0505050303040201010009000B0B0B0B0B0B050503030302010009000B0B0B0B
        0B0B0B0505030402010009000B0B0B0B0B0B0B0B050A0A0A010009000B0B0B0B
        0B0B0B0B0B0A060A010009000B0B0B0B0B0B0B0A0A0A060A0A0A09000B0B0B0B
        0B0B0B0A07080808070A09000B0B0B0B0B0B0B0A0A0A080A0A0A090000000000
        00000000000A080A000009090000000000000000000A0A0A0009090909090909
        0909090909090909090909090909090909090909090909090909}
    end
    object cmdNovoP: TBitBtn
      Left = 41
      Top = 2
      Width = 30
      Height = 31
      Hint = 'Incluir nova ordem de pagamento'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = cmdNovoPClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000420B0000420B00000001000000010000B5847300AD73
        8400B5848400B58C8400B5948C00D6BDB500C6C6C600EFD6C600CECECE00D6D6
        D600DEDEDE00E7E7E700EFEFEF0042B5F7008CD6F700B5DEF700F7F7F700FF00
        FF003184FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00111111111111
        1111111111111111111111111101020202020202020202020211111111011313
        1313131313131313021111111101131313131313131313130211111111011313
        1313131313131313021111111101131313131313131313130211111111011313
        1313131313131313021111111101131313131313131313130211111111011313
        13131313131313130211111112121210101010101010101002111111120D120C
        0C0C0C0C0C0C0C0C02111212120D1212120B0B0B0B0004030211120E0F0F0F0E
        120A0A0A0600131302111212120F1212120909090600130211111111120F1208
        0808080806000211111111111212120707070707050011111111}
    end
    object cmdAltera: TBitBtn
      Left = 71
      Top = 2
      Width = 31
      Height = 31
      Hint = 'Alterar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
      Left = 102
      Top = 2
      Width = 62
      Height = 31
      Hint = 'Gravar'
      Caption = 'Ok'
      Default = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
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
      Left = 164
      Top = 2
      Width = 30
      Height = 31
      Hint = 'Cancela Inclus'#227'o/Altera'#231#227'o'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
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
      Left = 194
      Top = 2
      Width = 31
      Height = 31
      Hint = 'Cancelar o cheque'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
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
      Left = 225
      Top = 2
      Width = 31
      Height = 31
      Hint = 'Apagar cheque cancelado e n'#227'o emitido'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
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
      Left = 337
      Top = 2
      Width = 31
      Height = 31
      Hint = 'Impress'#227'o de Cheques'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
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
      Left = 368
      Top = 2
      Width = 31
      Height = 31
      Hint = 'Relat'#243'rio de Cheques Emitidos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
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
    object cmdImp3: TBitBtn
      Left = 399
      Top = 2
      Width = 31
      Height = 31
      Hint = 'Autoriza'#231#227'o de Pagamento de GPS'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = cmdImp3Click
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
      Left = 430
      Top = 2
      Width = 30
      Height = 31
      Hint = 'Carta Autoriza'#231#227'o de Pagamento'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
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
      Left = 460
      Top = 2
      Width = 31
      Height = 31
      Hint = 'Rela'#231#227'o de Cheques Faltantes'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
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
      Left = 491
      Top = 2
      Width = 31
      Height = 31
      Hint = 'Relat'#243'rio de Cheques n'#227'o Compensados'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
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
      Left = 522
      Top = 2
      Width = 31
      Height = 31
      Hint = 'Relat'#243'rio de Cheques n'#227'o Compensados no Per'#237'odo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
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
      Left = 583
      Top = 2
      Width = 31
      Height = 31
      Hint = 'Relat'#243'rio de Cheques Pr'#233'-Datados'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
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
    object BitBtn1: TBitBtn
      Left = 552
      Top = 2
      Width = 31
      Height = 31
      Hint = 'Relat'#243'rio Pagamento Prestadores em Aberto'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
      OnClick = BitBtn1Click
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
    object BitBtn2: TBitBtn
      Left = 614
      Top = 2
      Width = 31
      Height = 31
      Hint = 'Pagamentos por Favorecido'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 17
      OnClick = BitBtn2Click
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
      FieldName = 'Lancamento'
      ReadOnly = True
    end
    object dbPagarCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbPagarCod1: TSmallintField
      FieldName = 'Cod1'
    end
    object dbPagarCod2: TSmallintField
      FieldName = 'Cod2'
    end
    object dbPagarCod3: TSmallintField
      FieldName = 'Cod3'
    end
    object dbPagarHistorico: TStringField
      FieldName = 'Historico'
      Size = 60
    end
    object dbPagarDoc: TStringField
      FieldName = 'Doc'
    end
    object dbPagarValor: TCurrencyField
      FieldName = 'Valor'
    end
    object dbPagarBancoID: TIntegerField
      FieldName = 'BancoID'
    end
    object dbPagarValorPago: TCurrencyField
      FieldName = 'ValorPago'
    end
    object dbPagarPago: TBooleanField
      FieldName = 'Pago'
    end
    object dbPagarStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object dbPagarFilial: TIntegerField
      FieldName = 'Filial'
    end
    object dbPagarUsuario: TStringField
      FieldName = 'Usuario'
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
    end
    object dbPagarSelecionado: TBooleanField
      FieldName = 'Selecionado'
    end
    object dbPagarCheque: TStringField
      FieldName = 'Cheque'
    end
    object dbPagarMovBanco: TIntegerField
      FieldName = 'MovBanco'
    end
    object dbPagarClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
    end
    object dbPagarPrazo: TIntegerField
      FieldName = 'Prazo'
    end
    object dbPagarNF: TIntegerField
      FieldName = 'NF'
    end
    object dbPagarPorcentagem: TFloatField
      FieldName = 'Porcentagem'
    end
    object dbPagarUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Size = 10
    end
    object dbPagarContabilizado: TBooleanField
      FieldName = 'Contabilizado'
    end
    object dbPagarTributo: TBooleanField
      FieldName = 'Tributo'
    end
    object dbPagarTipoPag: TStringField
      FieldName = 'TipoPag'
      Size = 1
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
    Left = 188
    Top = 383
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
    Left = 181
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
    object dbPagChqPrevisao: TIntegerField
      FieldName = 'Previsao'
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
      FieldName = 'MovBanco'
      ReadOnly = True
    end
    object dbMovBancoBancoID: TIntegerField
      FieldName = 'BancoID'
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
    end
    object dbMovBancoCruzado: TBooleanField
      FieldName = 'Cruzado'
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
      Size = 10
    end
    object dbMovBancoSelecionado: TBooleanField
      FieldName = 'Selecionado'
    end
    object dbMovBancoTipoPag: TStringField
      FieldName = 'TipoPag'
      Size = 1
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
    object dbMovBancoDataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
    end
    object dbMovBancoNumeroDoc: TStringField
      FieldName = 'NumeroDoc'
      FixedChar = True
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
      ReadOnly = True
    end
    object dbBancoAgencia: TStringField
      FieldName = 'Agencia'
      Size = 10
    end
    object dbBancoConta: TStringField
      FieldName = 'Conta'
      Size = 15
    end
    object dbBancoBanco: TSmallintField
      FieldName = 'Banco'
    end
    object dbBancoNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object dbBancoSigla: TStringField
      FieldName = 'Sigla'
      Size = 3
    end
    object dbBancoEndereco: TMemoField
      FieldName = 'Endereco'
      BlobType = ftMemo
      Size = 20
    end
    object dbBancoGerente: TStringField
      FieldName = 'Gerente'
      Size = 30
    end
    object dbBancoFone: TStringField
      FieldName = 'Fone'
      Size = 25
    end
    object dbBancoFax: TStringField
      FieldName = 'Fax'
      Size = 25
    end
    object dbBancoFilial: TSmallintField
      FieldName = 'Filial'
    end
    object dbBancoUltimoCheque: TIntegerField
      FieldName = 'UltimoCheque'
    end
    object dbBancoSaldoFechamento: TCurrencyField
      FieldName = 'SaldoFechamento'
    end
    object dbBancoUsuarioFechamento: TStringField
      FieldName = 'UsuarioFechamento'
      Size = 10
    end
    object dbBancoSaldoAtual: TCurrencyField
      FieldName = 'SaldoAtual'
    end
    object dbBancoUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object dbBancoStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object dbBancoDataFechamento: TDateTimeField
      FieldName = 'DataFechamento'
    end
    object dbBancoDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
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
      Origin = 'Lancamentos.Filial'
    end
    object qryChequeLancamento: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Lancamento'
      Origin = 'Lancamentos.Lancamento'
    end
    object qryChequeCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'Lancamentos.Cliente'
    end
    object qryChequeClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
      Origin = 'Lancamentos.ClienteDeb'
    end
    object qryChequePrazo: TIntegerField
      FieldName = 'Prazo'
      Origin = 'Lancamentos.Prazo'
    end
    object qryChequeCod1: TSmallintField
      FieldName = 'Cod1'
      Origin = 'Lancamentos.Cod1'
    end
    object qryChequeCod2: TSmallintField
      FieldName = 'Cod2'
      Origin = 'Lancamentos.Cod2'
    end
    object qryChequeCod3: TSmallintField
      FieldName = 'Cod3'
      Origin = 'Lancamentos.Cod3'
    end
    object qryChequeHistorico: TStringField
      FieldName = 'Historico'
      Origin = 'Lancamentos.Historico'
      Size = 60
    end
    object qryChequeDoc: TStringField
      FieldName = 'Doc'
      Origin = 'Lancamentos.Doc'
    end
    object qryChequeValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'Lancamentos.Valor'
    end
    object qryChequeBancoID: TIntegerField
      FieldName = 'BancoID'
      Origin = 'Lancamentos.BancoId'
    end
    object qryChequeCheque: TStringField
      FieldName = 'Cheque'
      Origin = 'Lancamentos.Cheque'
    end
    object qryChequeValorPago: TCurrencyField
      FieldName = 'ValorPago'
      Origin = 'Lancamentos.ValorPago'
    end
    object qryChequePago: TBooleanField
      FieldName = 'Pago'
      Origin = 'Lancamentos.Pago'
    end
    object qryChequeSelecionado: TBooleanField
      FieldName = 'Selecionado'
      Origin = 'Lancamentos.Selecionado'
    end
    object qryChequeStatus: TStringField
      FieldName = 'Status'
      Origin = 'Lancamentos.Status'
      Size = 1
    end
    object qryChequePrevisao: TIntegerField
      FieldName = 'Previsao'
      Origin = 'Lancamentos.Previsao'
    end
    object qryChequeMovBanco: TIntegerField
      FieldName = 'MovBanco'
      Origin = 'Lancamentos.MovBanco'
    end
    object qryChequeNF: TIntegerField
      FieldName = 'NF'
      Origin = 'Lancamentos.NF'
    end
    object qryChequePorcentagem: TFloatField
      FieldName = 'Porcentagem'
      Origin = 'Lancamentos.Porcentagem'
      Precision = 5
    end
    object qryChequeUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'Lancamentos.Usuario'
      Size = 10
    end
    object qryChequeDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
      Origin = 'Lancamentos.DataEmissao'
    end
    object qryChequeDataVencto: TDateTimeField
      FieldName = 'DataVencto'
      Origin = 'Lancamentos.DataVencto'
    end
    object qryChequeDataPagto: TDateTimeField
      FieldName = 'DataPagto'
      Origin = 'Lancamentos.DataPagto'
    end
    object qryChequeDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'Lancamentos.DataInclusao'
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
    object dbPagarNovoDataEmissao: TDateField
      FieldName = 'DataEmissao'
    end
    object dbPagarNovoDataVencto: TDateField
      FieldName = 'DataVencto'
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
    object dbPagarNovoDataPagto: TDateField
      FieldName = 'DataPagto'
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
    object dbPagarNovoDataInclusao: TDateField
      FieldName = 'DataInclusao'
    end
    object dbPagarNovoUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object dbPagarNovoUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Size = 10
    end
    object dbPagarNovoDataAlteracao: TDateField
      FieldName = 'DataAlteracao'
    end
    object dbPagarNovoTipoPag: TStringField
      FieldName = 'TipoPag'
      Size = 1
    end
  end
  object dsPagarNovo: TDataSource
    DataSet = dbPagarNovo
    Left = 435
    Top = 415
  end
  object qryTotal: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'Select sum(valorpago) as valorpago from Lancamentos'
      'where Selecionado=1')
    Left = 467
    Top = 384
    object qryTotalvalorpago: TCurrencyField
      FieldName = 'valorpago'
      Origin = 'DADOS."Lancamentos.DB".ValorPago'
    end
  end
  object dsTotal: TDataSource
    DataSet = qryTotal
    Left = 467
    Top = 415
  end
end
