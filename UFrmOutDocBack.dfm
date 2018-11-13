inherited FrmOutDocBack: TFrmOutDocBack
  Caption = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
  ClientHeight = 538
  ClientWidth = 784
  ExplicitWidth = 792
  ExplicitHeight = 565
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 519
    Width = 784
    ExplicitTop = 519
    ExplicitWidth = 784
  end
  inherited Panel3: TPanel
    Width = 784
    Height = 519
    ExplicitWidth = 784
    ExplicitHeight = 519
    inherited RzToolbar: TRzToolbar
      Width = 782
      Height = 25
      ExplicitWidth = 782
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
        Visible = False
        ExplicitTop = 0
      end
    end
    object RzPanel1: TRzPanel
      Left = 1
      Top = 26
      Width = 782
      Height = 83
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
        Top = 32
        Width = 32
        Height = 19
        Caption = #1044#1072#1090#1072
      end
      object RzLabel3: TRzLabel
        Left = 369
        Top = 10
        Width = 57
        Height = 19
        Caption = #1055#1072#1088#1090#1085#1077#1088
      end
      object RzLabel4: TRzLabel
        Left = 264
        Top = 32
        Width = 46
        Height = 19
        Caption = #1057#1090#1072#1090#1091#1089
      end
      object RzLabel5: TRzLabel
        Left = 165
        Top = 10
        Width = 41
        Height = 19
        Caption = #1057#1082#1083#1072#1076
      end
      object RzLabel6: TRzLabel
        Left = 113
        Top = 32
        Width = 42
        Height = 19
        Caption = #1055#1088#1072#1081#1089
      end
      object RzDBEdit1: TRzDBEdit
        Left = 54
        Top = 6
        Width = 99
        Height = 27
        DataSource = srDocHead
        DataField = 'F_NUMBER'
        TabOrder = 0
      end
      object RzDBLookupComboBox1: TRzDBLookupComboBox
        Left = 264
        Top = 49
        Width = 115
        Height = 27
        DataField = 'F_STATE'
        DataSource = srDocHead
        KeyField = 'f_id'
        ListField = 'f_name'
        ListSource = DM.srStateSource
        TabOrder = 1
      end
      object RzDBDateTimeEdit1: TRzDBDateTimeEdit
        Left = 8
        Top = 49
        Width = 99
        Height = 27
        DataSource = srDocHead
        DataField = 'F_DATE'
        TabOrder = 2
        EditType = etDate
      end
      object RzDBButtonEdit2: TRzDBButtonEdit
        Left = 221
        Top = 6
        Width = 144
        Height = 27
        DataSource = srDocHead
        DataField = 'F_SKLAD_NAME'
        TabOrder = 3
      end
      object RzDBButtonEdit3: TRzDBButtonEdit
        Left = 113
        Top = 49
        Width = 144
        Height = 27
        DataSource = srDocHead
        DataField = 'F_PRICE_NAME'
        TabOrder = 4
        OnButtonClick = RzDBButtonEdit3ButtonClick
      end
      object RzDBButtonEdit1: TRzDBButtonEdit
        Left = 438
        Top = 6
        Width = 283
        Height = 27
        DataSource = srDocHead
        DataField = 'F_PARTNER_NAME'
        TabOrder = 5
        OnButtonClick = RzDBButtonEdit1ButtonClick
      end
    end
    object RzPageControl1: TRzPageControl
      Left = 1
      Top = 109
      Width = 782
      Height = 409
      ActivePage = TabSheet1
      Align = alClient
      HotTrackStyle = htsText
      TabIndex = 0
      TabOrder = 2
      TabStyle = tsRoundCorners
      FixedDimension = 19
      object TabSheet1: TRzTabSheet
        Color = clGradientActiveCaption
        Caption = #1058#1086#1074#1072#1088
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 778
          Height = 383
          Align = alClient
          Caption = 'Panel1'
          TabOrder = 0
          object Splitter1: TSplitter
            Left = 634
            Top = 1
            Height = 381
            Align = alRight
            ExplicitLeft = 560
            ExplicitTop = 176
            ExplicitHeight = 100
          end
          object cxGrid1: TcxGrid
            Left = 1
            Top = 1
            Width = 633
            Height = 381
            Align = alClient
            TabOrder = 0
            LookAndFeel.SkinName = 'MoneyTwins'
            LookAndFeel.SkinName = 'MoneyTwins'
            object cxGrid1DBTableView1: TcxGridDBTableView
              OnDblClick = cxGrid1DBTableView1DblClick
              OnDragDrop = cxGrid1DBTableView1DragDrop
              OnDragOver = cxGrid1DBTableView1DragOver
              OnKeyPress = cxGrid1DBTableView1KeyPress
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.Insert.Visible = False
              DataController.DataSource = srDocStrings
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Kind = skSum
                  Position = spFooter
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
                end
                item
                  Kind = skSum
                end
                item
                  Format = '### ### ###.##'
                  Kind = skSum
                end
                item
                  Format = '### ### ###.##'
                  Kind = skSum
                end
                item
                  Kind = skSum
                  Column = cxGrid1DBTableView1F_SUM
                end
                item
                  Kind = skSum
                  Column = cxGrid1DBTableView1F_CNT
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.Navigator = True
              OptionsView.CellAutoHeight = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.FooterAutoHeight = True
              OptionsView.GroupByBox = False
              OptionsView.HeaderAutoHeight = True
              Styles.StyleSheet = DM.GridTableViewStyleSheetDevExpress
              object cxGrid1DBTableView1F_ID: TcxGridDBColumn
                DataBinding.FieldName = 'F_ID'
                Visible = False
              end
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
                Width = 70
              end
              object cxGrid1DBTableView1F_GOOD_NAME: TcxGridDBColumn
                DataBinding.FieldName = 'F_GOOD_NAME'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Editing = False
                Width = 298
              end
              object cxGrid1DBTableView1F_ED_IZM_SHORT_NAME: TcxGridDBColumn
                DataBinding.FieldName = 'F_ED_IZM_SHORT_NAME'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Editing = False
                Width = 51
              end
              object cxGrid1DBTableView1F_PRICE_VAL: TcxGridDBColumn
                Caption = #1062#1077#1085#1072
                DataBinding.FieldName = 'F_PRICE_VAL'
                Width = 46
              end
              object cxGrid1DBTableView1F_CNT: TcxGridDBColumn
                DataBinding.FieldName = 'F_CNT'
                Width = 53
              end
              object cxGrid1DBTableView1F_SUM: TcxGridDBColumn
                Caption = #1057#1091#1084#1084#1072
                DataBinding.FieldName = 'F_SUM'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Editing = False
                Width = 51
              end
              object cxGrid1DBTableView1F_SKLAD_OST: TcxGridDBColumn
                DataBinding.FieldName = 'F_SKLAD_OST'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Editing = False
                Width = 53
              end
              object cxGrid1DBTableView1F_SKIDKA: TcxGridDBColumn
                DataBinding.FieldName = 'F_SKIDKA'
                Visible = False
              end
              object cxGrid1DBTableView1F_SUM_WO_SKIDKA: TcxGridDBColumn
                DataBinding.FieldName = 'F_SUM_WO_SKIDKA'
                Visible = False
              end
              object cxGrid1DBTableView1F_PRICE_WO_SKIDKA: TcxGridDBColumn
                DataBinding.FieldName = 'F_PRICE_WO_SKIDKA'
                Visible = False
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object cxDBImage1: TcxDBImage
            Left = 637
            Top = 1
            Align = alRight
            DataBinding.DataField = 'f_photo'
            DataBinding.DataSource = srGoodPhoto
            Properties.GraphicClassName = 'TJPEGImage'
            Properties.ReadOnly = True
            Properties.Stretch = True
            TabOrder = 1
            Height = 381
            Width = 140
          end
        end
      end
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dsDocHead: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'execute procedure SP_T_DOC_out_U(:F_DOC_OUT,:F_SKLAD,:F_PARTNER,' +
        ':F_NUMBER,:F_DATE,:f_paydate_plan,:F_STATE,:F_PRICE,:f_skidka)'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID as Doc_id,'
      '    F_ID as F_DOC_OUT,'
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
      '    f_doc_sum'
      'FROM'
      '    SP_T_DOC_out_GET(:F_DOC_OUT,:f_type) ')
    AfterOpen = dsDocHeadAfterOpen
    AfterPost = dsDocHeadAfterPost
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    AutoCommit = True
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
    object dsDocHeadF_SKIDKA: TFIBIntegerField
      DisplayLabel = #1057#1082#1080#1076#1082#1072
      FieldName = 'F_SKIDKA'
    end
    object dsDocHeadF_PAY_SUM: TFIBBCDField
      FieldName = 'F_PAY_SUM'
      Size = 3
      RoundByScale = True
    end
    object dsDocHeadF_DOC_SUM: TFIBBCDField
      FieldName = 'F_DOC_SUM'
      Size = 3
      RoundByScale = True
    end
    object dsDocHeadF_PAYDATE_PLAN: TFIBDateField
      DisplayLabel = #1055#1083#1072#1085#1086#1074#1072#1103' '#1076#1072#1090#1072' '#1086#1087#1083#1072#1090#1099
      FieldName = 'F_PAYDATE_PLAN'
    end
  end
  object srDocHead: TDataSource
    DataSet = dsDocHead
    Left = 280
    Top = 72
  end
  object dsDocStrings: TpFIBDataSet
    UpdateSQL.Strings = (
      'execute procedure SP_T_DOC_out_STR_U('
      '    :F_ID,'
      '    :F_DOC_out,'
      '    :F_GOOD,'
      '    :F_PRICE_val,'
      '    :F_CNT,'
      '    :F_SUM)')
    DeleteSQL.Strings = (
      'execute procedure SP_T_DOC_OUT_STR_D(:f_id)')
    InsertSQL.Strings = (
      'execute procedure SP_T_DOC_OUT_STR_I'
      '(   :F_ID,'
      '    :F_DOC_out,'
      '    :F_GOOD,'
      '    :F_PRICE,'
      '    :F_CNT,'
      '    :F_SUM)')
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
      '    (coalesce(f_skidka,0)+f_sum)/f_cnt as f_price_wo_skidka'
      'FROM'
      '    SP_T_DOC_OUT_STR_S(:F_DOC_OUT) ')
    AutoUpdateOptions.ParamsToFieldsLinks.Strings = (
      'F_DOC_OUT=F_DOC_OUT')
    AfterDelete = dsDocStringsAfterDelete
    AfterPost = dsDocStringsAfterPost
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
      RoundByScale = True
    end
    object dsDocStringsF_DOC_OUT: TFIBBCDField
      FieldName = 'F_DOC_OUT'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsDocStringsF_GOOD: TFIBBCDField
      FieldName = 'F_GOOD'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsDocStringsF_CNT: TFIBFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'F_CNT'
    end
    object dsDocStringsF_GOOD_NAME: TFIBStringField
      DisplayLabel = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
      FieldName = 'F_GOOD_NAME'
      Size = 255
      EmptyStrToNull = True
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
    object dsDocStringsF_SKLAD_OST: TFIBFloatField
      DisplayLabel = #1058#1077#1082#1091#1097#1080#1081' '#1086#1089#1090#1072#1090#1086#1082
      FieldName = 'F_SKLAD_OST'
    end
    object dsDocStringsF_SKIDKA: TFIBBCDField
      DisplayLabel = #1057#1082#1080#1076#1082#1072
      FieldName = 'F_SKIDKA'
      DisplayFormat = '### ### ###.##'
      Size = 3
      RoundByScale = True
    end
    object dsDocStringsF_PRICE_VAL: TFIBBCDField
      FieldName = 'F_PRICE_VAL'
      DisplayFormat = '0.00;(0,00)'
      Size = 3
      RoundByScale = True
    end
    object dsDocStringsF_SUM: TFIBBCDField
      FieldName = 'F_SUM'
      DisplayFormat = '0.00;(0,00)'
      Size = 3
      RoundByScale = True
    end
    object dsDocStringsF_SUM_WO_SKIDKA: TFIBBCDField
      FieldName = 'F_SUM_WO_SKIDKA'
      DisplayFormat = '0.00;(0,00)'
      Size = 3
      RoundByScale = True
    end
    object dsDocStringsF_PRICE_WO_SKIDKA: TFIBFloatField
      FieldName = 'F_PRICE_WO_SKIDKA'
      DisplayFormat = '0.00;(0,00)'
    end
  end
  object srDocStrings: TDataSource
    DataSet = dsDocStrings
    Left = 368
    Top = 224
  end
  object pFIBTransaction: TpFIBTransaction
    DefaultDatabase = DM.pFIBDatabase
    TimeoutAction = TARollback
    Left = 600
    Top = 224
  end
  object spMakePayDoc: TpFIBStoredProc
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    SQL.Strings = (
      'EXECUTE PROCEDURE SP_T_DOC_OUT_MAKE_PAY (?F_DOC_ID,1,?f_sum)')
    StoredProcName = 'SP_T_DOC_OUT_MAKE_PAY'
    Left = 600
    Top = 264
  end
  object dsGoodPhoto: TpFIBDataSet
    SelectSQL.Strings = (
      'select f_memo as f_photo from SP_T_NSI_GOODS_MMEDIA_S(:f_good)')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DataSource = srDocStrings
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 688
    Top = 248
    WaitEndMasterScroll = True
    dcForceOpen = True
  end
  object srGoodPhoto: TDataSource
    DataSet = dsGoodPhoto
    Left = 704
    Top = 264
  end
end
