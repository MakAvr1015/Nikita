inherited FrmOutputDoc: TFrmOutputDoc
  ActiveControl = RzPageControl1
  Caption = #1056#1072#1089#1093#1086#1076#1085#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
  ClientHeight = 525
  ClientWidth = 1063
  ExplicitWidth = 1071
  ExplicitHeight = 552
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 506
    Width = 1063
    ExplicitTop = 506
    ExplicitWidth = 1063
  end
  inherited Panel3: TPanel
    Width = 1063
    Height = 506
    ExplicitWidth = 1063
    ExplicitHeight = 506
    inherited RzToolbar: TRzToolbar
      Width = 1061
      ExplicitWidth = 1061
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
        OnClick = BtnOpenClick
      end
      inherited BtnPrint: TRzToolButton
        AllowAllUp = True
        OnClick = nil
      end
      inherited BtnView: TRzToolButton
        Visible = False
      end
    end
    object RzPanel1: TRzPanel
      Left = 1
      Top = 26
      Width = 1061
      Height = 83
      Align = alTop
      Color = clGradientActiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      GradientColorStyle = gcsCustom
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
        Top = 32
        Width = 32
        Height = 19
        Caption = #1044#1072#1090#1072
      end
      object RzLabel3: TRzLabel
        Left = 369
        Top = 9
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
        Top = 9
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
      object RzLabel7: TRzLabel
        Left = 577
        Top = 32
        Width = 49
        Height = 19
        Alignment = taCenter
        Caption = #1057#1082#1080#1076#1082#1072
      end
      object RzLabel8: TRzLabel
        Left = 385
        Top = 32
        Width = 86
        Height = 19
        Caption = #1044#1072#1090#1072' '#1086#1087#1083#1072#1090#1099
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
        Top = 52
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
        Top = 52
        Width = 99
        Height = 27
        DataSource = srDocHead
        DataField = 'F_DATE'
        TabOrder = 2
        EditType = etDate
        FlatButtonColor = clGradientActiveCaption
        FlatButtons = True
      end
      object RzDBButtonEdit2: TRzDBButtonEdit
        Left = 221
        Top = 6
        Width = 144
        Height = 27
        DataSource = srDocHead
        DataField = 'F_SKLAD_NAME'
        TabOrder = 3
        FlatButtonColor = clGradientActiveCaption
        OnButtonClick = RzDBButtonEdit2ButtonClick
        FlatButtons = True
      end
      object RzDBButtonEdit3: TRzDBButtonEdit
        Left = 113
        Top = 52
        Width = 144
        Height = 27
        DataSource = srDocHead
        DataField = 'F_PRICE_NAME'
        TabOrder = 4
        FlatButtonColor = clGradientActiveCaption
        OnButtonClick = RzDBButtonEdit3ButtonClick
        FlatButtons = True
      end
      object RzDBButtonEdit1: TRzDBButtonEdit
        Left = 438
        Top = 6
        Width = 304
        Height = 27
        DataSource = srDocHead
        DataField = 'F_PARTNER_NAME'
        TabOrder = 5
        FlatButtonColor = clGradientActiveCaption
        OnButtonClick = RzDBButtonEdit1ButtonClick
        FlatButtons = True
      end
      object BtnMakePay: TButton
        Left = 762
        Top = 6
        Width = 81
        Height = 25
        Caption = #1054#1087#1083#1072#1090#1080#1090#1100
        TabOrder = 6
        OnClick = BtnMakePayClick
      end
      object RzDBSpinEdit1: TRzDBSpinEdit
        Left = 577
        Top = 52
        Width = 70
        Height = 25
        DataSource = srDocHead
        DataField = 'F_SKIDKA'
        Alignment = taRightJustify
        TabOrder = 7
        OnExit = RzDBSpinEdit1Exit
        AllowKeyEdit = True
        FlatButtonColor = clGradientActiveCaption
        Value = 1.000000000000000000
        FlatButtons = True
      end
      object RzDBDateTimeEdit2: TRzDBDateTimeEdit
        Left = 385
        Top = 52
        Width = 99
        Height = 27
        DataSource = srDocHead
        DataField = 'F_PAYDATE_PLAN'
        TabOrder = 8
        EditType = etDate
        FlatButtonColor = clGradientActiveCaption
        FlatButtons = True
      end
      object chckType: TcxDBCheckBox
        Left = 520
        Top = 50
        DataBinding.DataField = 'F_PROPERTY_1'
        DataBinding.DataSource = srDocHead
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        TabOrder = 9
        Width = 25
      end
    end
    object RzPageControl1: TRzPageControl
      Left = 1
      Top = 109
      Width = 1061
      Height = 396
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
          Width = 1057
          Height = 370
          Align = alClient
          Caption = 'Panel1'
          TabOrder = 0
          object Splitter1: TSplitter
            Left = 913
            Top = 1
            Height = 368
            Align = alRight
            ExplicitLeft = 720
            ExplicitTop = 96
            ExplicitHeight = 100
          end
          object cxGrid1: TcxGrid
            Left = 1
            Top = 1
            Width = 912
            Height = 368
            Align = alClient
            TabOrder = 0
            LookAndFeel.SkinName = 'MoneyTwins'
            LookAndFeel.SkinName = 'MoneyTwins'
            object cxGrid1DBTableView1: TcxGridDBTableView
              OnDragDrop = cxGrid1DBTableView1DragDrop
              OnDragOver = cxGrid1DBTableView1DragOver
              OnKeyPress = cxGrid1DBTableView1KeyPress
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.Insert.Enabled = False
              NavigatorButtons.Insert.Visible = False
              OnCellDblClick = cxGrid1DBTableView1CellDblClick
              OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
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
                Width = 27
              end
              object cxGrid1DBTableView1F_GOOD_NAME: TcxGridDBColumn
                DataBinding.FieldName = 'F_GOOD_NAME'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Editing = False
                Width = 128
              end
              object cxGrid1DBTableView1F_DESCR: TcxGridDBColumn
                DataBinding.FieldName = 'F_DESCR'
                PropertiesClassName = 'TcxTextEditProperties'
                Options.Editing = False
                Width = 100
              end
              object cxGrid1DBTableView1F_ED_IZM_SHORT_NAME: TcxGridDBColumn
                DataBinding.FieldName = 'F_ED_IZM_SHORT_NAME'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Editing = False
                Width = 52
              end
              object cxGrid1DBTableView1F_CNT: TcxGridDBColumn
                DataBinding.FieldName = 'F_CNT'
                Options.Editing = False
                Width = 76
              end
              object cxGrid1DBTableView1F_PRICE_WO_SKIDKA: TcxGridDBColumn
                Caption = #1062#1077#1085#1072' '#1073#1077#1079' '#1089#1082#1080#1076#1082#1080
                DataBinding.FieldName = 'F_PRICE_WO_SKIDKA'
                Options.Editing = False
                Width = 64
              end
              object cxGrid1DBTableView1F_PRICE_VAL: TcxGridDBColumn
                DataBinding.FieldName = 'F_PRICE_VAL'
                Options.Editing = False
                Width = 61
              end
              object cxGrid1DBTableView1F_SUM_WO_SKIDKA: TcxGridDBColumn
                DataBinding.FieldName = 'F_SUM_WO_SKIDKA'
                Options.Editing = False
                Width = 74
              end
              object cxGrid1DBTableView1F_SKIDKA: TcxGridDBColumn
                DataBinding.FieldName = 'F_SKIDKA'
                Options.Editing = False
                Width = 71
              end
              object cxGrid1DBTableView1F_SUM: TcxGridDBColumn
                Caption = #1057#1091#1084#1084#1072' '#1089#1086' '#1089#1082#1080#1076#1082#1086#1081
                DataBinding.FieldName = 'F_SUM'
                Options.Editing = False
                Width = 72
              end
              object cxGrid1DBTableView1F_SKLAD_OST: TcxGridDBColumn
                Caption = #1054#1089#1090#1072#1090#1086#1082' '#1087#1086#1089#1083#1077' '#1086#1090#1075#1088#1091#1079#1082#1080
                DataBinding.FieldName = 'F_SKLAD_OST'
                Options.Editing = False
                Width = 62
              end
              object cxGrid1DBTableView1F_ID: TcxGridDBColumn
                DataBinding.FieldName = 'F_ID'
                Visible = False
              end
              object cxGrid1DBTableView1F_PICTURE: TcxGridDBColumn
                DataBinding.FieldName = 'F_PICTURE'
                Options.Editing = False
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
          object cxDBImage1: TcxDBImage
            Left = 916
            Top = 1
            Align = alRight
            DataBinding.DataField = 'f_photo'
            DataBinding.DataSource = srGoodPhoto
            Properties.GraphicClassName = 'TJPEGImage'
            Properties.ReadOnly = True
            Properties.Stretch = True
            TabOrder = 1
            ExplicitLeft = 828
            ExplicitTop = -17
            Height = 368
            Width = 140
          end
        end
      end
      object TabSheet2: TRzTabSheet
        Color = clGradientActiveCaption
        Caption = #1054#1087#1083#1072#1090#1072
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 1057
          Height = 370
          Align = alClient
          TabOrder = 0
          object cxGrid2DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = srPaymentsList
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                Column = cxGrid2DBTableView1F_SUMMA
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsView.Navigator = True
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            object cxGrid2DBTableView1F_ID: TcxGridDBColumn
              DataBinding.FieldName = 'F_ID'
              Visible = False
            end
            object cxGrid2DBTableView1F_DOC: TcxGridDBColumn
              DataBinding.FieldName = 'F_DOC'
              Visible = False
            end
            object cxGrid2DBTableView1F_MONEY: TcxGridDBColumn
              DataBinding.FieldName = 'F_MONEY'
              Visible = False
            end
            object cxGrid2DBTableView1F_DOC_INFO: TcxGridDBColumn
              DataBinding.FieldName = 'F_DOC_INFO'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Width = 625
            end
            object cxGrid2DBTableView1F_SUMMA: TcxGridDBColumn
              DataBinding.FieldName = 'F_SUMMA'
              Width = 104
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableView1
          end
        end
      end
    end
  end
  object dsDocHead: TpFIBDataSet [2]
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
    AfterPost = dsDocHeadAfterPost
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
  object dsDocStrings: TpFIBDataSet [3]
    UpdateSQL.Strings = (
      'execute procedure SP_T_DOC_out_STR_U('
      '    :F_ID,'
      '    :F_DOC_out,'
      '    :F_GOOD,'
      '    :f_price_val,'
      '    :F_CNT,'
      '    :F_SUM,'
      '    :f_descr)')
    DeleteSQL.Strings = (
      'execute procedure SP_T_DOC_OUT_STR_D(:f_id)')
    InsertSQL.Strings = (
      'execute procedure SP_T_DOC_OUT_STR_I'
      '(   :F_ID,'
      '    :F_DOC_out,'
      '    :F_GOOD,'
      '    :F_PRICE,'
      '    :F_CNT,'
      '    :F_SUM,'
      '    :f_descr,'
      '    :f_inc)')
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
      
        '    (select first 1 '#39'Ok'#39' from SP_T_NSI_GOODS_MMEDIA_S(f_good)) a' +
        's f_picture,'
      '    F_GOOD_GRP_COLOR,'
      '    f_good_dop_info'
      'FROM'
      '    SP_T_DOC_OUT_STR_S(:f_doc_out) ')
    AutoUpdateOptions.ParamsToFieldsLinks.Strings = (
      'F_DOC_OUT=F_DOC_OUT')
    AfterDelete = dsDocStringsAfterDelete
    AfterPost = dsDocStringsAfterPost
    AfterScroll = dsDocStringsAfterScroll
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
    object dsDocStringsF_PICTURE: TFIBStringField
      DisplayLabel = #1050#1072#1088#1090#1080#1085#1082#1072
      FieldName = 'F_PICTURE'
      Size = 2
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
  end
  object srDocStrings: TDataSource [4]
    DataSet = dsDocStrings
    Left = 368
    Top = 224
  end
  object srDocHead: TDataSource [5]
    DataSet = dsDocHead
    Left = 280
    Top = 72
  end
  object pFIBTransaction: TpFIBTransaction [6]
    DefaultDatabase = DM.pFIBDatabase
    Left = 600
    Top = 224
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dsPaymentsList: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'execute procedure SP_T_MONEY_IN_STR_U(:f_id,:f_doc,:f_money,:f_s' +
        'umma)')
    DeleteSQL.Strings = (
      'execute procedure SP_T_MONEY_IN_STR_D(:f_id)')
    InsertSQL.Strings = (
      'execute procedure SP_T_MONEY_IN_STR_I('
      '    :F_ID,'
      '    :F_DOC,'
      '    :F_money,'
      '    :F_SUMMA)')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_DOC,'
      '    F_MONEY,'
      '    F_SUMMA,'
      '    F_DOC_INFO'
      'FROM'
      '    SP_T_MONEY_IN_STR_S_DOC(:F_DOC_OUT) ')
    AutoUpdateOptions.ParamsToFieldsLinks.Strings = (
      'F_DOC=F_DOC_OUT')
    AfterDelete = dsPaymentsListAfterDelete
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DataSource = srDocHead
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 488
    Top = 288
    object dsPaymentsListF_ID: TFIBBCDField
      Tag = 1
      FieldName = 'F_ID'
      Visible = False
      Size = 0
    end
    object dsPaymentsListF_DOC: TFIBBCDField
      FieldName = 'F_DOC'
      Visible = False
      Size = 0
    end
    object dsPaymentsListF_MONEY: TFIBBCDField
      FieldName = 'F_MONEY'
      Visible = False
      Size = 0
    end
    object dsPaymentsListF_SUMMA: TFIBFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1088#1072#1079#1085#1086#1089#1082#1080
      FieldName = 'F_SUMMA'
    end
    object dsPaymentsListF_DOC_INFO: TFIBStringField
      DisplayLabel = #1055#1083#1072#1090#1077#1078
      FieldName = 'F_DOC_INFO'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object srPaymentsList: TDataSource
    DataSet = dsPaymentsList
    Left = 496
    Top = 304
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
    Left = 848
    Top = 112
    WaitEndMasterScroll = True
    dcForceOpen = True
  end
  object srGoodPhoto: TDataSource
    DataSet = dsGoodPhoto
    Left = 880
    Top = 152
  end
end
