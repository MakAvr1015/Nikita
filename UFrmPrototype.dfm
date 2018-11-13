object FrmPrototype: TFrmPrototype
  Left = 0
  Top = 0
  Caption = #1055#1088#1086#1090#1086#1090#1080#1087
  ClientHeight = 323
  ClientWidth = 615
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 304
    Width = 615
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    Color = 12880471
    GradientColorStyle = gcsCustom
    GradientColorStart = clBackground
    GradientColorStop = clGradientActiveCaption
    TabOrder = 0
    VisualStyle = vsGradient
    object DsFormName: TRzStatusPane
      Left = 0
      Top = 0
      Height = 19
      Align = alLeft
      Visible = False
      ExplicitLeft = 426
      ExplicitHeight = 20
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 615
    Height = 304
    Align = alClient
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 1
    object RzToolbar: TRzToolbar
      Left = 1
      Top = 1
      Width = 613
      Height = 25
      Images = DM.ImageList
      AutoSize = True
      BorderInner = fsNone
      BorderOuter = fsGroove
      BorderSides = [sdTop]
      BorderWidth = 0
      Color = clGradientActiveCaption
      GradientColorStyle = gcsCustom
      GradientColorStop = clGradientActiveCaption
      TabOrder = 0
      VisualStyle = vsGradient
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
      object BtnNew: TRzToolButton
        Left = 4
        Top = 0
        Hint = #1057#1086#1079#1076#1072#1090#1100
        DisabledIndex = 1
        ImageIndex = 0
        Caption = #1057#1086#1079#1076#1072#1090#1100
        ParentShowHint = False
        ShowHint = True
      end
      object BtnOpen: TRzToolButton
        Left = 79
        Top = 0
        Hint = #1054#1090#1082#1088#1099#1090#1100
        DisabledIndex = 3
        ImageIndex = 2
        Caption = #1054#1090#1082#1088#1099#1090#1100
        Enabled = False
        ParentShowHint = False
        ShowHint = True
      end
      object BtnFind: TRzToolButton
        Left = 129
        Top = 0
        Hint = #1048#1089#1082#1072#1090#1100
        DisabledIndex = 21
        ImageIndex = 20
        Caption = #1053#1072#1081#1090#1080
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        Visible = False
      end
      object BtnPrint: TRzToolButton
        Left = 154
        Top = 0
        Width = 39
        Hint = #1055#1077#1095#1072#1090#1072#1090#1100
        DisabledIndex = 19
        DropDownMenu = PrnMenu
        ImageIndex = 18
        ToolStyle = tsDropDown
        Caption = #1055#1077#1095#1072#1090#1072#1090#1100
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnPrintClick
      end
      object BtnOK: TRzToolButton
        Left = 193
        Top = 0
        Hint = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
        DisabledIndex = 7
        ImageIndex = 6
        Caption = #1042#1099#1073#1088#1072#1090#1100
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnOKClick
      end
      object BtnCancel: TRzToolButton
        Left = 218
        Top = 0
        Hint = #1054#1090#1084#1077#1085#1080#1090#1100
        DisabledIndex = 23
        ImageIndex = 22
        Caption = #1054#1090#1084#1077#1085#1080#1090#1100
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnCancelClick
      end
      object BtnRefresh: TRzToolButton
        Left = 104
        Top = 0
        Hint = #1054#1073#1085#1086#1074#1080#1090#1100
        DisabledIndex = 15
        ImageIndex = 14
        Caption = #1054#1073#1085#1086#1074#1080#1090#1100
        Enabled = False
        ParentShowHint = False
        ShowHint = True
      end
      object BtnEdit: TRzToolButton
        Left = 29
        Top = 0
        Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        DisabledIndex = 17
        ImageIndex = 16
        Images = DM.ImageList
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        Enabled = False
        ParentShowHint = False
        ShowHint = True
      end
      object BtnExecute: TRzToolButton
        Left = 243
        Top = 0
        Hint = #1042#1099#1087#1086#1083#1085#1080#1090#1100
        DisabledIndex = 9
        ImageIndex = 8
        Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
        Enabled = False
        ParentShowHint = False
        ShowHint = True
      end
      object BtnDelete: TRzToolButton
        Left = 268
        Top = 0
        Hint = #1059#1076#1072#1083#1080#1090#1100
        DisabledIndex = 11
        ImageIndex = 10
        Caption = #1059#1076#1072#1083#1080#1090#1100
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        Visible = False
        OnClick = BtnDeleteClick
      end
      object BtnSave: TRzToolButton
        Left = 293
        Top = 0
        Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        DisabledIndex = 5
        ImageIndex = 4
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        Visible = False
        OnClick = BtnSaveClick
      end
      object BtnExit: TRzToolButton
        Left = 318
        Top = 0
        DisabledIndex = 13
        ImageIndex = 12
        Caption = 'Exit'
        Enabled = False
        Visible = False
      end
      object BtnView: TRzToolButton
        Left = 54
        Top = 0
        DisabledIndex = 39
        ImageIndex = 38
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088#1077#1090#1100
        Enabled = False
      end
    end
  end
  object PrnMenu: TPopupMenu
    Left = 72
    Top = 56
    object N5: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      OnClick = N5Click
    end
  end
  object frxReport2: TfrxReport
    Version = '3.21'
    DotMatrixReport = True
    EngineOptions.DoublePass = True
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.AllowEdit = False
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.ShowCaptions = True
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 40322.541668425930000000
    ReportOptions.LastChange = 40322.541668425930000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 280
    Top = 112
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object RzFormState: TRzFormState
    RegIniFile = FrmMain.RzRegIniFile
    OnRestoreState = RzFormStateRestoreState
    Left = 504
    Top = 192
  end
  object cxPropertiesStore: TcxPropertiesStore
    Components = <>
    StorageName = 'Nikita'
    StorageType = stRegistry
    Left = 504
    Top = 152
  end
end
