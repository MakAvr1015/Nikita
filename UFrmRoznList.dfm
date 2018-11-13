inherited FrmRoznList: TFrmRoznList
  Caption = #1046#1091#1088#1085#1072#1083' '#1088#1086#1079#1085#1080#1095#1085#1099#1093' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
  ClientHeight = 534
  ClientWidth = 760
  ExplicitWidth = 768
  ExplicitHeight = 561
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 515
    Width = 760
  end
  inherited Panel3: TPanel
    Top = 116
    Width = 760
    Height = 399
    ExplicitWidth = 760
    ExplicitHeight = 515
    inherited RzToolbar: TRzToolbar
      Width = 758
      Height = 25
      Visible = False
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
  end
  object dxRibbon1: TdxRibbon [2]
    Left = 0
    Top = 0
    Width = 760
    Height = 116
    BarManager = dxBarManager1
    ColorSchemeName = 'Blue'
    TabOrder = 2
    TabStop = False
    object dxRibbon1Tab2: TdxRibbonTab
      Active = True
      Caption = #1056#1086#1079#1085#1080#1094#1072
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar1'
        end>
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      '1'
      #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102)
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.HotImages = DM.cxImageList1
    ImageOptions.Images = DM.cxImageList1
    ImageOptions.LargeImages = DM.cxImageList1
    ImageOptions.LargeIcons = True
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 472
    Top = 216
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = #1055#1088#1086#1076#1072#1078#1080
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 786
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' 2'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsNone
      FloatLeft = 181
      FloatTop = 164
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object dxBarButton1: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 1
      Hint = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 1
      Hint = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Visible = ivAlways
    end
    object dxRibbonGalleryItem1: TdxRibbonGalleryItem
      Caption = 'New Gallery'
      Category = 1
      Visible = ivAlways
      ItemLinks = <>
      GalleryGroups = <>
      GalleryFilter.Categories = <>
    end
    object dxBarButton4: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 1
      Hint = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Visible = ivAlways
    end
    object dxBarButton5: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 1
      Hint = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Visible = ivAlways
    end
    object dxBarEdit1: TdxBarEdit
      Caption = #1053#1086#1074#1099#1081' '#1101#1083#1077#1084#1077#1085#1090
      Category = 1
      Hint = #1053#1086#1074#1099#1081' '#1101#1083#1077#1084#1077#1085#1090
      Visible = ivAlways
      Width = 100
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = #1055#1088#1086#1076#1072#1078#1072
      Category = 1
      Hint = #1055#1088#1086#1076#1072#1078#1072
      Visible = ivAlways
      HotImageIndex = 3
      SyncImageIndex = False
      ImageIndex = 2
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = #1042#1086#1079#1074#1088#1072#1090
      Category = 1
      Hint = #1042#1086#1079#1074#1088#1072#1090
      Visible = ivAlways
      HotImageIndex = 1
      SyncImageIndex = False
      ImageIndex = 1
    end
    object dxBarGroup1: TdxBarGroup
      Items = (
        'dxBarButton1')
    end
  end
  object TdxBarSeparator
    Category = -1
    Visible = ivAlways
  end
end
