object frmExtratoNC: TfrmExtratoNC
  Left = 316
  Top = 129
  Width = 796
  Height = 569
  Caption = 'Movimento do extrato n'#227'o Conciliado'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 490
    Width = 780
    Height = 41
    Align = alBottom
    Caption = ' '
    TabOrder = 0
    DesignSize = (
      780
      41)
    object cmpTotalCredito: TLabel
      Left = 430
      Top = 17
      Width = 105
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = '0,00'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object cmpTotalDebito: TLabel
      Left = 542
      Top = 17
      Width = 105
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = '0,00'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object cmpMovimento: TLabel
      Left = 654
      Top = 17
      Width = 105
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = '0,00'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 430
      Top = 5
      Width = 105
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'Total de Cr'#233'ditos'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 542
      Top = 5
      Width = 105
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'Total de D'#233'bitos'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 654
      Top = 5
      Width = 105
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'Movimento'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object cmdLancar: TBitBtn
      Left = 126
      Top = 8
      Width = 171
      Height = 25
      Caption = 'Lan'#231'ar'
      TabOrder = 0
      OnClick = cmdLancarClick
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 780
    Height = 490
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 1
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 780
      Height = 490
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel3'
      TabOrder = 0
      object Label11: TLabel
        Left = 0
        Top = 0
        Width = 780
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'Informa'#231#245'es do Extrato Banc'#225'rio'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object StringAlignGrid1: TStringAlignGrid
        Left = 0
        Top = 13
        Width = 428
        Height = 477
        Align = alLeft
        DefaultRowHeight = 18
        FixedColor = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        ParentFont = False
        TabOrder = 0
        OnSelectCell = StringAlignGrid1SelectCell
        ShowCellHints = False
        NextCellEdit = nc_rightup
        ColWidths = (
          64
          138
          85
          79
          34)
        RowHeights = (
          18
          18
          18
          18
          18)
        AlignCol = {030000}
        FixedAlignCol = {030000}
        Cells = (
          0
          0
          'Data'
          1
          0
          'Hist'#243'rico'
          2
          0
          'Documento'
          3
          0
          'Valor'
          4
          0
          'Mov')
      end
      object pagMov: TPageControl
        Left = 428
        Top = 13
        Width = 352
        Height = 477
        ActivePage = tabMovimento
        Align = alClient
        TabOrder = 1
        object tabLancamento: TTabSheet
          Caption = 'Lan'#231'amentos em aberto'
          object Label16: TLabel
            Left = 175
            Top = 0
            Width = 8
            Height = 13
            Caption = 'a'
            Color = 8454143
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object DBCtrlGrid1: TDBCtrlGrid
            Left = 0
            Top = 0
            Width = 344
            Height = 448
            Align = alClient
            AllowDelete = False
            AllowInsert = False
            DataSource = dsLancamento
            PanelHeight = 64
            PanelWidth = 327
            TabOrder = 0
            RowCount = 7
            SelectedColor = 11206642
            object Label7: TLabel
              Left = 19
              Top = 2
              Width = 41
              Height = 13
              Caption = 'Hist'#243'rico'
              FocusControl = DBEdit1
            end
            object Label8: TLabel
              Left = 253
              Top = 5
              Width = 24
              Height = 13
              Caption = 'Valor'
              FocusControl = DBEdit2
            end
            object DBText1: TDBText
              Left = 260
              Top = 41
              Width = 70
              Height = 17
              Alignment = taCenter
              Color = clWhite
              DataField = 'DataVencto'
              DataSource = dsLancamento
              ParentColor = False
            end
            object Label9: TLabel
              Left = 188
              Top = 41
              Width = 71
              Height = 17
              Alignment = taCenter
              AutoSize = False
              Caption = 'Vencimento'
              Color = clGray
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object DBText2: TDBText
              Left = 88
              Top = 42
              Width = 89
              Height = 16
              Alignment = taCenter
              Color = clWhite
              DataField = 'Doc'
              DataSource = dsLancamento
              ParentColor = False
            end
            object Label10: TLabel
              Left = 19
              Top = 42
              Width = 67
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = 'Documento'
              Color = clGray
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object DBCheckBox1: TDBCheckBox
              Left = 4
              Top = 20
              Width = 17
              Height = 17
              DataField = 'Pago'
              DataSource = dsLancamento
              TabOrder = 0
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object DBEdit1: TDBEdit
              Left = 19
              Top = 18
              Width = 227
              Height = 21
              DataField = 'Historico'
              DataSource = dsLancamento
              TabOrder = 1
            end
            object DBEdit2: TDBEdit
              Left = 253
              Top = 17
              Width = 79
              Height = 21
              DataField = 'Valor'
              DataSource = dsLancamento
              TabOrder = 2
            end
          end
        end
        object tabMovimento: TTabSheet
          Caption = 'Movimentos Banc'#225'rios em aberto'
          ImageIndex = 1
          object DBCtrlGrid2: TDBCtrlGrid
            Left = 0
            Top = 0
            Width = 344
            Height = 449
            Align = alClient
            AllowDelete = False
            AllowInsert = False
            DataSource = dsMovBanco1
            PanelHeight = 64
            PanelWidth = 327
            TabOrder = 0
            RowCount = 7
            SelectedColor = 11206642
            object Label2: TLabel
              Left = 252
              Top = 4
              Width = 24
              Height = 13
              Caption = 'Valor'
              FocusControl = DBEdit4
            end
            object DBText3: TDBText
              Left = 76
              Top = 5
              Width = 170
              Height = 17
              Color = clWhite
              DataField = 'Doc'
              DataSource = dsMovBanco1
              ParentColor = False
            end
            object Label3: TLabel
              Left = 24
              Top = 45
              Width = 51
              Height = 17
              Alignment = taCenter
              AutoSize = False
              Caption = 'Emiss'#227'o'
              Color = clGray
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label12: TLabel
              Left = 24
              Top = 5
              Width = 51
              Height = 17
              Alignment = taCenter
              AutoSize = False
              Caption = 'Doc'
              Color = clGray
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label13: TLabel
              Left = 24
              Top = 25
              Width = 51
              Height = 17
              Alignment = taCenter
              AutoSize = False
              Caption = 'Favorec.'
              Color = clGray
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object DBText4: TDBText
              Left = 76
              Top = 45
              Width = 70
              Height = 17
              Alignment = taCenter
              Color = clWhite
              DataField = 'DataEntrada'
              DataSource = dsMovBanco1
              ParentColor = False
            end
            object DBText5: TDBText
              Left = 76
              Top = 25
              Width = 170
              Height = 17
              Color = clWhite
              DataField = 'Favorecido'
              DataSource = dsMovBanco1
              ParentColor = False
            end
            object DBCheckBox2: TDBCheckBox
              Left = 4
              Top = 20
              Width = 17
              Height = 17
              DataField = 'Selecionado'
              DataSource = dsMovBanco1
              TabOrder = 0
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object DBEdit4: TDBEdit
              Left = 251
              Top = 19
              Width = 79
              Height = 21
              DataField = 'Valor'
              DataSource = dsMovBanco1
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  object dbLancamento: TMSTable
    TableName = 'dbo.Lancamentos'
    Connection = frmMenu.dadosfin
    Filtered = True
    OnFilterRecord = dbLancamentoFilterRecord
    IndexFieldNames = 'DataVencto;Cliente'
    Left = 136
    Top = 240
    object dbLancamentoFilial: TIntegerField
      FieldName = 'Filial'
    end
    object dbLancamentoLancamento: TAutoIncField
      FieldName = 'Lancamento'
      ReadOnly = True
    end
    object dbLancamentoCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbLancamentoClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
    end
    object dbLancamentoPrazo: TIntegerField
      FieldName = 'Prazo'
    end
    object dbLancamentoCod1: TSmallintField
      FieldName = 'Cod1'
    end
    object dbLancamentoCod2: TSmallintField
      FieldName = 'Cod2'
    end
    object dbLancamentoCod3: TSmallintField
      FieldName = 'Cod3'
    end
    object dbLancamentoHistorico: TStringField
      FieldName = 'Historico'
      Size = 60
    end
    object dbLancamentoDoc: TStringField
      FieldName = 'Doc'
    end
    object dbLancamentoValor: TCurrencyField
      FieldName = 'Valor'
    end
    object dbLancamentoTributo: TBooleanField
      FieldName = 'Tributo'
    end
    object dbLancamentoBancoID: TIntegerField
      FieldName = 'BancoID'
    end
    object dbLancamentoCheque: TStringField
      FieldName = 'Cheque'
    end
    object dbLancamentoValorPago: TCurrencyField
      FieldName = 'ValorPago'
    end
    object dbLancamentoPago: TBooleanField
      FieldName = 'Pago'
    end
    object dbLancamentoSelecionado: TBooleanField
      FieldName = 'Selecionado'
    end
    object dbLancamentoStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object dbLancamentoPrevisao: TIntegerField
      FieldName = 'Previsao'
    end
    object dbLancamentoMovBanco: TIntegerField
      FieldName = 'MovBanco'
    end
    object dbLancamentoNF: TIntegerField
      FieldName = 'NF'
    end
    object dbLancamentoSeq: TStringField
      FieldName = 'Seq'
      Size = 1
    end
    object dbLancamentoPorcentagem: TFloatField
      FieldName = 'Porcentagem'
    end
    object dbLancamentoUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object dbLancamentoUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Size = 10
    end
    object dbLancamentoContabilizado: TBooleanField
      FieldName = 'Contabilizado'
    end
    object dbLancamentoDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
    end
    object dbLancamentoDataVencto: TDateTimeField
      FieldName = 'DataVencto'
    end
    object dbLancamentoDataPagto: TDateTimeField
      FieldName = 'DataPagto'
    end
    object dbLancamentoDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
    end
    object dbLancamentoDataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
    end
  end
  object dsLancamento: TDataSource
    DataSet = dbLancamento
    Left = 137
    Top = 273
  end
  object dbMovBanco: TMSTable
    TableName = 'dbo.MovBanco'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'BancoID;DataEntrada'
    Left = 168
    Top = 240
    object dbMovBancoMovBanco: TAutoIncField
      FieldName = 'MovBanco'
      ReadOnly = True
    end
    object dbMovBancoBancoID: TIntegerField
      FieldName = 'BancoID'
    end
    object dbMovBancoFundo: TIntegerField
      FieldName = 'Fundo'
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
    object dbMovBancoCruzado: TBooleanField
      FieldName = 'Cruzado'
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
    object dbMovBancoUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Size = 10
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
  end
  object dbConta: TMSTable
    TableName = 'dbo.CCorrente'
    Connection = frmMenu.dadosfin
    Left = 200
    Top = 240
    object dbContaBancoID: TAutoIncField
      FieldName = 'BancoID'
      Origin = 'dbo.CCorrente.BancoID'
      ReadOnly = True
    end
    object dbContaBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'dbo.CCorrente.Banco'
    end
    object dbContaConta: TStringField
      FieldName = 'Conta'
      Origin = 'dbo.CCorrente.Conta'
      Size = 15
    end
    object dbContaNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.CCorrente.Nome'
      Size = 40
    end
    object dbContaSigla: TStringField
      FieldName = 'Sigla'
      Origin = 'dbo.CCorrente.Sigla'
      Size = 3
    end
    object dbContaEndereco: TMemoField
      FieldName = 'Endereco'
      Origin = 'dbo.CCorrente.Endereco'
      BlobType = ftMemo
    end
    object dbContaGerente: TStringField
      FieldName = 'Gerente'
      Origin = 'dbo.CCorrente.Gerente'
      Size = 30
    end
    object dbContaFone: TStringField
      FieldName = 'Fone'
      Origin = 'dbo.CCorrente.Fone'
      Size = 25
    end
    object dbContaFax: TStringField
      FieldName = 'Fax'
      Origin = 'dbo.CCorrente.Fax'
      Size = 25
    end
    object dbContaSite: TStringField
      FieldName = 'Site'
      Origin = 'dbo.CCorrente.Site'
      Size = 60
    end
    object dbContaFilial: TSmallintField
      FieldName = 'Filial'
      Origin = 'dbo.CCorrente.Filial'
    end
    object dbContaUltimoCheque: TIntegerField
      FieldName = 'UltimoCheque'
      Origin = 'dbo.CCorrente.UltimoCheque'
    end
    object dbContaSaldoFechamento: TCurrencyField
      FieldName = 'SaldoFechamento'
      Origin = 'dbo.CCorrente.SaldoFechamento'
    end
    object dbContaUsuarioFechamento: TStringField
      FieldName = 'UsuarioFechamento'
      Origin = 'dbo.CCorrente.UsuarioFechamento'
      Size = 10
    end
    object dbContaSaldoAtual: TCurrencyField
      FieldName = 'SaldoAtual'
      Origin = 'dbo.CCorrente.SaldoAtual'
    end
    object dbContaLimiteCredito: TCurrencyField
      FieldName = 'LimiteCredito'
      Origin = 'dbo.CCorrente.LimiteCredito'
    end
    object dbContaStatus: TStringField
      FieldName = 'Status'
      Origin = 'dbo.CCorrente.Status'
      Size = 1
    end
    object dbContaUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.CCorrente.Usuario'
      Size = 10
    end
    object dbContaDataFechamento: TDateTimeField
      FieldName = 'DataFechamento'
      Origin = 'dbo.CCorrente.DataFechamento'
    end
    object dbContaDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'dbo.CCorrente.DataInclusao'
    end
  end
  object dbMovBanco1: TMSTable
    TableName = 'dbo.MovBanco'
    Connection = frmMenu.dadosfin
    Filtered = True
    OnFilterRecord = dbMovBanco1FilterRecord
    IndexFieldNames = 'BancoID;DataEntrada'
    Left = 232
    Top = 240
    object dbMovBanco1MovBanco: TAutoIncField
      FieldName = 'MovBanco'
      ReadOnly = True
    end
    object dbMovBanco1BancoID: TIntegerField
      FieldName = 'BancoID'
    end
    object dbMovBanco1Fundo: TIntegerField
      FieldName = 'Fundo'
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
    object dbMovBanco1Cruzado: TBooleanField
      FieldName = 'Cruzado'
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
    object dbMovBanco1Pago: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'Pago'
      Calculated = True
    end
    object dbMovBanco1Selecionado: TBooleanField
      FieldName = 'Selecionado'
    end
    object dbMovBanco1UsuarioI: TStringField
      FieldName = 'UsuarioI'
      Size = 10
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
    Left = 232
    Top = 272
  end
end
