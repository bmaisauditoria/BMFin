object Cheques: TCheques
  Left = 245
  Top = 217
  Width = 729
  Height = 429
  HelpContext = 4
  ActiveControl = PageControl1
  Caption = 'Cheques'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  HelpFile = 'rdfin'
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = True
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 194
    Width = 713
    Height = 157
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 3
    object Painel22: TPanel
      Left = 0
      Top = 0
      Width = 713
      Height = 157
      Align = alClient
      Caption = 'Painel22'
      TabOrder = 1
      Visible = False
      object Panel12: TPanel
        Left = 1
        Top = 126
        Width = 711
        Height = 30
        Align = alBottom
        Caption = ' '
        TabOrder = 0
        object Lab1: TLabel
          Left = 104
          Top = 4
          Width = 6
          Height = 13
          Alignment = taCenter
          Caption = 'a'
        end
        object Lab2: TLabel
          Left = 264
          Top = 4
          Width = 68
          Height = 22
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Lab2'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Lab3: TLabel
          Left = 336
          Top = 4
          Width = 74
          Height = 22
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Label2'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DatePicker1: TDateTimePicker
          Left = 16
          Top = 4
          Width = 81
          Height = 21
          Date = 35874.388436921300000000
          Time = 35874.388436921300000000
          TabOrder = 0
          OnChange = DatePicker1Change
        end
        object DatePicker2: TDateTimePicker
          Left = 128
          Top = 4
          Width = 81
          Height = 21
          Date = 35874.388436921300000000
          Time = 35874.388436921300000000
          TabOrder = 1
          OnChange = DatePicker1Change
        end
      end
      object DBCGrid1: TDBCtrlGrid
        Left = 1
        Top = 26
        Width = 711
        Height = 100
        Align = alClient
        AllowDelete = False
        AllowInsert = False
        Color = clSilver
        DataSource = Ds1
        PanelHeight = 20
        PanelWidth = 694
        ParentColor = False
        TabOrder = 1
        RowCount = 5
        OnExit = DBCGrid1Exit
        object DBTxt1: TDBText
          Left = 32
          Top = 2
          Width = 73
          Height = 18
          DataField = 'Cliente'
          DataSource = Ds1
          Transparent = True
        end
        object DBTxt2: TDBText
          Left = 112
          Top = 2
          Width = 57
          Height = 18
          Alignment = taCenter
          DataField = 'Data'
          DataSource = Ds1
          Transparent = True
        end
        object DBTxt3: TDBText
          Left = 168
          Top = 2
          Width = 89
          Height = 18
          Alignment = taCenter
          DataField = 'DocRef'
          DataSource = Ds1
          Transparent = True
        end
        object DBTxt4: TDBText
          Left = 264
          Top = 2
          Width = 68
          Height = 18
          Alignment = taRightJustify
          DataField = 'Valor'
          DataSource = Ds1
          Transparent = True
        end
        object DBTxt5: TDBText
          Left = 424
          Top = 2
          Width = 145
          Height = 18
          DataField = 'Hist'#243'rico'
          DataSource = Ds1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object DBText5: TDBText
          Left = 640
          Top = 0
          Width = 121
          Height = 25
          DataField = 'itpln'
          DataSource = Ds1
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object DBCheckBox1: TDBCheckBox
          Left = 8
          Top = 3
          Width = 17
          Height = 17
          Caption = 'DBCheckBox1'
          DataField = 'Pago'
          DataSource = Ds1
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          OnClick = DBCheckBox1Click
        end
        object DBEdt1: TDBEdit
          Left = 344
          Top = 0
          Width = 74
          Height = 21
          DataField = 'Valor Pago'
          DataSource = Ds1
          TabOrder = 1
          OnEnter = DBEdt1Enter
          OnExit = DBEdt1Exit
          OnKeyPress = DBEdt1KeyPress
        end
        object DBCombo1: TDBComboBox
          Left = 576
          Top = 0
          Width = 54
          Height = 21
          DataField = 'Periodico'
          DataSource = Ds1
          ItemHeight = 13
          Items.Strings = (
            'Unico'
            'Semanal'
            'Mensal'
            'Bimestral'
            'Trimestral'
            'Quadrimestral'
            'Semestral'
            'Anual'
            '')
          TabOrder = 2
        end
      end
      object HeaderControl1: THeaderControl
        Left = 1
        Top = 1
        Width = 711
        Height = 25
        Sections = <
          item
            ImageIndex = -1
            Text = 'P'
            Width = 30
          end
          item
            ImageIndex = -1
            Text = 'Credor'
            Width = 80
          end
          item
            ImageIndex = -1
            Text = 'Data'
            Width = 60
          end
          item
            ImageIndex = -1
            Text = 'Documento'
            Width = 90
          end
          item
            ImageIndex = -1
            Text = 'Previsto'
            Width = 80
          end
          item
            AllowClick = False
            ImageIndex = -1
            Text = 'Efetivo'
            Width = 80
          end
          item
            ImageIndex = -1
            Text = 'Hist'#243'rico'
            Width = 155
          end
          item
            ImageIndex = -1
            Text = 'Per'#237'odo'
            Width = 60
          end
          item
            ImageIndex = -1
            Text = 'Classifica'#231#227'o Financeira'
            Width = 130
          end>
      end
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 0
      Width = 713
      Height = 157
      HelpContext = 4
      ActivePage = TabSheet3
      Align = alClient
      TabOrder = 0
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = 'Cheques emitidos por data'
        object DBGrid2: TDBGrid
          Left = 0
          Top = 41
          Width = 713
          Height = 101
          Align = alClient
          DataSource = DataSource1
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Data'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Banco'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Agencia'
              Title.Caption = 'Ag'#234'ncia'
              Width = 49
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Conta'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Documento'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Favorecido'
              Width = 247
              Visible = True
            end>
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 713
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          Caption = ' '
          TabOrder = 1
          object SpeedButton10: TSpeedButton
            Left = 224
            Top = 8
            Width = 23
            Height = 25
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
            OnClick = SpeedButton10Click
          end
          object Label4: TLabel
            Left = 105
            Top = 12
            Width = 6
            Height = 13
            Caption = 'a'
          end
          object DateTimePicker2: TDateTimePicker
            Left = 8
            Top = 8
            Width = 89
            Height = 21
            Date = 35863.920357291710000000
            Time = 35863.920357291710000000
            ParseInput = True
            TabOrder = 0
            OnCloseUp = DateTimePicker2CloseUp
            OnExit = DateTimePicker2Exit
          end
          object DateTimePicker7: TDateTimePicker
            Left = 128
            Top = 8
            Width = 89
            Height = 21
            Date = 35863.920357291710000000
            Time = 35863.920357291710000000
            ParseInput = True
            TabOrder = 1
            OnCloseUp = DateTimePicker2CloseUp
            OnExit = DateTimePicker7Exit
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Cheques emitidos por banco'
        object Label6: TLabel
          Left = 0
          Top = 26
          Width = 84
          Height = 13
          Caption = 'Cheques Emitidos'
        end
        object DBGrid4: TDBGrid
          Left = 0
          Top = 41
          Width = 480
          Height = 101
          Align = alClient
          DataSource = DataSource1
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Data'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Banco'
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Agencia'
              Title.Caption = 'Ag'#234'ncia'
              Width = 44
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Conta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Documento'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Favorecido'
              Width = 247
              Visible = True
            end>
        end
        object DBGrid5: TDBGrid
          Left = 480
          Top = 41
          Width = 233
          Height = 101
          Align = alRight
          DataSource = DataSource3
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Cliente'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DocRef'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor Pago'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Hist'#243'rico'
              Visible = True
            end>
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 713
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          Caption = ' '
          TabOrder = 2
          object SpeedButton11: TSpeedButton
            Left = 462
            Top = 10
            Width = 25
            Height = 25
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
            OnClick = SpeedButton10Click
          end
          object Label16: TLabel
            Left = 358
            Top = 16
            Width = 6
            Height = 13
            Caption = 'a'
          end
          object ComboBox1: TComboBox
            Left = 8
            Top = 12
            Width = 249
            Height = 21
            ItemHeight = 0
            TabOrder = 0
            Text = 'ComboBox1'
            OnChange = ComboBox1Change
          end
          object DateTimePicker3: TDateTimePicker
            Left = 272
            Top = 12
            Width = 81
            Height = 21
            Date = 35863.921978356500000000
            Time = 35863.921978356500000000
            TabOrder = 1
            OnChange = DateTimePicker3Change
            OnExit = DateTimePicker3Exit
          end
          object DateTimePicker8: TDateTimePicker
            Left = 368
            Top = 12
            Width = 81
            Height = 21
            Date = 35863.921978356500000000
            Time = 35863.921978356500000000
            TabOrder = 2
            OnChange = DateTimePicker3Change
            OnExit = DateTimePicker8Exit
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Cheques emitidos por favorecido'
        object DBGrid6: TDBGrid
          Left = 0
          Top = 41
          Width = 705
          Height = 88
          Align = alClient
          DataSource = DataSource1
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Data'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Banco'
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Agencia'
              Title.Caption = 'Ag'#234'ncia'
              Width = 44
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Conta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Documento'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Favorecido'
              Width = 247
              Visible = True
            end>
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 705
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          Caption = ' '
          TabOrder = 1
          object SpeedButton12: TSpeedButton
            Left = 262
            Top = 10
            Width = 25
            Height = 25
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
            OnClick = SpeedButton10Click
          end
          object Edit1: TEdit
            Left = 8
            Top = 12
            Width = 249
            Height = 21
            TabOrder = 0
            Text = 'Favorecido'
            OnChange = Edit1Change
          end
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Conta Corrente Fornecedor'
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 705
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          Caption = ' '
          TabOrder = 0
          object SpeedButton4: TSpeedButton
            Left = 342
            Top = 8
            Width = 25
            Height = 25
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
            OnClick = SpeedButton4Click
          end
          object Label14: TLabel
            Left = 488
            Top = 12
            Width = 6
            Height = 13
            Caption = 'a'
          end
          object CheckBox2: TCheckBox
            Left = 200
            Top = 2
            Width = 65
            Height = 17
            Caption = 'Vencidos'
            TabOrder = 0
            OnClick = CheckBox2Click
          end
          object CheckBox3: TCheckBox
            Left = 200
            Top = 16
            Width = 65
            Height = 17
            Caption = 'A Vencer'
            TabOrder = 1
            OnClick = CheckBox2Click
          end
          object CheckBox4: TCheckBox
            Left = 272
            Top = 2
            Width = 73
            Height = 17
            Caption = 'Quitados'
            TabOrder = 2
            OnClick = CheckBox2Click
          end
          object CheckBox5: TCheckBox
            Left = 272
            Top = 16
            Width = 73
            Height = 17
            Caption = 'Em Aberto'
            TabOrder = 3
            OnClick = CheckBox2Click
          end
          object DateTimePicker1: TDateTimePicker
            Left = 392
            Top = 8
            Width = 89
            Height = 21
            Date = 35863.917276041700000000
            Time = 35863.917276041700000000
            TabOrder = 4
            OnChange = DateTimePicker1Change
            OnExit = DateTimePicker1Exit
          end
          object DateTimePicker5: TDateTimePicker
            Left = 504
            Top = 8
            Width = 89
            Height = 21
            Date = 35863.917276041700000000
            Time = 35863.917276041700000000
            TabOrder = 5
            OnChange = DateTimePicker1Change
            OnExit = DateTimePicker5Exit
          end
          object PageControl2: TPageControl
            Left = 0
            Top = 0
            Width = 191
            Height = 41
            ActivePage = TabSheet7
            Align = alLeft
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Small Fonts'
            Font.Style = []
            ParentFont = False
            TabHeight = 9
            TabOrder = 6
            OnChange = PageControl2Change
            object TabSheet7: TTabSheet
              Caption = 'Apelido'
              object DBLookupComboBox2: TDBLookupComboBox
                Left = 0
                Top = 0
                Width = 180
                Height = 19
                KeyField = 'Cliente'
                ListField = 'Cliente'
                ListSource = DataSource5
                TabOrder = 0
                OnCloseUp = DBLookupComboBox2CloseUp
              end
            end
            object TabSheet8: TTabSheet
              Caption = 'CGC'
              object DBLookupComboBox4: TDBLookupComboBox
                Left = 0
                Top = 0
                Width = 185
                Height = 19
                KeyField = 'Cliente'
                ListField = 'CGC;Cliente'
                ListSource = DataSource5
                TabOrder = 0
                OnCloseUp = DBLookupComboBox2CloseUp
              end
            end
          end
        end
        object DBGrid8: TDBGrid
          Left = 0
          Top = 41
          Width = 705
          Height = 88
          Align = alClient
          DataSource = DataSource6
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Data'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Data Pagto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DocRef'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Banco'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Agencia'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Conta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cheque'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor Pago'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Pago'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Emissao'
              Visible = True
            end>
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Cheques cancelados'
        object DBGrid7: TDBGrid
          Left = 0
          Top = 41
          Width = 713
          Height = 101
          Align = alClient
          DataSource = DataSource1
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Data'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Banco'
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Agencia'
              Title.Caption = 'Ag'#234'ncia'
              Width = 44
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Conta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Documento'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Favorecido'
              Width = 247
              Visible = True
            end>
        end
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 713
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          Caption = ' '
          TabOrder = 1
          object SpeedButton13: TSpeedButton
            Left = 190
            Top = 10
            Width = 25
            Height = 25
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
            OnClick = SpeedButton10Click
          end
          object ComboBox2: TComboBox
            Left = 8
            Top = 12
            Width = 177
            Height = 21
            ItemHeight = 0
            TabOrder = 0
            Text = 'ComboBox2'
            OnChange = ComboBox2Change
          end
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Contas pagas e a pagar por data'
        object Panel11: TPanel
          Left = 0
          Top = 0
          Width = 713
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          Caption = ' '
          TabOrder = 0
          object SpeedButton14: TSpeedButton
            Left = 198
            Top = 8
            Width = 25
            Height = 25
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
            OnClick = SpeedButton14Click
          end
          object Label15: TLabel
            Left = 96
            Top = 12
            Width = 6
            Height = 13
            Caption = 'a'
          end
          object CheckBox6: TCheckBox
            Left = 240
            Top = 10
            Width = 73
            Height = 17
            Caption = 'Vencidos'
            TabOrder = 0
            OnClick = CheckBox6Click
          end
          object CheckBox7: TCheckBox
            Left = 320
            Top = 10
            Width = 73
            Height = 17
            Caption = 'A Vencer'
            TabOrder = 1
            OnClick = CheckBox7Click
          end
          object DateTimePicker4: TDateTimePicker
            Left = 8
            Top = 8
            Width = 81
            Height = 21
            Date = 35863.917276041700000000
            Time = 35863.917276041700000000
            TabOrder = 2
            OnChange = DateTimePicker4Change
            OnExit = DateTimePicker4Exit
          end
          object DateTimePicker6: TDateTimePicker
            Left = 112
            Top = 8
            Width = 81
            Height = 21
            Date = 35863.917276041700000000
            Time = 35863.917276041700000000
            TabOrder = 3
            OnChange = DateTimePicker4Change
            OnExit = DateTimePicker6Exit
          end
        end
        object DBGrid9: TDBGrid
          Left = 0
          Top = 41
          Width = 713
          Height = 101
          Align = alClient
          DataSource = DataSource6
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Data'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cliente'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Emissao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DocRef'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Hist'#243'rico'
              Visible = True
            end>
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 713
    Height = 161
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Panel8: TPanel
      Left = 0
      Top = 0
      Width = 713
      Height = 47
      Align = alTop
      BevelOuter = bvNone
      Caption = ' '
      TabOrder = 0
      object Label10: TLabel
        Left = 16
        Top = 4
        Width = 145
        Height = 13
        Hint = '8'
        AutoSize = False
        Caption = 'Conta'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label11: TLabel
        Left = 167
        Top = 4
        Width = 138
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Banco/Ag'#234'ncia'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label12: TLabel
        Left = 422
        Top = 4
        Width = 131
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Valor'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText6: TDBText
        Left = 565
        Top = 0
        Width = 148
        Height = 47
        Align = alRight
        Alignment = taCenter
        DataField = 'Lan'#231'amento'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -21
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 311
        Top = 4
        Width = 90
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'N'#250'mero'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 168
        Top = 17
        Width = 137
        Height = 21
        Color = clWhite
        DataField = 'Account'
        DataSource = DataSource1
        ParentColor = False
      end
      object DBEdit3: TDBEdit
        Left = 311
        Top = 17
        Width = 90
        Height = 21
        DataField = 'Documento'
        DataSource = DataSource1
        Enabled = False
        TabOrder = 1
        OnEnter = DBEdit3Enter
        OnExit = DBEdit3Exit
      end
      object DBEdit4: TDBEdit
        Left = 422
        Top = 17
        Width = 131
        Height = 21
        DataField = 'Valor'
        DataSource = DataSource1
        Enabled = False
        TabOrder = 2
        OnKeyPress = DBEdit4KeyPress
      end
      object DBComboBox1: TDBComboBox
        Left = 16
        Top = 17
        Width = 145
        Height = 21
        Style = csDropDownList
        DataField = 'Conta'
        DataSource = DataSource1
        Enabled = False
        ItemHeight = 13
        TabOrder = 0
        OnExit = DBComboBox1Exit
      end
    end
    object Panel9: TPanel
      Left = 0
      Top = 47
      Width = 359
      Height = 114
      Align = alLeft
      BevelOuter = bvNone
      Caption = ' '
      TabOrder = 1
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 53
        Height = 13
        Caption = 'Favorecido'
        FocusControl = DBEdit5
      end
      object Label3: TLabel
        Left = 16
        Top = 49
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object Label13: TLabel
        Left = 135
        Top = 52
        Width = 100
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Saldo'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 135
        Top = 65
        Width = 100
        Height = 22
        Alignment = taCenter
        Color = clWhite
        DataField = 'Saldo'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 247
        Top = 65
        Width = 100
        Height = 22
        Alignment = taCenter
        Color = clWhite
        DataField = 'Dispon'#237'vel'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label9: TLabel
        Left = 247
        Top = 52
        Width = 100
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Dispon'#237'vel'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBEdit5: TDBEdit
        Left = 16
        Top = 24
        Width = 329
        Height = 21
        DataField = 'Favorecido'
        DataSource = DataSource1
        Enabled = False
        TabOrder = 0
      end
      object DBDateTimePicker1: TDBDateTimePicker
        Left = 16
        Top = 64
        Width = 97
        Height = 21
        Date = 0.457302314796834000
        Time = 0.457302314796834000
        TabOrder = 1
        DataField = 'Data'
        DataSource = DataSource1
      end
    end
    object Panel10: TPanel
      Left = 359
      Top = 47
      Width = 354
      Height = 114
      Align = alClient
      Caption = 'Panel10'
      TabOrder = 2
      object Label2: TLabel
        Left = 1
        Top = 1
        Width = 352
        Height = 13
        Hint = '8'
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'Hist'#243'rico'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBMemo1: TDBMemo
        Left = 1
        Top = 14
        Width = 352
        Height = 99
        Align = alClient
        DataField = 'Hist'#243'rico'
        DataSource = DataSource1
        Enabled = False
        TabOrder = 0
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 351
    Width = 713
    Height = 19
    Panels = <
      item
        Text = 'N'#250'mero de T'#237'tulos'
        Width = 100
      end
      item
        Alignment = taRightJustify
        Width = 50
      end
      item
        Text = 'Valor Emitido'
        Width = 70
      end
      item
        Alignment = taRightJustify
        Width = 90
      end
      item
        Text = 'Valor em aberto at'#233' hoje'
        Width = 150
      end
      item
        Alignment = taCenter
        Width = 90
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 713
    Height = 33
    ButtonHeight = 23
    TabOrder = 1
    OnMouseDown = ToolBar1MouseDown
    object BitBtn1: TBitBtn
      Left = 0
      Top = 2
      Width = 57
      Height = 23
      Hint = 'Confirma a inclus'#227'o'
      Caption = 'Ok'
      Enabled = False
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkOK
    end
    object SpeedButton3: TSpeedButton
      Left = 57
      Top = 2
      Width = 25
      Height = 23
      Hint = 'Novo'
      AllowAllUp = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555FFFFFFFFFF5555550000000000555558888888888F5555550FFFFFFFF
        0555558FFFFFFFF8F5555550FFFFFFFF0555558FFFFFFFF8F5555550FFFFFFFF
        0555558FFFFFFFF8F5555550FFFFFFFF0555558FFFFFFFF8F5555550FFFFFFFF
        0555558FFFFFFFF8F5555550FFFFFFFF0555558FFFFFFFF8F5555550FFFFFFFF
        0555558FFFFFFFF8F5555550FFFFFFFF0555558FFFFFFFF8F5555550FFFFF000
        0555558FFFFF888855555550FFFFF0F05555558FFFFF8F8555555550FFFFF005
        5555558FFFFF8855555555500000005555555588888885555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = SpeedButton3Click
    end
    object SpeedButton5: TSpeedButton
      Left = 82
      Top = 2
      Width = 25
      Height = 23
      Hint = 'Cancela'
      AllowAllUp = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
      OnClick = SpeedButton5Click
    end
    object ToolButton2: TToolButton
      Left = 107
      Top = 2
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object SpeedButton6: TSpeedButton
      Left = 115
      Top = 2
      Width = 25
      Height = 23
      Hint = 'Exibe Ficha'
      GroupIndex = 2
      Down = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
        0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
        0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
        5555557FFFFF7755555555500000005555555577777775555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = SpeedButton6Click
    end
    object SpeedButton7: TSpeedButton
      Left = 140
      Top = 2
      Width = 25
      Height = 23
      Hint = 'Exibe Lista'
      GroupIndex = 2
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
        000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
        FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
        FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
        0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
        05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
        55557F7777777555555500000005555555557777777555555555}
      NumGlyphs = 2
      OnClick = SpeedButton7Click
    end
    object ToolButton3: TToolButton
      Left = 165
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object SpeedButton8: TSpeedButton
      Left = 173
      Top = 2
      Width = 25
      Height = 23
      Hint = 'Anterior'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333333333333333333333333333333333333333FF333333333333
        3000333333FFFFF3F77733333000003000B033333777773777F733330BFBFB00
        E00033337FFF3377F7773333000FBFB0E000333377733337F7773330FBFBFBF0
        E00033F7FFFF3337F7773000000FBFB0E000377777733337F7770BFBFBFBFBF0
        E00073FFFFFFFF37F777300000000FB0E000377777777337F7773333330BFB00
        000033333373FF77777733333330003333333333333777333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton8Click
    end
    object SpeedButton9: TSpeedButton
      Left = 198
      Top = 2
      Width = 25
      Height = 23
      Hint = 'Pr'#243'ximo'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFF333333333333000333333333
        3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
        3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
        0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
        BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
        33337777773FF733333333333300033333333333337773333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton9Click
    end
    object ToolButton4: TToolButton
      Left = 223
      Top = 2
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object SpeedButton2: TSpeedButton
      Left = 231
      Top = 2
      Width = 25
      Height = 23
      Hint = 'Imprime Pedido Resumido'
      AllowAllUp = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      OnClick = SpeedButton2Click
    end
    object ToolButton1: TToolButton
      Left = 256
      Top = 2
      Width = 64
      Caption = 'ToolButton1'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 320
      Top = 3
      Width = 248
      Height = 21
      KeyField = 'Descri'#231#227'o'
      ListField = 'Descri'#231#227'o'
      ListSource = DataSource4
      TabOrder = 1
      OnCloseUp = DBLookupComboBox1CloseUp
    end
    object ToolButton5: TToolButton
      Left = 568
      Top = 2
      Width = 8
      Caption = 'ToolButton5'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object CheckBox1: TCheckBox
      Left = 576
      Top = 2
      Width = 15
      Height = 23
      TabStop = False
      Caption = 'CheckBox1'
      TabOrder = 2
      Visible = False
    end
  end
  object Table1: TTable
    AfterInsert = Table1AfterInsert
    BeforePost = Table1BeforePost
    AfterPost = Table1AfterPost
    OnCalcFields = Table1CalcFields
    AutoRefresh = True
    DatabaseName = 'dados'
    Filter = 'Status='#39'A'#39
    Filtered = True
    OnFilterRecord = Table1FilterRecord
    IndexFieldNames = 'Data;Banco;Agencia;Conta'
    TableName = 'movbanc'
    Left = 16
    Top = 296
    object Table1Lanamento: TAutoIncField
      FieldName = 'Lan'#231'amento'
    end
    object Table1Data: TDateTimeField
      FieldName = 'Data'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Table1Banco: TSmallintField
      FieldName = 'Banco'
    end
    object Table1Agencia: TSmallintField
      FieldName = 'Agencia'
    end
    object Table1Conta: TStringField
      FieldName = 'Conta'
      Size = 12
    end
    object Table1Tipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object Table1Documento: TStringField
      FieldName = 'Documento'
      Required = True
      Size = 15
    end
    object Table1Valor: TCurrencyField
      FieldName = 'Valor'
    end
    object Table1Histrico: TMemoField
      FieldName = 'Hist'#243'rico'
      BlobType = ftMemo
      Size = 40
    end
    object Table1Favorecido: TStringField
      FieldName = 'Favorecido'
      Size = 50
    end
    object Table1Status: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object Table1Filial: TSmallintField
      FieldName = 'Filial'
    end
    object Table1Account: TStringField
      FieldKind = fkCalculated
      FieldName = 'Account'
      Size = 12
      Calculated = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    OnStateChange = DataSource1StateChange
    Left = 15
    Top = 328
  end
  object Table2: TTable
    AfterPost = Table2AfterPost
    OnCalcFields = Table2CalcFields
    DatabaseName = 'dados'
    Filtered = True
    OnFilterRecord = Table2FilterRecord
    IndexFieldNames = 'Banco;Agencia;Conta'
    TableName = 'Bancos'
    Left = 64
    Top = 296
    object Table2Agencia: TSmallintField
      FieldName = 'Agencia'
    end
    object Table2Conta: TStringField
      FieldName = 'Conta'
      Size = 12
    end
    object Table2Descrio: TStringField
      FieldName = 'Descri'#231#227'o'
      Size = 40
    end
    object Table2Saldo: TCurrencyField
      FieldName = 'Saldo'
    end
    object Table2Status: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object Table2LimitedeCredito: TCurrencyField
      FieldName = 'Limite de Credito'
    end
    object Table2TitulosemCustdia: TCurrencyField
      FieldName = 'Titulos em Cust'#243'dia'
    end
    object Table2PercentualUtilizvel: TFloatField
      FieldName = 'Percentual Utiliz'#225'vel'
    end
    object Table2Disponvel: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Dispon'#237'vel'
      Calculated = True
    end
    object Table2Filial: TSmallintField
      FieldName = 'Filial'
    end
    object Table2Codn1: TSmallintField
      FieldName = 'Codn1'
    end
    object Table2Codn2: TSmallintField
      FieldName = 'Codn2'
    end
    object Table2Codn3: TSmallintField
      FieldName = 'Codn3'
    end
    object Table2Cheque: TIntegerField
      FieldName = 'Cheque'
    end
    object Table2Sigla: TStringField
      FieldName = 'Sigla'
      Size = 3
    end
    object Table2Emprestimos: TCurrencyField
      FieldName = 'Emprestimos'
    end
    object Table2ContaGarantida: TCurrencyField
      FieldName = 'Conta Garantida'
    end
    object Table2SomarcomFilial: TSmallintField
      FieldName = 'Somar com Filial'
    end
    object Table2DatadeFechamento: TDateTimeField
      FieldName = 'Data de Fechamento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Table2Cpmf: TCurrencyField
      FieldName = 'Cpmf'
    end
    object Table2Banco: TSmallintField
      FieldName = 'Banco'
    end
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 60
    Top = 328
  end
  object DataSource3: TDataSource
    AutoEdit = False
    DataSet = Table3
    Left = 115
    Top = 328
  end
  object Table3: TTable
    BeforePost = Table3BeforePost
    AfterPost = Table3AfterPost
    AutoRefresh = True
    DatabaseName = 'dados'
    IndexFieldNames = 'Controle'
    MasterFields = 'Lan'#231'amento'
    TableName = 'Pagtos'
    Left = 112
    Top = 296
    object Table3Lanamento: TAutoIncField
      FieldName = 'Lan'#231'amento'
    end
    object Table3Data: TDateTimeField
      FieldName = 'Data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Table3Codn1: TSmallintField
      FieldName = 'Codn1'
    end
    object Table3Codn2: TSmallintField
      FieldName = 'Codn2'
    end
    object Table3Codn3: TSmallintField
      FieldName = 'Codn3'
    end
    object Table3Histrico: TStringField
      FieldName = 'Hist'#243'rico'
      Size = 40
    end
    object Table3DocRef: TStringField
      FieldName = 'DocRef'
      Size = 15
    end
    object Table3Valor: TCurrencyField
      FieldName = 'Valor'
    end
    object Table3Banco: TSmallintField
      FieldName = 'Banco'
    end
    object Table3Agencia: TSmallintField
      FieldName = 'Agencia'
    end
    object Table3Conta: TStringField
      FieldName = 'Conta'
      Size = 12
    end
    object Table3Cheque: TStringField
      FieldName = 'Cheque'
      Size = 15
    end
    object Table3DataPagto: TDateTimeField
      FieldName = 'Data Pagto'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Table3ValorPago: TCurrencyField
      FieldName = 'Valor Pago'
    end
    object Table3Pago: TBooleanField
      FieldName = 'Pago'
    end
    object Table3Status: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object Table3Periodico: TSmallintField
      FieldName = 'Periodico'
    end
    object Table3Emissao: TDateTimeField
      FieldName = 'Emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Table3CCustoRec: TSmallintField
      FieldName = 'CCustoRec'
    end
    object Table3Controle: TIntegerField
      FieldName = 'Controle'
    end
    object Table3Filial: TSmallintField
      FieldName = 'Filial'
    end
    object Table3Cliente: TStringField
      FieldName = 'Cliente'
    end
  end
  object MainMenu1: TMainMenu
    Left = 489
    Top = 296
    object Relatrios1: TMenuItem
      Caption = '&Relat'#243'rios'
      object CpiadeCheque1: TMenuItem
        Caption = '&C'#243'pia de Cheque'
        OnClick = CpiadeCheque1Click
      end
      object CHequesporData1: TMenuItem
        Caption = 'Cheques &Emitidos'
        OnClick = SpeedButton10Click
      end
      object ChequesporBanco1: TMenuItem
        Caption = 'Conta Corrente de &Fornecedor'
        OnClick = SpeedButton4Click
      end
      object ContasaPagarporData1: TMenuItem
        Caption = '&Pagamentos do Per'#237'odo'
        OnClick = SpeedButton14Click
      end
    end
    object TabelasdeRefernciaCruzada1: TMenuItem
      Caption = '&Utilit'#225'rios'
      object ReclassificaodeCheque1: TMenuItem
        Caption = '&Reclassifica'#231#227'o de Cheque'
        OnClick = ReclassificaodeCheque1Click
      end
      object prevpg1: TMenuItem
        Caption = '&Previs'#227'o de Pagamentos'
        OnClick = prevpg1Click
      end
    end
  end
  object Table4: TTable
    DatabaseName = 'dados'
    IndexFieldNames = 'Filial'
    TableName = 'FILIAIS'
    Left = 152
    Top = 294
    object Table4Filial: TSmallintField
      FieldName = 'Filial'
    end
    object Table4Descrio: TStringField
      FieldName = 'Descri'#231#227'o'
      Size = 40
    end
    object Table4NF: TIntegerField
      FieldName = 'NF'
    end
  end
  object DataSource4: TDataSource
    DataSet = Table4
    Left = 151
    Top = 326
  end
  object Table5: TTable
    DatabaseName = 'dados'
    Filtered = True
    OnFilterRecord = Table5FilterRecord
    IndexFieldNames = 'Cliente'
    TableName = 'Clientes'
    Left = 192
    Top = 298
    object Table5Cliente: TStringField
      FieldName = 'Cliente'
    end
    object Table5RazoSocial: TStringField
      FieldName = 'Raz'#227'o Social'
      Size = 60
    end
    object Table5Cgc: TStringField
      FieldName = 'Cgc'
      EditMask = '##.###.###/####-##;0;_'
      Size = 18
    end
    object Table5InscEstadual: TStringField
      FieldName = 'Insc Estadual'
      Size = 18
    end
    object Table5Lista: TIntegerField
      FieldName = 'Lista'
    end
    object Table5Status: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object Table5Email: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object Table5Filial: TSmallintField
      FieldName = 'Filial'
    end
    object Table5Atividade: TStringField
      FieldName = 'Atividade'
    end
    object Table5Numero: TAutoIncField
      FieldName = 'Numero'
    end
    object Table5NossoCliente: TBooleanField
      FieldName = 'Nosso Cliente'
    end
    object Table5NossoFornecedor: TBooleanField
      FieldName = 'Nosso Fornecedor'
    end
    object Table5Pontualidade: TIntegerField
      FieldName = 'Pontualidade'
    end
    object Table5NumerodeCompras: TIntegerField
      FieldName = 'Numero de Compras'
    end
  end
  object DataSource5: TDataSource
    DataSet = Table5
    Left = 191
    Top = 334
  end
  object Table6: TTable
    DatabaseName = 'dados'
    Filtered = True
    OnFilterRecord = Table6FilterRecord
    IndexFieldNames = 'Cliente;Data'
    TableName = 'Pagtos'
    Left = 240
    Top = 302
    object Table6Lanamento: TAutoIncField
      FieldName = 'Lan'#231'amento'
    end
    object Table6Data: TDateTimeField
      FieldName = 'Data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Table6Codn1: TSmallintField
      FieldName = 'Codn1'
    end
    object Table6Codn2: TSmallintField
      FieldName = 'Codn2'
    end
    object Table6Codn3: TSmallintField
      FieldName = 'Codn3'
    end
    object Table6Histrico: TStringField
      FieldName = 'Hist'#243'rico'
      Size = 40
    end
    object Table6DocRef: TStringField
      FieldName = 'DocRef'
      Size = 15
    end
    object Table6Valor: TCurrencyField
      FieldName = 'Valor'
    end
    object Table6Banco: TSmallintField
      FieldName = 'Banco'
    end
    object Table6Agencia: TSmallintField
      FieldName = 'Agencia'
    end
    object Table6Conta: TStringField
      FieldName = 'Conta'
      Size = 12
    end
    object Table6Cheque: TStringField
      FieldName = 'Cheque'
      Size = 15
    end
    object Table6DataPagto: TDateTimeField
      FieldName = 'Data Pagto'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Table6ValorPago: TCurrencyField
      FieldName = 'Valor Pago'
    end
    object Table6Pago: TBooleanField
      FieldName = 'Pago'
      DisplayValues = 'S;N'
    end
    object Table6Status: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object Table6Periodico: TSmallintField
      FieldName = 'Periodico'
    end
    object Table6Emissao: TDateTimeField
      FieldName = 'Emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Table6CCustoRec: TSmallintField
      FieldName = 'CCustoRec'
    end
    object Table6Controle: TIntegerField
      FieldName = 'Controle'
    end
    object Table6Filial: TSmallintField
      FieldName = 'Filial'
    end
    object Table6itpln: TStringField
      FieldKind = fkLookup
      FieldName = 'itpln'
      LookupDataSet = Table7
      LookupKeyFields = 'Codn1;Codn2;Codn3'
      LookupResultField = 'Descri'#231#227'o'
      KeyFields = 'Codn1;Codn2;Codn3'
      Size = 30
      Lookup = True
    end
    object Table6Cliente: TStringField
      FieldName = 'Cliente'
    end
  end
  object DataSource6: TDataSource
    DataSet = Table6
    Left = 234
    Top = 334
  end
  object Table7: TTable
    DatabaseName = 'dados'
    IndexFieldNames = 'Filial;Codn1;Codn2;Codn3'
    TableName = 'PLCN1'
    Left = 289
    Top = 298
  end
  object Ds1: TDataSource
    DataSet = pag1
    Left = 386
    Top = 328
  end
  object pag1: TTable
    BeforePost = pag1BeforePost
    AfterPost = pag1AfterPost
    DatabaseName = 'dados'
    Filtered = True
    OnFilterRecord = pag1FilterRecord
    IndexFieldNames = 'Data;Cliente'
    TableName = 'Pagtos'
    Left = 384
    Top = 296
    object pag1Lanamento: TAutoIncField
      FieldName = 'Lan'#231'amento'
    end
    object pag1Data: TDateTimeField
      FieldName = 'Data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object pag1Codn1: TSmallintField
      FieldName = 'Codn1'
    end
    object pag1Codn2: TSmallintField
      FieldName = 'Codn2'
    end
    object pag1itpln: TStringField
      FieldKind = fkLookup
      FieldName = 'itpln'
      LookupDataSet = Table7
      LookupKeyFields = 'Codn1;Codn2;Codn3'
      LookupResultField = 'Descri'#231#227'o'
      KeyFields = 'Codn1;Codn2;Codn3'
      Size = 30
      Lookup = True
    end
    object pag1Codn3: TSmallintField
      FieldName = 'Codn3'
    end
    object pag1DocRef: TStringField
      FieldName = 'DocRef'
      Size = 15
    end
    object pag1Valor: TCurrencyField
      FieldName = 'Valor'
    end
    object pag1Banco: TSmallintField
      FieldName = 'Banco'
    end
    object pag1Agencia: TSmallintField
      FieldName = 'Agencia'
    end
    object pag1Conta: TStringField
      FieldName = 'Conta'
      Size = 12
    end
    object pag1Cheque: TStringField
      FieldName = 'Cheque'
      Size = 15
    end
    object pag1DataPagto: TDateTimeField
      FieldName = 'Data Pagto'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object pag1ValorPago: TCurrencyField
      FieldName = 'Valor Pago'
    end
    object pag1Pago: TBooleanField
      AutoGenerateValue = arDefault
      DefaultExpression = 'False'
      FieldName = 'Pago'
    end
    object pag1Histrico: TStringField
      FieldName = 'Hist'#243'rico'
      Size = 40
    end
    object pag1Status: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object pag1Periodico: TSmallintField
      FieldName = 'Periodico'
      OnGetText = pag1PeriodicoGetText
      OnSetText = pag1PeriodicoSetText
    end
    object pag1Emissao: TDateTimeField
      FieldName = 'Emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object pag1CCustoRec: TSmallintField
      FieldName = 'CCustoRec'
    end
    object pag1Controle: TIntegerField
      FieldName = 'Controle'
    end
    object pag1Filial: TSmallintField
      FieldName = 'Filial'
    end
    object pag1Fornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'Fornecedor'
      LookupDataSet = pag3
      LookupKeyFields = 'Cliente'
      LookupResultField = 'Cliente'
      KeyFields = 'Cliente'
      LookupCache = True
      Lookup = True
    end
    object pag1NF: TIntegerField
      FieldName = 'NF'
    end
    object pag1Prazo: TSmallintField
      FieldName = 'Prazo'
    end
    object pag1Percentual: TSmallintField
      FieldName = 'Percentual'
    end
    object pag1cc: TStringField
      FieldKind = fkLookup
      FieldName = 'Centro de Custo'
      LookupDataSet = Table8
      LookupKeyFields = 'Centro de Custo'
      LookupResultField = 'Descri'#231#227'o'
      KeyFields = 'CCustoRec'
      Size = 30
      Lookup = True
    end
    object pag1Cliente: TStringField
      FieldName = 'Cliente'
    end
    object pag1Aprovadopor: TStringField
      FieldName = 'Aprovado por'
      Size = 15
    end
    object pag1DatadaAprovao: TDateTimeField
      FieldName = 'Data da Aprova'#231#227'o'
    end
  end
  object pag2: TTable
    DatabaseName = 'dados'
    TableName = 'Pagtos'
    Left = 424
    Top = 296
    object pag2Lanamento: TAutoIncField
      FieldName = 'Lan'#231'amento'
    end
    object pag2Data: TDateTimeField
      FieldName = 'Data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object pag2Codn1: TSmallintField
      FieldName = 'Codn1'
    end
    object pag2Codn2: TSmallintField
      FieldName = 'Codn2'
    end
    object pag2Codn3: TSmallintField
      FieldName = 'Codn3'
    end
    object pag2Histrico: TStringField
      FieldName = 'Hist'#243'rico'
      Size = 40
    end
    object pag2DocRef: TStringField
      FieldName = 'DocRef'
      Size = 15
    end
    object pag2Valor: TCurrencyField
      FieldName = 'Valor'
    end
    object pag2Banco: TSmallintField
      FieldName = 'Banco'
    end
    object pag2Agencia: TSmallintField
      FieldName = 'Agencia'
    end
    object pag2Conta: TStringField
      FieldName = 'Conta'
      Size = 12
    end
    object pag2Cheque: TStringField
      FieldName = 'Cheque'
      Size = 15
    end
    object pag2DataPagto: TDateTimeField
      FieldName = 'Data Pagto'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object pag2ValorPago: TCurrencyField
      FieldName = 'Valor Pago'
    end
    object pag2Pago: TBooleanField
      FieldName = 'Pago'
    end
    object pag2Status: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object pag2Periodico: TSmallintField
      FieldName = 'Periodico'
    end
    object pag2Emissao: TDateTimeField
      FieldName = 'Emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object pag2CCustoRec: TSmallintField
      FieldName = 'CCustoRec'
    end
    object pag2Controle: TIntegerField
      FieldName = 'Controle'
    end
    object pag2Filial: TSmallintField
      FieldName = 'Filial'
    end
    object pag2NF: TIntegerField
      FieldName = 'NF'
    end
    object pag2Prazo: TSmallintField
      FieldName = 'Prazo'
    end
    object pag2Percentual: TSmallintField
      FieldName = 'Percentual'
    end
    object pag2Cliente: TStringField
      FieldName = 'Cliente'
    end
  end
  object pag3: TTable
    DatabaseName = 'dados'
    Filtered = True
    OnFilterRecord = pag3FilterRecord
    IndexFieldNames = 'Cliente'
    ReadOnly = True
    TableName = 'Clientes'
    Left = 457
    Top = 297
    object pag3NossoFornecedor: TBooleanField
      FieldName = 'Nosso Fornecedor'
    end
    object pag3Cliente: TStringField
      FieldName = 'Cliente'
    end
    object pag3Cgc: TStringField
      FieldName = 'Cgc'
      Size = 18
    end
  end
  object Table8: TTable
    DatabaseName = 'Dados'
    IndexFieldNames = 'Centro de Custo'
    TableName = 'Ccusto'
    Left = 344
    Top = 298
  end
end
