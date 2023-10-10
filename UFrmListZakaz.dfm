inherited FrmListZakaz: TFrmListZakaz
  Caption = #1046#1091#1088#1085#1072#1083' '#1079#1072#1082#1072#1079#1086#1074
  ClientHeight = 518
  ClientWidth = 965
  ExplicitWidth = 981
  ExplicitHeight = 557
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 499
    Width = 965
    ExplicitTop = 499
    ExplicitWidth = 965
  end
  inherited Panel3: TPanel
    Width = 965
    Height = 499
    ExplicitWidth = 965
    ExplicitHeight = 499
    inherited RzToolbar: TRzToolbar
      Width = 963
      Height = 40
      RowHeight = 40
      ButtonLayout = blGlyphTop
      ButtonWidth = 60
      ButtonHeight = 40
      ShowButtonCaptions = True
      TextOptions = ttoShowTextLabels
      Transparent = True
      ExplicitWidth = 963
      ExplicitHeight = 40
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
        Top = 0
        Layout = blGlyphTop
        ExplicitTop = 0
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnOpen: TRzToolButton
        Left = 225
        Top = 0
        Layout = blGlyphTop
        ExplicitLeft = 225
        ExplicitTop = 0
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnFind: TRzToolButton
        Left = 345
        Top = 0
        Layout = blGlyphTop
        ExplicitLeft = 345
        ExplicitTop = 0
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnPrint: TRzToolButton
        Left = 405
        Top = 0
        Width = 74
        Height = 40
        Layout = blGlyphTop
        ExplicitLeft = 405
        ExplicitTop = 0
        ExplicitWidth = 74
        ExplicitHeight = 40
      end
      inherited BtnOK: TRzToolButton
        Left = 479
        Top = 0
        Layout = blGlyphTop
        ExplicitLeft = 479
        ExplicitTop = 0
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnCancel: TRzToolButton
        Left = 539
        Top = 0
        Layout = blGlyphTop
        ExplicitLeft = 539
        ExplicitTop = 0
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnRefresh: TRzToolButton
        Left = 285
        Top = 0
        Layout = blGlyphTop
        ExplicitLeft = 285
        ExplicitTop = 0
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnEdit: TRzToolButton
        Left = 64
        Top = 0
        Width = 87
        Height = 40
        Layout = blGlyphTop
        ExplicitLeft = 64
        ExplicitTop = 0
        ExplicitWidth = 87
        ExplicitHeight = 40
      end
      inherited BtnExecute: TRzToolButton
        Left = 599
        Top = 0
        Width = 64
        Height = 40
        Layout = blGlyphTop
        ExplicitLeft = 599
        ExplicitTop = 0
        ExplicitWidth = 64
        ExplicitHeight = 40
      end
      inherited BtnDelete: TRzToolButton
        Left = 663
        Top = 0
        Layout = blGlyphTop
        ExplicitLeft = 663
        ExplicitTop = 0
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnSave: TRzToolButton
        Left = 723
        Top = 0
        Width = 63
        Height = 40
        Layout = blGlyphTop
        ExplicitLeft = 723
        ExplicitTop = 0
        ExplicitWidth = 63
        ExplicitHeight = 40
      end
      inherited BtnExit: TRzToolButton
        Left = 786
        Top = 0
        Layout = blGlyphTop
        ExplicitLeft = 786
        ExplicitTop = 0
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnView: TRzToolButton
        Left = 151
        Top = 0
        Width = 74
        Height = 40
        Layout = blGlyphTop
        ExplicitLeft = 151
        ExplicitTop = 0
        ExplicitWidth = 74
        ExplicitHeight = 40
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 41
      Width = 963
      Height = 457
      Align = alClient
      TabOrder = 1
      ExplicitLeft = 248
      ExplicitTop = 216
      ExplicitWidth = 250
      ExplicitHeight = 200
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dsListZakaz: TpFIBDataSet
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    Left = 568
    Top = 304
  end
  object pFIBTransaction: TpFIBTransaction
    Left = 560
    Top = 368
  end
  object SrListZakaz: TDataSource
    DataSet = dsListZakaz
    Left = 624
    Top = 312
  end
end
