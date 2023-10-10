inherited FrmMrkActions: TFrmMrkActions
  Caption = #1052#1072#1088#1082#1077#1090#1080#1085#1075
  ClientHeight = 485
  ClientWidth = 819
  ExplicitWidth = 835
  ExplicitHeight = 523
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 466
    Width = 819
    ExplicitTop = 466
    ExplicitWidth = 819
  end
  inherited Panel3: TPanel
    Width = 819
    Height = 466
    ExplicitWidth = 819
    ExplicitHeight = 466
    inherited RzToolbar: TRzToolbar
      Width = 817
      Height = 25
      ExplicitWidth = 817
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
        BtnDelete
        BtnSave
        BtnExit)
      inherited BtnNew: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnOpen: TRzToolButton
        Top = 0
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
        ExplicitTop = 0
      end
      inherited BtnDelete: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnSave: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnExit: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnView: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
    end
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 26
      Width = 817
      Height = 439
      Align = alClient
      TabOrder = 1
      ExplicitLeft = 384
      ExplicitTop = 240
      ExplicitWidth = 300
      ExplicitHeight = 250
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 103
        Top = 28
        DataBinding.DataField = 'F_ID'
        DataBinding.DataSource = srActList
        Properties.ReadOnly = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 103
        Top = 55
        DataBinding.DataField = 'F_NAME'
        DataBinding.DataSource = srActList
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 103
        Top = 82
        DataBinding.DataField = 'F_DESCR'
        DataBinding.DataSource = srActList
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 2
        Width = 121
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 103
        Top = 109
        DataBinding.DataField = 'F_START_DATE'
        DataBinding.DataSource = srActList
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 3
        Width = 121
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 103
        Top = 136
        DataBinding.DataField = 'F_END_DATE'
        DataBinding.DataSource = srActList
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 4
        Width = 121
      end
      object cxDBNavigator1: TcxDBNavigator
        Left = 305
        Top = 28
        Width = 270
        Height = 25
        Buttons.CustomButtons = <>
        DataSource = srActList
        TabOrder = 5
      end
      object cxDBListBox1: TcxDBListBox
        Left = 305
        Top = 59
        Width = 270
        Height = 97
        ItemHeight = 13
        TabOrder = 6
        DataBinding.DataSource = srActList
        DataBinding.DataField = 'F_NAME'
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutGroup1
        CaptionOptions.Text = 'F_ID'
        Control = cxDBCurrencyEdit1
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutGroup1
        CaptionOptions.Text = 'F_NAME'
        Control = cxDBTextEdit1
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutGroup1
        CaptionOptions.Text = 'F_DESCR'
        Control = cxDBTextEdit2
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutGroup1
        CaptionOptions.Text = 'F_START_DATE'
        Control = cxDBDateEdit1
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutGroup1
        CaptionOptions.Text = 'F_END_DATE'
        Control = cxDBDateEdit2
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object dxLayoutGroup1: TdxLayoutGroup
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        Index = 0
      end
      object dxLayoutGroup2: TdxLayoutGroup
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahLeft
        AlignVert = avClient
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ItemIndex = 1
        Index = 1
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = dxLayoutGroup2
        CaptionOptions.Text = 'New Item'
        Control = cxDBNavigator1
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 270
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem7: TdxLayoutItem
        Parent = dxLayoutGroup2
        CaptionOptions.Text = 'New Item'
        Control = cxDBListBox1
        ControlOptions.OriginalHeight = 97
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object srActList: TDataSource
    DataSet = dsActList
    Left = 392
    Top = 304
  end
  object dsActList: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from SP_T_MRKT_ACT_S')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    Left = 408
    Top = 320
    object dsActListF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
    end
    object dsActListF_NAME: TFIBStringField
      FieldName = 'F_NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object dsActListF_DESCR: TFIBStringField
      FieldName = 'F_DESCR'
      Size = 1000
      EmptyStrToNull = True
    end
    object dsActListF_START_DATE: TFIBDateField
      FieldName = 'F_START_DATE'
    end
    object dsActListF_END_DATE: TFIBDateField
      FieldName = 'F_END_DATE'
    end
  end
end
