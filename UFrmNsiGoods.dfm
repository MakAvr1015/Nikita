inherited FrmNsiGoods: TFrmNsiGoods
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1090#1086#1074#1072#1088#1086#1074
  ClientHeight = 622
  ClientWidth = 1039
  OnActivate = FormActivate
  ExplicitWidth = 1047
  ExplicitHeight = 649
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 603
    Width = 1039
    TabOrder = 2
    ExplicitTop = 603
    ExplicitWidth = 1039
    inherited DsFormName: TRzStatusPane
      Caption = 'dsNsiGoods'
      ExplicitLeft = 0
      ExplicitHeight = 19
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 233
    Height = 603
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 1
    inline FramNsiGoodsGrp1: TFramNsiGoodsGrp
      Left = 1
      Top = 1
      Width = 231
      Height = 601
      Align = alClient
      Color = clGradientActiveCaption
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 231
      ExplicitHeight = 601
      inherited frameRzToolbar: TRzToolbar
        Width = 231
        Height = 54
        ExplicitWidth = 231
        ExplicitHeight = 54
        ToolbarControls = (
          BtnNew
          BtnEdit
          BtnOpen
          BtnFind
          BtnPrint
          BtnRefresh
          BtnOK
          BtnCancel
          BtnRecycle)
        inherited BtnOK: TRzToolButton
          Enabled = False
        end
        inherited BtnCancel: TRzToolButton
          Enabled = False
        end
        inherited BtnRecycle: TRzToolButton
          Left = 4
          Top = 27
          ExplicitLeft = 4
          ExplicitTop = 27
        end
      end
      inherited cxPageControl1: TcxPageControl
        Top = 54
        Width = 231
        Height = 547
        LookAndFeel.SkinName = 'MoneyTwins'
        ExplicitTop = 54
        ExplicitWidth = 231
        ExplicitHeight = 547
        ClientRectBottom = 545
        ClientRectRight = 229
        inherited cxTabSheetGrp: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 25
          ExplicitWidth = 227
          ExplicitHeight = 520
          inherited cxDBTreeList: TcxDBTreeList
            Width = 227
            Height = 520
            LookAndFeel.SkinName = 'MoneyTwins'
            OptionsSelection.CellSelect = True
            OptionsSelection.InvertSelect = True
            OptionsView.Indicator = True
            OnDragDrop = FramNsiGoodsGrp1cxDBTreeListDragDrop
            OnDragOver = FramNsiGoodsGrp1cxDBTreeListDragOver
            OnSelectionChanged = FramNsiGoodsGrp1cxDBTreeListSelectionChanged
            ExplicitTop = 0
            ExplicitWidth = 227
            ExplicitHeight = 520
            inherited cxDBTreeList1F_PARENT: TcxDBTreeListColumn
              Position.ColIndex = 0
            end
            inherited cxDBTreeList1F_NAME: TcxDBTreeListColumn
              Position.ColIndex = 0
            end
            inherited cxDBTreeList1F_COLOR: TcxDBTreeListColumn
              Position.ColIndex = 0
            end
          end
        end
        inherited cxTabSheetGrpExt: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 25
          ExplicitWidth = 570
          ExplicitHeight = 390
          inherited cxDBTreeList1: TcxDBTreeList
            Width = 227
            Height = 520
            LookAndFeel.SkinName = 'MoneyTwins'
            ExplicitWidth = 227
            ExplicitHeight = 520
          end
        end
      end
      inherited dsNsiGrp: TpFIBDataSet
        Transaction = pFIBTransaction
        UpdateTransaction = pFIBTransaction
        inherited dsNsiGrpGRP_ID: TFIBBCDField [0]
          Tag = 1
        end
        inherited dsNsiGrpF_PARENT: TFIBBCDField [1]
        end
        inherited dsNsiGrpF_NAME: TFIBStringField [2]
        end
      end
    end
  end
  inherited Panel3: TPanel
    Left = 233
    Width = 806
    Height = 603
    TabOrder = 0
    ExplicitLeft = 233
    ExplicitWidth = 806
    ExplicitHeight = 603
    object Splitter2: TSplitter [0]
      Left = 1
      Top = 345
      Width = 804
      Height = 3
      Cursor = crVSplit
      Align = alBottom
      ExplicitTop = 267
      ExplicitWidth = 520
    end
    inherited RzToolbar: TRzToolbar
      Width = 804
      Height = 25
      TabOrder = 1
      ExplicitWidth = 804
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
        OnClick = BtnNewClick
        ExplicitTop = 0
      end
      inherited BtnOpen: TRzToolButton
        Top = 0
        Width = 39
        DropDownMenu = popUpOpen
        ToolStyle = tsDropDown
        Enabled = True
        OnClick = BtnOpenClick
        ExplicitTop = 0
        ExplicitWidth = 39
      end
      inherited BtnFind: TRzToolButton
        Left = 143
        Top = 0
        ExplicitLeft = 143
        ExplicitTop = 0
      end
      inherited BtnPrint: TRzToolButton
        Left = 168
        Top = 0
        ExplicitLeft = 168
        ExplicitTop = 0
      end
      inherited BtnOK: TRzToolButton
        Left = 207
        Top = 0
        ExplicitLeft = 207
        ExplicitTop = 0
      end
      inherited BtnCancel: TRzToolButton
        Left = 232
        Top = 0
        ExplicitLeft = 232
        ExplicitTop = 0
      end
      inherited BtnRefresh: TRzToolButton
        Left = 118
        Top = 0
        Enabled = True
        OnClick = BtnRefreshClick
        ExplicitLeft = 118
        ExplicitTop = 0
      end
      inherited BtnEdit: TRzToolButton
        Top = 0
        Enabled = True
        OnClick = cxGrid1DBTableView1DblClick
        ExplicitTop = 0
      end
      inherited BtnExecute: TRzToolButton
        Left = 257
        Top = 0
        ExplicitLeft = 257
        ExplicitTop = 0
      end
      inherited BtnDelete: TRzToolButton
        Left = 282
        Top = 0
        Enabled = True
        Visible = True
        ExplicitLeft = 282
        ExplicitTop = 0
      end
      inherited BtnSave: TRzToolButton
        Left = 307
        Top = 0
        ExplicitLeft = 307
        ExplicitTop = 0
      end
      inherited BtnExit: TRzToolButton
        Left = 332
        Top = 0
        ExplicitLeft = 332
        ExplicitTop = 0
      end
      inherited BtnView: TRzToolButton
        Top = 0
        Visible = False
        ExplicitTop = 0
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 55
      Width = 804
      Height = 290
      Align = alClient
      DragMode = dmAutomatic
      TabOrder = 0
      LookAndFeel.SkinName = 'MoneyTwins'
      LookAndFeel.SkinName = 'MoneyTwins'
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid1DBTableView1DblClick
        OnKeyPress = cxGrid1DBTableView1KeyPress
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.Refresh.Visible = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
        DataController.DataModeController.GridMode = True
        DataController.DataModeController.GridModeBufferCount = 50
        DataController.DataSource = srNsiGoods
        DataController.Filter.OnChanged = cxGrid1DBTableView1DataControllerFilterChanged
        DataController.Filter.Active = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.MRUItemsList = False
        Filtering.ColumnMRUItemsList = False
        FilterRow.Visible = True
        OptionsBehavior.IncSearch = True
        OptionsBehavior.IncSearchItem = cxGrid1DBTableView1F_ARTICLE
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnSorting = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsSelection.MultiSelect = True
        OptionsView.FocusRect = False
        OptionsView.Navigator = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Styles.StyleSheet = DM.GridTableViewStyleSheetDevExpress
        OnColumnHeaderClick = cxGrid1DBTableView1ColumnHeaderClick
        object cxGrid1DBTableView1F_ARTICLE: TcxGridDBColumn
          DataBinding.FieldName = 'F_ARTICLE'
          Width = 118
        end
        object cxGrid1DBTableView1F_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_NAME'
          Width = 281
        end
        object cxGrid1DBTableView1F_GOODS_GRP: TcxGridDBColumn
          DataBinding.FieldName = 'F_GOODS_GRP'
          Visible = False
        end
        object cxGrid1DBTableView1F_ED_IZM_SHORT_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_ED_IZM_SHORT_NAME'
          Width = 122
        end
        object cxGrid1DBTableView1F_PICTURE: TcxGridDBColumn
          DataBinding.FieldName = 'F_PICTURE'
          Visible = False
          Width = 67
        end
        object cxGrid1DBTableView1F_COLOR: TcxGridDBColumn
          DataBinding.FieldName = 'F_COLOR'
          Visible = False
        end
        object cxGrid1DBTableView1F_DOP_INFO: TcxGridDBColumn
          DataBinding.FieldName = 'F_DOP_INFO'
          Visible = False
        end
        object cxGrid1DBTableView1F_ED_IZM: TcxGridDBColumn
          DataBinding.FieldName = 'F_ED_IZM'
          Visible = False
        end
        object cxGrid1DBTableView1F_ED_IZM_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_ED_IZM_NAME'
          Visible = False
        end
        object cxGrid1DBTableView1F_GOOD: TcxGridDBColumn
          DataBinding.FieldName = 'F_GOOD'
          Visible = False
        end
        object cxGrid1DBTableView1F_MMEDIA: TcxGridDBColumn
          DataBinding.FieldName = 'F_MMEDIA'
          PropertiesClassName = 'TcxImageProperties'
          Properties.GraphicClassName = 'TJPEGImage'
          Properties.ReadOnly = True
          Properties.Stretch = True
          Visible = False
          IsCaptionAssigned = True
        end
        object cxGrid1DBTableView1F_CRE_DATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
          DataBinding.FieldName = 'F_CRE_DATE'
          Width = 86
        end
        object cxGrid1DBTableView1F_GOOD_TYPE: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1090#1086#1074#1072#1088#1072
          DataBinding.FieldName = 'F_GOOD_TYPE'
          Width = 183
        end
      end
      object cxGrid1DBCardView1: TcxGridDBCardView
        OnDblClick = cxGrid1DBTableView1DblClick
        OnKeyPress = cxGrid1DBTableView1KeyPress
        NavigatorButtons.ConfirmDelete = False
        DataController.DataModeController.GridMode = True
        DataController.DataSource = srNsiGoods
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        LayoutDirection = ldVertical
        OptionsBehavior.IncSearch = True
        OptionsCustomize.RowFiltering = False
        OptionsData.Editing = False
        OptionsSelection.MultiSelect = True
        OptionsView.CardAutoWidth = True
        OptionsView.CardWidth = 150
        OptionsView.CellAutoHeight = True
        OptionsView.EmptyRows = False
        Styles.StyleSheet = DM.GridCardViewStyleSheetDevExpress
        object cxGrid1DBCardView1F_NAME: TcxGridDBCardViewRow
          DataBinding.FieldName = 'F_NAME'
          Options.ShowCaption = False
          Position.BeginsLayer = True
        end
        object cxGrid1DBCardView1F_GOODS_GRP: TcxGridDBCardViewRow
          DataBinding.FieldName = 'F_GOODS_GRP'
          Visible = False
          Position.BeginsLayer = True
        end
        object cxGrid1DBCardView1F_ED_IZM_SHORT_NAME: TcxGridDBCardViewRow
          DataBinding.FieldName = 'F_ED_IZM_SHORT_NAME'
          Visible = False
          Position.BeginsLayer = True
        end
        object cxGrid1DBCardView1F_DOP_INFO: TcxGridDBCardViewRow
          DataBinding.FieldName = 'F_DOP_INFO'
          Visible = False
          Position.BeginsLayer = True
        end
        object cxGrid1DBCardView1F_ARTICLE: TcxGridDBCardViewRow
          DataBinding.FieldName = 'F_ARTICLE'
          Options.ShowCaption = False
          Position.BeginsLayer = True
        end
        object cxGrid1DBCardView1F_ED_IZM: TcxGridDBCardViewRow
          DataBinding.FieldName = 'F_ED_IZM'
          Visible = False
          Position.BeginsLayer = True
        end
        object cxGrid1DBCardView1F_ED_IZM_NAME: TcxGridDBCardViewRow
          DataBinding.FieldName = 'F_ED_IZM_NAME'
          Visible = False
          Position.BeginsLayer = True
        end
        object cxGrid1DBCardView1F_PICTURE: TcxGridDBCardViewRow
          DataBinding.FieldName = 'F_PICTURE'
          Visible = False
          Position.BeginsLayer = True
        end
        object cxGrid1DBCardView1F_COLOR: TcxGridDBCardViewRow
          DataBinding.FieldName = 'F_COLOR'
          Visible = False
          Position.BeginsLayer = True
        end
        object cxGrid1DBCardView1F_GOOD: TcxGridDBCardViewRow
          DataBinding.FieldName = 'F_GOOD'
          Visible = False
          Position.BeginsLayer = True
        end
        object cxGrid1DBCardView1F_MMEDIA: TcxGridDBCardViewRow
          Caption = #1050#1072#1088#1090#1080#1085#1082#1072
          DataBinding.FieldName = 'F_MMEDIA'
          PropertiesClassName = 'TcxImageProperties'
          Properties.Caption = #1053#1077#1090' '#1082#1072#1088#1090#1080#1085#1082#1080
          Properties.GraphicClassName = 'TJPEGImage'
          Properties.Stretch = True
          Options.Editing = False
          Options.ShowCaption = False
          Position.BeginsLayer = True
          Position.LineCount = 9
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    inline FramGoodCard1: TFramGoodCard
      Left = 1
      Top = 348
      Width = 804
      Height = 254
      Align = alBottom
      TabOrder = 2
      ExplicitLeft = 1
      ExplicitTop = 348
      ExplicitWidth = 804
      ExplicitHeight = 254
      inherited Panel4: TPanel
        Left = 361
        Width = 443
        Height = 254
        ExplicitLeft = 361
        ExplicitWidth = 443
        ExplicitHeight = 254
        inherited cxDBLabel1: TcxDBLabel
          ExplicitWidth = 441
          Width = 441
        end
        inherited cxDBLabel2: TcxDBLabel
          ExplicitWidth = 441
          Width = 441
        end
        inherited cxDBLabel3: TcxDBLabel
          Style.LookAndFeel.SkinName = ''
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.SkinName = ''
          ExplicitWidth = 441
          Width = 441
        end
        inherited cxGrid1: TcxGrid
          Width = 441
          Height = 101
          LookAndFeel.SkinName = 'MoneyTwins'
          ExplicitWidth = 441
          ExplicitHeight = 101
        end
      end
      inherited cxDBImage1: TcxDBImage
        ExplicitWidth = 361
        ExplicitHeight = 254
        Height = 254
        Width = 361
      end
      inherited dsGetGoodsInfo: TpFIBDataSet
        SelectSQL.Strings = (
          'select '
          '  f_id,'
          '  f_name,'
          '  f_article,'
          '  f_dop_info,'
          '  f_goods_grp_ext_id,'
          '  f_scancode,'
          
            '  (select F_memo from SP_T_NSI_GOODS_MMEDIA_S(f_id,:f_ch_date)) ' +
            'as f_memo'
          '  '
          'from sp_t_nsi_goods_get(:f_good,null)'
          '')
        DataSource = srNsiGoods
      end
      inherited dsGoodsDopInfo: TpFIBDataSet
        dcIgnoreMasterClose = False
      end
    end
    object RzToolbar1: TRzToolbar
      Left = 1
      Top = 26
      Width = 804
      Height = 29
      Images = DM.ImageList
      ShowButtonCaptions = True
      TextOptions = ttoCustom
      BorderInner = fsNone
      BorderOuter = fsGroove
      BorderSides = [sdTop]
      BorderWidth = 0
      GradientColorStyle = gcsCustom
      GradientColorStop = clGradientActiveCaption
      TabOrder = 3
      VisualStyle = vsGradient
      ToolbarControls = (
        RzEditFind
        BtnFilter
        RzToolButtonView)
      object BtnFilter: TRzToolButton
        Left = 272
        Top = 2
        Width = 97
        DropDownMenu = PopupMenuFilter
        Flat = False
        UseToolbarButtonSize = False
        ToolStyle = tsDropDown
        Caption = #1042#1089#1077
        Color = clGradientActiveCaption
      end
      object RzToolButtonView: TRzToolButton
        Left = 369
        Top = -2
        Width = 104
        Height = 32
        DropDownMenu = PopupMenuView
        ImageIndex = 1
        Images = DM.cxImageList1
        UseToolbarButtonSize = False
        ToolStyle = tsDropDown
        Caption = #1058#1072#1073#1083#1080#1094#1072
        Color = clGradientActiveCaption
      end
      object RzEditFind: TRzEdit
        Left = 4
        Top = 4
        Width = 268
        Height = 21
        TabOrder = 0
        OnChange = RzEditFindChange
        OnKeyUp = RzEditFindKeyUp
      end
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object srNsiGoods: TDataSource
    DataSet = DM.dsNsiGoods
    Left = 440
    Top = 120
  end
  object pFIBTransaction: TpFIBTransaction
    DefaultDatabase = DM.pFIBDatabase
    Left = 240
    Top = 120
  end
  object dsGetGoodByScan: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID as f_good,'
      '    F_NAME,'
      '    F_GOODS_GRP,'
      '    F_ED_IZM,'
      '    F_ARTICLE,'
      '    F_ED_IZM_NAME,'
      '    F_ED_IZM_SHORT_NAME,'
      '    F_SCANCODE'
      'FROM'
      '    SP_T_NSI_GOODS_GET_BY_SCANCODE(:SCAN) ')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 256
    Top = 224
    oFetchAll = True
    object dsGetGoodByScanF_NAME: TFIBStringField
      DisplayLabel = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
      FieldName = 'F_NAME'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsGetGoodByScanF_GOODS_GRP: TFIBBCDField
      FieldName = 'F_GOODS_GRP'
      Visible = False
      Size = 0
    end
    object dsGetGoodByScanF_ED_IZM: TFIBBCDField
      FieldName = 'F_ED_IZM'
      Visible = False
      Size = 0
    end
    object dsGetGoodByScanF_ED_IZM_NAME: TFIBStringField
      DisplayLabel = #1077#1076'.'#1080#1079#1084
      FieldName = 'F_ED_IZM_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsGetGoodByScanF_ED_IZM_SHORT_NAME: TFIBStringField
      DisplayLabel = #1045#1076#1080#1085#1080#1094#1072' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
      FieldName = 'F_ED_IZM_SHORT_NAME'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsGetGoodByScanF_SCANCODE: TFIBStringField
      FieldName = 'F_SCANCODE'
      Visible = False
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsGetGoodByScanF_ARTICLE: TFIBStringField
      DisplayLabel = #1040#1088#1090#1080#1082#1091#1083
      FieldName = 'F_ARTICLE'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsGetGoodByScanF_GOOD: TFIBBCDField
      FieldName = 'F_GOOD'
      Size = 0
    end
  end
  object popUpOpen: TPopupMenu
    Left = 472
    Top = 72
    object N1: TMenuItem
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103
      OnClick = N2Click
    end
  end
  object RzSelectFolderDialog: TRzSelectFolderDialog
    Left = 632
    Top = 352
  end
  object spImportPictures: TpFIBStoredProc
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    SQL.Strings = (
      
        'EXECUTE PROCEDURE SP_T_NSI_GOOD_IMPORT_PHOTO (?F_ARTICLE, ?F_MME' +
        'DIA)')
    StoredProcName = 'SP_T_NSI_GOOD_IMPORT_PHOTO'
    Left = 688
    Top = 144
  end
  object PopupMenuFilter: TPopupMenu
    Left = 528
    Top = 40
    object ShowAllGoods: TMenuItem
      Caption = #1042#1089#1077
      OnClick = ShowAllGoodsClick
    end
    object ShowPictGoods: TMenuItem
      Tag = 1
      Caption = #1057' '#1082#1072#1088#1090#1080#1085#1082#1072#1084#1080
      OnClick = ShowAllGoodsClick
    end
    object ShowNoPictPhoto: TMenuItem
      Tag = 2
      Caption = #1041#1077#1079' '#1082#1072#1088#1090#1080#1085#1086#1082
      OnClick = ShowAllGoodsClick
    end
  end
  object PopupMenuView: TPopupMenu
    Images = DM.cxImageList1
    Left = 632
    Top = 104
    object N3: TMenuItem
      Tag = 1
      Caption = #1058#1072#1073#1083#1080#1094#1072
      ImageIndex = 1
      OnClick = N3Click
    end
    object N4: TMenuItem
      Tag = 2
      Caption = #1050#1072#1088#1090#1086#1095#1082#1080
      ImageIndex = 0
      OnClick = N3Click
    end
  end
end
