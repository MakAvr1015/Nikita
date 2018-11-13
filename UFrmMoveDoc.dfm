inherited FrmMoveDoc: TFrmMoveDoc
  Caption = #1044#1086#1082#1091#1084#1077#1085#1090' '#1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1103
  ClientHeight = 439
  ClientWidth = 878
  ExplicitWidth = 886
  ExplicitHeight = 466
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 420
    Width = 878
    ExplicitTop = 420
    ExplicitWidth = 878
    inherited DsFormName: TRzStatusPane
      Visible = True
    end
  end
  inherited Panel3: TPanel
    Width = 878
    Height = 420
    ExplicitWidth = 878
    ExplicitHeight = 420
    inherited RzToolbar: TRzToolbar
      Width = 876
      Height = 25
      ExplicitWidth = 876
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
        Width = 39
        DropDownMenu = PopupMenuExecute
        ToolStyle = tsDropDown
        Enabled = True
        OnClick = BtnExecuteClick
        ExplicitTop = 0
        ExplicitWidth = 39
      end
      inherited BtnDelete: TRzToolButton
        Left = 282
        Top = 0
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
    object RzPanel1: TRzPanel
      Left = 1
      Top = 26
      Width = 876
      Height = 72
      Align = alTop
      Color = clGradientActiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      GradientColorStop = clGradientActiveCaption
      ParentFont = False
      TabOrder = 1
      object RzLabel1: TRzLabel
        Left = 8
        Top = 9
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
        Left = 433
        Top = 9
        Width = 113
        Height = 19
        Caption = #1057#1082#1083#1072#1076' '#1087#1088#1080#1077#1084#1085#1080#1082
      end
      object RzLabel4: TRzLabel
        Left = 406
        Top = 42
        Width = 46
        Height = 19
        Caption = #1057#1090#1072#1090#1091#1089
      end
      object RzLabel5: TRzLabel
        Left = 176
        Top = 9
        Width = 109
        Height = 19
        Caption = #1057#1082#1083#1072#1076' '#1080#1089#1090#1086#1095#1085#1080#1082
      end
      object RzLabel6: TRzLabel
        Left = 181
        Top = 42
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
        ListSource = DM.srStateSource
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
        Left = 290
        Top = 6
        Width = 144
        Height = 27
        DataSource = srDocHead
        DataField = 'F_SKLAD_FROM_NAME'
        TabOrder = 3
        OnButtonClick = RzDBButtonEdit2ButtonClick
      end
      object RzDBButtonEdit3: TRzDBButtonEdit
        Left = 246
        Top = 42
        Width = 144
        Height = 27
        DataSource = srDocHead
        DataField = 'F_PRICE_NAME'
        TabOrder = 4
        OnButtonClick = RzDBButtonEdit3ButtonClick
      end
      object RzDBButtonEdit1: TRzDBButtonEdit
        Left = 560
        Top = 6
        Width = 176
        Height = 27
        DataSource = srDocHead
        DataField = 'F_SKLAD_TO_NAME'
        TabOrder = 5
        OnButtonClick = RzDBButtonEdit1ButtonClick
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 98
      Width = 876
      Height = 321
      Align = alClient
      Caption = 'Panel1'
      TabOrder = 2
      object Splitter1: TSplitter
        Left = 732
        Top = 1
        Height = 319
        Align = alRight
        ExplicitLeft = 760
        ExplicitTop = 256
        ExplicitHeight = 100
      end
      object cxGrid1: TcxGrid
        Left = 1
        Top = 1
        Width = 731
        Height = 319
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
          OnCellDblClick = cxGrid1DBTableView1CellDblClick
          OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
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
              Column = cxGrid1DBTableView1F_SUM
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1F_CNT
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
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
          object cxGrid1DBTableView1F_DOC_MOVE: TcxGridDBColumn
            DataBinding.FieldName = 'F_DOC_MOVE'
            Visible = False
          end
          object cxGrid1DBTableView1F_ARTICLE: TcxGridDBColumn
            DataBinding.FieldName = 'F_ARTICLE'
            Options.Editing = False
            Width = 58
          end
          object cxGrid1DBTableView1F_GOOD_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'F_GOOD_NAME'
            Options.Editing = False
            Width = 176
          end
          object cxGrid1DBTableView1F_GOOD_DOP_INFO: TcxGridDBColumn
            DataBinding.FieldName = 'F_GOOD_DOP_INFO'
            Visible = False
          end
          object cxGrid1DBTableView1F_SCANCODE: TcxGridDBColumn
            DataBinding.FieldName = 'F_SCANCODE'
            Visible = False
          end
          object cxGrid1DBTableView1F_ED_IZM_SHORT_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'F_ED_IZM_SHORT_NAME'
            Visible = False
          end
          object cxGrid1DBTableView1F_DESCR: TcxGridDBColumn
            DataBinding.FieldName = 'F_DESCR'
            Width = 71
          end
          object cxGrid1DBTableView1F_ED_IZM_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'F_ED_IZM_NAME'
            Options.Editing = False
            Width = 66
          end
          object cxGrid1DBTableView1F_GOOD: TcxGridDBColumn
            DataBinding.FieldName = 'F_GOOD'
            Visible = False
          end
          object cxGrid1DBTableView1F_PRICE: TcxGridDBColumn
            DataBinding.FieldName = 'F_PRICE'
            Visible = False
          end
          object cxGrid1DBTableView1F_CNT: TcxGridDBColumn
            DataBinding.FieldName = 'F_CNT'
            Width = 68
          end
          object cxGrid1DBTableView1F_PRICE_VAL: TcxGridDBColumn
            DataBinding.FieldName = 'F_PRICE_VAL'
            Options.Editing = False
            Width = 71
          end
          object cxGrid1DBTableView1F_SUM: TcxGridDBColumn
            DataBinding.FieldName = 'F_SUM'
            Options.Editing = False
            Width = 71
          end
          object cxGrid1DBTableView1f_sklad_ost: TcxGridDBColumn
            Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1080#1089#1090#1086#1095#1085#1080#1082#1077' '#1087#1086#1089#1083#1077' '#1086#1090#1075#1088#1091#1079#1082#1080
            DataBinding.FieldName = 'f_sklad_ost'
            Options.Editing = False
            Width = 68
          end
          object cxGrid1DBTableView1F_SKLAD_TO_OST: TcxGridDBColumn
            DataBinding.FieldName = 'F_SKLAD_TO_OST'
            Options.Editing = False
            Width = 68
          end
          object cxGrid1DBTableView1F_GOOD_GRP_COLOR: TcxGridDBColumn
            DataBinding.FieldName = 'F_GOOD_GRP_COLOR'
            PropertiesClassName = 'TcxColorComboBoxProperties'
            Properties.CustomColors = <>
            Visible = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object cxDBImage1: TcxDBImage
        Left = 735
        Top = 1
        Align = alRight
        DataBinding.DataField = 'f_photo'
        DataBinding.DataSource = srGoodPhoto
        Properties.GraphicClassName = 'TJPEGImage'
        Properties.ReadOnly = True
        Properties.Stretch = True
        TabOrder = 1
        Height = 319
        Width = 140
      end
    end
  end
  object dsDocHead: TpFIBDataSet [2]
    UpdateSQL.Strings = (
      'execute procedure SP_T_DOC_MOVE_U(:F_DOC_MOVE,'
      '  :F_DATE,'
      '  :F_NUMBER,'
      '  :F_SKLAD_FROM,'
      '  :F_SKLAD_TO,'
      '  :F_STATE,'
      '  :F_DOC_SUM,'
      '  :F_PRICE,'
      '  :F_TYPE,'
      '  :F_DOC_COUNT,'
      '  :F_DOP_INFO)'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID as Doc_ID,'
      '    F_ID as F_DOC_MOVE,'
      '    F_SKLAD_FROM,'
      '    F_SKLAD_TO,'
      '    F_NUMBER,'
      '    F_DATE,'
      '    F_STATE,'
      '    F_STATE_NAME,'
      '    F_SKLAD_FROM_NAME,'
      '    F_SKLAD_FROM_INN,'
      '    F_SKLAD_FROM_F_NAME,'
      '    F_SKLAD_FROM_KPP,'
      '    F_SKLAD_TO_NAME,'
      '    F_SKLAD_TO_INN,'
      '    F_SKLAD_TO_F_NAME,'
      '    F_SKLAD_TO_KPP,'
      '    F_PRICE,'
      '    F_PRICE_NAME,'
      '    F_DOC_SUM,'
      '    F_DOP_INFO'
      'FROM'
      '    SP_T_DOC_MOVE_GET(:DOC_ID,:doc_type) ')
    AfterOpen = dsDocHeadAfterOpen
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
    end
    object dsDocHeadF_SKLAD_FROM: TFIBBCDField
      FieldName = 'F_SKLAD_FROM'
      Size = 0
    end
    object dsDocHeadF_SKLAD_TO: TFIBBCDField
      FieldName = 'F_SKLAD_TO'
      Size = 0
    end
    object dsDocHeadF_NUMBER: TFIBStringField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'F_NUMBER'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_DATE: TFIBDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'F_DATE'
    end
    object dsDocHeadF_STATE: TFIBBCDField
      FieldName = 'F_STATE'
      Size = 0
    end
    object dsDocHeadF_STATE_NAME: TFIBStringField
      FieldName = 'F_STATE_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_SKLAD_FROM_NAME: TFIBStringField
      DisplayLabel = #1057#1082#1083#1072#1076' '#1080#1089#1090#1086#1095#1085#1080#1082
      FieldName = 'F_SKLAD_FROM_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_SKLAD_FROM_INN: TFIBStringField
      FieldName = 'F_SKLAD_FROM_INN'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_SKLAD_FROM_F_NAME: TFIBStringField
      FieldName = 'F_SKLAD_FROM_F_NAME'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_SKLAD_FROM_KPP: TFIBStringField
      FieldName = 'F_SKLAD_FROM_KPP'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_SKLAD_TO_NAME: TFIBStringField
      DisplayLabel = #1057#1082#1083#1072#1076' '#1087#1088#1080#1077#1084#1085#1080#1082
      FieldName = 'F_SKLAD_TO_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_SKLAD_TO_INN: TFIBStringField
      FieldName = 'F_SKLAD_TO_INN'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_SKLAD_TO_F_NAME: TFIBStringField
      FieldName = 'F_SKLAD_TO_F_NAME'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_SKLAD_TO_KPP: TFIBStringField
      FieldName = 'F_SKLAD_TO_KPP'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_PRICE: TFIBBCDField
      FieldName = 'F_PRICE'
      Size = 0
    end
    object dsDocHeadF_PRICE_NAME: TFIBStringField
      DisplayLabel = #1055#1088#1072#1081#1089
      FieldName = 'F_PRICE_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_DOC_SUM: TFIBBCDField
      FieldName = 'F_DOC_SUM'
      Size = 3
    end
    object dsDocHeadF_DOC_MOVE: TFIBBCDField
      FieldName = 'F_DOC_MOVE'
      Size = 0
    end
    object dsDocHeadF_DOP_INFO: TFIBStringField
      DisplayLabel = #1044#1086#1087'.'#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
      FieldName = 'F_DOP_INFO'
      Size = 10000
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object srDocHead: TDataSource [3]
    DataSet = dsDocHead
    Left = 280
    Top = 72
  end
  object pFIBTransaction: TpFIBTransaction [4]
    DefaultDatabase = DM.pFIBDatabase
    Left = 320
    Top = 80
  end
  object dsDocStrings: TpFIBDataSet [5]
    UpdateSQL.Strings = (
      'execute procedure SP_T_DOC_MOVE_STR_U('
      '    :F_ID,'
      '    :F_DOC_MOVE,'
      '    :F_GOOD,'
      '    :F_PRICE,'
      '    :F_CNT,'
      '    :F_PRICE_VAL,'
      '    :F_DESCR);')
    DeleteSQL.Strings = (
      'execute procedure SP_T_DOC_MOVE_STR_D(:f_id)')
    InsertSQL.Strings = (
      'execute procedure SP_T_DOC_MOVE_STR_I('
      '    :F_ID,'
      '    :F_DOC_MOVE,'
      '    :F_GOOD,'
      '    :F_PRICE,'
      '    :F_CNT,'
      '    :F_PRICE_VAL,'
      '    :F_DESCR);')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_DOC_MOVE,'
      '    F_GOOD_NAME,'
      '    F_GOOD_DOP_INFO,'
      '    F_SCANCODE,'
      '    F_ED_IZM_SHORT_NAME,'
      '    F_ED_IZM_NAME,'
      '    F_ARTICLE,'
      '    F_GOOD,'
      '    F_PRICE,'
      '    F_CNT,'
      '    F_PRICE_VAL,'
      '    F_SUM,'
      '    f_sklad_ost,'
      '    f_sklad_to_ost,'
      '    F_GOOD_GRP_COLOR,'
      '    F_DESCR'
      'FROM'
      '    SP_T_DOC_MOVE_STR_S(:DOC_id) ')
    AutoUpdateOptions.ParamsToFieldsLinks.Strings = (
      'F_DOC_MOVE=DOC_ID')
    AfterDelete = dsDocStringsAfterDelete
    AfterPost = dsDocStringsAfterPost
    AfterScroll = dsDocStringsAfterScroll
    BeforePost = dsDocStringsBeforePost
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 360
    Top = 208
    object dsDocStringsF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
    end
    object dsDocStringsF_DOC_MOVE: TFIBBCDField
      FieldName = 'F_DOC_MOVE'
      Size = 0
    end
    object dsDocStringsF_GOOD_NAME: TFIBStringField
      DisplayLabel = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
      FieldName = 'F_GOOD_NAME'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_GOOD_DOP_INFO: TFIBStringField
      DisplayLabel = #1054#1087#1080#1089#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
      FieldName = 'F_GOOD_DOP_INFO'
      Size = 10000
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_SCANCODE: TFIBStringField
      DisplayLabel = #1064#1090#1088#1080#1093#1082#1086#1076
      FieldName = 'F_SCANCODE'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_ED_IZM_SHORT_NAME: TFIBStringField
      FieldName = 'F_ED_IZM_SHORT_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_ED_IZM_NAME: TFIBStringField
      DisplayLabel = #1077#1076'.'#1080#1079#1084
      FieldName = 'F_ED_IZM_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_ARTICLE: TFIBStringField
      DisplayLabel = #1040#1088#1090#1080#1082#1091#1083
      FieldName = 'F_ARTICLE'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_GOOD: TFIBBCDField
      FieldName = 'F_GOOD'
      Size = 0
    end
    object dsDocStringsF_PRICE: TFIBBCDField
      FieldName = 'F_PRICE'
      DisplayFormat = '0.00'
      Size = 0
    end
    object dsDocStringsF_CNT: TFIBBCDField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'F_CNT'
      DisplayFormat = '0.0'
      Size = 3
    end
    object dsDocStringsF_PRICE_VAL: TFIBBCDField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'F_PRICE_VAL'
      DisplayFormat = '0.00'
      Size = 3
    end
    object dsDocStringsF_SUM: TFIBFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'F_SUM'
      DisplayFormat = '0.00'
    end
    object dsDocStringsf_sklad_ost: TFloatField
      DisplayLabel = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1080#1089#1090#1086#1095#1085#1080#1082#1077
      FieldName = 'f_sklad_ost'
    end
    object dsDocStringsF_SKLAD_TO_OST: TFIBFloatField
      DisplayLabel = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1087#1088#1080#1077#1084#1085#1080#1082#1077' '#1076#1086' '#1086#1090#1075#1088#1091#1079#1082#1080
      FieldName = 'F_SKLAD_TO_OST'
    end
    object dsDocStringsF_GOOD_GRP_COLOR: TFIBStringField
      FieldName = 'F_GOOD_GRP_COLOR'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_DESCR: TFIBStringField
      DisplayLabel = #1054#1087#1080#1089#1072#1085#1080#1077
      FieldName = 'F_DESCR'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object srDocStrings: TDataSource [6]
    DataSet = dsDocStrings
    Left = 368
    Top = 224
  end
  object dsGoodsSource: TpFIBDataSet [7]
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
    end
    object dsGoodsSourceF_NAME: TFIBStringField
      FieldName = 'F_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object srGoodsSource: TDataSource [8]
    DataSet = dsGoodsSource
    Left = 224
    Top = 272
  end
  object dsCopy2Price: TpFIBDataSet [10]
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
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object spSetPrise: TpFIBStoredProc
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    SQL.Strings = (
      'EXECUTE PROCEDURE SP_SET_PRICE_FROM_NSI (?F_PRICE, ?F_DOC)')
    StoredProcName = 'SP_SET_PRICE_FROM_NSI'
    Left = 712
    Top = 256
  end
  object PopupMenuExecute: TPopupMenu
    Left = 224
    Top = 16
    object N1: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1094#1077#1085#1086#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1089#1087#1080#1089#1072#1085#1080#1077
      OnClick = N2Click
    end
  end
  object dsCopy2Spisan: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_move_doc'
      'FROM'
      '    SP_COPY_MOVE2SPISAN(:F_DOC_IN)')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 96
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
