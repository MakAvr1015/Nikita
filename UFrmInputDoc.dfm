inherited FrmInputDoc: TFrmInputDoc
  Caption = #1055#1088#1080#1093#1086#1076#1085#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
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
  end
  inherited Panel3: TPanel
    Width = 878
    Height = 420
    ExplicitWidth = 878
    ExplicitHeight = 420
    inherited RzToolbar: TRzToolbar
      Width = 876
      ExplicitWidth = 876
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
      inherited BtnOpen: TRzToolButton
        Enabled = True
        OnClick = BtnOpenClick
      end
      inherited BtnPrint: TRzToolButton
        OnClick = nil
      end
      inherited BtnExecute: TRzToolButton
        Width = 39
        DropDownMenu = PopupMenuExecute
        ToolStyle = tsDropDown
        Enabled = True
        OnClick = BtnExecuteClick
        ExplicitWidth = 39
      end
      inherited BtnDelete: TRzToolButton
        Left = 282
        ExplicitLeft = 282
      end
      inherited BtnSave: TRzToolButton
        Left = 307
        ExplicitLeft = 307
      end
      inherited BtnExit: TRzToolButton
        Left = 332
        ExplicitLeft = 332
      end
      inherited BtnView: TRzToolButton
        Visible = False
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
        Color = clInfoBk
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
        Left = 246
        Top = 10
        Width = 144
        Height = 27
        DataSource = srDocHead
        DataField = 'F_SKLAD_NAME'
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
        Left = 465
        Top = 6
        Width = 271
        Height = 27
        DataSource = srDocHead
        DataField = 'F_PARTNER_NAME'
        TabOrder = 5
        OnButtonClick = RzDBButtonEdit1ButtonClick
      end
      object BtnSetPrice: TButton
        Left = 615
        Top = 39
        Width = 121
        Height = 25
        Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1094#1077#1085#1099
        TabOrder = 6
        OnClick = BtnSetPriceClick
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
        ExplicitLeft = 696
        ExplicitTop = 88
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
          NavigatorButtons.Insert.Visible = False
          OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
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
          object cxGrid1DBTableView1F_ARTICLE: TcxGridDBColumn
            DataBinding.FieldName = 'F_ARTICLE'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Editing = False
            Width = 22
          end
          object cxGrid1DBTableView1F_GOOD_NAME: TcxGridDBColumn
            Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
            DataBinding.FieldName = 'F_GOOD_NAME'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 21
          end
          object cxGrid1DBTableView1F_GOOD: TcxGridDBColumn
            Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
            DataBinding.FieldName = 'F_GOOD'
            Visible = False
            Width = 309
          end
          object cxGrid1DBTableView1F_OLD_PRICE_VAL: TcxGridDBColumn
            DataBinding.FieldName = 'F_OLD_PRICE_VAL'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Editing = False
            Width = 22
          end
          object cxGrid1DBTableView1F_PRICE: TcxGridDBColumn
            DataBinding.FieldName = 'F_PRICE_VAL'
            Width = 22
          end
          object cxGrid1DBTableView1F_ED_IZM_SHORT_NAME: TcxGridDBColumn
            Caption = #1045#1076'.'#1080#1079#1084
            DataBinding.FieldName = 'F_ED_IZM_SHORT_NAME'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Editing = False
            Width = 21
          end
          object cxGrid1DBTableView1F_CNT: TcxGridDBColumn
            DataBinding.FieldName = 'F_CNT'
            Width = 22
          end
          object cxGrid1DBTableView1F_SUM: TcxGridDBColumn
            DataBinding.FieldName = 'F_SUM'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Editing = False
            Width = 21
          end
          object cxGrid1DBTableView1F_DOC_IN: TcxGridDBColumn
            DataBinding.FieldName = 'F_DOC_IN'
            Visible = False
          end
          object cxGrid1DBTableView1F_SCANCODE: TcxGridDBColumn
            DataBinding.FieldName = 'F_SCANCODE'
            Visible = False
            Width = 68
          end
          object cxGrid1DBTableView1F_PICTURE: TcxGridDBColumn
            DataBinding.FieldName = 'F_PICTURE'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 207
          end
          object cxGrid1DBTableView1F_GOOD_GRP_COLOR: TcxGridDBColumn
            DataBinding.FieldName = 'F_GOOD_GRP_COLOR'
            Visible = False
          end
          object cxGrid1DBTableView1F_ICON: TcxGridDBColumn
            DataBinding.FieldName = 'F_ICON'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = DM.ImageList
            Properties.ImmediateDropDown = False
            Properties.Items = <
              item
                ImageIndex = 44
                Value = 1
              end>
            Properties.ReadOnly = True
            Width = 234
            IsCaptionAssigned = True
          end
          object cxGrid1DBTableView1F_SKLAD_OST: TcxGridDBColumn
            DataBinding.FieldName = 'F_SKLAD_OST'
            Width = 125
          end
          object cxGrid1DBTableView1F_GOOD_DOP_INFO: TcxGridDBColumn
            DataBinding.FieldName = 'F_GOOD_DOP_INFO'
            Visible = False
            Width = 54
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
      
        'execute procedure SP_T_DOC_IN_U(:f_doc_in,:F_SKLAD,:F_PARTNER,:F' +
        '_NUMBER,:F_DATE,:F_STATE, :f_price)'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID as f_doc_in,'
      '    F_SKLAD,'
      '    F_PARTNER,'
      '    F_NUMBER,'
      '    F_DATE,'
      '    F_STATE,'
      '    F_PARTNER_NAME,'
      '    F_STATE_NAME,'
      '    F_SKLAD_NAME,'
      '    F_PRICE,'
      '    f_price_name,'
      '    f_doc_type,'
      '    f_doc_sum'
      'FROM'
      '    SP_T_DOC_IN_GET(:f_doc_in,:f_doc_type) ')
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
      Required = True
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
    object dsDocHeadF_DOC_IN: TFIBBCDField
      FieldName = 'F_DOC_IN'
      Size = 0
    end
    object dsDocHeadF_DOC_TYPE: TFIBBCDField
      FieldName = 'F_DOC_TYPE'
      Size = 0
    end
    object dsDocHeadF_DOC_SUM: TFIBBCDField
      FieldName = 'F_DOC_SUM'
      Size = 3
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
      '    f_old_price_val,'
      '    F_CNT,'
      '    F_SUM,'
      '    F_GOOD_NAME,'
      '    F_article,'
      '    f_ed_izm_short_name,'
      '    f_scancode,'
      
        '    (select first 1 '#39'Ok'#39' from SP_T_NSI_GOODS_MMEDIA_S(f_good)) a' +
        's f_picture,'
      '    F_GOOD_GRP_COLOR,'
      '    F_ICON,'
      '    F_SKLAD_OST,'
      '    F_GOOD_DOP_INFO,'
      '    f_NSI_GOOD_INFO'
      'FROM'
      '    SP_T_DOC_IN_STR_S(:f_doc_in) ')
    AutoUpdateOptions.ParamsToFieldsLinks.Strings = (
      'F_DOC_IN=F_DOC_IN')
    AfterDelete = dsDocStringsAfterDelete
    AfterPost = dsDocStringsAfterPost
    BeforePost = dsDocStringsBeforePost
    OnCalcFields = dsDocStringsCalcFields
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    AutoCommit = True
    DataSource = srDocHead
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 360
    Top = 208
    object dsDocStringsF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
    end
    object dsDocStringsF_DOC_IN: TFIBBCDField
      FieldName = 'F_DOC_IN'
      Size = 0
    end
    object dsDocStringsF_GOOD: TFIBBCDField
      FieldName = 'F_GOOD'
      Size = 0
    end
    object dsDocStringsF_PRICE_VAL: TFIBBCDField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'F_PRICE_VAL'
      DisplayFormat = '0.00;(0,00)'
      EditFormat = '0.00;(0,00)'
      Size = 3
    end
    object dsDocStringsF_OLD_PRICE_VAL: TFIBBCDField
      DisplayLabel = #1057#1090#1072#1088#1072#1103' '#1094#1077#1085#1072
      FieldName = 'F_OLD_PRICE_VAL'
      DisplayFormat = '0.00;(0,00)'
      EditFormat = '0.00;(0,00)'
      Size = 3
    end
    object dsDocStringsF_CNT: TFIBBCDField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'F_CNT'
      DisplayFormat = '0.0;(0,0)'
      Size = 3
    end
    object dsDocStringsF_SUM: TFIBBCDField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'F_SUM'
      DisplayFormat = '0.00;(0.00)'
      Size = 3
    end
    object dsDocStringsF_GOOD_NAME: TFIBStringField
      DisplayLabel = #1058#1086#1074#1072#1088
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
      FieldName = 'F_ED_IZM_SHORT_NAME'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_SCANCODE: TFIBStringField
      FieldName = 'F_SCANCODE'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_PICTURE: TFIBStringField
      DisplayLabel = #1050#1072#1088#1090#1080#1085#1082#1072
      FieldName = 'F_PICTURE'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_GOOD_GRP_COLOR: TFIBStringField
      FieldName = 'F_GOOD_GRP_COLOR'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_ICON: TFIBBCDField
      FieldName = 'F_ICON'
      Size = 0
    end
    object dsDocStringsF_SKLAD_OST: TFIBFloatField
      DisplayLabel = #1054#1089#1090#1072#1090#1086#1082
      FieldName = 'F_SKLAD_OST'
    end
    object dsDocStringsF_GOOD_DOP_INFO: TFIBStringField
      DisplayLabel = #1054#1087#1080#1089#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
      FieldName = 'F_GOOD_DOP_INFO'
      Size = 1000
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_NSI_GOOD_INFO: TFIBStringField
      FieldName = 'F_NSI_GOOD_INFO'
      Visible = False
      Size = 10000
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
      '    :F_CHANGE_PRICE,'
      '    :f_price) ')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 64
    Top = 264
  end
  inherited frxReport2: TfrxReport
    Top = 208
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
  object dsCopy2Move: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_move_doc'
      'FROM'
      '    SP_COPY_IN2MOVE(:F_DOC_IN)')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 96
    Top = 264
  end
  object PopupMenuExecute: TPopupMenu
    Left = 224
    Top = 16
    object N1: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1094#1077#1085#1086#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1055#1086#1084#1077#1089#1090#1080#1090#1100' '#1090#1086#1074#1072#1088' '#1074' '#1075#1088#1091#1087#1087#1091
      OnClick = N3Click
    end
  end
  object dsGoodPhoto: TpFIBDataSet
    SelectSQL.Strings = (
      'select f_memo as f_photo from SP_T_NSI_GOODS_MMEDIA_S(:f_good)')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DataSource = srDocStrings
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 768
    Top = 120
    WaitEndMasterScroll = True
    dcForceOpen = True
  end
  object srGoodPhoto: TDataSource
    DataSet = dsGoodPhoto
    Left = 776
    Top = 128
  end
end
