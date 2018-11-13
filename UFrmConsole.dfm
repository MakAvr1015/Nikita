inherited FrmConsole: TFrmConsole
  Caption = #1050#1086#1085#1089#1086#1083#1100
  ClientHeight = 502
  ClientWidth = 735
  ExplicitWidth = 743
  ExplicitHeight = 529
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 483
    Width = 735
    ExplicitTop = 483
    ExplicitWidth = 735
  end
  inherited Panel3: TPanel
    Width = 735
    Height = 483
    ExplicitWidth = 735
    ExplicitHeight = 483
    inherited RzToolbar: TRzToolbar
      Width = 733
      Height = 29
      ExplicitWidth = 733
      ExplicitHeight = 29
      ToolbarControls = (
        BtnNew
        BtnEdit
        BtnView
        BtnOpen
        BtnRefresh
        BtnFind
        BtnPrint
        BtnOK
        BtnCancel
        BtnExecute
        BtnDelete
        BtnSave
        BtnExit)
      inherited BtnNew: TRzToolButton
        Top = 2
        Enabled = False
        ExplicitTop = 2
      end
      inherited BtnOpen: TRzToolButton
        Top = 2
        Enabled = True
        OnClick = BtnOpenClick
        ExplicitTop = 2
      end
      inherited BtnFind: TRzToolButton
        Top = 2
        ExplicitTop = 2
      end
      inherited BtnPrint: TRzToolButton
        Top = 2
        ExplicitTop = 2
      end
      inherited BtnOK: TRzToolButton
        Top = 2
        Enabled = False
        ExplicitTop = 2
      end
      inherited BtnCancel: TRzToolButton
        Top = 2
        Enabled = False
        ExplicitTop = 2
      end
      inherited BtnRefresh: TRzToolButton
        Top = 2
        ExplicitTop = 2
      end
      inherited BtnEdit: TRzToolButton
        Top = 2
        ExplicitTop = 2
      end
      inherited BtnExecute: TRzToolButton
        Top = 2
        Enabled = True
        OnClick = BtnExecuteClick
        ExplicitTop = 2
      end
      inherited BtnDelete: TRzToolButton
        Top = 2
        ExplicitTop = 2
      end
      inherited BtnSave: TRzToolButton
        Top = 2
        ExplicitTop = 2
      end
      inherited BtnExit: TRzToolButton
        Top = 2
        ExplicitTop = 2
      end
      inherited BtnView: TRzToolButton
        Top = 2
        ExplicitTop = 2
      end
    end
    object cxPageControl: TcxPageControl
      Left = 1
      Top = 30
      Width = 733
      Height = 203
      ActivePage = cxTabSheetQuery
      Align = alTop
      TabOrder = 1
      ExplicitTop = 26
      ClientRectBottom = 203
      ClientRectRight = 733
      ClientRectTop = 24
      object cxTabSheetQuery: TcxTabSheet
        Caption = #1047#1072#1087#1088#1086#1089
        ImageIndex = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxMemoQuery: TcxMemo
          Left = 0
          Top = 0
          Align = alClient
          Properties.ScrollBars = ssBoth
          TabOrder = 0
          Height = 179
          Width = 733
        end
      end
      object cxTabSheetScrip: TcxTabSheet
        Caption = #1057#1082#1088#1080#1087#1090
        ImageIndex = 1
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxMemoScript: TcxMemo
          Left = 0
          Top = 0
          Align = alClient
          Properties.ScrollBars = ssBoth
          TabOrder = 0
          Height = 179
          Width = 733
        end
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 1
      Top = 233
      Width = 733
      Height = 8
      HotZoneClassName = 'TcxSimpleStyle'
      AlignSplitter = salTop
      Control = cxPageControl
      ExplicitTop = 229
      ExplicitWidth = 8
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 241
      Width = 733
      Height = 241
      Align = alClient
      DataSource = DataSource1
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object pFIBTransaction: TpFIBTransaction
    DefaultDatabase = DM.pFIBDatabase
    TRParams.Strings = (
      'write'
      'nowait'
      'read_committed'
      'rec_version')
    AfterStart = pFIBTransactionAfterStart
    AfterEnd = pFIBTransactionAfterEnd
    TPBMode = tpbDefault
    Left = 536
    Top = 32
  end
  object pFIBScripter: TpFIBScripter
    Database = DM.pFIBDatabase
    Transaction = pFIBTransaction
    Left = 536
    Top = 96
  end
  object OpenDialog: TOpenDialog
    Left = 624
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = pFIBDataSet
    Left = 584
    Top = 120
  end
  object pFIBDataSet: TpFIBDataSet
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 496
    Top = 64
  end
end
