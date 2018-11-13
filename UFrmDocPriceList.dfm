inherited FrmDocPriceList: TFrmDocPriceList
  Caption = #1046#1091#1088#1085#1072#1083' '#1094#1077#1085#1086#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1103
  ClientHeight = 533
  ClientWidth = 895
  ExplicitWidth = 903
  ExplicitHeight = 560
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 514
    Width = 895
    ExplicitTop = 514
    ExplicitWidth = 895
    inherited DsFormName: TRzStatusPane
      Caption = 'dsPriceDocList'
    end
  end
  inherited Panel3: TPanel
    Width = 895
    Height = 514
    ExplicitWidth = 895
    ExplicitHeight = 514
    inherited RzToolbar: TRzToolbar
      Width = 893
      Height = 40
      ButtonLayout = blGlyphTop
      ButtonWidth = 40
      ButtonHeight = 40
      ShowButtonCaptions = True
      TextOptions = ttoCustom
      ExplicitWidth = 893
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
        Width = 51
        Height = 40
        Layout = blGlyphTop
        OnClick = BtnNewClick
        ExplicitTop = 0
        ExplicitWidth = 51
        ExplicitHeight = 40
      end
      inherited BtnOpen: TRzToolButton
        Left = 216
        Top = 0
        Width = 54
        Height = 40
        Layout = blGlyphTop
        Enabled = True
        OnClick = BtnOpenClick
        ExplicitLeft = 216
        ExplicitTop = 0
        ExplicitWidth = 54
        ExplicitHeight = 40
      end
      inherited BtnFind: TRzToolButton
        Left = 328
        Top = 0
        Layout = blGlyphTop
        ExplicitLeft = 328
        ExplicitTop = 0
        ExplicitWidth = 40
        ExplicitHeight = 40
      end
      inherited BtnPrint: TRzToolButton
        Left = 368
        Top = 0
        Width = 71
        Height = 40
        Layout = blGlyphTop
        ExplicitLeft = 368
        ExplicitTop = 0
        ExplicitWidth = 71
        ExplicitHeight = 40
      end
      inherited BtnOK: TRzToolButton
        Left = 439
        Top = 0
        Width = 52
        Height = 40
        Layout = blGlyphTop
        ExplicitLeft = 439
        ExplicitTop = 0
        ExplicitWidth = 52
        ExplicitHeight = 40
      end
      inherited BtnCancel: TRzToolButton
        Left = 491
        Top = 0
        Width = 58
        Height = 40
        Layout = blGlyphTop
        ExplicitLeft = 491
        ExplicitTop = 0
        ExplicitWidth = 58
        ExplicitHeight = 40
      end
      inherited BtnRefresh: TRzToolButton
        Left = 270
        Top = 0
        Width = 58
        Height = 40
        Layout = blGlyphTop
        Enabled = True
        OnClick = BtnRefreshClick
        ExplicitLeft = 270
        ExplicitTop = 0
        ExplicitWidth = 58
        ExplicitHeight = 40
      end
      inherited BtnEdit: TRzToolButton
        Left = 55
        Top = 0
        Width = 87
        Height = 40
        Layout = blGlyphTop
        Enabled = True
        OnClick = cxGrid1DBTableView1DblClick
        ExplicitLeft = 55
        ExplicitTop = 0
        ExplicitWidth = 87
        ExplicitHeight = 40
      end
      inherited BtnExecute: TRzToolButton
        Left = 549
        Top = 0
        Width = 64
        Height = 40
        Layout = blGlyphTop
        ExplicitLeft = 549
        ExplicitTop = 0
        ExplicitWidth = 64
        ExplicitHeight = 40
      end
      inherited BtnDelete: TRzToolButton
        Left = 613
        Top = 0
        Width = 52
        Height = 40
        Layout = blGlyphTop
        Enabled = True
        Visible = True
        ExplicitLeft = 613
        ExplicitTop = 0
        ExplicitWidth = 52
        ExplicitHeight = 40
      end
      inherited BtnSave: TRzToolButton
        Left = 665
        Top = 0
        Width = 63
        Height = 40
        Layout = blGlyphTop
        ExplicitLeft = 665
        ExplicitTop = 0
        ExplicitWidth = 63
        ExplicitHeight = 40
      end
      inherited BtnExit: TRzToolButton
        Left = 728
        Top = 0
        Layout = blGlyphTop
        ExplicitLeft = 728
        ExplicitTop = 0
        ExplicitWidth = 40
        ExplicitHeight = 40
      end
      inherited BtnView: TRzToolButton
        Left = 142
        Top = 0
        Width = 74
        Height = 40
        Layout = blGlyphTop
        Visible = False
        ExplicitLeft = 142
        ExplicitTop = 0
        ExplicitWidth = 74
        ExplicitHeight = 40
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 70
      Width = 893
      Height = 443
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'MoneyTwins'
      LookAndFeel.SkinName = 'MoneyTwins'
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid1DBTableView1DblClick
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = srPriceDocList
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsSelection.CellSelect = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        Styles.StyleSheet = DM.GridTableViewStyleSheetDevExpress
        object cxGrid1DBTableView1F_ID: TcxGridDBColumn
          DataBinding.FieldName = 'F_ID'
          Width = 43
        end
        object cxGrid1DBTableView1F_NUM: TcxGridDBColumn
          DataBinding.FieldName = 'F_NUM'
          Width = 83
        end
        object cxGrid1DBTableView1F_DATE: TcxGridDBColumn
          DataBinding.FieldName = 'F_DATE'
          Width = 100
        end
        object cxGrid1DBTableView1F_PARENT: TcxGridDBColumn
          DataBinding.FieldName = 'F_PARENT'
          Visible = False
        end
        object cxGrid1DBTableView1F_STATE: TcxGridDBColumn
          DataBinding.FieldName = 'F_STATE'
          Visible = False
        end
        object cxGrid1DBTableView1F_PRICE: TcxGridDBColumn
          DataBinding.FieldName = 'F_PRICE'
          Visible = False
        end
        object cxGrid1DBTableView1F_PRICE_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_PRICE_NAME'
          Width = 215
        end
        object cxGrid1DBTableView1F_STATE_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_STATE_NAME'
          Width = 214
        end
        object cxGrid1DBTableView1f_nacenka: TcxGridDBColumn
          DataBinding.FieldName = 'f_nacenka'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object ToolBar1: TToolBar
      Left = 1
      Top = 41
      Width = 893
      Height = 29
      Caption = 'ToolBar1'
      TabOrder = 2
      object Editstr_date: TDateTimePicker
        Left = 0
        Top = 0
        Width = 99
        Height = 22
        Date = 40911.656940625000000000
        Time = 40911.656940625000000000
        TabOrder = 0
      end
      object Editend_date: TDateTimePicker
        Left = 99
        Top = 0
        Width = 94
        Height = 22
        Date = 40911.657074699080000000
        Time = 40911.657074699080000000
        TabOrder = 1
      end
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dsPriceDocList: TpFIBDataSet
    DeleteSQL.Strings = (
      'execute procedure SP_T_DOC_price_D(:f_id)')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_NUM,'
      '    F_DATE,'
      '    F_PARENT,'
      '    F_STATE,'
      '    F_PRICE,'
      '    F_PRICE_NAME,'
      '    F_STATE_NAME,'
      '    f_nacenka'
      'FROM'
      '    SP_T_DOC_PRICE_S(:str_date,:end_date) ')
    BeforeOpen = dsPriceDocListBeforeOpen
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 248
    Top = 104
    object dsPriceDocListF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
      RoundByScale = True
    end
    object dsPriceDocListF_NUM: TFIBStringField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'F_NUM'
      EmptyStrToNull = True
    end
    object dsPriceDocListF_DATE: TFIBDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'F_DATE'
    end
    object dsPriceDocListF_PARENT: TFIBBCDField
      FieldName = 'F_PARENT'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsPriceDocListF_STATE: TFIBBCDField
      FieldName = 'F_STATE'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsPriceDocListF_PRICE: TFIBBCDField
      FieldName = 'F_PRICE'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsPriceDocListF_PRICE_NAME: TFIBStringField
      DisplayLabel = #1055#1088#1072#1081#1089
      FieldName = 'F_PRICE_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsPriceDocListF_STATE_NAME: TFIBStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'F_STATE_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsPriceDocListf_nacenka: TFIBBCDField
      DisplayLabel = #1053#1072#1094#1077#1085#1082#1072
      FieldName = 'f_nacenka'
      RoundByScale = True
    end
  end
  object pFIBTransaction: TpFIBTransaction
    DefaultDatabase = DM.pFIBDatabase
    TimeoutAction = TARollback
    Left = 320
    Top = 88
  end
  object srPriceDocList: TDataSource
    DataSet = dsPriceDocList
    Left = 280
    Top = 136
  end
  object dsImportNsiPrice: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID'
      'FROM'
      '    SP_IMPORT_NSI_PRICE(:F_PRICE_ID,'
      '    :F_PRICE_NAME) ')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 392
    Top = 232
    object dsImportNsiPriceF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
      RoundByScale = True
    end
  end
  object spImportPriceDoc: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID'
      'FROM'
      '    SP_IMPORT_DOC_PRICE(:F_NUMBER,'
      '    :F_PRICE,'
      '    :F_DATE) ')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 392
    Top = 264
    object spImportPriceDocF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
      RoundByScale = True
    end
  end
  object spImportPriceDoc_str: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_GOOD_ID,'
      '    F_ID'
      'FROM'
      '    SP_IMPORT_DOC_PRICE_STR(:F_NAME,'
      '    :F_ARTICLE,'
      '    :F_ED_IZM,'
      '    :F_PRICE,'
      '    :F_EXT_ID,'
      '    :F_EXT_BASE,'
      '    :F_DOC_ID) ')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 424
    Top = 264
  end
  object OpenDialog: TOpenDialog
    Left = 592
    Top = 168
  end
end
