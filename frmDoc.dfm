object frmDocs: TfrmDocs
  Left = 315
  Top = 169
  Width = 928
  Height = 480
  Caption = 'frmDocs'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel14: TPanel
    Left = 0
    Top = 113
    Width = 315
    Height = 329
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object Label24: TLabel
      Left = 0
      Top = 0
      Width = 315
      Height = 13
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Selecione os arquivos'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Splitter2: TSplitter
      Left = 142
      Top = 13
      Width = 6
      Height = 316
    end
    object ShellTreeView1: TShellTreeView
      Left = 0
      Top = 13
      Width = 142
      Height = 316
      ObjectTypes = [otFolders]
      Root = 'rfDesktop'
      ShellListView = ShellListView1
      UseShellImages = True
      Align = alLeft
      AutoRefresh = False
      Indent = 19
      ParentColor = False
      RightClickSelect = True
      ShowRoot = False
      TabOrder = 0
      OnDragOver = ShellTreeView1DragOver
    end
    object ShellListView2: TShellListView
      Left = 148
      Top = 13
      Width = 167
      Height = 316
      ObjectTypes = [otNonFolders]
      Root = 'rfDesktop'
      ShellTreeView = ShellTreeView1
      Sorted = True
      Align = alClient
      DragMode = dmAutomatic
      ReadOnly = False
      HideSelection = False
      IconOptions.AutoArrange = True
      IconOptions.WrapText = False
      OnDragDrop = ShellListView2DragDrop
      OnDragOver = ShellListView2DragOver
      ShowColumnHeaders = False
      TabOrder = 1
      ViewStyle = vsReport
    end
  end
  object Panel15: TPanel
    Left = 315
    Top = 113
    Width = 597
    Height = 329
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Label25: TLabel
      Left = 0
      Top = 0
      Width = 597
      Height = 13
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Anexos '
      Color = 11206642
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object ShellListView1: TShellListView
      Left = 0
      Top = 13
      Width = 597
      Height = 316
      AutoRefresh = True
      ObjectTypes = [otNonFolders]
      Root = 'rfDesktop'
      ShellTreeView = ShellTreeView1
      Sorted = True
      Align = alClient
      DragMode = dmAutomatic
      ReadOnly = False
      HideSelection = False
      OnDragDrop = ShellListView1DragDrop
      OnDragOver = ShellListView1DragOver
      TabOrder = 0
      OnKeyDown = ShellListView1KeyDown
    end
  end
  object Panel16: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 113
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 0
      Width = 240
      Height = 25
      DataSource = dsDoc
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 256
      Top = 0
      Width = 656
      Height = 113
      Align = alRight
      DataSource = dsDoc
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Documento'
          Width = 472
          Visible = True
        end>
    end
  end
  object dados: TMSConnection
    Database = 'BBDoc'
    Authentication = auWindows
    Options.Provider = 'SQLOLEDB.1'
    Server = 'ANDROS-VOSTRO\SQLEXPRESS'
    Connected = True
    Left = 48
    Top = 75
  end
  object dbDoc: TMSQuery
    Connection = dados
    SQL.Strings = (
      'Select * from Documento')
    BeforeClose = dbDocBeforeClose
    BeforePost = dbDocBeforePost
    BeforeScroll = dbDocBeforeScroll
    AfterScroll = dbDocAfterScroll
    Left = 80
    Top = 75
    object dbDocDocumento: TBlobField
      FieldName = 'Documento'
    end
    object dbDocCodigo: TIntegerField
      FieldName = 'Codigo'
      ReadOnly = True
    end
  end
  object HKStreams1: THKStreams
    Compressed = True
    Encrypted = False
    Left = 18
    Top = 75
  end
  object dsDoc: TDataSource
    DataSet = dbDoc
    Left = 112
    Top = 74
  end
end
