inherited FrmPriceDoc: TFrmPriceDoc
  Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1094#1077#1085#1099
  ClientHeight = 367
  ClientWidth = 946
  ExplicitWidth = 954
  ExplicitHeight = 394
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 348
    Width = 946
    ExplicitTop = 348
    ExplicitWidth = 946
    inherited DsFormName: TRzStatusPane
      Caption = 'dsPriceDocHead'
    end
  end
  inherited Panel3: TPanel
    Width = 946
    Height = 348
    ExplicitWidth = 946
    ExplicitHeight = 348
    inherited RzToolbar: TRzToolbar
      Width = 944
      Height = 27
      ExplicitWidth = 944
      ExplicitHeight = 27
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
        BtnSave)
      inherited BtnExit: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnView: TRzToolButton
        Visible = False
      end
    end
    object RzPanel1: TRzPanel
      Left = 1
      Top = 28
      Width = 944
      Height = 78
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object RzLabel1: TRzLabel
        Left = 8
        Top = 10
        Width = 44
        Height = 19
        Caption = #1053#1086#1084#1077#1088
      end
      object RzLabel2: TRzLabel
        Left = 8
        Top = 42
        Width = 32
        Height = 19
        Caption = #1044#1072#1090#1072
      end
      object RzLabel4: TRzLabel
        Left = 187
        Top = 42
        Width = 46
        Height = 19
        Caption = #1057#1090#1072#1090#1091#1089
      end
      object RzLabel6: TRzLabel
        Left = 190
        Top = 9
        Width = 42
        Height = 19
        Caption = #1055#1088#1072#1081#1089
      end
      object RzDBEdit1: TRzDBEdit
        Left = 54
        Top = 6
        Width = 121
        Height = 27
        DataSource = srPriceDocHead
        DataField = 'F_NUM'
        TabOrder = 0
      end
      object RzDBLookupComboBox1: TRzDBLookupComboBox
        Left = 245
        Top = 39
        Width = 145
        Height = 27
        DataField = 'F_STATE'
        DataSource = srPriceDocHead
        KeyField = 'f_id'
        ListField = 'f_name'
        ListSource = DM.srStateSource
        TabOrder = 1
      end
      object RzDBDateTimeEdit1: TRzDBDateTimeEdit
        Left = 54
        Top = 39
        Width = 121
        Height = 27
        DataSource = srPriceDocHead
        DataField = 'F_DATE'
        TabOrder = 2
        EditType = etDate
      end
      object RzDBButtonEdit3: TRzDBButtonEdit
        Left = 246
        Top = 6
        Width = 144
        Height = 27
        DataSource = srPriceDocHead
        DataField = 'F_PRICE_NAME'
        TabOrder = 3
        OnButtonClick = RzDBButtonEdit3ButtonClick
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 106
      Width = 944
      Height = 241
      Align = alClient
      Caption = 'Panel1'
      TabOrder = 2
      object Splitter1: TSplitter
        Left = 800
        Top = 1
        Height = 239
        Align = alRight
        ExplicitLeft = 760
        ExplicitTop = 256
        ExplicitHeight = 100
      end
      object cxGrid1: TcxGrid
        Left = 1
        Top = 1
        Width = 799
        Height = 239
        Align = alClient
        TabOrder = 0
        LookAndFeel.SkinName = 'MoneyTwins'
        LookAndFeel.SkinName = 'MoneyTwins'
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnDragDrop = cxGrid1DBTableView1DragDrop
          OnDragOver = cxGrid1DBTableView1DragOver
          OnKeyPress = cxGrid1DBTableView1KeyPress
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.Insert.Visible = False
          OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
          DataController.DataSource = srPriceDocBody
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          Styles.StyleSheet = DM.GridTableViewStyleSheetDevExpress
          object cxGrid1DBTableView1F_ID: TcxGridDBColumn
            DataBinding.FieldName = 'F_ID'
            Visible = False
          end
          object cxGrid1DBTableView1F_GOOD: TcxGridDBColumn
            DataBinding.FieldName = 'F_GOOD'
            Visible = False
          end
          object cxGrid1DBTableView1F_DOC_PRICE: TcxGridDBColumn
            DataBinding.FieldName = 'F_DOC_PRICE'
            Visible = False
          end
          object cxGrid1DBTableView1F_ARTICLE: TcxGridDBColumn
            Caption = #1040#1088#1090#1080#1082#1091#1083
            DataBinding.FieldName = 'F_ARTICLE'
          end
          object cxGrid1DBTableView1F_GOOD_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'F_GOOD_NAME'
            Options.Editing = False
            Width = 386
          end
          object cxGrid1DBTableView1F_PRICE: TcxGridDBColumn
            DataBinding.FieldName = 'F_PRICE'
            Width = 84
          end
          object cxGrid1DBTableView1F_IN_PRICE: TcxGridDBColumn
            DataBinding.FieldName = 'F_IN_PRICE'
            Options.Editing = False
          end
          object cxGrid1DBTableView1F_OLD_PRICE: TcxGridDBColumn
            DataBinding.FieldName = 'F_OLD_PRICE'
            Options.Editing = False
          end
          object cxGrid1DBTableView1F_SKLAD_OST: TcxGridDBColumn
            DataBinding.FieldName = 'F_SKLAD_OST'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object cxDBImage1: TcxDBImage
        Left = 803
        Top = 1
        Align = alRight
        DataBinding.DataField = 'f_photo'
        DataBinding.DataSource = srGoodPhoto
        Properties.GraphicClassName = 'TJPEGImage'
        Properties.Stretch = True
        TabOrder = 1
        Height = 239
        Width = 140
      end
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dsPriceDocHead: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'EXECUTE PROCEDURE SP_T_DOC_PRICE_U(:f_doc_head, :f_num, :f_date,' +
        ' :f_parent, :f_state, :f_price)')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID as f_doc_head,'
      '    F_NUM,'
      '    F_DATE,'
      '    F_PARENT,'
      '    F_STATE,'
      '    F_PRICE,'
      '    F_PRICE_NAME,'
      '    F_STATE_NAME'
      'FROM'
      '    SP_T_DOC_PRICE_GET(:F_PRICE_DOC,'
      '    :F_PARENT_PRICE_DOC) ')
    AfterOpen = dsPriceDocHeadAfterOpen
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 440
    Top = 48
    object dsPriceDocHeadF_NUM: TFIBStringField
      FieldName = 'F_NUM'
      EmptyStrToNull = True
    end
    object dsPriceDocHeadF_DATE: TFIBDateField
      FieldName = 'F_DATE'
    end
    object dsPriceDocHeadF_PARENT: TFIBBCDField
      FieldName = 'F_PARENT'
      Size = 0
      RoundByScale = True
    end
    object dsPriceDocHeadF_STATE: TFIBBCDField
      FieldName = 'F_STATE'
      Size = 0
      RoundByScale = True
    end
    object dsPriceDocHeadF_PRICE: TFIBBCDField
      FieldName = 'F_PRICE'
      Size = 0
      RoundByScale = True
    end
    object dsPriceDocHeadF_PRICE_NAME: TFIBStringField
      FieldName = 'F_PRICE_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsPriceDocHeadF_STATE_NAME: TFIBStringField
      FieldName = 'F_STATE_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsPriceDocHeadF_DOC_HEAD: TFIBBCDField
      FieldName = 'F_DOC_HEAD'
      Size = 0
      RoundByScale = True
    end
  end
  object dsPriceDocBody: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'execute procedure SP_T_DOC_PRICE_STR_U(:f_id,:f_good,:f_price,:f' +
        '_doc_price)')
    DeleteSQL.Strings = (
      'execute procedure SP_T_DOC_PRICE_STR_D(:f_id)')
    InsertSQL.Strings = (
      
        'execute procedure SP_T_DOC_PRICE_STR_I(:f_good,:f_price,:f_doc_p' +
        'rice)')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_GOOD,'
      '    F_PRICE,'
      '    F_DOC_PRICE,'
      '    F_GOOD_NAME,'
      '    f_good_article as f_article,'
      '    f_old_price,'
      '    ('
      
        '      select f_value from sp_t_price_get((select param_value fro' +
        'm sp_get_sys_param('#39'DEFAULT_IN_PRICE'#39')),f_good)'
      '    ) as f_in_price,'
      '    F_SKLAD_OST'
      'FROM'
      '    SP_T_DOC_PRICE_STR_S(:F_DOC_head) ')
    AutoUpdateOptions.ParamsToFieldsLinks.Strings = (
      'F_DOC_PRICE=F_DOC_HEAD')
    AfterDelete = dsPriceDocBodyAfterDelete
    AfterPost = dsPriceDocBodyAfterPost
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    AutoCommit = True
    DataSource = srPriceDocHead
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 448
    Top = 200
    object dsPriceDocBodyF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsPriceDocBodyF_GOOD: TFIBBCDField
      FieldName = 'F_GOOD'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsPriceDocBodyF_PRICE: TFIBBCDField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'F_PRICE'
      DisplayFormat = '0.00'
      Size = 3
      RoundByScale = True
    end
    object dsPriceDocBodyF_DOC_PRICE: TFIBBCDField
      FieldName = 'F_DOC_PRICE'
      Visible = False
      DisplayFormat = '0.00'
      Size = 0
      RoundByScale = True
    end
    object dsPriceDocBodyF_GOOD_NAME: TFIBStringField
      DisplayLabel = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
      FieldName = 'F_GOOD_NAME'
      Size = 255
      EmptyStrToNull = True
    end
    object dsPriceDocBodyF_OLD_PRICE: TFIBBCDField
      DisplayLabel = #1057#1090#1072#1088#1072#1103' '#1094#1077#1085#1072
      FieldName = 'F_OLD_PRICE'
      ReadOnly = True
      DisplayFormat = '0.00'
      Size = 3
      RoundByScale = True
    end
    object dsPriceDocBodyF_IN_PRICE: TFIBFloatField
      DisplayLabel = #1042#1093#1086#1076#1103#1097#1072#1103' '#1094#1077#1085#1072
      FieldName = 'F_IN_PRICE'
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object dsPriceDocBodyF_SKLAD_OST: TBCDField
      DisplayLabel = #1054#1089#1090#1072#1090#1086#1082
      FieldName = 'F_SKLAD_OST'
      Size = 3
    end
    object dsPriceDocBodyF_ARTICLE: TFIBStringField
      FieldName = 'F_ARTICLE'
      EmptyStrToNull = True
    end
  end
  object pFIBTransaction: TpFIBTransaction
    DefaultDatabase = DM.pFIBDatabase
    TimeoutAction = TARollback
    Left = 176
    Top = 216
  end
  object srPriceDocHead: TDataSource
    DataSet = dsPriceDocHead
    Left = 448
    Top = 56
  end
  object srPriceDocBody: TDataSource
    DataSet = dsPriceDocBody
    Left = 456
    Top = 208
  end
  object dsGoodPhoto: TpFIBDataSet
    SelectSQL.Strings = (
      'select f_memo as f_photo from SP_T_NSI_GOODS_MMEDIA_S(:f_good)')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DataSource = srPriceDocBody
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 800
    Top = 136
    WaitEndMasterScroll = True
    dcForceOpen = True
  end
  object srGoodPhoto: TDataSource
    DataSet = dsGoodPhoto
    Left = 800
    Top = 216
  end
end
