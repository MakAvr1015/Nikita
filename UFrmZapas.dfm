inherited FrmZapas: TFrmZapas
  Caption = #1058#1086#1074#1072#1088#1085#1099#1077' '#1079#1072#1087#1072#1089#1099
  ClientHeight = 660
  ClientWidth = 1059
  ExplicitWidth = 1075
  ExplicitHeight = 698
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 641
    Width = 1059
    ExplicitTop = 641
    ExplicitWidth = 1059
  end
  inherited Panel3: TPanel
    Width = 1059
    Height = 641
    ExplicitWidth = 1059
    ExplicitHeight = 641
    object Splitter1: TSplitter [0]
      Left = 251
      Top = 26
      Height = 614
      ExplicitLeft = 313
      ExplicitTop = 36
      ExplicitHeight = 401
    end
    inherited RzToolbar: TRzToolbar
      Width = 1057
      Height = 25
      ExplicitWidth = 1057
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
        OnClick = nil
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
        Visible = True
        ExplicitTop = 0
      end
      inherited BtnExit: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnView: TRzToolButton
        Top = 0
        Visible = False
        ExplicitTop = 0
      end
    end
    object cxGridSklad: TcxGrid
      Left = 1
      Top = 26
      Width = 250
      Height = 614
      Align = alLeft
      TabOrder = 1
      LookAndFeel.SkinName = 'MoneyTwins'
      object cxGridSkladDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = srLIstSklad
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        Styles.StyleSheet = DM.GridTableViewStyleSheetDevExpress
        object cxGridSkladDBTableView1F_SKLAD_IN: TcxGridDBColumn
          DataBinding.FieldName = 'F_SKLAD_IN'
          Visible = False
        end
        object cxGridSkladDBTableView1F_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_NAME'
          Width = 124
        end
        object cxGridSkladDBTableView1F_ADDRES: TcxGridDBColumn
          DataBinding.FieldName = 'F_ADDRES'
          Width = 124
        end
      end
      object cxGridSkladLevel1: TcxGridLevel
        GridView = cxGridSkladDBTableView1
      end
    end
    object Panel1: TPanel
      Left = 254
      Top = 26
      Width = 804
      Height = 614
      Align = alClient
      Caption = 'Panel1'
      TabOrder = 2
      ExplicitTop = 30
      ExplicitHeight = 610
      object Splitter2: TSplitter
        Left = 1
        Top = 424
        Width = 802
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        ExplicitTop = 1
        ExplicitWidth = 303
      end
      object cxGrid2: TcxGrid
        Left = 1
        Top = 1
        Width = 802
        Height = 423
        Align = alClient
        TabOrder = 0
        LookAndFeel.SkinName = 'MoneyTwins'
        object cxGrid2DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid2DBTableView1DblClick
          OnKeyPress = cxGrid2DBTableView1KeyPress
          Navigator.Buttons.CustomButtons = <>
          OnCustomDrawCell = cxGrid2DBTableView1CustomDrawCell
          DataController.DataSource = srListZapas
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1F_END_OST
            end
            item
              Kind = skSum
              Column = cxGrid2DBTableView1F_SUM
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.HeaderAutoHeight = True
          Styles.StyleSheet = DM.GridTableViewStyleSheetDevExpress
          object cxGrid2DBTableView1F_ID: TcxGridDBColumn
            DataBinding.FieldName = 'F_ID'
            Visible = False
          end
          object cxGrid2DBTableView1F_GOOD: TcxGridDBColumn
            DataBinding.FieldName = 'F_GOOD'
            Visible = False
          end
          object cxGrid2DBTableView1F_SKLAD: TcxGridDBColumn
            DataBinding.FieldName = 'F_SKLAD'
            Visible = False
          end
          object cxGrid2DBTableView1F_DATE: TcxGridDBColumn
            DataBinding.FieldName = 'F_DATE'
            Visible = False
          end
          object cxGrid2DBTableView1F_STR_OST: TcxGridDBColumn
            DataBinding.FieldName = 'F_STR_OST'
            Visible = False
          end
          object cxGrid2DBTableView1F_MOVE_IN: TcxGridDBColumn
            DataBinding.FieldName = 'F_MOVE_IN'
            Visible = False
          end
          object cxGrid2DBTableView1F_MOVE_OUT: TcxGridDBColumn
            DataBinding.FieldName = 'F_MOVE_OUT'
            Visible = False
          end
          object cxGrid2DBTableView1F_ARTICLE: TcxGridDBColumn
            DataBinding.FieldName = 'F_ARTICLE'
          end
          object cxGrid2DBTableView1F_GOOD_GRP_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'F_GOOD_GRP_NAME'
            Width = 102
          end
          object cxGrid2DBTableView1F_GOOD_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'F_GOOD_NAME'
            Width = 136
          end
          object cxGrid2DBTableView1F_END_OST: TcxGridDBColumn
            DataBinding.FieldName = 'F_END_OST'
            Width = 54
          end
          object cxGrid2DBTableView1F_GOOD_SCANCODE: TcxGridDBColumn
            DataBinding.FieldName = 'F_GOOD_SCANCODE'
            Visible = False
          end
          object cxGrid2DBTableView1F_PRICE_VAL: TcxGridDBColumn
            DataBinding.FieldName = 'F_PRICE_VAL'
            Width = 49
          end
          object cxGrid2DBTableView1F_SUM: TcxGridDBColumn
            DataBinding.FieldName = 'F_SUM'
            Width = 55
          end
          object cxGrid2DBTableView1F_PHOTO: TcxGridDBColumn
            DataBinding.FieldName = 'F_PHOTO'
            Visible = False
          end
          object cxGrid2DBTableView1F_DOP_INFO: TcxGridDBColumn
            DataBinding.FieldName = 'F_DOP_INFO'
            Visible = False
          end
          object cxGrid2DBTableView1F_GOODS_GRP_EXT_ID: TcxGridDBColumn
            DataBinding.FieldName = 'F_GOODS_GRP_EXT_ID'
            Visible = False
          end
          object cxGrid2DBTableView1F_picture: TcxGridDBColumn
            DataBinding.FieldName = 'F_PICTURE'
            Width = 64
          end
          object cxGrid2DBTableView1F_GOOD_GRP_COLOR: TcxGridDBColumn
            DataBinding.FieldName = 'F_GOOD_GRP_COLOR'
            Visible = False
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
      object LkpPrice: TcxLookupComboBox
        Left = 3
        Top = 4
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'F_ID'
        Properties.ListColumns = <
          item
            FieldName = 'F_NAME'
          end>
        Properties.ListSource = srPriceList
        Properties.OnEditValueChanged = LkpPricePropertiesEditValueChanged
        TabOrder = 1
        Width = 145
      end
      inline FramGoodCard1: TFramGoodCard
        Left = 1
        Top = 427
        Width = 802
        Height = 186
        Align = alBottom
        TabOrder = 2
        ExplicitLeft = 1
        ExplicitTop = 423
        ExplicitWidth = 802
        ExplicitHeight = 186
        inherited Panel4: TPanel
          Left = 290
          Width = 512
          Height = 186
          ExplicitLeft = 290
          ExplicitWidth = 512
          ExplicitHeight = 186
          inherited cxDBLabel1: TcxDBLabel
            ExplicitWidth = 510
            Width = 510
          end
          inherited cxDBLabel2: TcxDBLabel
            ExplicitWidth = 510
            ExplicitHeight = 79
            Height = 79
            Width = 510
          end
          inherited cxDBLabel3: TcxDBLabel
            Style.LookAndFeel.SkinName = ''
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
            ExplicitWidth = 510
            Width = 510
            AnchorX = 256
          end
          inherited cxGrid1: TcxGrid
            Top = 177
            Width = 510
            Height = 8
            ExplicitTop = 177
            ExplicitWidth = 510
            ExplicitHeight = 8
          end
        end
        inherited cxDBImage1: TcxDBImage
          ExplicitWidth = 290
          ExplicitHeight = 186
          Height = 186
          Width = 290
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
          DataSource = srListZapas
        end
      end
    end
  end
  object dsLIstSklad: TpFIBDataSet [2]
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID F_SKLAD_IN,'
      '    F_NAME,'
      '    F_ADDRES'
      'FROM'
      '    SP_T_NSI_SKLAD_S ')
    AfterOpen = dsLIstSkladAfterOpen
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 80
    Top = 72
    object dsLIstSkladF_SKLAD_IN: TFIBBCDField
      Tag = 1
      FieldName = 'F_SKLAD_IN'
      Visible = False
      Size = 0
    end
    object dsLIstSkladF_NAME: TFIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'F_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsLIstSkladF_ADDRES: TFIBStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      FieldName = 'F_ADDRES'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object dsListZapas: TpFIBDataSet [3]
    RefreshSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_GOOD,'
      '    F_SKLAD,'
      '    F_DATE,'
      '    F_STR_OST,'
      '    F_MOVE_IN,'
      '    F_MOVE_OUT,'
      '    F_END_OST,'
      '    F_GOOD_NAME,'
      '    F_GOOD_ARTICLE as f_article,'
      '    F_GOOD_GRP_NAME,'
      '    f_price_val,'
      '    f_price_val*F_END_OST as f_sum,'
      
        '    (select first 1 '#39'Ok'#39' from SP_T_NSI_GOODS_MMEDIA_S(f_good)) a' +
        's f_picture,'
      '    F_GOOD_GRP_COLOR'
      'FROM'
      '    SP_T_REG_GOOD_refresh(:f_good,:F_SKLAD,:f_price)')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_GOOD,'
      '    F_SKLAD,'
      '    F_DATE,'
      '    F_STR_OST,'
      '    F_MOVE_IN,'
      '    F_MOVE_OUT,'
      '    F_END_OST,'
      '    F_GOOD_NAME,'
      '    F_GOOD_ARTICLE as f_article,'
      '    F_GOOD_GRP_NAME,'
      '    f_price_val,'
      '    f_price_val*F_END_OST as f_sum,'
      
        '    (select first 1 '#39'Ok'#39' from SP_T_NSI_GOODS_MMEDIA_S(f_good)) a' +
        's f_picture,'
      '    F_GOOD_GRP_COLOR,'
      '    F_GOOD_DOP_INFO'
      'FROM'
      '    SP_T_REG_GOOD_S(:F_SKLAD_IN,:F_DATE_IN,:f_price,:f_scan)')
    OnCalcFields = dsListZapasCalcFields
    BeforeRefresh = dsListZapasBeforeRefresh
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DataSource = srLIstSklad
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 272
    Top = 72
    object dsListZapasF_ID: TFIBBCDField
      Tag = 1
      FieldName = 'F_ID'
      Visible = False
      Size = 0
    end
    object dsListZapasF_GOOD: TFIBBCDField
      FieldName = 'F_GOOD'
      Visible = False
      Size = 0
    end
    object dsListZapasF_SKLAD: TFIBBCDField
      FieldName = 'F_SKLAD'
      Visible = False
      Size = 0
    end
    object dsListZapasF_DATE: TFIBDateField
      FieldName = 'F_DATE'
      Visible = False
      DisplayFormat = 'dd.mm.yyyy'
    end
    object dsListZapasF_STR_OST: TFIBFloatField
      FieldName = 'F_STR_OST'
      Visible = False
    end
    object dsListZapasF_MOVE_IN: TFIBFloatField
      FieldName = 'F_MOVE_IN'
      Visible = False
    end
    object dsListZapasF_MOVE_OUT: TFIBFloatField
      FieldName = 'F_MOVE_OUT'
      Visible = False
    end
    object dsListZapasF_END_OST: TFIBFloatField
      DisplayLabel = #1054#1089#1090#1072#1090#1086#1082
      FieldName = 'F_END_OST'
    end
    object dsListZapasF_GOOD_NAME: TFIBStringField
      DisplayLabel = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
      FieldName = 'F_GOOD_NAME'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsListZapasF_GOOD_GRP_NAME: TFIBStringField
      DisplayLabel = #1058#1086#1074#1072#1088#1085#1072#1103' '#1075#1088#1091#1087#1087#1072
      FieldName = 'F_GOOD_GRP_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsListZapasF_PRICE_VAL: TFIBBCDField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'F_PRICE_VAL'
      DisplayFormat = '#,##0.000'
      EditFormat = '0.000'
      Size = 3
    end
    object dsListZapasF_SUM: TFIBFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'F_SUM'
    end
    object dsListZapasF_PICTURE: TFIBStringField
      DisplayLabel = #1050#1072#1088#1090#1080#1085#1082#1072
      FieldName = 'F_PICTURE'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsListZapasF_GOOD_GRP_COLOR: TFIBStringField
      FieldName = 'F_GOOD_GRP_COLOR'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsListZapasF_ARTICLE: TFIBStringField
      DisplayLabel = #1040#1088#1090#1080#1082#1091#1083
      FieldName = 'F_ARTICLE'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsListZapasF_GOOD_DOP_INFO: TFIBStringField
      FieldName = 'F_GOOD_DOP_INFO'
      Size = 10000
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object srListZapas: TDataSource [4]
    DataSet = dsListZapas
    Left = 280
    Top = 88
  end
  object srLIstSklad: TDataSource [5]
    DataSet = dsLIstSklad
    Left = 88
    Top = 80
  end
  inherited PrnMenu: TPopupMenu
    object N1: TMenuItem
      Caption = #1062#1077#1085#1085#1080#1082
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dsPriceList: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_NAME'
      'FROM'
      '    SP_T_NSI_PRICE_S ')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 544
    Top = 40
    oFetchAll = True
    object dsPriceListF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
    end
    object dsPriceListF_NAME: TFIBStringField
      DisplayLabel = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
      FieldName = 'F_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object srPriceList: TDataSource
    DataSet = dsPriceList
    Left = 552
    Top = 48
  end
  object dsGoodList: TfrxUserDataSet
    UserName = 'dsGoodList'
    OnGetValue = dsGoodListGetValue
    Left = 288
    Top = 208
  end
  object dsGetGoodsInfo: TpFIBDataSet
    SelectSQL.Strings = (
      'select '
      '  f_id,'
      '  f_name,'
      '  f_article,'
      '  f_dop_info,'
      '  f_goods_grp_ext_id,'
      '  f_scancode,'
      
        '  (select f_dop_info from sp_t_nsi_goods_grp_get(coalesce(f_good' +
        's_grp,0),null)) as f_grp_info,'
      
        '  (select f_value from SP_T_PRICE_GET(:f_price1,f_id)) as f_pric' +
        'e1, '
      
        '  (select f_value from SP_T_PRICE_GET(:f_price2,f_id)) as f_pric' +
        'e2'
      'from sp_t_nsi_goods_get(:f_good,null)'
      '')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DataSource = srListZapas
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 512
    Top = 232
    WaitEndMasterScroll = True
    dcForceOpen = True
    object dsGetGoodsInfoF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
    end
    object dsGetGoodsInfoF_NAME: TFIBStringField
      FieldName = 'F_NAME'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsGetGoodsInfoF_ARTICLE: TFIBStringField
      FieldName = 'F_ARTICLE'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsGetGoodsInfoF_DOP_INFO: TFIBStringField
      FieldName = 'F_DOP_INFO'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsGetGoodsInfoF_GOODS_GRP_EXT_ID: TFIBStringField
      FieldName = 'F_GOODS_GRP_EXT_ID'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsGetGoodsInfoF_SCANCODE: TFIBStringField
      FieldName = 'F_SCANCODE'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsGetGoodsInfoF_GRP_INFO: TFIBStringField
      FieldName = 'F_GRP_INFO'
      Size = 10000
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsGetGoodsInfoF_PRICE1: TFIBFloatField
      FieldName = 'F_PRICE1'
    end
    object dsGetGoodsInfoF_PRICE2: TFIBFloatField
      FieldName = 'F_PRICE2'
    end
  end
  object srGetGoodsInfo: TDataSource
    DataSet = dsGetGoodsInfo
    Left = 512
    Top = 240
  end
end
