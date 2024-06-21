object frmOrcamento: TfrmOrcamento
  Left = 230
  Top = 175
  Width = 744
  Height = 480
  Caption = 'Distruibui'#231#227'o Or'#231'amentaria'
  Color = clBtnFace
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
  object PageControl1: TPageControl
    Left = 0
    Top = 27
    Width = 736
    Height = 419
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Distribui'#231#227'o Or'#231'ament'#225'ria'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 728
        Height = 74
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 108
          Top = 10
          Width = 19
          Height = 13
          Caption = 'Ano'
        end
        object BitBtn1: TBitBtn
          Left = 18
          Top = 19
          Width = 75
          Height = 25
          Caption = 'Calcular'
          TabOrder = 0
          OnClick = BitBtn1Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
            73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
            0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
            0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
            0333337F777777737F333308888888880333337F333333337F33330888888888
            03333373FFFFFFFF733333700000000073333337777777773333}
          NumGlyphs = 2
        end
        object rdgNivel: TRadioGroup
          Left = 305
          Top = 0
          Width = 100
          Height = 74
          Align = alRight
          Caption = 'Visualiza'
          ItemIndex = 2
          Items.Strings = (
            'Nivel 1'
            'Nivel 2'
            'Nivel 3'
            'Nivel 4')
          TabOrder = 1
          OnClick = rdgNivelClick
        end
        object rdgZero: TRadioGroup
          Left = 210
          Top = 0
          Width = 95
          Height = 74
          Align = alRight
          Caption = 'Visualiza'
          ItemIndex = 0
          Items.Strings = (
            'Todos'
            'com Valores')
          TabOrder = 2
          OnClick = rdgNivelClick
        end
        object Panel2: TPanel
          Left = 405
          Top = 0
          Width = 323
          Height = 74
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 3
          object Label2: TLabel
            Left = 0
            Top = 0
            Width = 323
            Height = 13
            Align = alTop
            Alignment = taCenter
            Caption = 'Selecione as Filiais'
            Color = 8454143
            ParentColor = False
          end
          object CheckListBox1: TCheckListBox
            Left = 0
            Top = 13
            Width = 323
            Height = 61
            Align = alClient
            Columns = 1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              'B&B'
              '3B')
            ParentFont = False
            TabOrder = 0
          end
        end
        object Edit1: TEdit
          Left = 108
          Top = 24
          Width = 55
          Height = 21
          TabOrder = 4
          Text = 'Edit1'
        end
        object UpDown1: TUpDown
          Left = 162
          Top = 22
          Width = 17
          Height = 25
          TabOrder = 5
        end
      end
      object TabControl1: TTabControl
        Left = 0
        Top = 74
        Width = 728
        Height = 317
        Align = alClient
        TabOrder = 1
        Tabs.Strings = (
          'Jan'
          'Fev'
          'Mar'
          'Abr'
          'Mai'
          'Jun'
          'Jul'
          'Ago'
          'Set'
          'Out'
          'Nov'
          'Dez')
        TabIndex = 0
        object grdOrcamento: TDBGrid
          Left = 4
          Top = 24
          Width = 720
          Height = 276
          Align = alClient
          DataSource = dsOrcamento
          FixedColor = clHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clHighlightText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = grdOrcamentoDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'PlanoNome'
              Title.Caption = 'Descri'#231#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Total'
              Title.Alignment = taRightJustify
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PorcentagemP'
              Title.Alignment = taRightJustify
              Title.Caption = 'Previs'#227'o (%)'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Porcentagem'
              Title.Alignment = taRightJustify
              Title.Caption = 'Real (%)'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Total1'
              Title.Alignment = taRightJustify
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Porcentagem1'
              Title.Alignment = taRightJustify
              Title.Caption = '(%)'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Total2'
              Title.Alignment = taRightJustify
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Porcentagem2'
              Title.Alignment = taRightJustify
              Title.Caption = '(%)'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor3'
              Title.Alignment = taRightJustify
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Porcentagem3'
              Title.Alignment = taRightJustify
              Title.Caption = '(%)'
              Width = 50
              Visible = True
            end>
        end
        object pbOrc: TProgressBar
          Left = 4
          Top = 300
          Width = 720
          Height = 13
          Align = alBottom
          TabOrder = 1
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Provisionamento'
      ImageIndex = 2
      object grdProvisao: TDBGrid
        Left = 0
        Top = 41
        Width = 728
        Height = 350
        Align = alClient
        DataSource = dsOrcamento
        FixedColor = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clHighlightText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = grdProvisaoDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'PlanoNome'
            Title.Caption = 'Descri'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total'
            Title.Alignment = taRightJustify
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PorcentagemP'
            Title.Alignment = taRightJustify
            Title.Caption = 'Previs'#227'o (%)'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Porcentagem'
            Title.Alignment = taRightJustify
            Title.Caption = 'Real (%)'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total3'
            Title.Alignment = taRightJustify
            Title.Caption = 'Provis'#227'o'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Porcentagem3'
            Title.Alignment = taRightJustify
            Title.Caption = '(%)'
            Width = 50
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 728
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label4: TLabel
          Left = 18
          Top = 5
          Width = 91
          Height = 13
          Caption = 'Total Provisionado:'
        end
        object Label5: TLabel
          Left = 117
          Top = 5
          Width = 71
          Height = 13
          Caption = 'R$ 1.000,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 78
          Top = 24
          Width = 34
          Height = 13
          Caption = 'Banco:'
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 115
          Top = 18
          Width = 145
          Height = 21
          KeyField = 'BancoID'
          ListField = 'Nome'
          TabOrder = 0
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Classifica'#231#227'o dos Clientes'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 728
        Height = 391
        Align = alClient
        DataSource = dsOrcamentoCli
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Orcamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente'
            Width = 304
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Apelido'
            Visible = True
          end>
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 736
    Height = 27
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label3: TLabel
      Left = 9
      Top = 8
      Width = 82
      Height = 13
      Caption = 'Selecione a Filial '
    end
    object cmbFilial: TDBLookupComboBox
      Left = 96
      Top = 3
      Width = 465
      Height = 21
      KeyField = 'Filial'
      ListField = 'Nome'
      ListSource = dsFilial
      TabOrder = 0
    end
  end
  object dbPlanoC: TTable
    DatabaseName = 'dados'
    IndexFieldNames = 'Cod1;Cod2;Cod3'
    TableName = 'PlanoContas.db'
    Left = 75
    Top = 399
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
    Left = 106
    Top = 400
  end
  object dbOrcamento: TTable
    OnCalcFields = dbOrcamentoCalcFields
    DatabaseName = 'dados'
    Filtered = True
    OnFilterRecord = dbOrcamentoFilterRecord
    IndexFieldNames = 'Ano;Mes;Cod1;Cod2;Cod3;Cod4'
    TableName = 'Orcamento.DB'
    Left = 137
    Top = 400
    object dbOrcamentoMes: TIntegerField
      FieldName = 'Mes'
    end
    object dbOrcamentoAno: TIntegerField
      FieldName = 'Ano'
    end
    object dbOrcamentoCod1: TSmallintField
      FieldName = 'Cod1'
    end
    object dbOrcamentoCod2: TSmallintField
      FieldName = 'Cod2'
    end
    object dbOrcamentoCod3: TSmallintField
      FieldName = 'Cod3'
    end
    object dbOrcamentoCod4: TSmallintField
      FieldName = 'Cod4'
    end
    object dbOrcamentoTotal: TCurrencyField
      FieldName = 'Total'
    end
    object dbOrcamentoPorcentagem: TFloatField
      FieldName = 'Porcentagem'
      DisplayFormat = '##0.00'
    end
    object dbOrcamentoTotal1: TCurrencyField
      FieldName = 'Total1'
    end
    object dbOrcamentoPorcentagem1: TFloatField
      FieldName = 'Porcentagem1'
      DisplayFormat = '##0.00'
    end
    object dbOrcamentoTotal2: TCurrencyField
      FieldName = 'Total2'
    end
    object dbOrcamentoPorcentagem2: TFloatField
      FieldName = 'Porcentagem2'
      DisplayFormat = '##0.00'
    end
    object dbOrcamentoTotal3: TCurrencyField
      FieldName = 'Total3'
    end
    object dbOrcamentoPorcentagem3: TFloatField
      FieldName = 'Porcentagem3'
      DisplayFormat = '##0.00'
    end
    object dbOrcamentoPlanoNome: TStringField
      FieldKind = fkCalculated
      FieldName = 'PlanoNome'
      Size = 50
      Calculated = True
    end
    object dbOrcamentoPorcentagemP: TFloatField
      FieldName = 'PorcentagemP'
      DisplayFormat = '##0.00'
    end
  end
  object dsOrcamento: TDataSource
    DataSet = dbOrcamento
    Left = 169
    Top = 400
  end
  object dbPagar: TTable
    DatabaseName = 'Dados'
    IndexFieldNames = 'Filial;DataVencto;Cliente'
    TableName = 'Lancamentos.db'
    Left = 198
    Top = 400
    object dbPagarFilial: TIntegerField
      FieldName = 'Filial'
    end
    object dbPagarLancamento: TAutoIncField
      FieldName = 'Lancamento'
      ReadOnly = True
    end
    object dbPagarCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbPagarClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
    end
    object dbPagarDataEmissao: TDateField
      FieldName = 'DataEmissao'
    end
    object dbPagarDataVencto: TDateField
      FieldName = 'DataVencto'
    end
    object dbPagarPrazo: TIntegerField
      FieldName = 'Prazo'
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
    object dbPagarTributo: TBooleanField
      FieldName = 'Tributo'
    end
    object dbPagarBancoID: TIntegerField
      FieldName = 'BancoID'
    end
    object dbPagarCheque: TStringField
      FieldName = 'Cheque'
    end
    object dbPagarDataPagto: TDateField
      FieldName = 'DataPagto'
    end
    object dbPagarValorPago: TCurrencyField
      FieldName = 'ValorPago'
    end
    object dbPagarPago: TBooleanField
      FieldName = 'Pago'
    end
    object dbPagarSelecionado: TBooleanField
      FieldName = 'Selecionado'
    end
    object dbPagarStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object dbPagarPrevisao: TIntegerField
      FieldName = 'Previsao'
    end
    object dbPagarMovBanco: TIntegerField
      FieldName = 'MovBanco'
    end
    object dbPagarNF: TIntegerField
      FieldName = 'NF'
    end
    object dbPagarSeq: TStringField
      FieldName = 'Seq'
      Size = 1
    end
    object dbPagarPorcentagem: TFloatField
      FieldName = 'Porcentagem'
    end
    object dbPagarDataInclusao: TDateField
      FieldName = 'DataInclusao'
    end
    object dbPagarUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
  end
  object dsPagar: TDataSource
    DataSet = dbPagar
    Left = 225
    Top = 400
  end
  object dbOrcamentoCli: TTable
    DatabaseName = 'dados'
    IndexFieldNames = 'Orcamento;Cliente'
    MasterFields = 'Filial'
    TableName = 'OrcamentoCli.DB'
    Left = 255
    Top = 400
    object dbOrcamentoCliOrcamento: TIntegerField
      FieldName = 'Orcamento'
    end
    object dbOrcamentoCliCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbOrcamentoCliApelido: TStringField
      FieldName = 'Apelido'
      Size = 15
    end
  end
  object dsOrcamentoCli: TDataSource
    DataSet = dbOrcamentoCli
    Left = 286
    Top = 400
  end
  object dbFilial: TTable
    DatabaseName = 'dados'
    IndexFieldNames = 'Filial'
    TableName = 'Filiais.DB'
    Left = 316
    Top = 400
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
    Left = 352
    Top = 399
  end
  object dbPlanoCBusca: TTable
    DatabaseName = 'dados'
    IndexFieldNames = 'Cod1;Cod2;Cod3'
    TableName = 'PlanoContas.db'
    Left = 76
    Top = 368
    object dbPlanoCBuscaCod1: TSmallintField
      FieldName = 'Cod1'
    end
    object dbPlanoCBuscaCod2: TSmallintField
      FieldName = 'Cod2'
    end
    object dbPlanoCBuscaCod3: TSmallintField
      FieldName = 'Cod3'
    end
    object dbPlanoCBuscaDescricao: TStringField
      FieldName = 'Descricao'
      Size = 40
    end
  end
end
