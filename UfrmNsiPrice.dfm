inherited frmNsiPrice: TfrmNsiPrice
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1094#1077#1085
  ClientHeight = 498
  ClientWidth = 747
  ExplicitWidth = 755
  ExplicitHeight = 525
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 479
    Width = 747
    ExplicitTop = 479
    ExplicitWidth = 747
    inherited DsFormName: TRzStatusPane
      Caption = 'dsListNsiPrice'
    end
  end
  inherited Panel3: TPanel
    Width = 747
    Height = 479
    ExplicitWidth = 747
    ExplicitHeight = 479
    object Splitter1: TSplitter [0]
      Left = 305
      Top = 30
      Width = 6
      Height = 448
      ExplicitLeft = 251
      ExplicitHeight = 340
    end
    inherited RzToolbar: TRzToolbar
      Width = 745
      TextOptions = ttoCustom
      ExplicitWidth = 745
      ToolbarControls = (
        BtnNew
        BtnEdit
        BtnView
        BtnOpen
        BtnSave
        BtnRefresh
        BtnFind
        BtnPrint
        BtnOK
        BtnCancel
        BtnExecute
        BtnDelete)
      inherited BtnNew: TRzToolButton
        OnClick = BtnNewClick
      end
      inherited BtnFind: TRzToolButton
        Left = 154
        ExplicitLeft = 154
      end
      inherited BtnPrint: TRzToolButton
        Left = 179
        ExplicitLeft = 179
      end
      inherited BtnOK: TRzToolButton
        Left = 218
        ExplicitLeft = 218
      end
      inherited BtnCancel: TRzToolButton
        Left = 243
        ExplicitLeft = 243
      end
      inherited BtnRefresh: TRzToolButton
        Left = 129
        ExplicitLeft = 129
      end
      inherited BtnEdit: TRzToolButton
        Enabled = True
        OnClick = cxGrid1DBTableView1DblClick
      end
      inherited BtnExecute: TRzToolButton
        Left = 268
        Enabled = True
        OnClick = BtnExecuteClick
        ExplicitLeft = 268
      end
      inherited BtnDelete: TRzToolButton
        Left = 293
        Enabled = True
        Visible = True
        ExplicitLeft = 293
      end
      inherited BtnSave: TRzToolButton
        Left = 104
        Visible = True
        ExplicitLeft = 104
      end
      inherited BtnExit: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnView: TRzToolButton
        Visible = False
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 30
      Width = 304
      Height = 448
      Align = alLeft
      TabOrder = 1
      LookAndFeel.SkinName = 'MoneyTwins'
      LookAndFeel.SkinName = 'MoneyTwins'
      ExplicitTop = 28
      ExplicitHeight = 450
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid1DBTableView1DblClick
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = srNsiPrice
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        object cxGrid1DBTableView1F_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_NAME'
          Width = 82
        end
        object cxGrid1DBTableView1F_PARENT_OBJECT: TcxGridDBColumn
          DataBinding.FieldName = 'F_PARENT_OBJECT'
          Width = 87
        end
        object cxGrid1DBTableView1F_FORMULA: TcxGridDBColumn
          DataBinding.FieldName = 'F_FORMULA'
          Visible = False
          Width = 65
        end
        object cxGrid1DBTableView1F_PRICE_ID: TcxGridDBColumn
          DataBinding.FieldName = 'F_PRICE_ID'
          Visible = False
        end
        object cxGrid1DBTableView1F_ROUND: TcxGridDBColumn
          DataBinding.FieldName = 'F_ROUND'
          Visible = False
          Width = 68
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object Panel1: TPanel
      Left = 311
      Top = 30
      Width = 435
      Height = 448
      Align = alClient
      Caption = 'Panel1'
      TabOrder = 2
      ExplicitTop = 28
      ExplicitHeight = 450
      object Splitter2: TSplitter
        Left = 1
        Top = 258
        Width = 433
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        ExplicitTop = 1
        ExplicitWidth = 260
      end
      object cxGrid2: TcxGrid
        Left = 1
        Top = 1
        Width = 433
        Height = 257
        Align = alClient
        TabOrder = 0
        LookAndFeel.SkinName = 'MoneyTwins'
        LookAndFeel.SkinName = 'MoneyTwins'
        ExplicitHeight = 259
        object cxGrid2DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataModeController.GridModeBufferCount = 50
          DataController.DataSource = srListPriceGood
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = cxGrid2DBTableView1F_ARTICLE
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
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
          object cxGrid2DBTableView1F_PRICE: TcxGridDBColumn
            DataBinding.FieldName = 'F_PRICE'
            Visible = False
          end
          object cxGrid2DBTableView1F_MAKE_DATE: TcxGridDBColumn
            DataBinding.FieldName = 'F_MAKE_DATE'
            Visible = False
          end
          object cxGrid2DBTableView1F_ARTICLE: TcxGridDBColumn
            DataBinding.FieldName = 'F_ARTICLE'
            Options.Editing = False
            Width = 59
          end
          object cxGrid2DBTableView1F_GOOD_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'F_GOOD_NAME'
            Options.Editing = False
            Width = 151
          end
          object cxGrid2DBTableView1F_STR_DATE: TcxGridDBColumn
            DataBinding.FieldName = 'F_STR_DATE'
            Options.Editing = False
            Width = 57
          end
          object cxGrid2DBTableView1F_VALUE: TcxGridDBColumn
            DataBinding.FieldName = 'F_VALUE'
            Width = 48
          end
          object cxGrid2DBTableView1F_DEFAULT_SKLAD_OST: TcxGridDBColumn
            Caption = #1054#1089#1090#1072#1090#1086#1082
            DataBinding.FieldName = 'F_DEFAULT_SKLAD_OST'
            Visible = False
            Width = 48
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
      inline FramGoodCard1: TFramGoodCard
        Left = 1
        Top = 261
        Width = 433
        Height = 186
        Align = alBottom
        TabOrder = 1
        ExplicitLeft = 1
        ExplicitTop = 263
        ExplicitWidth = 433
        ExplicitHeight = 186
        inherited Panel4: TPanel
          Left = 183
          Height = 186
          ExplicitLeft = 183
          ExplicitHeight = 186
          inherited cxDBLabel3: TcxDBLabel
            Style.LookAndFeel.SkinName = ''
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
          end
          inherited cxGrid1: TcxGrid
            Height = 33
            LookAndFeel.SkinName = 'MoneyTwins'
            ExplicitHeight = 33
          end
        end
        inherited cxDBImage1: TcxDBImage
          ExplicitWidth = 183
          ExplicitHeight = 186
          Height = 186
          Width = 183
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
          DataSource = srListPriceGood
        end
      end
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dsListNsiPrice: TpFIBDataSet
    UpdateSQL.Strings = (
      '')
    DeleteSQL.Strings = (
      'execute procedure SP_T_NSI_PRICE_D(:f_price_id)')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID F_PRICE_ID,'
      '    F_NAME,'
      '    F_PARENT_OBJECT,'
      '    F_FORMULA,'
      '    F_ROUND'
      'FROM'
      '    SP_T_NSI_PRICE_S ')
    AfterOpen = dsListNsiPriceAfterOpen
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 96
    Top = 200
    object dsListNsiPriceF_PRICE_ID: TFIBBCDField
      Tag = 1
      FieldName = 'F_PRICE_ID'
      Size = 0
    end
    object dsListNsiPriceF_NAME: TFIBStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077
      FieldName = 'F_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsListNsiPriceF_PARENT_OBJECT: TFIBBCDField
      DisplayLabel = #1048#1089#1090#1086#1095#1085#1080#1082
      FieldName = 'F_PARENT_OBJECT'
      Size = 0
    end
    object dsListNsiPriceF_FORMULA: TFIBStringField
      DisplayLabel = #1060#1086#1088#1084#1091#1083#1072
      FieldName = 'F_FORMULA'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsListNsiPriceF_ROUND: TFIBBCDField
      DisplayLabel = #1054#1082#1088#1091#1075#1083#1077#1085#1080#1077
      FieldName = 'F_ROUND'
      Size = 3
    end
  end
  object dsListPriceGood: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'EXECUTE PROCEDURE SP_T_PRICE_U(:f_id, :f_good, :f_price,:f_value' +
        ',:F_STR_DATE)')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_GOOD,'
      '    F_PRICE,'
      '    F_STR_DATE,'
      '    F_MAKE_DATE,'
      '    F_GOOD_NAME,'
      '    f_value,'
      '    F_DEFAULT_SKLAD_OST,'
      '    F_ARTICLE'
      'FROM'
      '    SP_T_PRICE_S(:F_PRICE_ID) ')
    AutoUpdateOptions.ParamsToFieldsLinks.Strings = (
      'F_PRICE=F_PRICE_ID')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DataSource = srNsiPrice
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 384
    Top = 200
    object dsListPriceGoodF_ID: TFIBBCDField
      Tag = 1
      FieldName = 'F_ID'
      Visible = False
      Size = 0
    end
    object dsListPriceGoodF_GOOD: TFIBBCDField
      FieldName = 'F_GOOD'
      Visible = False
      Size = 0
    end
    object dsListPriceGoodF_PRICE: TFIBBCDField
      FieldName = 'F_PRICE'
      Visible = False
      EditFormat = '### ### ###.##'
      Size = 0
    end
    object dsListPriceGoodF_STR_DATE: TFIBDateField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
      FieldName = 'F_STR_DATE'
    end
    object dsListPriceGoodF_MAKE_DATE: TFIBDateTimeField
      FieldName = 'F_MAKE_DATE'
    end
    object dsListPriceGoodF_GOOD_NAME: TFIBStringField
      DisplayLabel = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
      FieldName = 'F_GOOD_NAME'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsListPriceGoodF_VALUE: TFIBFloatField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'F_VALUE'
      DisplayFormat = '### ### ###.##'
      EditFormat = '### ### ###.##'
    end
    object dsListPriceGoodF_ARTICLE: TFIBStringField
      DisplayLabel = #1040#1088#1090#1080#1082#1091#1083
      FieldName = 'F_ARTICLE'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsListPriceGoodF_DEFAULT_SKLAD_OST: TFIBBCDField
      FieldName = 'F_DEFAULT_SKLAD_OST'
      Size = 3
    end
  end
  object srNsiPrice: TDataSource
    DataSet = dsListNsiPrice
    Left = 104
    Top = 208
  end
  object srListPriceGood: TDataSource
    DataSet = dsListPriceGood
    Left = 392
    Top = 208
  end
  object pFIBTransaction: TpFIBTransaction
    DefaultDatabase = DM.pFIBDatabase
    Left = 432
    Top = 336
  end
  object spCalcPrice: TpFIBStoredProc
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    SQL.Strings = (
      'EXECUTE PROCEDURE SP_CALC_PRICE (?F_PRICE_ID, ?F_START_DATE)')
    StoredProcName = 'SP_CALC_PRICE'
    Left = 600
    Top = 256
  end
end
