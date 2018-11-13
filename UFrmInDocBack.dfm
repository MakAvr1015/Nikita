inherited FrmInDocBack: TFrmInDocBack
  Caption = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
  ClientHeight = 429
  ClientWidth = 664
  ExplicitWidth = 672
  ExplicitHeight = 456
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 410
    Width = 664
  end
  inherited Panel3: TPanel
    Width = 664
    Height = 410
    ExplicitWidth = 664
    ExplicitHeight = 410
    inherited RzToolbar: TRzToolbar
      Width = 662
      ToolbarControls = (
        BtnNew
        BtnEdit
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
      inherited BtnOpen: TRzToolButton
        OnClick = BtnOpenClick
      end
    end
    object RzPanel1: TRzPanel
      Left = 1
      Top = 30
      Width = 662
      Height = 78
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ExplicitWidth = 729
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
      object RzLabel3: TRzLabel
        Left = 396
        Top = 13
        Width = 57
        Height = 19
        Caption = #1055#1072#1088#1090#1085#1077#1088
      end
      object RzLabel4: TRzLabel
        Left = 406
        Top = 42
        Width = 46
        Height = 19
        Caption = #1057#1090#1072#1090#1091#1089
      end
      object RzLabel5: TRzLabel
        Left = 190
        Top = 13
        Width = 41
        Height = 19
        Caption = #1057#1082#1083#1072#1076
      end
      object RzLabel6: TRzLabel
        Left = 190
        Top = 47
        Width = 42
        Height = 19
        Caption = #1055#1088#1072#1081#1089
      end
      object RzDBEdit1: TRzDBEdit
        Left = 54
        Top = 6
        Width = 121
        Height = 27
        DataSource = srDocHead
        DataField = 'F_NUMBER'
        TabOrder = 0
      end
      object RzDBLookupComboBox1: TRzDBLookupComboBox
        Left = 464
        Top = 39
        Width = 145
        Height = 27
        DataField = 'F_STATE'
        DataSource = srDocHead
        KeyField = 'f_id'
        ListField = 'f_name'
        ListSource = srStateSource
        TabOrder = 1
      end
      object RzDBDateTimeEdit1: TRzDBDateTimeEdit
        Left = 54
        Top = 39
        Width = 121
        Height = 27
        DataSource = srDocHead
        DataField = 'F_DATE'
        TabOrder = 2
        EditType = etDate
      end
      object RzDBButtonEdit2: TRzDBButtonEdit
        Left = 246
        Top = 10
        Width = 144
        Height = 27
        DataSource = srDocHead
        DataField = 'F_SKLAD_NAME'
        TabOrder = 3
      end
      object RzDBButtonEdit3: TRzDBButtonEdit
        Left = 246
        Top = 44
        Width = 144
        Height = 27
        DataSource = srDocHead
        DataField = 'F_PRICE_NAME'
        TabOrder = 4
      end
      object RzDBButtonEdit1: TRzDBButtonEdit
        Left = 465
        Top = 6
        Width = 256
        Height = 27
        DataSource = srDocHead
        DataField = 'F_PARTNER_NAME'
        TabOrder = 5
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 108
      Width = 662
      Height = 301
      Align = alClient
      TabOrder = 2
      ExplicitWidth = 729
      ExplicitHeight = 295
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnKeyPress = cxGrid1DBTableView1KeyPress
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = srDocStrings
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Position = spFooter
            Column = cxGrid1DBTableView1F_SUM
          end
          item
            Kind = skSum
            Position = spFooter
            Column = cxGrid1DBTableView1F_CNT
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'F_SUM'
            Column = cxGrid1DBTableView1F_SUM
            DisplayText = #1048#1090#1086#1075#1086#1074#1072#1103' '#1089#1091#1084#1084#1072
          end
          item
            Kind = skSum
            Column = cxGrid1DBTableView1F_CNT
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsView.Navigator = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        object cxGrid1DBTableView1F_ID: TcxGridDBColumn
          DataBinding.FieldName = 'F_ID'
          Visible = False
        end
        object cxGrid1DBTableView1F_ARTICLE: TcxGridDBColumn
          DataBinding.FieldName = 'F_ARTICLE'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Editing = False
        end
        object cxGrid1DBTableView1F_GOOD_NAME: TcxGridDBColumn
          Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
          DataBinding.FieldName = 'F_GOOD_NAME'
          PropertiesClassName = 'TcxLabelProperties'
        end
        object cxGrid1DBTableView1F_GOOD: TcxGridDBColumn
          Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
          DataBinding.FieldName = 'F_GOOD'
          Visible = False
          Width = 309
        end
        object cxGrid1DBTableView1F_PRICE: TcxGridDBColumn
          DataBinding.FieldName = 'F_PRICE_VAL'
          Width = 105
        end
        object cxGrid1DBTableView1F_ED_IZM_SHORT_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_ED_IZM_SHORT_NAME'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Editing = False
        end
        object cxGrid1DBTableView1F_CNT: TcxGridDBColumn
          DataBinding.FieldName = 'F_CNT'
          Width = 104
        end
        object cxGrid1DBTableView1F_SUM: TcxGridDBColumn
          DataBinding.FieldName = 'F_SUM'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Editing = False
          Width = 105
        end
        object cxGrid1DBTableView1F_DOC_IN: TcxGridDBColumn
          DataBinding.FieldName = 'F_DOC_IN'
          Visible = False
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
  object pFIBTransaction: TpFIBTransaction
    DefaultDatabase = DM.pFIBDatabase
    TimeoutAction = TARollback
    Left = 600
    Top = 360
  end
  object dsCopy2Price: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_DOC_PRICE'
      'FROM'
      '    SP_COPY_IN2PRICE(:F_DOC_IN,'
      '    :F_CHANGE_PRICE) ')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 64
    Top = 264
  end
  object srGoodsSource: TDataSource
    DataSet = dsGoodsSource
    Left = 224
    Top = 272
  end
  object dsGoodsSource: TpFIBDataSet
    SelectSQL.Strings = (
      'select f_id,f_name from sp_t_nsi_goods_s(null) order by f_name')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 216
    Top = 264
    object dsGoodsSourceF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
      RoundByScale = True
    end
    object dsGoodsSourceF_NAME: TFIBStringField
      FieldName = 'F_NAME'
      Size = 60
      EmptyStrToNull = True
    end
  end
  object srDocStrings: TDataSource
    DataSet = dsDocStrings
    Left = 368
    Top = 224
  end
  object dsDocStrings: TpFIBDataSet
    UpdateSQL.Strings = (
      'execute procedure SP_T_DOC_IN_STR_U('
      '    :F_ID,'
      '    :F_DOC_IN,'
      '    :F_GOOD,'
      '    :F_PRICE_val,'
      '    :F_CNT,'
      '    :F_SUM)')
    DeleteSQL.Strings = (
      'execute procedure SP_T_DOC_IN_STR_d(:f_id)')
    InsertSQL.Strings = (
      'execute procedure SP_T_DOC_IN_STR_I'
      '(   :f_id,'
      '    :F_DOC_IN,'
      '    :F_GOOD,'
      '    :F_PRICE_val,'
      '    :F_CNT,'
      '    :F_SUM)')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_DOC_IN,'
      '    F_GOOD,'
      '    f_price_val,'
      '    F_CNT,'
      '    F_SUM,'
      '    F_GOOD_NAME,'
      '    F_article,'
      '    f_ed_izm_short_name,'
      '    f_scancode'
      'FROM'
      '    SP_T_DOC_IN_STR_S(:DOC_ID) ')
    AutoUpdateOptions.ParamsToFieldsLinks.Strings = (
      'F_DOC_IN=DOC_ID')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DataSource = srDocHead
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 360
    Top = 208
    object dsDocStringsF_ID: TFIBBCDField
      Tag = 1
      FieldName = 'F_ID'
      Size = 0
      RoundByScale = True
    end
    object dsDocStringsF_GOOD_NAME: TFIBStringField
      DisplayLabel = #1058#1086#1074#1072#1088
      FieldName = 'F_GOOD_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsDocStringsF_CNT: TFIBFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'F_CNT'
    end
    object dsDocStringsF_SUM: TFIBFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'F_SUM'
    end
    object dsDocStringsF_DOC_IN: TFIBBCDField
      FieldName = 'F_DOC_IN'
      Size = 0
      RoundByScale = True
    end
    object dsDocStringsF_GOOD: TFIBBCDField
      FieldName = 'F_GOOD'
      Size = 0
      RoundByScale = True
    end
    object dsDocStringsF_PRICE_VAL: TFIBFloatField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'F_PRICE_VAL'
    end
    object dsDocStringsF_ARTICLE: TFIBStringField
      DisplayLabel = #1040#1088#1090#1080#1082#1091#1083
      FieldName = 'F_ARTICLE'
      EmptyStrToNull = True
    end
    object dsDocStringsF_ED_IZM_SHORT_NAME: TFIBStringField
      DisplayLabel = #1077#1076'.'#1080#1079#1084'.'
      FieldName = 'F_ED_IZM_SHORT_NAME'
      EmptyStrToNull = True
    end
    object dsDocStringsF_SCANCODE: TFIBStringField
      FieldName = 'F_SCANCODE'
      Size = 60
      EmptyStrToNull = True
    end
  end
  object srStateSource: TDataSource
    DataSet = dsStateSource
    Left = 544
    Top = 104
  end
  object dsStateSource: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_NAME,'
      '    F_PARENT'
      'FROM'
      '    SP_T_NSI_STATE_S ')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 536
    Top = 96
    object dsStateSourceF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
      RoundByScale = True
    end
    object dsStateSourceF_NAME: TFIBStringField
      FieldName = 'F_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsStateSourceF_PARENT: TFIBBCDField
      FieldName = 'F_PARENT'
      Size = 0
      RoundByScale = True
    end
  end
  object srDocHead: TDataSource
    DataSet = dsDocHead
    Left = 280
    Top = 72
  end
  object dsDocHead: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'execute procedure SP_T_DOC_IN_U(:doc_id,:F_SKLAD,:F_PARTNER,:F_N' +
        'UMBER,:F_DATE,:F_STATE, :f_price)'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID as Doc_id,'
      '    F_SKLAD,'
      '    F_PARTNER,'
      '    F_NUMBER,'
      '    F_DATE,'
      '    F_STATE,'
      '    F_PARTNER_NAME,'
      '    F_STATE_NAME,'
      '    F_SKLAD_NAME,'
      '    F_PRICE,'
      '    f_price_name'
      'FROM'
      '    SP_T_DOC_IN_GET(:DOC_ID) ')
    AfterOpen = dsDocHeadAfterOpen
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 272
    Top = 64
    object dsDocHeadDOC_ID: TFIBBCDField
      FieldName = 'DOC_ID'
      Size = 0
      RoundByScale = True
    end
    object dsDocHeadF_SKLAD: TFIBBCDField
      FieldName = 'F_SKLAD'
      Size = 0
      RoundByScale = True
    end
    object dsDocHeadF_PARTNER: TFIBBCDField
      FieldName = 'F_PARTNER'
      Size = 0
      RoundByScale = True
    end
    object dsDocHeadF_NUMBER: TFIBStringField
      FieldName = 'F_NUMBER'
      Size = 60
      EmptyStrToNull = True
    end
    object dsDocHeadF_DATE: TFIBDateField
      FieldName = 'F_DATE'
    end
    object dsDocHeadF_STATE: TFIBBCDField
      FieldName = 'F_STATE'
      Size = 0
      RoundByScale = True
    end
    object dsDocHeadF_PARTNER_NAME: TFIBStringField
      FieldName = 'F_PARTNER_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsDocHeadF_STATE_NAME: TFIBStringField
      FieldName = 'F_STATE_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsDocHeadF_SKLAD_NAME: TFIBStringField
      FieldName = 'F_SKLAD_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsDocHeadF_PRICE: TFIBBCDField
      FieldName = 'F_PRICE'
      Size = 0
      RoundByScale = True
    end
    object dsDocHeadF_PRICE_NAME: TFIBStringField
      FieldName = 'F_PRICE_NAME'
      Size = 60
      EmptyStrToNull = True
    end
  end
end
