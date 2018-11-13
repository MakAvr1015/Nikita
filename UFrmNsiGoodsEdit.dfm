inherited FrmNsiGoodsEdit: TFrmNsiGoodsEdit
  Caption = #1058#1086#1074#1072#1088#1085#1072#1103' '#1087#1086#1079#1080#1094#1080#1103
  ClientHeight = 538
  ClientWidth = 460
  ExplicitWidth = 468
  ExplicitHeight = 565
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 519
    Width = 460
    ExplicitTop = 519
    ExplicitWidth = 460
  end
  inherited Panel3: TPanel
    Width = 460
    Height = 519
    ExplicitWidth = 460
    ExplicitHeight = 519
    object RzLabel1: TRzLabel [0]
      Left = 8
      Top = 67
      Width = 48
      Height = 13
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077
    end
    object RzLabel2: TRzLabel [1]
      Left = 8
      Top = 108
      Width = 86
      Height = 13
      Caption = #1058#1086#1074#1072#1088#1085#1072#1103' '#1075#1088#1091#1087#1087#1072
    end
    object RzLabel3: TRzLabel [2]
      Left = 8
      Top = 148
      Width = 43
      Height = 13
      Caption = #1040#1088#1090#1080#1082#1091#1083
    end
    object RzLabel4: TRzLabel [3]
      Left = 8
      Top = 188
      Width = 99
      Height = 13
      Caption = #1045#1076#1080#1085#1080#1094#1072' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
    end
    inherited RzToolbar: TRzToolbar
      Width = 458
      Height = 25
      TextOptions = ttoCustom
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
        BtnExit
        BtnExecute
        BtnSave
        BtnDelete)
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
        Left = 268
        Top = 0
        Visible = False
        ExplicitLeft = 268
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
        Left = 243
        Top = 0
        ExplicitLeft = 243
        ExplicitTop = 0
      end
      inherited BtnView: TRzToolButton
        Top = 0
        Visible = False
        ExplicitTop = 0
      end
    end
    object edName: TRzDBEdit
      Left = 8
      Top = 85
      Width = 217
      Height = 21
      DataSource = srEditNsiGoods
      DataField = 'F_NAME'
      TabOrder = 1
    end
    object EdtGoodGrp: TdxDBLookupTreeView
      Left = 8
      Top = 125
      Width = 217
      Height = 21
      CanSelectParents = True
      ParentColor = False
      TabOrder = 2
      TabStop = True
      Text = 'EdtGoodGrp'
      TreeViewColor = clWindow
      TreeViewCursor = crDefault
      TreeViewFont.Charset = DEFAULT_CHARSET
      TreeViewFont.Color = clWindowText
      TreeViewFont.Height = -11
      TreeViewFont.Name = 'Tahoma'
      TreeViewFont.Style = []
      TreeViewIndent = 19
      TreeViewReadOnly = False
      TreeViewShowButtons = True
      TreeViewShowHint = False
      TreeViewShowLines = True
      TreeViewShowRoot = True
      TreeViewSortType = stNone
      DisplayField = 'F_NAME'
      DividedChar = '.'
      ListSource = SrSourceGrp
      KeyField = 'GRP_ID'
      ListField = 'F_NAME'
      Options = [trDBCanDelete, trDBConfirmDelete, trCanDBNavigate, trSmartRecordCopy, trCheckHasChildren]
      ParentField = 'F_PARENT'
      RootValue = Null
      TextStyle = tvtsShort
      DataField = 'F_GOODS_GRP'
      DataSource = srEditNsiGoods
    end
    object edArticle: TRzDBEdit
      Left = 8
      Top = 165
      Width = 217
      Height = 21
      DataSource = srEditNsiGoods
      DataField = 'F_ARTICLE'
      TabOrder = 3
    end
    object RzDBLookupComboBox1: TRzDBLookupComboBox
      Left = 8
      Top = 207
      Width = 217
      Height = 21
      DataField = 'F_ED_IZM'
      DataSource = srEditNsiGoods
      KeyField = 'f_ed_izm'
      ListField = 'F_NAME'
      ListSource = srEdIzmSource
      TabOrder = 4
    end
    object RzDBMemo1: TRzDBMemo
      Left = 8
      Top = 248
      Width = 217
      Height = 90
      DataField = 'F_DOP_INFO'
      DataSource = srEditNsiGoods
      TabOrder = 5
    end
    object cxDBImage1: TcxDBImage
      Left = 244
      Top = 48
      DataBinding.DataField = 'F_MEMO'
      DataBinding.DataSource = srGetNsiPhoto
      Properties.GraphicClassName = 'TJPEGImage'
      Properties.Stretch = True
      TabOrder = 6
      Height = 292
      Width = 209
    end
    object RzDBCheckBox1: TRzDBCheckBox
      Left = 8
      Top = 230
      Width = 217
      Height = 17
      DataField = 'F_BARTER'
      DataSource = srEditNsiGoods
      ReadOnly = True
      ValueChecked = '1'
      ValueUnchecked = '0'
      Caption = #1048#1089#1087#1086#1083#1100#1079#1091#1077#1090#1089#1103' '#1076#1083#1103' '#1088#1072#1089#1095#1077#1090#1072
      TabOrder = 7
    end
    object edGoodType: TcxDBLookupComboBox
      Left = 8
      Top = 48
      DataBinding.DataField = 'F_GOOD_TYPE'
      DataBinding.DataSource = srEditNsiGoods
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownWidth = 250
      Properties.KeyFieldNames = 'F_ID'
      Properties.ListColumns = <
        item
          FieldName = 'F_NAME'
        end
        item
          FieldName = 'F_CHECK_OST'
        end
        item
          FieldName = 'F_COMPL'
        end>
      Properties.ListSource = srTypeGood
      Style.HotTrack = True
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 8
      Width = 217
    end
    object cxGrid1: TcxGrid
      Left = 8
      Top = 351
      Width = 445
      Height = 162
      TabOrder = 9
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.Prior.Visible = False
        NavigatorButtons.Next.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Last.Visible = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Delete.Visible = False
        NavigatorButtons.Edit.Visible = False
        NavigatorButtons.Refresh.Visible = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = srGoodAtributes
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Navigator = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        Styles.StyleSheet = DM.GridTableViewStyleSheetDevExpress
        object cxGrid1DBTableView1F_ID: TcxGridDBColumn
          DataBinding.FieldName = 'F_ID'
          Visible = False
        end
        object cxGrid1DBTableView1F_GOOD: TcxGridDBColumn
          DataBinding.FieldName = 'F_GOOD'
          Visible = False
        end
        object cxGrid1DBTableView1F_GOOD_INFO: TcxGridDBColumn
          DataBinding.FieldName = 'F_GOOD_INFO'
          Visible = False
        end
        object cxGrid1DBTableView1F_GOOD_INFO_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_GOOD_INFO_NAME'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Editing = False
        end
        object cxGrid1DBTableView1F_GOOD_INFO_VAL: TcxGridDBColumn
          DataBinding.FieldName = 'F_GOOD_INFO_VAL'
          OnGetPropertiesForEdit = cxGrid1DBTableView1F_GOOD_INFO_VALGetPropertiesForEdit
        end
      end
      object cxGrid1TableView1: TcxGridTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1TableView1Column1: TcxGridColumn
          RepositoryItem = DM.cxEditRepositoryComboBoxItem1
        end
        object cxGrid1TableView1Column2: TcxGridColumn
        end
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
  object srEditNsiGoods: TDataSource
    DataSet = dsEditNsiGoods
    Left = 80
    Top = 48
  end
  object dsEditNsiGoods: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'execute procedure SP_T_NSI_GOODS_U(:F_ID,:F_NAME,:F_GOODS_GRP,:F' +
        '_ARTICLE,:F_ED_IZM,:F_DOP_INFO,:f_barter,:f_good_type)')
    RefreshSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_NAME,'
      '    F_GOODS_GRP,'
      '    F_GOODS_GRP_NAME as grp_name,'
      '    f_article,'
      '    f_ed_izm,'
      '    f_dop_info,'
      '    f_barter,'
      '    f_good_type'
      'FROM'
      '    SP_T_NSI_GOODS_GET(:NSI_ID,:F_GOODS_GRP) ')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_NAME,'
      '    F_GOODS_GRP,'
      '    F_GOODS_GRP_NAME as grp_name,'
      '    f_article,'
      '    f_ed_izm,'
      '    f_dop_info,'
      '    f_barter,'
      '    f_good_type'
      'FROM'
      '    SP_T_NSI_GOODS_GET(:NSI_ID,:F_GOODS_GRP) ')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 88
    Top = 56
    dcForceOpen = True
    oRefreshAfterPost = False
    object dsEditNsiGoodsF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
    end
    object dsEditNsiGoodsF_NAME: TFIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'F_NAME'
      Required = True
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsEditNsiGoodsF_GOODS_GRP: TFIBBCDField
      FieldName = 'F_GOODS_GRP'
      Size = 0
    end
    object dsEditNsiGoodsGRP_NAME: TFIBStringField
      FieldName = 'GRP_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsEditNsiGoodsF_ED_IZM: TFIBBCDField
      FieldName = 'F_ED_IZM'
      Size = 0
    end
    object dsEditNsiGoodsF_DOP_INFO: TFIBStringField
      FieldName = 'F_DOP_INFO'
      Size = 1000
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsEditNsiGoodsF_ARTICLE: TFIBStringField
      FieldName = 'F_ARTICLE'
      Required = True
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsEditNsiGoodsF_BARTER: TBooleanField
      FieldName = 'F_BARTER'
    end
    object dsEditNsiGoodsF_GOOD_TYPE: TFIBBCDField
      FieldName = 'F_GOOD_TYPE'
      Size = 0
    end
  end
  object pFIBTransaction: TpFIBTransaction
    DefaultDatabase = DM.pFIBDatabase
    Left = 152
    Top = 72
  end
  object dsSourceGrp: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    GRP_ID,'
      '    F_PARENT,'
      '    F_NAME'
      'FROM'
      '    SP_T_NSI_GOODS_GRP_S ')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 56
    Top = 184
    object dsSourceGrpGRP_ID: TFIBBCDField
      FieldName = 'GRP_ID'
      Size = 0
    end
    object dsSourceGrpF_PARENT: TFIBBCDField
      FieldName = 'F_PARENT'
      Size = 0
    end
    object dsSourceGrpF_NAME: TFIBStringField
      FieldName = 'F_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object SrSourceGrp: TDataSource
    DataSet = dsSourceGrp
    Left = 64
    Top = 192
  end
  object srEdIzmSource: TDataSource
    DataSet = dsEdIzmSource
    Left = 160
    Top = 176
  end
  object dsEdIzmSource: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    f_ID as f_ed_izm,'
      '    F_NAME,'
      '    f_short_name'
      'FROM'
      '    SP_T_NSI_ed_izm_S ')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 152
    Top = 168
    oFetchAll = True
    object dsEdIzmSourceF_ED_IZM: TFIBBCDField
      FieldName = 'F_ED_IZM'
      Size = 0
    end
    object dsEdIzmSourceF_NAME: TFIBStringField
      FieldName = 'F_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsEdIzmSourceF_SHORT_NAME: TFIBStringField
      FieldName = 'F_SHORT_NAME'
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object dsGetNsiPhoto: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'execute procedure sp_t_nsi_goods_mmedia_u(:F_PHOTO_ID,:F_GOOD,:F' +
        '_NAME,:F_MEMO)')
    DeleteSQL.Strings = (
      'execute procedure sp_t_nsi_goods_mmedia_d(:F_PHOTO_ID)')
    InsertSQL.Strings = (
      
        'execute procedure sp_t_nsi_goods_mmedia_i(:F_PHOTO_ID,:F_GOOD,:F' +
        '_NAME,:F_MEMO)')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID as F_PHOTO_ID,'
      '    F_GOOD,'
      '    F_NAME,'
      '    F_MEMO'
      'FROM'
      '    SP_T_NSI_GOODS_MMEDIA_S(:F_ID) ')
    AutoUpdateOptions.ParamsToFieldsLinks.Strings = (
      'F_GOOD=F_ID')
    AutoUpdateOptions.AutoParamsToFields = True
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DataSource = srEditNsiGoods
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 392
    Top = 136
    dcForceOpen = True
    object dsGetNsiPhotoF_PHOTO_ID: TFIBBCDField
      FieldName = 'F_PHOTO_ID'
      Size = 0
    end
    object dsGetNsiPhotoF_GOOD: TFIBBCDField
      FieldName = 'F_GOOD'
      Size = 0
    end
    object dsGetNsiPhotoF_NAME: TFIBStringField
      FieldName = 'F_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsGetNsiPhotoF_MEMO: TFIBBlobField
      FieldName = 'F_MEMO'
      Size = 8
    end
  end
  object srGetNsiPhoto: TDataSource
    DataSet = dsGetNsiPhoto
    Left = 400
    Top = 144
  end
  object OpenPictureDialog: TOpenPictureDialog
    Left = 344
    Top = 256
  end
  object dsTypeGood: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from SP_T_NSI_GOOD_TYPE_S')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 272
    Top = 264
    object dsTypeGoodF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
    end
    object dsTypeGoodF_NAME: TFIBStringField
      DisplayLabel = #1058#1080#1087' '#1090#1086#1074#1072#1088#1072
      FieldName = 'F_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsTypeGoodF_CHECK_OST: TFIBSmallIntField
      DisplayLabel = #1059#1095#1080#1090#1099#1074#1072#1090#1100' '#1086#1089#1090#1072#1090#1082#1080
      FieldName = 'F_CHECK_OST'
    end
    object dsTypeGoodF_COMPL: TFIBSmallIntField
      DisplayLabel = #1050#1086#1084#1087#1083#1077#1082#1090
      FieldName = 'F_COMPL'
    end
  end
  object srTypeGood: TDataSource
    DataSet = dsTypeGood
    Left = 296
    Top = 288
  end
  object dsGoodAtributes: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'select f_id from SP_T_NSI_GOODS_DOP_INFO_I(:f_good,:f_good_info,' +
        ':f_good_info_val)')
    SelectSQL.Strings = (
      'select * from SP_T_NSI_GOODS_DOP_INFO_S(:f_id)')
    AutoUpdateOptions.ParamsToFieldsLinks.Strings = (
      'F_GOOD=F_ID')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    AutoCommit = True
    DataSource = srEditNsiGoods
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 200
    Top = 408
    WaitEndMasterScroll = True
    dcForceMasterRefresh = True
    dcForceOpen = True
    dcIgnoreMasterClose = True
    oRefreshAfterPost = False
    object dsGoodAtributesF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
    end
    object dsGoodAtributesF_GOOD: TFIBBCDField
      FieldName = 'F_GOOD'
      Size = 0
    end
    object dsGoodAtributesF_GOOD_INFO: TFIBBCDField
      FieldName = 'F_GOOD_INFO'
      Size = 0
    end
    object dsGoodAtributesF_GOOD_INFO_NAME: TFIBStringField
      FieldName = 'F_GOOD_INFO_NAME'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsGoodAtributesF_GOOD_INFO_VAL: TFIBStringField
      FieldName = 'F_GOOD_INFO_VAL'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object srGoodAtributes: TDataSource
    DataSet = dsGoodAtributes
    Left = 192
    Top = 448
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <>
    StorageName = 'cxPropertiesStore1'
    Left = 336
    Top = 440
  end
end
