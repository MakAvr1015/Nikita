inherited FrmImport: TFrmImport
  BorderStyle = bsDialog
  Caption = #1047#1072#1075#1088#1091#1079#1082#1072
  ClientHeight = 547
  ClientWidth = 460
  ExplicitWidth = 466
  ExplicitHeight = 572
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 528
    Width = 460
    ExplicitTop = 528
    ExplicitWidth = 460
  end
  inherited Panel3: TPanel
    Width = 460
    Height = 528
    ExplicitWidth = 460
    ExplicitHeight = 528
    inherited RzToolbar: TRzToolbar
      Width = 458
      Height = 25
      ExplicitWidth = 458
      ExplicitHeight = 25
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
        BtnExit
        BtnSave
        BtnDelete)
      inherited BtnNew: TRzToolButton
        Top = 0
      end
      inherited BtnOpen: TRzToolButton
        Top = 0
        Enabled = True
        OnClick = BtnOpenClick
        ExplicitTop = 0
      end
      inherited BtnFind: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnPrint: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnOK: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnCancel: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnRefresh: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnEdit: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnExecute: TRzToolButton
        Top = 0
        Enabled = True
        OnClick = BtnExecuteClick
        ExplicitTop = 0
      end
      inherited BtnDelete: TRzToolButton
        Left = 318
        Top = 0
        ExplicitLeft = 318
        ExplicitTop = 0
      end
      inherited BtnSave: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnExit: TRzToolButton
        Left = 268
        Top = 0
        ExplicitLeft = 268
        ExplicitTop = 0
      end
      inherited BtnView: TRzToolButton
        Top = 0
        Visible = False
        ExplicitTop = 0
      end
    end
    object XLSList: TRzListBox
      Left = 9
      Top = 104
      Width = 184
      Height = 138
      ItemHeight = 16
      Style = lbOwnerDrawFixed
      TabOrder = 1
    end
    object EdFIeldList: TRzListBox
      Left = 279
      Top = 65
      Width = 170
      Height = 177
      ItemHeight = 13
      TabOrder = 2
    end
    object ComboSheetList: TRzComboBox
      Left = 10
      Top = 65
      Width = 184
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 3
      OnChange = ComboSheetListChange
    end
    object ValueListEditor: TValueListEditor
      Left = 9
      Top = 248
      Width = 440
      Height = 184
      TabOrder = 4
      TitleCaptions.Strings = (
        #1060#1072#1081#1083
        #1041#1044)
      ColWidths = (
        215
        219)
    end
    object BitBtn: TBitBtn
      Left = 199
      Top = 125
      Width = 74
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 5
      OnClick = BitBtnClick
    end
    object StringGridSample: TStringGrid
      Left = 9
      Top = 438
      Width = 439
      Height = 53
      FixedCols = 0
      TabOrder = 6
      Visible = False
    end
    object StaticText: TStaticText
      Left = 10
      Top = 36
      Width = 439
      Height = 23
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 7
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object OpenDialog: TOpenDialog
    Filter = 'Excell|*.xls|CSV|*.txt;*.csv'
    Left = 232
    Top = 312
  end
  object ADOConnection: TADOConnection
    LoginPrompt = False
    Left = 328
    Top = 312
  end
  object ADOTable: TADOTable
    Connection = ADOConnection
    LockType = ltReadOnly
    Left = 184
    Top = 312
  end
end
