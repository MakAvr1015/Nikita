inherited FrmDocView: TFrmDocView
  Caption = #1055#1088#1086#1089#1084#1086#1090#1088
  ClientHeight = 507
  ClientWidth = 926
  ExplicitWidth = 934
  ExplicitHeight = 534
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 488
    Width = 926
    ExplicitTop = 488
    ExplicitWidth = 926
    inherited DsFormName: TRzStatusPane
      Visible = True
      Caption = 'dsDocBody'
    end
  end
  inherited Panel3: TPanel
    Width = 926
    Height = 488
    ExplicitWidth = 926
    ExplicitHeight = 488
    inherited RzToolbar: TRzToolbar
      Width = 924
      Height = 25
      ExplicitWidth = 924
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
    object RzPanel1: TRzPanel
      Left = 1
      Top = 26
      Width = 924
      Height = 79
      Align = alTop
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object RzLabel1: TRzLabel
        Left = 8
        Top = 7
        Width = 44
        Height = 19
        Caption = #1053#1086#1084#1077#1088
      end
      object RzLabel2: TRzLabel
        Left = 8
        Top = 35
        Width = 32
        Height = 19
        Caption = #1044#1072#1090#1072
      end
      object RzLabel3: TRzLabel
        Left = 164
        Top = 42
        Width = 78
        Height = 19
        Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100
      end
      object RzLabel4: TRzLabel
        Left = 476
        Top = 35
        Width = 46
        Height = 19
        Caption = #1057#1090#1072#1090#1091#1089
      end
      object RzLabel5: TRzLabel
        Left = 164
        Top = 7
        Width = 89
        Height = 19
        Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100
      end
      object RzLabel6: TRzLabel
        Left = 476
        Top = 9
        Width = 42
        Height = 19
        Caption = #1055#1088#1072#1081#1089
      end
      object RzDBEdit1: TRzDBEdit
        Left = 54
        Top = 6
        Width = 104
        Height = 22
        DataSource = srDocHead
        DataField = 'F_NUMBER'
        ReadOnly = True
        Color = clInfoBk
        TabOrder = 0
      end
      object RzDBLookupComboBox1: TRzDBLookupComboBox
        Left = 527
        Top = 31
        Width = 145
        Height = 27
        Color = clInfoBk
        DataField = 'F_STATE'
        DataSource = srDocHead
        KeyField = 'f_id'
        ListField = 'f_name'
        ListSource = DM.srStateSource
        ReadOnly = True
        TabOrder = 1
      end
      object cxDBLabel1: TcxDBLabel
        Left = 254
        Top = 31
        DataBinding.DataField = 'F_PARTNER_NAME'
        DataBinding.DataSource = srDocHead
        Properties.WordWrap = True
        Style.BorderStyle = ebsFlat
        Height = 43
        Width = 214
      end
      object cxDBLabel2: TcxDBLabel
        Left = 254
        Top = 6
        DataBinding.DataField = 'F_SKLAD_NAME'
        DataBinding.DataSource = srDocHead
        Style.BorderStyle = ebsFlat
        Height = 22
        Width = 214
      end
      object cxDBLabel3: TcxDBLabel
        Left = 54
        Top = 31
        DataBinding.DataField = 'F_DATE'
        DataBinding.DataSource = srDocHead
        Style.BorderStyle = ebsFlat
        Height = 27
        Width = 104
      end
      object cxDBLabel4: TcxDBLabel
        Left = 527
        Top = 6
        DataBinding.DataField = 'F_PRICE_NAME'
        DataBinding.DataSource = srDocHead
        Style.BorderStyle = ebsFlat
        Height = 21
        Width = 145
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 105
      Width = 924
      Height = 382
      Align = alClient
      TabOrder = 2
      LookAndFeel.SkinName = 'MoneyTwins'
      LookAndFeel.SkinName = 'MoneyTwins'
      ExplicitTop = 98
      ExplicitHeight = 389
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.Insert.Enabled = False
        NavigatorButtons.Insert.Visible = False
        DataController.DataSource = srDocStrings
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Position = spFooter
            Column = cxGrid1DBTableView1F_CNT
          end
          item
            Kind = skSum
            Position = spFooter
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'F_SUM'
            DisplayText = #1048#1090#1086#1075#1086#1074#1072#1103' '#1089#1091#1084#1084#1072
          end
          item
            Kind = skSum
          end
          item
            Kind = skSum
            Column = cxGrid1DBTableView1F_CNT
          end
          item
            Kind = skSum
            Column = cxGrid1DBTableView1F_SUM
          end
          item
            Format = '0.00'
            Kind = skSum
            Column = cxGrid1DBTableView1F_SKIDKA
          end
          item
            Format = '### ### ###.##'
            Kind = skSum
            Column = cxGrid1DBTableView1F_SUM_WO_SKIDKA
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.Navigator = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        Styles.StyleSheet = DM.GridTableViewStyleSheetDevExpress
        object cxGrid1DBTableView1F_DOC_OUT: TcxGridDBColumn
          DataBinding.FieldName = 'F_DOC_OUT'
          Visible = False
        end
        object cxGrid1DBTableView1F_GOOD: TcxGridDBColumn
          DataBinding.FieldName = 'F_GOOD'
          Visible = False
        end
        object cxGrid1DBTableView1F_ARTICLE: TcxGridDBColumn
          DataBinding.FieldName = 'F_ARTICLE'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Editing = False
          Width = 49
        end
        object cxGrid1DBTableView1F_GOOD_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_GOOD_NAME'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Editing = False
          Width = 233
        end
        object cxGrid1DBTableView1F_DESCR: TcxGridDBColumn
          DataBinding.FieldName = 'F_DESCR'
          PropertiesClassName = 'TcxTextEditProperties'
          Visible = False
          Width = 100
        end
        object cxGrid1DBTableView1F_ED_IZM_SHORT_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_ED_IZM_SHORT_NAME'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Editing = False
          Width = 52
        end
        object cxGrid1DBTableView1F_CNT: TcxGridDBColumn
          DataBinding.FieldName = 'F_CNT'
          Options.Editing = False
          Width = 70
        end
        object cxGrid1DBTableView1F_PRICE_WO_SKIDKA: TcxGridDBColumn
          Caption = #1062#1077#1085#1072' '#1073#1077#1079' '#1089#1082#1080#1076#1082#1080
          DataBinding.FieldName = 'F_PRICE_WO_SKIDKA'
          Visible = False
          Width = 64
        end
        object cxGrid1DBTableView1F_PRICE_VAL: TcxGridDBColumn
          DataBinding.FieldName = 'F_PRICE_VAL'
          Options.Editing = False
          Width = 75
        end
        object cxGrid1DBTableView1F_SUM_WO_SKIDKA: TcxGridDBColumn
          DataBinding.FieldName = 'F_SUM_WO_SKIDKA'
          Visible = False
          Width = 74
        end
        object cxGrid1DBTableView1F_SKIDKA: TcxGridDBColumn
          DataBinding.FieldName = 'F_SKIDKA'
          Visible = False
          Width = 71
        end
        object cxGrid1DBTableView1F_SUM: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1089#1086' '#1089#1082#1080#1076#1082#1086#1081
          DataBinding.FieldName = 'F_SUM'
          Options.Editing = False
          Width = 83
        end
        object cxGrid1DBTableView1F_SKLAD_OST: TcxGridDBColumn
          Caption = #1054#1089#1090#1072#1090#1086#1082' '#1087#1086#1089#1083#1077' '#1086#1090#1075#1088#1091#1079#1082#1080
          DataBinding.FieldName = 'F_SKLAD_OST'
          Options.Editing = False
          Width = 64
        end
        object cxGrid1DBTableView1F_ID: TcxGridDBColumn
          DataBinding.FieldName = 'F_ID'
          Visible = False
        end
        object cxGrid1DBTableView1F_PICTURE: TcxGridDBColumn
          Caption = #1060#1086#1090#1086
          DataBinding.FieldName = 'F_PICTURE'
          PropertiesClassName = 'TcxImageProperties'
          Properties.GraphicClassName = 'TJPEGImage'
          Properties.ReadOnly = True
          Properties.Stretch = True
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 336
        end
        object cxGrid1DBTableView1F_GOOD_GRP_COLOR: TcxGridDBColumn
          DataBinding.FieldName = 'F_GOOD_GRP_COLOR'
          Visible = False
        end
        object cxGrid1DBTableView1F_GOOD_DOP_INFO: TcxGridDBColumn
          DataBinding.FieldName = 'F_GOOD_DOP_INFO'
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
    Left = 760
    Top = 168
  end
  object srDocHead: TDataSource
    DataSet = dsDocHead
    Left = 280
    Top = 72
  end
  object dsDocHead: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'execute procedure SP_T_DOC_out_U(:f_doc_out,:F_SKLAD,:F_PARTNER,' +
        ':F_NUMBER,:F_DATE,:f_paydate_plan,:F_STATE,:F_PRICE,:f_skidka,nu' +
        'll, :f_type, :f_property_1)'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID as f_doc_out,'
      '    F_SKLAD,'
      '    F_PARTNER,'
      '    F_NUMBER,'
      '    F_DATE,'
      '    f_paydate_plan,'
      '    F_STATE,'
      '    F_PARTNER_NAME,'
      '    F_STATE_NAME,'
      '    F_SKLAD_NAME,'
      '    F_PRICE,'
      '    f_price_name,'
      '    f_skidka,'
      '    f_pay_sum,'
      '    f_doc_sum,'
      '    f_type,'
      '    f_property_1'
      'FROM'
      '    SP_T_DOC_out_GET(:f_doc_out,:f_type) ')
    AfterOpen = dsDocHeadAfterOpen
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 272
    Top = 64
    object dsDocHeadF_SKLAD: TFIBBCDField
      FieldName = 'F_SKLAD'
      Size = 0
    end
    object dsDocHeadF_PARTNER: TFIBBCDField
      FieldName = 'F_PARTNER'
      Size = 0
    end
    object dsDocHeadF_NUMBER: TFIBStringField
      FieldName = 'F_NUMBER'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_DATE: TFIBDateField
      FieldName = 'F_DATE'
    end
    object dsDocHeadF_STATE: TFIBBCDField
      FieldName = 'F_STATE'
      Size = 0
    end
    object dsDocHeadF_PARTNER_NAME: TFIBStringField
      FieldName = 'F_PARTNER_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_STATE_NAME: TFIBStringField
      FieldName = 'F_STATE_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_SKLAD_NAME: TFIBStringField
      FieldName = 'F_SKLAD_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_PRICE: TFIBBCDField
      FieldName = 'F_PRICE'
      Size = 0
    end
    object dsDocHeadF_PRICE_NAME: TFIBStringField
      FieldName = 'F_PRICE_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_SKIDKA: TFIBIntegerField
      DisplayLabel = #1057#1082#1080#1076#1082#1072
      FieldName = 'F_SKIDKA'
    end
    object dsDocHeadF_PAY_SUM: TFIBBCDField
      FieldName = 'F_PAY_SUM'
      Size = 3
    end
    object dsDocHeadF_DOC_SUM: TFIBBCDField
      FieldName = 'F_DOC_SUM'
      Size = 3
    end
    object dsDocHeadF_PAYDATE_PLAN: TFIBDateField
      DisplayLabel = #1055#1083#1072#1085#1086#1074#1072#1103' '#1076#1072#1090#1072' '#1086#1087#1083#1072#1090#1099
      FieldName = 'F_PAYDATE_PLAN'
    end
    object dsDocHeadF_DOC_OUT: TFIBBCDField
      FieldName = 'F_DOC_OUT'
      Size = 0
    end
    object dsDocHeadF_TYPE: TFIBBCDField
      FieldName = 'F_TYPE'
      Size = 0
    end
    object dsDocHeadF_PROPERTY_1: TFIBStringField
      FieldName = 'F_PROPERTY_1'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object dsDocStrings: TpFIBDataSet
    RefreshSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_DOC_OUT,'
      '    F_GOOD,'
      '    F_PRICE_val,'
      '    F_CNT,'
      '    F_SUM,'
      '    F_GOOD_NAME,'
      '    f_article,'
      '    f_ed_izm_short_name,'
      '    f_sklad_ost,'
      '    f_skidka,'
      '    coalesce(f_skidka,0)+f_sum as f_sum_wo_skidka,'
      
        '    cast((coalesce(f_skidka,0)+f_sum)/f_cnt as numeric(15,3)) as' +
        ' f_price_wo_skidka,'
      
        '    (select f_memo from SP_T_NSI_GOODS_MMEDIA_S(f_good)) as f_ph' +
        'oto,'
      '    f_descr'
      'FROM'
      '    SP_T_DOC_OUT_STR_GET(:f_doc_out,:f_good) ')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_DOC_OUT,'
      '    F_GOOD,'
      '    F_PRICE_val,'
      '    F_CNT,'
      '    F_SUM,'
      '    F_GOOD_NAME,'
      '    f_article,'
      '    f_ed_izm_short_name,'
      '    f_sklad_ost,'
      '    f_skidka,'
      '    coalesce(f_skidka,0)+f_sum as f_sum_wo_skidka,'
      
        '    cast((coalesce(f_skidka,0)+f_sum)/f_cnt as numeric(15,3)) as' +
        ' f_price_wo_skidka,'
      '    f_descr,'
      
        '    (select first 1 f_memo from SP_T_NSI_GOODS_MMEDIA_S(f_good))' +
        ' as f_picture,'
      '    F_GOOD_GRP_COLOR,'
      '    f_good_dop_info'
      'FROM'
      '    SP_T_DOC_OUT_STR_S(:f_doc_out) ')
    AutoUpdateOptions.ParamsToFieldsLinks.Strings = (
      'F_DOC_OUT=F_DOC_OUT')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    AutoCommit = True
    DataSource = srDocHead
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 360
    Top = 208
    object dsDocStringsF_ID: TFIBBCDField
      Tag = 1
      FieldName = 'F_ID'
      Visible = False
      Size = 0
    end
    object dsDocStringsF_DOC_OUT: TFIBBCDField
      FieldName = 'F_DOC_OUT'
      Visible = False
      Size = 0
    end
    object dsDocStringsF_GOOD: TFIBBCDField
      FieldName = 'F_GOOD'
      Visible = False
      Size = 0
    end
    object dsDocStringsF_CNT: TFIBFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'F_CNT'
      DisplayFormat = '0'
    end
    object dsDocStringsF_GOOD_NAME: TFIBStringField
      DisplayLabel = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
      FieldName = 'F_GOOD_NAME'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_ARTICLE: TFIBStringField
      DisplayLabel = #1040#1088#1090#1080#1082#1091#1083
      FieldName = 'F_ARTICLE'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_ED_IZM_SHORT_NAME: TFIBStringField
      DisplayLabel = #1077#1076'.'#1080#1079#1084'.'
      FieldName = 'F_ED_IZM_SHORT_NAME'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_SKLAD_OST: TFIBFloatField
      DisplayLabel = #1058#1077#1082#1091#1097#1080#1081' '#1086#1089#1090#1072#1090#1086#1082
      FieldName = 'F_SKLAD_OST'
    end
    object dsDocStringsF_SKIDKA: TFIBBCDField
      DisplayLabel = #1057#1082#1080#1076#1082#1072
      FieldName = 'F_SKIDKA'
      DisplayFormat = '0.00'
      Size = 3
    end
    object dsDocStringsF_DESCR: TFIBStringField
      DisplayLabel = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
      FieldName = 'F_DESCR'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_PRICE_VAL: TFIBBCDField
      DisplayLabel = #1062#1077#1085#1072' '#1089#1086' '#1089#1082#1080#1076#1082#1086#1081
      FieldName = 'F_PRICE_VAL'
      DisplayFormat = '0.00;(0,00)'
      Size = 3
    end
    object dsDocStringsF_SUM: TFIBBCDField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'F_SUM'
      DisplayFormat = '0.00;(0,00)'
      Size = 3
    end
    object dsDocStringsF_SUM_WO_SKIDKA: TFIBBCDField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1073#1077#1079' '#1089#1082#1080#1076#1082#1080
      FieldName = 'F_SUM_WO_SKIDKA'
      DisplayFormat = '0.00;(0,00)'
      Size = 3
    end
    object dsDocStringsF_PRICE_WO_SKIDKA: TFIBBCDField
      FieldName = 'F_PRICE_WO_SKIDKA'
      DisplayFormat = '0.00;(0,00)'
      Size = 3
    end
    object dsDocStringsF_GOOD_GRP_COLOR: TFIBStringField
      FieldName = 'F_GOOD_GRP_COLOR'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_GOOD_DOP_INFO: TFIBStringField
      DisplayLabel = #1054#1087#1080#1089#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
      FieldName = 'F_GOOD_DOP_INFO'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_PICTURE: TFIBBlobField
      FieldName = 'F_PICTURE'
      Size = 8
    end
  end
  object srDocStrings: TDataSource
    DataSet = dsDocStrings
    Left = 368
    Top = 224
  end
end
