inherited FrmEditInventory: TFrmEditInventory
  Caption = #1048#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1103
  ClientHeight = 465
  ClientWidth = 691
  ExplicitWidth = 699
  ExplicitHeight = 492
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 446
    Width = 691
    ExplicitTop = 446
    ExplicitWidth = 691
  end
  inherited Panel3: TPanel
    Width = 691
    Height = 446
    ExplicitWidth = 691
    ExplicitHeight = 446
    inherited RzToolbar: TRzToolbar
      Width = 689
      Height = 25
      ExplicitWidth = 689
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
        Enabled = True
        OnClick = BtnRefreshClick
        ExplicitTop = 0
      end
      inherited BtnEdit: TRzToolButton
        Top = 0
        Enabled = True
        OnClick = BtnEditClick
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
    object RzPanel1: TRzPanel
      Left = 1
      Top = 26
      Width = 689
      Height = 75
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
      object RzLabel5: TRzLabel
        Left = 165
        Top = 10
        Width = 41
        Height = 19
        Caption = #1057#1082#1083#1072#1076
      end
      object RzLabel2: TRzLabel
        Left = 8
        Top = 42
        Width = 32
        Height = 19
        Caption = #1044#1072#1090#1072
      end
      object RzLabel4: TRzLabel
        Left = 371
        Top = 9
        Width = 46
        Height = 19
        Caption = #1057#1090#1072#1090#1091#1089
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
      object RzDBButtonEdit2: TRzDBButtonEdit
        Left = 221
        Top = 6
        Width = 144
        Height = 27
        DataSource = srDocHead
        DataField = 'F_SKLAD_NAME'
        TabOrder = 1
        OnButtonClick = RzDBButtonEdit2ButtonClick
      end
      object RzDBDateTimeEdit1: TRzDBDateTimeEdit
        Left = 54
        Top = 39
        Width = 99
        Height = 27
        DataSource = srDocHead
        DataField = 'F_DATE_START'
        TabOrder = 2
        EditType = etDate
      end
      object RzDBLookupComboBox1: TRzDBLookupComboBox
        Left = 423
        Top = 6
        Width = 115
        Height = 27
        DataField = 'F_STATE'
        DataSource = srDocHead
        KeyField = 'f_id'
        ListField = 'f_name'
        ListSource = DM.srStateSource
        TabOrder = 3
      end
    end
    object RzPageControl1: TRzPageControl
      Left = 1
      Top = 101
      Width = 689
      Height = 344
      ActivePage = TabSheet1
      Align = alClient
      HotTrackStyle = htsText
      TabIndex = 0
      TabOrder = 2
      TabStyle = tsRoundCorners
      FixedDimension = 19
      object TabSheet1: TRzTabSheet
        Color = clGradientActiveCaption
        OnShow = TabSheet1Show
        Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1080
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 685
          Height = 318
          Align = alClient
          TabOrder = 0
          LookAndFeel.SkinName = 'MoneyTwins'
          LookAndFeel.SkinName = 'MoneyTwins'
          object cxGrid1DBTableView1: TcxGridDBTableView
            OnDblClick = BtnEditClick
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = srListInventoryDocs
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                Column = cxGrid1DBTableView1F_DOC_COUNT
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsSelection.CellSelect = False
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.HeaderAutoHeight = True
            Styles.StyleSheet = DM.GridTableViewStyleSheetDevExpress
            object cxGrid1DBTableView1F_ID: TcxGridDBColumn
              DataBinding.FieldName = 'F_ID'
              Visible = False
            end
            object cxGrid1DBTableView1F_NUMBER: TcxGridDBColumn
              DataBinding.FieldName = 'F_NUMBER'
              Width = 72
            end
            object cxGrid1DBTableView1F_MANAGER: TcxGridDBColumn
              DataBinding.FieldName = 'F_MANAGER'
              Width = 351
            end
            object cxGrid1DBTableView1F_DOC_COUNT: TcxGridDBColumn
              DataBinding.FieldName = 'F_DOC_COUNT'
              Width = 131
            end
            object cxGrid1DBTableView1F_INVENTORY: TcxGridDBColumn
              DataBinding.FieldName = 'F_INVENTORY'
              Visible = False
            end
            object cxGrid1DBTableView1F_STATE: TcxGridDBColumn
              DataBinding.FieldName = 'F_STATE'
              Visible = False
            end
            object cxGrid1DBTableView1F_STATE_NAME: TcxGridDBColumn
              DataBinding.FieldName = 'F_STATE_NAME'
              Width = 117
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object TabSheet3: TRzTabSheet
        Color = clGradientActiveCaption
        OnShow = TabSheet3Show
        Caption = #1048#1090#1086#1075
        object cxGrid2: TcxGrid
          Left = 0
          Top = 29
          Width = 685
          Height = 289
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = srListResult
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                Column = cxGridDBTableView1F_COUNT_PLAN
              end
              item
                Kind = skSum
                Column = cxGridDBTableView1F_COUNT_FACT
              end
              item
                Kind = skSum
                Column = cxGridDBTableView1F_DELTA
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsSelection.CellSelect = False
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.HeaderAutoHeight = True
            object cxGridDBTableView1F_ID: TcxGridDBColumn
              DataBinding.FieldName = 'F_ID'
              Visible = False
            end
            object cxGridDBTableView1F_GOOD: TcxGridDBColumn
              DataBinding.FieldName = 'F_GOOD'
              Visible = False
            end
            object cxGridDBTableView1F_GOOD_ARTICLE: TcxGridDBColumn
              DataBinding.FieldName = 'F_GOOD_ARTICLE'
              Width = 97
            end
            object cxGridDBTableView1F_GOOD_NAME: TcxGridDBColumn
              DataBinding.FieldName = 'F_GOOD_NAME'
              Width = 306
            end
            object cxGridDBTableView1F_COUNT_PLAN: TcxGridDBColumn
              DataBinding.FieldName = 'F_COUNT_PLAN'
              Width = 106
            end
            object cxGridDBTableView1F_COUNT_FACT: TcxGridDBColumn
              DataBinding.FieldName = 'F_COUNT_FACT'
              Width = 81
            end
            object cxGridDBTableView1F_INVENTORY: TcxGridDBColumn
              DataBinding.FieldName = 'F_INVENTORY'
              Visible = False
              Width = 163
            end
            object cxGridDBTableView1F_DELTA: TcxGridDBColumn
              DataBinding.FieldName = 'F_DELTA'
              Width = 81
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object RzToolbar1: TRzToolbar
          Left = 0
          Top = 0
          Width = 685
          Height = 29
          Images = DM.ImageList
          ButtonWidth = 60
          ShowButtonCaptions = True
          TextOptions = ttoCustom
          BorderInner = fsNone
          BorderOuter = fsGroove
          BorderSides = [sdTop]
          BorderWidth = 0
          TabOrder = 1
          ToolbarControls = (
            BtnExecute1
            BtnFinish)
          object BtnExecute1: TRzToolButton
            Left = 4
            Top = 2
            Width = 113
            DisabledIndex = 25
            ImageIndex = 24
            Caption = #1056#1072#1089#1095#1080#1090#1072#1090#1100' '#1080#1090#1086#1075#1080
            OnClick = BtnExecute1Click
          end
          object BtnFinish: TRzToolButton
            Left = 117
            Top = 2
            Width = 217
            DisabledIndex = 27
            ImageIndex = 26
            Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090#1099' '#1076#1074#1080#1078#1077#1085#1080#1103
            OnClick = BtnFinishClick
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
  object dsListResult: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_GOOD,'
      '    f_good_article,'
      '    F_GOOD_NAME,'
      '    F_COUNT_PLAN,'
      '    F_COUNT_FACT,'
      '    F_INVENTORY,'
      '    coalesce(f_count_fact,0)-coalesce(f_count_plan,0) as f_delta'
      'FROM'
      '    SP_T_INVENTORY_STR_S(:F_INV) ')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DataSource = srDocHead
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 176
    Top = 328
    object dsListResultF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
      RoundByScale = True
    end
    object dsListResultF_GOOD: TFIBBCDField
      FieldName = 'F_GOOD'
      Size = 0
      RoundByScale = True
    end
    object dsListResultF_GOOD_NAME: TFIBStringField
      DisplayLabel = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
      FieldName = 'F_GOOD_NAME'
      Size = 255
      EmptyStrToNull = True
    end
    object dsListResultF_COUNT_PLAN: TFIBBCDField
      DisplayLabel = #1055#1083#1072#1085#1086#1074#1099#1081' '#1086#1089#1090#1072#1090#1086#1082
      FieldName = 'F_COUNT_PLAN'
      Size = 3
      RoundByScale = True
    end
    object dsListResultF_COUNT_FACT: TFIBBCDField
      DisplayLabel = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1080#1081' '#1086#1089#1090#1072#1090#1086#1082
      FieldName = 'F_COUNT_FACT'
      Size = 3
      RoundByScale = True
    end
    object dsListResultF_INVENTORY: TFIBBCDField
      FieldName = 'F_INVENTORY'
      Size = 0
      RoundByScale = True
    end
    object dsListResultF_GOOD_ARTICLE: TFIBStringField
      DisplayLabel = #1040#1088#1090#1080#1082#1091#1083
      FieldName = 'F_GOOD_ARTICLE'
      EmptyStrToNull = True
    end
    object dsListResultF_DELTA: TFIBBCDField
      DisplayLabel = #1056#1072#1089#1093#1086#1078#1076#1077#1085#1080#1077
      FieldName = 'F_DELTA'
      Size = 3
      RoundByScale = True
    end
  end
  object dsDocHead: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'execute procedure SP_T_INVENTORY_U(:f_inv,:f_number,:f_date_star' +
        't,:f_date_complete,:f_sklad,:f_state)')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID as f_inv,'
      '    F_NUMBER,'
      '    F_DATE_START,'
      '    F_DATE_COMPLETE,'
      '    F_SKLAD_NAME,'
      '    F_SKLAD,'
      '    F_STATE'
      'FROM'
      '    SP_T_INVENTORY_GET(:F_INVENTORY) ')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 456
    Top = 48
    object dsDocHeadF_NUMBER: TFIBStringField
      FieldName = 'F_NUMBER'
      EmptyStrToNull = True
    end
    object dsDocHeadF_DATE_START: TFIBDateField
      FieldName = 'F_DATE_START'
    end
    object dsDocHeadF_DATE_COMPLETE: TFIBDateField
      FieldName = 'F_DATE_COMPLETE'
    end
    object dsDocHeadF_SKLAD_NAME: TFIBStringField
      FieldName = 'F_SKLAD_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsDocHeadF_SKLAD: TFIBBCDField
      FieldName = 'F_SKLAD'
      Size = 0
      RoundByScale = True
    end
    object dsDocHeadF_STATE: TFIBBCDField
      FieldName = 'F_STATE'
      Size = 0
      RoundByScale = True
    end
    object dsDocHeadF_INV: TFIBBCDField
      FieldName = 'F_INV'
      Size = 0
      RoundByScale = True
    end
  end
  object pFIBTransaction: TpFIBTransaction
    DefaultDatabase = DM.pFIBDatabase
    TimeoutAction = TARollback
    Left = 560
    Top = 280
  end
  object srDocHead: TDataSource
    DataSet = dsDocHead
    Left = 464
    Top = 56
  end
  object srListResult: TDataSource
    DataSet = dsListResult
    Left = 184
    Top = 336
  end
  object dsListInventoryDocs: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_NUMBER,'
      '    F_MANAGER,'
      '    F_DOC_COUNT,'
      '    F_INVENTORY,'
      '    F_STATE,'
      '    F_STATE_NAME'
      'FROM'
      '    SP_T_INVENTORY_DOC_S(:F_INV) ')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DataSource = srDocHead
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 80
    Top = 272
    object dsListInventoryDocsF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsListInventoryDocsF_NUMBER: TFIBStringField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'F_NUMBER'
      EmptyStrToNull = True
    end
    object dsListInventoryDocsF_MANAGER: TFIBStringField
      DisplayLabel = #1052#1077#1085#1077#1076#1078#1077#1088
      FieldName = 'F_MANAGER'
      Size = 100
      EmptyStrToNull = True
    end
    object dsListInventoryDocsF_DOC_COUNT: TFIBBCDField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1090#1086#1074#1072#1088#1072
      FieldName = 'F_DOC_COUNT'
      Size = 3
      RoundByScale = True
    end
    object dsListInventoryDocsF_INVENTORY: TFIBBCDField
      FieldName = 'F_INVENTORY'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsListInventoryDocsF_STATE: TFIBBCDField
      FieldName = 'F_STATE'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsListInventoryDocsF_STATE_NAME: TFIBStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'F_STATE_NAME'
      Size = 60
      EmptyStrToNull = True
    end
  end
  object srListInventoryDocs: TDataSource
    DataSet = dsListInventoryDocs
    Left = 96
    Top = 288
  end
  object PrcCalcInventory: TpFIBStoredProc
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    SQL.Strings = (
      'EXECUTE PROCEDURE SP_CALC_INVENTORY (?F_INVENTORY_ID)')
    StoredProcName = 'SP_CALC_INVENTORY'
    Left = 408
    Top = 152
  end
  object prcMakeSkladDocs: TpFIBStoredProc
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    SQL.Strings = (
      
        'EXECUTE PROCEDURE SP_INVENTORY_MAKE_DOCS_BY_REZ (?F_INVENTORY_ID' +
        ')')
    StoredProcName = 'SP_INVENTORY_MAKE_DOCS_BY_REZ'
    Left = 408
    Top = 192
  end
  object dsExportInventory: TpFIBDataSet
    SelectSQL.Strings = (
      'select r_value from PR_EXPORT_INVENTORY(:p_id)')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 328
    Top = 216
  end
  object SaveDialog: TSaveDialog
    Left = 488
    Top = 280
  end
end
