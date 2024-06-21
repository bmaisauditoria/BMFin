object frmPrevPagRec: TfrmPrevPagRec
  Left = 482
  Top = 63
  Width = 1213
  Height = 782
  Caption = 'Previs'#227'o de Pagamentos e Recebimentos '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Bevel1: TBevel
    Left = 0
    Top = 33
    Width = 1195
    Height = 702
    Align = alClient
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1195
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
    object cmbFilial: TDBLookupComboBox
      Left = 118
      Top = 4
      Width = 572
      Height = 24
      KeyField = 'Filial'
      ListField = 'Nome'
      ListSource = dsFilial
      TabOrder = 0
      OnCloseUp = cmbFilialCloseUp
      OnKeyUp = cmbFilialKeyUp
    end
  end
  object pagPrevisao: TPageControl
    Left = 0
    Top = 33
    Width = 1195
    Height = 702
    ActivePage = tabLancamento
    Align = alClient
    TabOrder = 1
    OnChange = pagPrevisaoChange
    object tabLancamento: TTabSheet
      Caption = 'Lan'#231'amentos Previstos'
      object CoolBar1: TCoolBar
        Left = 0
        Top = 36
        Width = 1187
        Height = 30
        Bands = <
          item
            Control = cmbBusca
            ImageIndex = -1
            MinHeight = 24
            Width = 1183
          end
          item
            Control = cmbData
            ImageIndex = -1
            MinHeight = 24
            Width = 1183
          end
          item
            Control = cmbCli
            ImageIndex = -1
            MinHeight = 24
            Width = 1183
          end>
        object cmbBusca: TComboBox
          Left = 9
          Top = 0
          Width = 1170
          Height = 24
          ItemHeight = 16
          TabOrder = 0
          OnChange = cmbBuscaChange
        end
        object cmbData: TDateTimePicker
          Left = 9
          Top = 26
          Width = 1170
          Height = 24
          Date = 37851.940849733790000000
          Time = 37851.940849733790000000
          TabOrder = 1
          OnChange = cmbDataChange
        end
        object cmbCli: TDBLookupComboBox
          Left = 9
          Top = 52
          Width = 1170
          Height = 24
          KeyField = 'CliFor'
          ListField = 'Nome'
          ListSource = dsCliente
          TabOrder = 2
          OnCloseUp = cmbCliCloseUp
        end
      end
      object tabLan: TTabControl
        Left = 0
        Top = 66
        Width = 1187
        Height = 605
        Align = alClient
        TabOrder = 1
        Tabs.Strings = (
          'Lan'#231'amento'
          'Vencimento'
          'Cliente/Fornecedor'
          'Documento')
        TabIndex = 0
        OnChange = tabLanChange
        object Splitter1: TSplitter
          Left = 749
          Top = 120
          Height = 481
          Align = alRight
        end
        object Panel9: TPanel
          Left = 4
          Top = 120
          Width = 745
          Height = 481
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object grdPrevisao1: TDBGrid
            Left = 0
            Top = 0
            Width = 745
            Height = 481
            Align = alClient
            DataSource = dsPagar
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
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDrawColumnCell = grdPrevisao1DrawColumnCell
            OnKeyDown = grdPrevisao1KeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'Lancamento'
                Title.Alignment = taRightJustify
                Title.Caption = 'Lancto.'
                Width = 45
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'ClienteNome'
                Title.Alignment = taCenter
                Title.Caption = 'Cliente'
                Width = 233
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
                FieldName = 'Valor'
                Title.Alignment = taRightJustify
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
                FieldName = 'Doc'
                Title.Caption = 'Documento'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MovBanco'
                Title.Alignment = taRightJustify
                Title.Caption = 'Mov.Banco'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'StatusTexto'
                Title.Caption = 'Status'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Previsao'
                Title.Alignment = taRightJustify
                Title.Caption = 'Previs'#227'o'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Filial'
                Title.Alignment = taRightJustify
                Width = 50
                Visible = True
              end>
          end
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 745
            Height = 481
            Align = alClient
            BevelOuter = bvNone
            BorderWidth = 2
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -10
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnMouseMove = Panel1MouseMove
            object Label1: TLabel
              Left = 4
              Top = 92
              Width = 56
              Height = 13
              Caption = 'Vencimento'
            end
            object Label2: TLabel
              Left = 4
              Top = 142
              Width = 41
              Height = 13
              Caption = 'Hist'#243'rico'
              FocusControl = DBEdit2
            end
            object Label4: TLabel
              Left = 117
              Top = 92
              Width = 55
              Height = 13
              Caption = 'Documento'
              FocusControl = DBEdit3
            end
            object Label5: TLabel
              Left = 373
              Top = 92
              Width = 24
              Height = 13
              Caption = 'Valor'
              FocusControl = DBEdit4
            end
            object DBText1: TDBText
              Left = 194
              Top = 273
              Width = 93
              Height = 21
              Alignment = taRightJustify
              Color = clWhite
              DataField = 'Lancamento'
              DataSource = dsPagar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label7: TLabel
              Left = 194
              Top = 255
              Width = 59
              Height = 13
              Caption = 'Lan'#231'amento'
              FocusControl = DBEdit3
            end
            object DBText2: TDBText
              Left = 418
              Top = 273
              Width = 93
              Height = 21
              Alignment = taRightJustify
              Color = clWhite
              DataField = 'Previsao'
              DataSource = dsPagar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label11: TLabel
              Left = 418
              Top = 255
              Width = 41
              Height = 13
              Caption = 'Previs'#227'o'
              FocusControl = DBEdit3
            end
            object DBText3: TDBText
              Left = 2
              Top = 2
              Width = 741
              Height = 23
              Align = alTop
              Alignment = taCenter
              Color = 11468718
              DataField = 'ClienteNome'
              DataSource = dsPagar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -10
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label13: TLabel
              Left = 530
              Top = 255
              Width = 40
              Height = 13
              Caption = 'Inclus'#227'o'
              FocusControl = DBEdit3
            end
            object DBText4: TDBText
              Left = 530
              Top = 273
              Width = 93
              Height = 21
              Alignment = taRightJustify
              Color = clWhite
              DataField = 'DataInclusao'
              DataSource = dsPagar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label19: TLabel
              Left = 6
              Top = 202
              Width = 66
              Height = 26
              Alignment = taCenter
              Caption = 'Espec'#237'fico do Cliente'
              FocusControl = DBEdit3
              WordWrap = True
            end
            object Label23: TLabel
              Left = 4
              Top = 36
              Width = 70
              Height = 32
              Alignment = taCenter
              Caption = 'Cliente/ Fornecedor'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              WordWrap = True
              OnMouseMove = Label9MouseMove
            end
            object txtPago: TDBText
              Left = 2
              Top = 457
              Width = 741
              Height = 22
              Align = alBottom
              Alignment = taCenter
              Color = clBlue
              DataField = 'StatusTexto'
              DataSource = dsPagar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -10
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label24: TLabel
              Left = 306
              Top = 255
              Width = 55
              Height = 13
              Caption = 'Mov.Banco'
              FocusControl = DBEdit3
            end
            object DBText10: TDBText
              Left = 306
              Top = 273
              Width = 93
              Height = 21
              Alignment = taRightJustify
              Color = clWhite
              DataField = 'MovBanco'
              DataSource = dsPagar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object DBText6: TDBText
              Left = 494
              Top = 63
              Width = 49
              Height = 21
              Alignment = taRightJustify
              Color = clWhite
              DataField = 'Cliente'
              DataSource = dsPagar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object DBText11: TDBText
              Left = 494
              Top = 220
              Width = 49
              Height = 21
              Alignment = taRightJustify
              Color = clWhite
              DataField = 'ClienteDeb'
              DataSource = dsPagar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label28: TLabel
              Left = 4
              Top = 255
              Width = 174
              Height = 16
              AutoSize = False
              Caption = 'Tipo Pagto'
              Color = 11206642
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object cmpVencto: TDBDateTimePicker
              Left = 4
              Top = 111
              Width = 110
              Height = 21
              Date = 36526.000000000000000000
              Time = 36526.000000000000000000
              TabOrder = 1
              DataField = 'DataVencto'
              DataSource = dsPagar
            end
            object DBEdit2: TDBEdit
              Left = 4
              Top = 160
              Width = 533
              Height = 21
              DataField = 'Historico'
              DataSource = dsPagar
              TabOrder = 6
            end
            object DBEdit3: TDBEdit
              Left = 117
              Top = 111
              Width = 180
              Height = 21
              DataField = 'Doc'
              DataSource = dsPagar
              TabOrder = 2
            end
            object DBEdit4: TDBEdit
              Left = 304
              Top = 111
              Width = 98
              Height = 21
              DataField = 'Valor'
              DataSource = dsPagar
              TabOrder = 3
            end
            object pagCliente: TPageControl
              Left = 80
              Top = 31
              Width = 402
              Height = 56
              ActivePage = TabSheet1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -10
              Font.Name = 'Small Fonts'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnMouseMove = pagClienteMouseMove
              object TabSheet1: TTabSheet
                Caption = 'Cliente Nome'
                object DBLookupComboBox3: TDBLookupComboBox
                  Left = 4
                  Top = -1
                  Width = 385
                  Height = 24
                  DataField = 'Cliente'
                  DataSource = dsPagar
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  KeyField = 'CliFor'
                  ListField = 'Nome'
                  ListSource = dsCliente
                  NullValueKey = 46
                  ParentFont = False
                  TabOrder = 0
                end
              end
              object TabSheet3: TTabSheet
                Caption = 'CNPJ'
                ImageIndex = 1
                object DBLookupComboBox2: TDBLookupComboBox
                  Left = 4
                  Top = -1
                  Width = 385
                  Height = 24
                  DataField = 'Cliente'
                  DataSource = dsPagar
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  KeyField = 'CliFor'
                  ListField = 'CGC'
                  ListSource = dsCliente
                  NullValueKey = 46
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
            object PageControl1: TPageControl
              Left = 80
              Top = 191
              Width = 402
              Height = 56
              ActivePage = TabSheet7
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -10
              Font.Name = 'Small Fonts'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              object TabSheet4: TTabSheet
                Caption = 'Cliente Nome'
                object DBLookupComboBox6: TDBLookupComboBox
                  Left = 4
                  Top = -1
                  Width = 385
                  Height = 24
                  DataField = 'ClienteDeb'
                  DataSource = dsPagar
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  KeyField = 'CliFor'
                  ListField = 'Nome'
                  ListSource = dsClienteDeb
                  NullValueKey = 46
                  ParentFont = False
                  TabOrder = 0
                end
              end
              object TabSheet7: TTabSheet
                Caption = 'CNPJ'
                ImageIndex = 1
                object DBLookupComboBox7: TDBLookupComboBox
                  Left = 4
                  Top = -1
                  Width = 385
                  Height = 24
                  DataField = 'ClienteDeb'
                  DataSource = dsPagar
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  KeyField = 'CliFor'
                  ListField = 'CGC'
                  ListSource = dsClienteDeb
                  NullValueKey = 46
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
            object DBCheckBox1: TDBCheckBox
              Left = 406
              Top = 113
              Width = 69
              Height = 21
              Caption = 'Tributo'
              DataField = 'Tributo'
              DataSource = dsPagar
              TabOrder = 4
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object chkContabilizado: TDBCheckBox
              Left = 480
              Top = 113
              Width = 105
              Height = 21
              Caption = 'Contabilizado'
              Color = clRed
              DataField = 'Contabilizado'
              DataSource = dsPagar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -10
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 5
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object GroupBox2: TGroupBox
              Left = 1
              Top = 391
              Width = 624
              Height = 66
              Caption = 'Status'
              TabOrder = 9
              object Label25: TLabel
                Left = 10
                Top = 17
                Width = 40
                Height = 13
                Caption = 'Inclus'#227'o'
              end
              object DBText12: TDBText
                Left = 10
                Top = 36
                Width = 86
                Height = 21
                Alignment = taCenter
                Color = clWhite
                DataField = 'DataInclusao'
                DataSource = dsPagar
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label57: TLabel
                Left = 318
                Top = 17
                Width = 77
                Height = 13
                Caption = #218'ltima Altera'#231#227'o'
              end
              object DBText28: TDBText
                Left = 318
                Top = 36
                Width = 86
                Height = 21
                Alignment = taCenter
                Color = clWhite
                DataField = 'DataAlteracao'
                DataSource = dsPagar
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Panel12: TPanel
                Left = 113
                Top = 16
                Width = 136
                Height = 46
                BevelInner = bvSpace
                BevelOuter = bvNone
                BorderStyle = bsSingle
                TabOrder = 0
                object Label54: TLabel
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
                object DBText13: TDBText
                  Left = 1
                  Top = 17
                  Width = 130
                  Height = 24
                  Align = alClient
                  Alignment = taCenter
                  AutoSize = True
                  DataField = 'UsuarioI'
                  DataSource = dsPagar
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
              end
              object Panel13: TPanel
                Left = 422
                Top = 16
                Width = 136
                Height = 46
                BevelInner = bvSpace
                BevelOuter = bvNone
                BorderStyle = bsSingle
                TabOrder = 1
                object Label55: TLabel
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
                object DBText14: TDBText
                  Left = 1
                  Top = 17
                  Width = 130
                  Height = 24
                  Align = alClient
                  Alignment = taCenter
                  AutoSize = True
                  DataField = 'Usuario'
                  DataSource = dsPagar
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
              end
            end
            object DBComboBox1: TDBComboBox
              Left = 4
              Top = 271
              Width = 178
              Height = 21
              DataField = 'TipoPag'
              DataSource = dsPagar
              ItemHeight = 13
              Items.Strings = (
                'Fornecedores'
                'CLT'
                'Prestadores')
              TabOrder = 8
            end
            object pagFun: TPageControl
              Left = 5
              Top = 302
              Width = 621
              Height = 88
              ActivePage = TabSheet10
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -10
              Font.Name = 'Small Fonts'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
              object TabSheet10: TTabSheet
                Caption = 'CLT'
                object Label29: TLabel
                  Left = 9
                  Top = 2
                  Width = 51
                  Height = 12
                  Caption = 'Valor Bruto'
                  FocusControl = DBEdit8
                end
                object Label30: TLabel
                  Left = 122
                  Top = 2
                  Width = 55
                  Height = 12
                  Caption = 'Funcion'#225'rio'
                  FocusControl = DBEdit8
                end
                object DBText15: TDBText
                  Left = 513
                  Top = 22
                  Width = 49
                  Height = 21
                  Alignment = taRightJustify
                  Color = clWhite
                  DataField = 'Funcionario'
                  DataSource = dsPagar
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                end
                object DBEdit8: TDBEdit
                  Left = 9
                  Top = 17
                  Width = 98
                  Height = 21
                  DataField = 'ValorBruto'
                  DataSource = dsPagar
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -10
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object DBLookupComboBox1: TDBLookupComboBox
                  Left = 122
                  Top = 17
                  Width = 385
                  Height = 24
                  DataField = 'Funcionario'
                  DataSource = dsPagar
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  KeyField = 'Funcionario'
                  ListField = 'Nome'
                  ListSource = dsFuncionario
                  NullValueKey = 46
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object TabSheet11: TTabSheet
                Caption = 'Prestadores'
                ImageIndex = 1
                object Label31: TLabel
                  Left = 9
                  Top = 2
                  Width = 44
                  Height = 12
                  Caption = 'PagtoPre'
                end
                object DBText16: TDBText
                  Left = 10
                  Top = 22
                  Width = 69
                  Height = 21
                  Alignment = taRightJustify
                  Color = clWhite
                  DataField = 'PagtoPre'
                  DataSource = dsPagar
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                end
                object DBText17: TDBText
                  Left = 87
                  Top = 22
                  Width = 42
                  Height = 21
                  Alignment = taRightJustify
                  Color = clWhite
                  DataField = 'TipoAud'
                  DataSource = dsPagar
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                end
                object Label33: TLabel
                  Left = 87
                  Top = 4
                  Width = 20
                  Height = 12
                  Caption = 'Tipo'
                end
                object DBText18: TDBText
                  Left = 139
                  Top = 22
                  Width = 423
                  Height = 21
                  Color = clWhite
                  DataField = 'AuditorNome'
                  DataSource = dsPagar
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                end
                object Label32: TLabel
                  Left = 142
                  Top = 4
                  Width = 33
                  Height = 12
                  Caption = 'Auditor'
                end
              end
            end
          end
        end
        object Panel2: TPanel
          Left = 752
          Top = 120
          Width = 431
          Height = 481
          Align = alRight
          Caption = 'Panel2'
          TabOrder = 0
          object Label12: TLabel
            Left = 1
            Top = 1
            Width = 429
            Height = 16
            Align = alTop
            Alignment = taCenter
            Caption = 'Plano de Contas'
            Color = 11206642
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Outline1: TOutline
            Left = 1
            Top = 17
            Width = 429
            Height = 463
            ItemHeight = 16
            Align = alClient
            TabOrder = 0
            OnClick = Outline1Click
            ItemSeparator = '\'
          end
        end
        object Panel3: TPanel
          Left = 4
          Top = 89
          Width = 1179
          Height = 31
          Align = alTop
          BevelInner = bvLowered
          BevelOuter = bvNone
          Caption = ' '
          TabOrder = 2
          object Label6: TLabel
            Left = 23
            Top = 7
            Width = 207
            Height = 16
            Caption = 'Visualizando apenas Pagtos::'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object chkFor: TRadioButton
            Left = 240
            Top = 5
            Width = 139
            Height = 21
            Caption = 'Fornecedores'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            OnClick = chkPreClick
          end
          object chkCLT: TRadioButton
            Left = 465
            Top = 5
            Width = 152
            Height = 21
            Caption = 'CLT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = chkPreClick
          end
          object chkPre: TRadioButton
            Left = 690
            Top = 5
            Width = 120
            Height = 21
            Caption = 'Prestadores'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = chkPreClick
          end
          object chkTodos1: TRadioButton
            Left = 917
            Top = 5
            Width = 100
            Height = 21
            Caption = 'Todos'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            TabStop = True
            OnClick = chkPreClick
          end
        end
        object Panel10: TPanel
          Left = 4
          Top = 27
          Width = 1179
          Height = 31
          Align = alTop
          BevelInner = bvLowered
          BevelOuter = bvNone
          Caption = ' '
          TabOrder = 3
          object Label26: TLabel
            Left = 23
            Top = 7
            Width = 150
            Height = 16
            Caption = 'Visualizando apenas:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object chkPagoAberto: TRadioButton
            Left = 620
            Top = 5
            Width = 100
            Height = 21
            Caption = 'Todos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = chkPreClick
          end
          object chkAberto: TRadioButton
            Left = 347
            Top = 5
            Width = 151
            Height = 21
            Caption = 'Em aberto'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            TabStop = True
            OnClick = chkPreClick
          end
        end
        object Panel16: TPanel
          Left = 4
          Top = 58
          Width = 1179
          Height = 31
          Align = alTop
          BevelInner = bvLowered
          BevelOuter = bvNone
          Caption = ' '
          TabOrder = 4
          object Label27: TLabel
            Left = 23
            Top = 7
            Width = 150
            Height = 16
            Caption = 'Visualizando apenas:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object chkPag: TRadioButton
            Left = 240
            Top = 5
            Width = 139
            Height = 21
            Caption = 'Contas a pagar'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            OnClick = chkPreClick
          end
          object chkRec: TRadioButton
            Left = 457
            Top = 5
            Width = 151
            Height = 21
            Caption = 'Contas a receber'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = chkPreClick
          end
          object chkTodos: TRadioButton
            Left = 730
            Top = 5
            Width = 100
            Height = 21
            Caption = 'Todos'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            TabStop = True
            OnClick = chkPreClick
          end
        end
      end
      object Panel18: TPanel
        Left = 0
        Top = 0
        Width = 1187
        Height = 36
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 2
        object cmdFicha: TSpeedButton
          Left = 204
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
          Left = 235
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
        object Panel24: TPanel
          Left = 1039
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = cmdNovoClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
            83B78183B78183FF00FFFF00FFFF00FFC7A79CFEEED4F7E3C5F6DFBCF5DBB4F3
            D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FFFF00FF
            C7A79EFDEFD9F6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
            97F3D199B78183FF00FFFF00FFFF00FFC7A9A1FEF3E3F8E7D3F5E3CBF5DFC3F3
            DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
            C9ACA5FFF7EBF9EBDAF7E7D2F6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
            99F3D198B78183FF00FFFF00FFFF00FFCEB2AAFFFCF4FAEFE4F8EADAF7E7D3F5
            E2CBF5DFC2F4DBBBF1D7B2F1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
            D3B7AFFFFFFDFBF4ECFAEFE3F9EBDAF7E7D2F5E3C9F5DFC2F4DBBAF2D7B1F0D4
            A9F5D5A3B78183FF00FFFF00FFFF00FFD7BBB2FFFFFFFEF9F5FBF3ECFAEFE2F9
            EADAF8E7D2F5E3CAF5DEC2F4DBBAF2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
            DABEB3FFFFFFFFFEFDFDF8F4FBF3ECF9EFE3F8EADAF7E7D2F6E2CAF6DEC1F4DB
            B9F8DDB4B78183FF00FFFF00FFFF00FFDEC1B5FFFFFFFFFFFFFFFEFDFEF9F4FB
            F3EBFAEFE2F9EBD9F8E6D1F6E2C8F7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
            E2C5B5FFFFFFFFFFFFFFFFFFFFFEFDFDF9F4FBF3EBFAEEE2FAEDDCFCEFD9E6D9
            C4C6BCA9B78183FF00FFFF00FFFF00FFE5C7B7FFFFFFFFFFFFFFFFFFFFFFFFFF
            FEFDFDF8F3FDF6ECF1E1D5C6A194B59489B08F81B78183FF00FFFF00FFFF00FF
            E9CBB8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9BF8C76E8B2
            70ECA54AC58768FF00FFFF00FFFF00FFECCDBAFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFE4D4D2C89A7FFAC577CD9377FF00FFFF00FFFF00FFFF00FF
            EACAB6FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEC7977CCF9B
            86FF00FFFF00FFFF00FFFF00FFFF00FFE9C6B1EBCCB8EBCCB8EBCCB8EBCBB8EA
            CBB8EACBB8EACCB9DABBB0B8857AFF00FFFF00FFFF00FFFF00FF}
        end
        object cmdAltera: TBitBtn
          Left = 41
          Top = 2
          Width = 30
          Height = 31
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
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
        object cmdCancela: TBitBtn
          Left = 133
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
          Left = 164
          Top = 2
          Width = 30
          Height = 31
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = cmdExcluiClick
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
          Left = 276
          Top = 2
          Width = 30
          Height = 31
          Hint = 'Lan'#231'amentos por Data'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
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
        object cmdImpPC: TBitBtn
          Left = 306
          Top = 2
          Width = 31
          Height = 31
          Hint = 'Relat'#243'rio Gerencial'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = cmdImpPCClick
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
        object cmdImpPCCli: TBitBtn
          Left = 337
          Top = 2
          Width = 31
          Height = 31
          Hint = 'Relat'#243'rio Gerencial por Cliente'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = cmdImpPCCliClick
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
        object cmdImpFolhaME: TBitBtn
          Left = 368
          Top = 2
          Width = 31
          Height = 31
          Hint = 'Movimenta'#231#227'o - Plano de Contas - Folha M'#233'dicos e Enfermeiros'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnClick = cmdImpFolhaMEClick
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
        object cmdImpSocio: TBitBtn
          Left = 399
          Top = 2
          Width = 31
          Height = 31
          Hint = 'Distribui'#231#227'o dos Socios'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnClick = cmdImpSocioClick
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
        object cmdImpTributo: TBitBtn
          Left = 430
          Top = 2
          Width = 30
          Height = 31
          Hint = 'Relatorio de Tributos'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnClick = cmdImpTributoClick
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
        object cmdGrava: TBitBtn
          Left = 71
          Top = 2
          Width = 62
          Height = 31
          Caption = 'Ok'
          Default = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
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
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Previs'#245'es Peri'#243'dicas'
      ImageIndex = 1
      object CoolBar2: TCoolBar
        Left = 0
        Top = 36
        Width = 1187
        Height = 30
        Bands = <
          item
            Control = cmbBusca1
            ImageIndex = -1
            MinHeight = 24
            Width = 1183
          end
          item
            Control = cmbCliente1
            ImageIndex = -1
            MinHeight = 21
            Width = 1183
          end>
        object cmbBusca1: TComboBox
          Left = 9
          Top = 0
          Width = 1170
          Height = 24
          ItemHeight = 16
          TabOrder = 0
          OnChange = cmbBusca1Change
        end
        object cmbCliente1: TDBLookupComboBox
          Left = 9
          Top = 26
          Width = 1170
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'CliFor'
          ListField = 'Nome'
          ListSource = dsCliente
          NullValueKey = 46
          ParentFont = False
          TabOrder = 1
          OnCloseUp = cmbCliente1CloseUp
        end
      end
      object tabPrev: TTabControl
        Left = 0
        Top = 66
        Width = 1187
        Height = 605
        Align = alClient
        TabOrder = 1
        Tabs.Strings = (
          'Previs'#227'o'
          'Cliente/Fornecedor')
        TabIndex = 0
        OnChange = tabPrevChange
        object Panel8: TPanel
          Left = 4
          Top = 27
          Width = 1179
          Height = 574
          Align = alClient
          TabOrder = 0
          object Label8: TLabel
            Left = 1
            Top = 300
            Width = 1177
            Height = 16
            Align = alTop
            Alignment = taCenter
            Caption = 'Lan'#231'amentos'
            Color = 11206642
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Panel7: TPanel
            Left = 1
            Top = 1
            Width = 1177
            Height = 299
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Splitter2: TSplitter
              Left = 742
              Top = 0
              Width = 4
              Height = 299
              Align = alRight
            end
            object grdPrev: TDBGrid
              Left = 0
              Top = 0
              Width = 742
              Height = 299
              Align = alClient
              DataSource = dsPrevisao
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
              OnDrawColumnCell = grdPrevDrawColumnCell
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Previsao'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Previs'#227'o'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ClienteNome'
                  Title.Caption = 'Cliente'
                  Width = 280
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Historico'
                  Title.Caption = 'Hist'#243'rico'
                  Width = 230
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Valor'
                  Title.Alignment = taRightJustify
                  Width = 70
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'DataIni'
                  Title.Alignment = taCenter
                  Title.Caption = 'In'#237'cio'
                  Width = 70
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'DataFim'
                  Title.Alignment = taCenter
                  Title.Caption = 'Fim'
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TipoNome'
                  Title.Caption = 'Frequ'#234'ncia'
                  Width = 120
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Dia'
                  Width = 38
                  Visible = True
                end>
            end
            object pnlPrev: TPanel
              Left = 0
              Top = 0
              Width = 742
              Height = 299
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              OnMouseMove = pnlPrevMouseMove
              object Label16: TLabel
                Left = 79
                Top = 84
                Width = 32
                Height = 16
                Caption = 'Valor'
                FocusControl = DBEdit5
              end
              object Label17: TLabel
                Left = 113
                Top = 84
                Width = 53
                Height = 16
                Caption = 'Hist'#243'rico'
                FocusControl = DBEdit6
              end
              object DBText5: TDBText
                Left = 0
                Top = 0
                Width = 742
                Height = 22
                Align = alTop
                Alignment = taCenter
                Color = 11468718
                DataField = 'ClienteNome'
                DataSource = dsPrevisao
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -10
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label18: TLabel
                Left = 516
                Top = 30
                Width = 54
                Height = 16
                Caption = 'Previs'#227'o'
                FocusControl = DBEdit3
              end
              object Label20: TLabel
                Left = 224
                Top = 132
                Width = 66
                Height = 16
                Caption = 'Data Inicial'
              end
              object Label22: TLabel
                Left = 11
                Top = 201
                Width = 66
                Height = 32
                Alignment = taCenter
                Caption = 'Espec'#237'fico do Cliente'
                FocusControl = DBEdit3
                WordWrap = True
              end
              object DBText7: TDBText
                Left = 490
                Top = 54
                Width = 80
                Height = 21
                Alignment = taRightJustify
                Color = clWhite
                DataField = 'Previsao'
                DataSource = dsPrevisao
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label9: TLabel
                Left = 11
                Top = 36
                Width = 70
                Height = 32
                Alignment = taCenter
                Caption = 'Cliente/ Fornecedor'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsUnderline]
                ParentFont = False
                WordWrap = True
                OnMouseMove = Label9MouseMove
              end
              object GroupBox1: TGroupBox
                Left = 342
                Top = 128
                Width = 235
                Height = 55
                Caption = 'Data Final'
                TabOrder = 6
                object Label14: TLabel
                  Left = 106
                  Top = 25
                  Width = 10
                  Height = 16
                  Caption = 'X'
                  FocusControl = DBEdit1
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label21: TLabel
                  Left = 7
                  Top = 25
                  Width = 54
                  Height = 16
                  Caption = 'Repetir +'
                end
                object cmpDataFim: TDBDateTimePicker
                  Left = 121
                  Top = 20
                  Width = 110
                  Height = 24
                  Date = 0.724925578702823300
                  Time = 0.724925578702823300
                  TabOrder = 1
                  DataField = 'DataFim'
                  DataSource = dsPrevisao
                end
                object DBEdit1: TDBEdit
                  Left = 64
                  Top = 20
                  Width = 38
                  Height = 24
                  DataField = 'Repetir'
                  DataSource = dsPrevisao
                  TabOrder = 0
                  OnExit = DBEdit1Exit
                end
              end
              object DBRadioGroup1: TDBRadioGroup
                Left = 11
                Top = 128
                Width = 207
                Height = 55
                Caption = 'Selecione'
                DataField = 'Tipo'
                DataSource = dsPrevisao
                Items.Strings = (
                  'Repetir todo dia'
                  'Repetir a cada dias')
                TabOrder = 3
                Values.Strings = (
                  'D'
                  'N')
              end
              object pagCliente1: TPageControl
                Left = 82
                Top = 23
                Width = 403
                Height = 57
                ActivePage = TabSheet6
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -10
                Font.Name = 'Small Fonts'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnMouseMove = pagCliente1MouseMove
                object TabSheet5: TTabSheet
                  Caption = 'Cliente Nome'
                  object DBLookupComboBox4: TDBLookupComboBox
                    Left = 4
                    Top = -1
                    Width = 385
                    Height = 24
                    DataField = 'Cliente'
                    DataSource = dsPrevisao
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -15
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    KeyField = 'CliFor'
                    ListField = 'Nome'
                    ListSource = dsCliente
                    NullValueKey = 46
                    ParentFont = False
                    TabOrder = 0
                  end
                end
                object TabSheet6: TTabSheet
                  Caption = 'CNPJ'
                  ImageIndex = 1
                  object DBLookupComboBox5: TDBLookupComboBox
                    Left = 4
                    Top = -1
                    Width = 385
                    Height = 24
                    DataField = 'Cliente'
                    DataSource = dsPrevisao
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -15
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    KeyField = 'CliFor'
                    ListField = 'CGC'
                    ListSource = dsCliente
                    NullValueKey = 46
                    ParentFont = False
                    TabOrder = 0
                  end
                end
              end
              object DBEdit5: TDBEdit
                Left = 10
                Top = 102
                Width = 98
                Height = 24
                DataField = 'Valor'
                DataSource = dsPrevisao
                TabOrder = 1
              end
              object DBEdit6: TDBEdit
                Left = 113
                Top = 102
                Width = 461
                Height = 24
                DataField = 'Historico'
                DataSource = dsPrevisao
                TabOrder = 2
              end
              object DBDateTimePicker1: TDBDateTimePicker
                Left = 224
                Top = 150
                Width = 111
                Height = 24
                Date = 0.724925578702823300
                Time = 0.724925578702823300
                TabOrder = 5
                DataField = 'DataIni'
                DataSource = dsPrevisao
              end
              object DBEdit7: TDBEdit
                Left = 165
                Top = 150
                Width = 42
                Height = 24
                DataField = 'Dia'
                DataSource = dsPrevisao
                TabOrder = 4
                OnExit = DBEdit7Exit
              end
              object Panel6: TPanel
                Left = 187
                Top = 250
                Width = 135
                Height = 45
                BevelInner = bvSpace
                BevelOuter = bvNone
                BorderStyle = bsSingle
                TabOrder = 7
                object Label15: TLabel
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
                object DBText8: TDBText
                  Left = 1
                  Top = 17
                  Width = 129
                  Height = 23
                  Align = alClient
                  Alignment = taCenter
                  DataField = 'Usuario'
                  DataSource = dsPrevisao
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
              end
              object Panel11: TPanel
                Left = 11
                Top = 250
                Width = 135
                Height = 45
                BevelInner = bvSpace
                BevelOuter = bvNone
                BorderStyle = bsSingle
                TabOrder = 8
                object lblStatus: TLabel
                  Left = 1
                  Top = 1
                  Width = 129
                  Height = 16
                  Align = alTop
                  Alignment = taCenter
                  Caption = 'Status'
                  Color = clRed
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHighlightText
                  Font.Height = -15
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                end
                object DBText9: TDBText
                  Left = 1
                  Top = 17
                  Width = 129
                  Height = 23
                  Align = alClient
                  Alignment = taCenter
                  DataField = 'AtivoTexto'
                  DataSource = dsPrevisao
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
              end
              object PageControl4: TPageControl
                Left = 82
                Top = 188
                Width = 403
                Height = 57
                ActivePage = TabSheet8
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -10
                Font.Name = 'Small Fonts'
                Font.Style = []
                ParentFont = False
                TabOrder = 9
                object TabSheet8: TTabSheet
                  Caption = 'Cliente Nome'
                  object DBLookupComboBox8: TDBLookupComboBox
                    Left = 4
                    Top = -1
                    Width = 385
                    Height = 24
                    DataField = 'ClienteDeb'
                    DataSource = dsPrevisao
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -15
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    KeyField = 'CliFor'
                    ListField = 'Nome'
                    ListSource = dsClienteDeb
                    NullValueKey = 46
                    ParentFont = False
                    TabOrder = 0
                  end
                end
                object TabSheet9: TTabSheet
                  Caption = 'CNPJ'
                  ImageIndex = 1
                  object DBLookupComboBox9: TDBLookupComboBox
                    Left = 4
                    Top = -1
                    Width = 385
                    Height = 24
                    DataField = 'ClienteDeb'
                    DataSource = dsPrevisao
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -15
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    KeyField = 'CliFor'
                    ListField = 'CGC'
                    ListSource = dsClienteDeb
                    NullValueKey = 46
                    ParentFont = False
                    TabOrder = 0
                  end
                end
              end
            end
            object Panel5: TPanel
              Left = 746
              Top = 0
              Width = 431
              Height = 299
              Align = alRight
              Caption = 'Panel5'
              TabOrder = 2
              object Label10: TLabel
                Left = 1
                Top = 1
                Width = 429
                Height = 16
                Align = alTop
                Alignment = taCenter
                Caption = 'Plano de Contas'
                Color = 11206642
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Outline2: TOutline
                Left = 1
                Top = 17
                Width = 429
                Height = 281
                ItemHeight = 16
                Align = alClient
                TabOrder = 0
                OnClick = Outline2Click
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
          object grdPagPrev: TDBGrid
            Left = 1
            Top = 316
            Width = 1177
            Height = 257
            Align = alClient
            DataSource = dsPagPrev
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
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDrawColumnCell = grdPagPrevDrawColumnCell
            OnDblClick = grdPagPrevDblClick
            OnKeyDown = grdPagPrevKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'Lancamento'
                Title.Alignment = taRightJustify
                Title.Caption = 'Lancto.'
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MovBanco'
                Title.Alignment = taRightJustify
                Title.Caption = 'Mov.Banco'
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
                FieldName = 'Historico'
                Title.Caption = 'Hist'#243'rico'
                Width = 300
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
                FieldName = 'StatusTexto'
                Title.Caption = 'Status'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Doc'
                Title.Caption = 'Documento'
                Width = 114
                Visible = True
              end>
          end
        end
      end
      object Panel14: TPanel
        Left = 0
        Top = 0
        Width = 1187
        Height = 36
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 2
        object cmdFichaP: TSpeedButton
          Left = 235
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
          OnClick = cmdFichaPClick
        end
        object cmdListaP: TSpeedButton
          Left = 266
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
          OnClick = cmdListaPClick
        end
        object Panel15: TPanel
          Left = 1039
          Top = 1
          Width = 147
          Height = 34
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object BitBtn1: TBitBtn
            Left = 55
            Top = 2
            Width = 37
            Height = 31
            Hint = 'Cliente Anterior'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = BitBtn1Click
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
          object BitBtn2: TBitBtn
            Left = 98
            Top = 2
            Width = 37
            Height = 31
            Hint = 'Pr'#243'ximo Cliente'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = BitBtn2Click
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
        object cmdNovoP: TBitBtn
          Left = 10
          Top = 2
          Width = 31
          Height = 31
          Hint = 'Incluir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = cmdNovoPClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000220B0000220B00000001000000010000EFA54A00C684
            6B00BD8C7300CE947300EFB57300FFC67300BD847B00C6947B00CE9C7B00B584
            8400B58C8400CE9C8400B5948C00C6A59400EFCE9400F7CE9400C6A59C00EFCE
            9C00F7CE9C00F7D69C00C6ADA500CEADA500F7D6A500CEB5AD00D6B5AD00C6BD
            AD00F7D6AD00F7DEAD00D6BDB500DEBDB500DEC6B500E7C6B500EFC6B500EFCE
            B500F7D6B500F7DEB500FFDEB500EFCEBD00F7DEBD00E7DEC600F7DEC600F7E7
            C600E7CECE00E7D6CE00F7E7CE00E7D6D600F7E7D600FFE7D600FFEFD600FFEF
            DE00FFEFE700FFF7E700FFF7EF00FFF7F700FFFFF700FF00FF00FFFFFF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00373709090909
            09090909090909090937373710302926231A16110E0E0E130937373710302C28
            26221611110E0E110937373714322E2C2826221A11110E110937373714332E2C
            292823221A11110E093737371736322E2E2C2826221A11110937373718383432
            2E2C2928261A1616093737371C383534312E2C292826221A093737371C383835
            34322E2C28262323093737371D3838383532312E2C282822093737371E383838
            3835323131302719093737371F383838383834342E0D0C0A093737371F383838
            383838362A0204000137373725383838383838382B070503373737371F353434
            343434342A070B37373737371F212121211F1F211C0637373737}
        end
        object cmdAlteraP: TBitBtn
          Left = 41
          Top = 2
          Width = 30
          Height = 31
          Hint = 'Alterar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = cmdAlteraPClick
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
        object cmdGravaP: TBitBtn
          Left = 71
          Top = 2
          Width = 62
          Height = 31
          Hint = 'Gravar'
          Caption = 'Ok'
          Default = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = cmdGravaPClick
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
        object cmdCancelaP: TBitBtn
          Left = 133
          Top = 2
          Width = 31
          Height = 31
          Hint = 'Cancela Inclus'#227'o/Altera'#231#227'o'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = cmdCancelaPClick
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
        object cmdExcluiP: TBitBtn
          Left = 164
          Top = 2
          Width = 30
          Height = 31
          Hint = 'Excluir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = cmdExcluiPClick
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
        object cmdRepetir: TBitBtn
          Left = 194
          Top = 2
          Width = 31
          Height = 31
          Hint = 'Gera Previs'#245'es'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = cmdRepetirClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            262FA31D20B5FF00FF4B4B4B5B5B5B87817B87817BFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF82776F5F61BC2126B2666059A3A3A4FAFAFAE3
            E0DCD1CEC99A979582807E7874715D5A58FF00FFFF00FFFF00FFFF00FFA89381
            7B75C42024B2BA9775A3A3A4FFFFFFFFFFFFFFFFFDD6D0CAC8C0B8F6EBDDEDE0
            D1A59B916B6864FF00FFFF00FFA893817873C32024B2B99B7EA3A3A4FEFFFFFF
            FFFF9F9FA07371713535377E7B76FFF5E7FFF2E1878685FF00FFFF00FFA89483
            7873C52024B3BAA18AA3A3A4FEFFFFFFFFFFCACACCF5F3F2FFFDF9353537F3EA
            E0FDF0E2878685FF00FFFF00FFA8978B7876CA2024B2BBA896A3A3A4FEFFFFFF
            FFFFB3B3B4828283A2A1A2353537F8F2EBFDF2E9878685FF00FFFF00FF918984
            7779CF2024B2BCADA0A3A3A4FEFFFFFFFFFF9A9A9B3535377C7C7ECCCCCBFFFE
            FBFCF6EF878685FF00FFFF00FF8E8888787BD42024B1BDB2A9A3A3A4FEFEFFFF
            FFFFBCBCBD353537353537353537FFFEFDFCF9F5878685FF00FFFF00FF8E8C8E
            787EDA2024B1B4B3B9A3A3A4FEFEFEE9E9E9E2E2E2BCBCBCA2A2A3DFDFE0FFFF
            FFFCFBFB878685FF00FFFF00FF8E8F947880DE2023B1B4B3B9A3A3A4FFFFFFA5
            A5A5BBBBBB9F9FA0C6C6C7C5C5C6E2E2E3FEFEFE878685FF00FFFF00FF8E8F95
            7880DF2023B1B4B3B9A3A3A4FFFFFFB9B9B9B3B3B4ACACADA8A8A9B9B9BAE0E0
            E1FFFFFF878685FF00FFFF00FF9091977B83E22023B0B6B5B6A3A3A4FFFFFF79
            7979E1E2E2FBFBFCEDEDEDB9B9B9DBDBDCFFFFFF878685FF00FFFF00FF83848A
            646AD21D23BA6F71919E9DAFBBB9BC7F7D738D8C88EDEAE0E7E7E36465629090
            90FFFFFF878685FF00FFFF00FFFF00FF4141632E317D3034833F43933A3D9440
            42964444605655996D6893736E885E5B61918D8A616161FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF4B4B4BFF00FF3B3D624B4B4B373765FF00FF3333833838
            65141477FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4B4B4B4B
            4B4BFF00FFFF00FF4B4B4E4C4C4CFF00FFFF00FFFF00FFFF00FF}
        end
        object BitBtn6: TBitBtn
          Left = 306
          Top = 2
          Width = 31
          Height = 31
          Hint = 'Imprime Previs'#245'es'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = BitBtn6Click
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
    end
  end
  object dsPagar: TDataSource
    DataSet = dbPagar
    OnStateChange = dsPagarStateChange
    OnDataChange = dsPagarDataChange
    Left = 545
    Top = 512
  end
  object dbPlanoC: TMSTable
    TableName = 'dbo.PlanoContas'
    Connection = frmMenu.dadosfin
    OnFilterRecord = dbPlanoCFilterRecord
    IndexFieldNames = 'Cod1;Cod2;Cod3'
    Left = 577
    Top = 480
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
    Left = 577
    Top = 512
  end
  object dbPagar: TMSTable
    TableName = 'dbo.Lancamentos'
    Connection = frmMenu.dadosfin
    Filtered = True
    AfterOpen = dbPagarAfterOpen
    AfterInsert = dbPagarAfterInsert
    BeforeEdit = dbPagarBeforeEdit
    AfterEdit = dbPagarAfterEdit
    BeforePost = dbPagarBeforePost
    AfterScroll = dbPagarAfterScroll
    OnCalcFields = dbPagarCalcFields
    OnFilterRecord = dbPagarFilterRecord
    IndexFieldNames = 'Filial'
    Left = 552
    Top = 480
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
    object dbPagarPrevisao: TIntegerField
      FieldName = 'Previsao'
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
    object dbPagarCheque: TStringField
      FieldName = 'Cheque'
    end
    object dbPagarSelecionado: TBooleanField
      FieldName = 'Selecionado'
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
    object dbPagarMovBanco: TIntegerField
      FieldName = 'MovBanco'
    end
    object dbPagarStatusTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'StatusTexto'
      Size = 15
      Calculated = True
    end
    object dbPagarTributo: TBooleanField
      FieldName = 'Tributo'
    end
    object dbPagarContabilizado: TBooleanField
      FieldName = 'Contabilizado'
    end
    object dbPagarUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Size = 10
    end
    object dbPagarTipoPag: TStringField
      FieldName = 'TipoPag'
      OnChange = dbPagarTipoPagChange
      OnGetText = dbPagarTipoPagGetText
      OnSetText = dbPagarTipoPagSetText
      Size = 1
    end
    object dbPagarValorBruto: TCurrencyField
      FieldName = 'ValorBruto'
    end
    object dbPagarFuncionario: TIntegerField
      FieldName = 'Funcionario'
    end
    object dbPagarAuditor: TIntegerField
      FieldName = 'Auditor'
    end
    object dbPagarTipoAud: TStringField
      FieldName = 'TipoAud'
      Size = 1
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
    object dbPagarPagtoPre: TIntegerField
      FieldName = 'PagtoPre'
    end
    object dbPagarAudNome: TStringField
      FieldKind = fkLookup
      FieldName = 'AudNome'
      LookupDataSet = dmRelatorio.dbMedico
      LookupKeyFields = 'Auditor'
      LookupResultField = 'Nome'
      KeyFields = 'Auditor'
      Size = 40
      Lookup = True
    end
    object dbPagarEnfNome: TStringField
      FieldKind = fkLookup
      FieldName = 'EnfNome'
      LookupDataSet = dmRelatorio.dbEnfermeiro
      LookupKeyFields = 'Enfermeiro'
      LookupResultField = 'Nome'
      KeyFields = 'Auditor'
      Size = 40
      Lookup = True
    end
    object dbPagarAuditorNome: TStringField
      FieldKind = fkCalculated
      FieldName = 'AuditorNome'
      Size = 40
      Calculated = True
    end
  end
  object dbFilial: TMSTable
    TableName = 'dbo.Filiais'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Filial'
    Left = 609
    Top = 480
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
    Left = 609
    Top = 511
  end
  object dbCliente: TMSTable
    TableName = 'dbo.Clientes'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Nome'
    Left = 640
    Top = 480
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
      EditMask = '00\.000\.000\/0000\-00;0;_'
      Size = 18
    end
  end
  object dsCliente: TDataSource
    DataSet = dbCliente
    Left = 640
    Top = 512
  end
  object dbPrevisao: TMSTable
    TableName = 'dbo.Previsao'
    MasterFields = 'Filial'
    DetailFields = 'Filial'
    MasterSource = dsFilial
    Connection = frmMenu.dadosfin
    AfterOpen = dbPrevisaoAfterOpen
    AfterInsert = dbPrevisaoAfterInsert
    BeforePost = dbPrevisaoBeforePost
    AfterScroll = dbPrevisaoAfterScroll
    OnCalcFields = dbPrevisaoCalcFields
    IndexFieldNames = 'Filial;Previsao;Cliente'
    Left = 671
    Top = 480
    object dbPrevisaoPrevisao: TAutoIncField
      FieldName = 'Previsao'
      ReadOnly = True
    end
    object dbPrevisaoFilial: TIntegerField
      FieldName = 'Filial'
    end
    object dbPrevisaoCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbPrevisaoHistorico: TStringField
      FieldName = 'Historico'
      Size = 60
    end
    object dbPrevisaoValor: TCurrencyField
      FieldName = 'Valor'
    end
    object dbPrevisaoCod1: TSmallintField
      FieldName = 'Cod1'
    end
    object dbPrevisaoCod2: TSmallintField
      FieldName = 'Cod2'
    end
    object dbPrevisaoCod3: TSmallintField
      FieldName = 'Cod3'
    end
    object dbPrevisaoDia: TSmallintField
      FieldName = 'Dia'
    end
    object dbPrevisaoTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object dbPrevisaoTipoNome: TStringField
      FieldKind = fkCalculated
      FieldName = 'TipoNome'
      Size = 30
      Calculated = True
    end
    object dbPrevisaoAtivo: TBooleanField
      FieldName = 'Ativo'
    end
    object dbPrevisaoAtivoTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'AtivoTexto'
      Size = 10
      Calculated = True
    end
    object dbPrevisaoUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object dbPrevisaoRepetir: TIntegerField
      FieldName = 'Repetir'
    end
    object dbPrevisaoClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
    end
    object dbPrevisaoClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'CliFor'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 60
      Lookup = True
    end
    object dbPrevisaoDataIni: TDateTimeField
      FieldName = 'DataIni'
    end
    object dbPrevisaoDataFim: TDateTimeField
      FieldName = 'DataFim'
    end
  end
  object dsPrevisao: TDataSource
    DataSet = dbPrevisao
    OnStateChange = dsPrevisaoStateChange
    OnDataChange = dsPrevisaoDataChange
    Left = 671
    Top = 512
  end
  object dbPagPrev: TMSTable
    TableName = 'dbo.Lancamentos'
    MasterFields = 'Filial;Previsao'
    DetailFields = 'Filial;Previsao'
    MasterSource = dsPrevisao
    Connection = frmMenu.dadosfin
    Filtered = True
    AfterScroll = dbPagPrevAfterScroll
    OnCalcFields = dbPagPrevCalcFields
    OnFilterRecord = dbPagPrevFilterRecord
    Left = 707
    Top = 480
    object dbPagPrevFilial: TIntegerField
      FieldName = 'Filial'
    end
    object dbPagPrevLancamento: TAutoIncField
      FieldName = 'Lancamento'
      ReadOnly = True
    end
    object dbPagPrevCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbPagPrevCod1: TSmallintField
      FieldName = 'Cod1'
    end
    object dbPagPrevCod2: TSmallintField
      FieldName = 'Cod2'
    end
    object dbPagPrevCod3: TSmallintField
      FieldName = 'Cod3'
    end
    object dbPagPrevHistorico: TStringField
      FieldName = 'Historico'
      Size = 60
    end
    object dbPagPrevDoc: TStringField
      FieldName = 'Doc'
    end
    object dbPagPrevValor: TCurrencyField
      FieldName = 'Valor'
    end
    object dbPagPrevBancoID: TIntegerField
      FieldName = 'BancoID'
    end
    object dbPagPrevValorPago: TCurrencyField
      FieldName = 'ValorPago'
    end
    object dbPagPrevPago: TBooleanField
      FieldName = 'Pago'
    end
    object dbPagPrevStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object dbPagPrevPrevisao: TIntegerField
      FieldName = 'Previsao'
    end
    object dbPagPrevUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object dbPagPrevCheque: TStringField
      FieldName = 'Cheque'
    end
    object dbPagPrevSelecionado: TBooleanField
      FieldName = 'Selecionado'
    end
    object dbPagPrevClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
    end
    object dbPagPrevPrazo: TIntegerField
      FieldName = 'Prazo'
    end
    object dbPagPrevMovBanco: TIntegerField
      FieldName = 'MovBanco'
    end
    object dbPagPrevNF: TIntegerField
      FieldName = 'NF'
    end
    object dbPagPrevPorcentagem: TFloatField
      FieldName = 'Porcentagem'
    end
    object dbPagPrevStatusTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'StatusTexto'
      Size = 15
      Calculated = True
    end
    object dbPagPrevTipoPag: TStringField
      FieldName = 'TipoPag'
      Size = 1
    end
    object dbPagPrevDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
    end
    object dbPagPrevDataVencto: TDateTimeField
      FieldName = 'DataVencto'
    end
    object dbPagPrevDataPagto: TDateTimeField
      FieldName = 'DataPagto'
    end
    object dbPagPrevDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
    end
    object dbPagPrevDataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
    end
  end
  object dsPagPrev: TDataSource
    DataSet = dbPagPrev
    Left = 707
    Top = 512
  end
  object dbClienteDeb: TMSTable
    TableName = 'dbo.Clientes'
    Connection = frmMenu.dadosfin
    Filtered = True
    OnFilterRecord = dbClienteDebFilterRecord
    IndexFieldNames = 'Nome'
    Left = 739
    Top = 480
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
      EditMask = '00\.000\.000\/0000\-00;0;_'
      Size = 18
    end
    object dbClienteDebStatusCli: TBooleanField
      FieldName = 'StatusCli'
    end
  end
  object dsClienteDeb: TDataSource
    DataSet = dbClienteDeb
    Left = 739
    Top = 512
  end
  object qryTributo: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'select * from Lancamentos')
    Left = 769
    Top = 480
    object qryTributoFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'DADOS."Lancamentos.DB".Filial'
    end
    object qryTributoLancamento: TIntegerField
      FieldName = 'Lancamento'
      Origin = 'DADOS."Lancamentos.DB".Lancamento'
    end
    object qryTributoCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'DADOS."Lancamentos.DB".Cliente'
    end
    object qryTributoClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
      Origin = 'DADOS."Lancamentos.DB".ClienteDeb'
    end
    object qryTributoPrazo: TIntegerField
      FieldName = 'Prazo'
      Origin = 'DADOS."Lancamentos.DB".Prazo'
    end
    object qryTributoCod1: TSmallintField
      FieldName = 'Cod1'
      Origin = 'DADOS."Lancamentos.DB".Cod1'
    end
    object qryTributoCod2: TSmallintField
      FieldName = 'Cod2'
      Origin = 'DADOS."Lancamentos.DB".Cod2'
    end
    object qryTributoCod3: TSmallintField
      FieldName = 'Cod3'
      Origin = 'DADOS."Lancamentos.DB".Cod3'
    end
    object qryTributoHistorico: TStringField
      FieldName = 'Historico'
      Origin = 'DADOS."Lancamentos.DB".Historico'
      Size = 60
    end
    object qryTributoDoc: TStringField
      FieldName = 'Doc'
      Origin = 'DADOS."Lancamentos.DB".Doc'
    end
    object qryTributoValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'DADOS."Lancamentos.DB".Valor'
    end
    object qryTributoBancoID: TIntegerField
      FieldName = 'BancoID'
      Origin = 'DADOS."Lancamentos.DB".BancoID'
    end
    object qryTributoCheque: TStringField
      FieldName = 'Cheque'
      Origin = 'DADOS."Lancamentos.DB".Cheque'
    end
    object qryTributoValorPago: TCurrencyField
      FieldName = 'ValorPago'
      Origin = 'DADOS."Lancamentos.DB".ValorPago'
    end
    object qryTributoPago: TBooleanField
      FieldName = 'Pago'
      Origin = 'DADOS."Lancamentos.DB".Pago'
    end
    object qryTributoSelecionado: TBooleanField
      FieldName = 'Selecionado'
      Origin = 'DADOS."Lancamentos.DB".Selecionado'
    end
    object qryTributoStatus: TStringField
      FieldName = 'Status'
      Origin = 'DADOS."Lancamentos.DB".Status'
      Size = 1
    end
    object qryTributoPrevisao: TIntegerField
      FieldName = 'Previsao'
      Origin = 'DADOS."Lancamentos.DB".Previsao'
    end
    object qryTributoMovBanco: TIntegerField
      FieldName = 'MovBanco'
      Origin = 'DADOS."Lancamentos.DB".MovBanco'
    end
    object qryTributoNF: TIntegerField
      FieldName = 'NF'
      Origin = 'DADOS."Lancamentos.DB".NF'
    end
    object qryTributoPorcentagem: TFloatField
      FieldName = 'Porcentagem'
      Origin = 'DADOS."Lancamentos.DB".Porcentagem'
    end
    object qryTributoTributo: TBooleanField
      FieldName = 'Tributo'
      Origin = 'DADOS."Lancamentos.DB".Tributo'
    end
    object qryTributoUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'DADOS."Lancamentos.DB".Usuario'
      Size = 10
    end
    object qryTributoDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
    end
    object qryTributoDataVencto: TDateTimeField
      FieldName = 'DataVencto'
    end
    object qryTributoDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
    end
    object qryTributoDataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
    end
  end
  object dbMovBanco: TMSTable
    TableName = 'dbo.MovBanco'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'MovBanco'
    Left = 801
    Top = 480
  end
  object dbFuncionario: TMSTable
    TableName = 'dbo.Funcionario'
    Connection = frmMenu.dadosfin
    Filtered = True
    IndexFieldNames = 'Nome'
    Left = 835
    Top = 480
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
    object dbFuncionarioDataFim: TDateTimeField
      FieldName = 'DataFim'
    end
  end
  object dsFuncionario: TDataSource
    DataSet = dbFuncionario
    Left = 835
    Top = 512
  end
end
