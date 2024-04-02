inherited FrmOutputDoc: TFrmOutputDoc
  ActiveControl = RzPageControl1
  Caption = #1056#1072#1089#1093#1086#1076#1085#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
  ClientHeight = 581
  ClientWidth = 1063
  ExplicitWidth = 1079
  ExplicitHeight = 620
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 562
    Width = 1063
    ExplicitTop = 562
    ExplicitWidth = 1063
    inherited DsFormName: TRzStatusPane
      Caption = 'dsDocStrings'
    end
  end
  inherited Panel3: TPanel
    Width = 1063
    Height = 562
    ExplicitWidth = 1063
    ExplicitHeight = 562
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
        BtnExit
        cxComboBoxStyles)
      inherited BtnOpen: TRzToolButton
        OnClick = BtnOpenClick
      end
      inherited BtnPrint: TRzToolButton
        AllowAllUp = True
        OnClick = nil
      end
      inherited BtnDelete: TRzToolButton
        Enabled = True
        Visible = True
      end
      inherited BtnView: TRzToolButton
        Visible = False
      end
    end
    object RzPanel1: TRzPanel
      Left = 1
      Top = 26
      Width = 1061
      Height = 111
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
        Left = 175
        Top = 9
        Width = 32
        Height = 19
        Caption = #1044#1072#1090#1072
      end
      object RzLabel3: TRzLabel
        Left = 527
        Top = 43
        Width = 78
        Height = 19
        Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100
      end
      object RzLabel4: TRzLabel
        Left = 8
        Top = 75
        Width = 46
        Height = 19
        Caption = #1057#1090#1072#1090#1091#1089
      end
      object RzLabel5: TRzLabel
        Left = 8
        Top = 43
        Width = 41
        Height = 19
        Caption = #1057#1082#1083#1072#1076
      end
      object RzLabel6: TRzLabel
        Left = 342
        Top = 8
        Width = 42
        Height = 19
        Caption = #1055#1088#1072#1081#1089
      end
      object RzLabel7: TRzLabel
        Left = 181
        Top = 75
        Width = 49
        Height = 19
        Alignment = taCenter
        Caption = #1057#1082#1080#1076#1082#1072
      end
      object RzLabel8: TRzLabel
        Left = 552
        Top = 8
        Width = 86
        Height = 19
        Caption = #1044#1072#1090#1072' '#1086#1087#1083#1072#1090#1099
      end
      object RzLabel9: TRzLabel
        Left = 210
        Top = 44
        Width = 89
        Height = 19
        Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100
      end
      object RzDBEdit1: TRzDBEdit
        Left = 60
        Top = 6
        Width = 99
        Height = 27
        DataSource = srDocHead
        DataField = 'F_NUMBER'
        TabOrder = 0
      end
      object RzDBLookupComboBox1: TRzDBLookupComboBox
        Left = 60
        Top = 71
        Width = 115
        Height = 27
        DataField = 'F_STATE'
        DataSource = srDocHead
        KeyField = 'f_id'
        ListField = 'f_name'
        ListSource = dm.srStateSource
        TabOrder = 8
      end
      object RzDBDateTimeEdit1: TRzDBDateTimeEdit
        Left = 223
        Top = 6
        Width = 99
        Height = 27
        DataSource = srDocHead
        DataField = 'F_DATE'
        TabOrder = 1
        EditType = etDate
        FlatButtonColor = clGradientActiveCaption
        FlatButtons = True
      end
      object RzDBButtonEdit2: TRzDBButtonEdit
        Left = 60
        Top = 39
        Width = 144
        Height = 27
        DataSource = srDocHead
        DataField = 'F_SKLAD_NAME'
        TabOrder = 5
        AltBtnWidth = 15
        ButtonWidth = 15
        FlatButtonColor = clGradientActiveCaption
        OnButtonClick = RzDBButtonEdit2ButtonClick
        FlatButtons = True
      end
      object RzDBButtonEdit3: TRzDBButtonEdit
        Left = 390
        Top = 6
        Width = 144
        Height = 27
        DataSource = srDocHead
        DataField = 'F_PRICE_NAME'
        TabOrder = 2
        AltBtnWidth = 15
        ButtonWidth = 15
        FlatButtonColor = clGradientActiveCaption
        OnButtonClick = RzDBButtonEdit3ButtonClick
        FlatButtons = True
      end
      object RzDBButtonEdit1: TRzDBButtonEdit
        Left = 611
        Top = 39
        Width = 232
        Height = 27
        DataSource = srDocHead
        DataField = 'F_PARTNER_NAME'
        TabOrder = 7
        AltBtnWidth = 15
        ButtonWidth = 15
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
        TabOrder = 4
        OnClick = BtnMakePayClick
      end
      object RzDBSpinEdit1: TRzDBSpinEdit
        Left = 236
        Top = 71
        Width = 70
        Height = 27
        DataSource = srDocHead
        DataField = 'F_SKIDKA'
        TabOrder = 9
        OnExit = RzDBSpinEdit1Exit
        AllowKeyEdit = True
        FlatButtonColor = clGradientActiveCaption
        Max = 100.000000000000000000
        Value = 1.000000000000000000
        FlatButtons = True
      end
      object RzDBDateTimeEdit2: TRzDBDateTimeEdit
        Left = 657
        Top = 6
        Width = 99
        Height = 27
        DataSource = srDocHead
        DataField = 'F_PAYDATE_PLAN'
        TabOrder = 3
        EditType = etDate
        FlatButtonColor = clGradientActiveCaption
        FlatButtons = True
      end
      object chckType: TcxDBCheckBox
        Left = 332
        Top = 75
        DataBinding.DataField = 'F_PROPERTY_1'
        DataBinding.DataSource = srDocHead
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        TabOrder = 10
      end
      object BtnSend: TButton
        Left = 682
        Top = 72
        Width = 161
        Height = 25
        Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
        TabOrder = 11
        Visible = False
        OnClick = BtnSendClick
      end
      object RzDBButtonEdit4: TRzDBButtonEdit
        Left = 305
        Top = 39
        Width = 216
        Height = 27
        DataSource = srDocHead
        DataField = 'F_SKLAD_F_NAME'
        TabOrder = 6
        AltBtnWidth = 15
        ButtonWidth = 15
        FlatButtonColor = clGradientActiveCaption
        OnButtonClick = RzDBButtonEdit4ButtonClick
        FlatButtons = True
      end
    end
    object RzPageControl1: TRzPageControl
      Left = 1
      Top = 137
      Width = 1061
      Height = 424
      Hint = ''
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
          Height = 398
          Align = alClient
          Caption = 'Panel1'
          TabOrder = 0
          object Splitter1: TSplitter
            Left = 913
            Top = 1
            Height = 396
            Align = alRight
            ExplicitLeft = 720
            ExplicitTop = 96
            ExplicitHeight = 100
          end
          object cxGrid1: TcxGrid
            Left = 1
            Top = 1
            Width = 912
            Height = 396
            Align = alClient
            TabOrder = 0
            LookAndFeel.SkinName = 'MoneyTwins'
            object cxGrid1DBTableView1: TcxGridDBTableView
              OnDragDrop = cxGrid1DBTableView1DragDrop
              OnDragOver = cxGrid1DBTableView1DragOver
              OnKeyPress = cxGrid1DBTableView1KeyPress
              OnKeyUp = cxGrid1DBTableView1KeyUp
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.Insert.Enabled = False
              Navigator.Buttons.Insert.Visible = False
              Navigator.Visible = True
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
              OptionsView.CellAutoHeight = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.FooterAutoHeight = True
              OptionsView.GroupByBox = False
              OptionsView.HeaderAutoHeight = True
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
              object cxGrid1DBTableView1F_RESERVED: TcxGridDBColumn
                DataBinding.FieldName = 'F_RESERVED'
                Options.Editing = False
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
              object cxGrid1DBTableView1F_SCANCODE: TcxGridDBColumn
                DataBinding.FieldName = 'F_SCANCODE'
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
            Properties.FitMode = ifmProportionalStretch
            Properties.GraphicClassName = 'TdxSmartImage'
            Properties.ReadOnly = True
            TabOrder = 1
            Height = 396
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
          Height = 398
          Align = alClient
          TabOrder = 0
          object cxGrid2DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Visible = True
            DataController.DataSource = srPaymentsList
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                Column = cxGrid2DBTableView1F_SUMMA
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnsQuickCustomization = True
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
  inherited PrnMenu: TPopupMenu
    Left = 48
    Top = 256
  end
  object dsDocHead: TpFIBDataSet [3]
    UpdateSQL.Strings = (
      'execute procedure SP_T_DOC_out_U(:f_doc_out,:F_SKLAD,'
      
        '    :F_PARTNER,:F_NUMBER,:F_DATE,:f_paydate_plan,:F_STATE,:F_PRI' +
        'CE,:f_skidka,null, :f_type, :f_property_1,'
      '    null,null,null,null, :F_OWNER)'
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
      '    F_PARTNER_INN,'
      '    F_PARTNER_NAME,'
      '    F_PARTNER_ADRES,'
      '    F_STATE_NAME,'
      '    F_SKLAD_NAME,'
      '    F_SKLAD_F_NAME,'
      '    F_PRICE,'
      '    f_price_name,'
      '    f_skidka,'
      '    f_pay_sum,'
      '    f_doc_sum,'
      '    f_type,'
      '    f_guid,'
      '    f_sklad_pref,'
      '    f_user,'
      '    f_property_1,'
      '    F_OWNER'
      'FROM'
      '    SP_T_DOC_out_GET(:f_doc_out,:f_type) ')
    AfterOpen = dsDocHeadAfterOpen
    AfterPost = dsDocHeadAfterPost
    Transaction = dm.pFIBTransaction
    Database = dm.pFIBDatabase
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 144
    Top = 312
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
    object dsDocHeadF_PARTNER_INN: TFIBStringField
      FieldName = 'F_PARTNER_INN'
      EmptyStrToNull = True
    end
    object dsDocHeadF_PARTNER_ADRES: TFIBStringField
      FieldName = 'F_PARTNER_ADRES'
      Size = 255
      EmptyStrToNull = True
    end
    object dsDocHeadF_GUID: TFIBStringField
      FieldName = 'F_GUID'
      Size = 100
      EmptyStrToNull = True
    end
    object dsDocHeadF_USER: TFIBStringField
      FieldName = 'F_USER'
      Size = 60
      EmptyStrToNull = True
    end
    object dsDocHeadF_SKLAD_PREF: TFIBStringField
      FieldName = 'F_SKLAD_PREF'
      Size = 2
      EmptyStrToNull = True
    end
    object dsDocHeadF_OWNER: TFIBIntegerField
      FieldName = 'F_OWNER'
    end
    object dsDocHeadF_SKLAD_F_NAME: TFIBStringField
      FieldName = 'F_SKLAD_F_NAME'
      Size = 60
      EmptyStrToNull = True
    end
  end
  object dsDocStrings: TpFIBDataSet [4]
    UpdateSQL.Strings = (
      'execute procedure PAK_DOC.DOC_out_STR_U('
      '    :F_ID,'
      '    :F_DOC_out,'
      '    :F_GOOD,'
      '    :F_SCANCODE,'
      '    :f_price_val,'
      '    :F_CNT,'
      '    :F_SUM,'
      '    :f_descr)')
    DeleteSQL.Strings = (
      'execute procedure PAK_DOC.DOC_OUT_STR_D(:f_id)')
    InsertSQL.Strings = (
      'execute procedure pak_doc.DOC_OUT_STR_I'
      '(   :F_ID,'
      '    :F_DOC_out,'
      '    :F_GOOD,'
      '    :F_SCANCODE,'
      '    :F_PRICE_VAL,'
      '    :F_CNT,'
      '    :F_SUM,'
      '    :f_descr,'
      '    null)')
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
      '    f_scancode,'
      '    coalesce(f_skidka,0)+f_sum as f_sum_wo_skidka,'
      
        '    cast((coalesce(f_skidka,0)+f_sum)/f_cnt as numeric(15,3)) as' +
        ' f_price_wo_skidka,'
      '    f_descr,'
      
        '    (select first 1 '#39'Ok'#39' from SP_T_NSI_GOODS_MMEDIA_S(f_good)) a' +
        's f_picture,'
      '    F_GOOD_GRP_COLOR,'
      '    f_good_dop_info,'
      '    coalesce(f_reserved,0) f_reserved'
      'FROM'
      '    PAK_DOC.DOC_OUT_STR_S(:f_doc_out)')
    AutoUpdateOptions.ParamsToFieldsLinks.Strings = (
      'F_DOC_OUT=F_DOC_OUT')
    AfterDelete = dsDocStringsAfterDelete
    AfterPost = dsDocStringsAfterPost
    AfterScroll = dsDocStringsAfterScroll
    OnCalcFields = dsDocStringsCalcFields
    Transaction = dm.pFIBTransaction
    Database = dm.pFIBDatabase
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
      Size = 10000
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_RESERVED: TFIBFloatField
      DisplayLabel = #1047#1072#1088#1077#1079#1077#1088#1074#1080#1088#1086#1074#1072#1085#1086
      FieldName = 'F_RESERVED'
    end
    object dsDocStringsF_SCANCODE: TFIBBCDField
      FieldName = 'F_SCANCODE'
      Size = 0
    end
  end
  object srDocStrings: TDataSource [5]
    DataSet = dsDocStrings
    Left = 368
    Top = 224
  end
  object srDocHead: TDataSource [6]
    DataSet = dsDocHead
    Left = 152
    Top = 320
  end
  object pFIBTransaction: TpFIBTransaction [7]
    DefaultDatabase = dm.pFIBDatabase
    Left = 600
    Top = 224
  end
  inherited frxReport2: TfrxReport
    Left = 264
    Top = 256
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dsPaymentsList: TpFIBDataSet [11]
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
    Transaction = dm.pFIBTransaction
    Database = dm.pFIBDatabase
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
  object srPaymentsList: TDataSource [12]
    DataSet = dsPaymentsList
    Left = 496
    Top = 304
  end
  object spMakePayDoc: TpFIBStoredProc [13]
    Transaction = dm.pFIBTransaction
    Database = dm.pFIBDatabase
    SQL.Strings = (
      'EXECUTE PROCEDURE SP_T_DOC_OUT_MAKE_PAY (?F_DOC_ID,1,?f_sum)')
    StoredProcName = 'SP_T_DOC_OUT_MAKE_PAY'
    Left = 600
    Top = 264
  end
  object dsGoodPhoto: TpFIBDataSet [14]
    SelectSQL.Strings = (
      'select f_memo as f_photo from SP_T_NSI_GOODS_MMEDIA_S(:f_good)')
    Transaction = dm.pFIBTransaction
    Database = dm.pFIBDatabase
    DataSource = srDocStrings
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 848
    Top = 112
    WaitEndMasterScroll = True
    dcForceOpen = True
  end
  object srGoodPhoto: TDataSource [15]
    DataSet = dsGoodPhoto
    Left = 880
    Top = 152
  end
  inherited ImageList: TImageList
    Bitmap = {
      494C01013A00D000DC0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000F0000000010020000000000000F0
      000000000000000000000000000000000000000000000000000000000000E2EF
      F100E5E5E500E5E5E500E5E5E500E5E5E500E5E5E50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5E5E500C0C0
      C0009999990080808000808080009999990099A8AC00C0C0C000CCCCCC00E2EF
      F10000000000000000000000000000000000000000000000000000000000C0C0
      C00099999900999999008080800099999900CCCCCC00C0C0C000CCCCCC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CCCCCC00CCCC
      CC00CCCC9900CCCC9900CCCC990099999900808080006666660080808000B2B2
      B200E5E5E5000000000000000000000000000000000000000000CCCCCC00CCCC
      CC00C0C0C000C0C0C000C0C0C00099999900808080009999990080808000B2B2
      B200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E5E5E500FFFFCC00F2EA
      BF00F2EABF00CCCC9900ECC6D900FFCC9900F2EABF00F2EABF00808080006666
      660099999900E5E5E50000000000000000000000000000000000000000000000
      000000000000C0C0C000CCCCCC00C0C0C0000000000000000000808080009999
      9900999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFCC9900F2EABF00F2EA
      BF00CCCCCC00ECC6D90000990000CCCCCC00CCCCCC00CCCCCC00FFFFCC00B2B2
      B200646F7100CCCCCC00000000000000000000000000C0C0C000000000000000
      0000CCCCCC00CCCCCC0099999900CCCCCC00CCCCCC00CCCCCC0000000000B2B2
      B20099999900CCCCCC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFCC9900FFCC9900E5E5
      E500ECC6D900ECC6D9000099000000990000009900000099000099CC9900F2EA
      BF0080808000B2B2B200E2EFF1000000000000000000C0C0C000C0C0C0000000
      0000CCCCCC00CCCCCC0099999900999999009999990099999900B2B2B2000000
      000080808000B2B2B20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E5E5E500FFCC9900E5E5E500E5E5
      E500ECC6D900C0C0C000009900000099000066CC6600CCFFCC0033CC3300FFCC
      990080808000B2B2B200E2EFF1000000000000000000C0C0C000000000000000
      0000CCCCCC00C0C0C0009999990099999900CCCCCC000000000099999900C0C0
      C00080808000B2B2B20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2EABF00F2EABF00FFFFFF00FFFF
      FF00CC999900ECC6D90099CC9900CCCC990033CC330099CC990099CC9900CCCC
      99009999990099999900E5E5E50000000000CCCCCC0000000000000000000000
      000099999900CCCCCC00B2B2B200C0C0C00099999900B2B2B200B2B2B200C0C0
      C000999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2EABF00FFFFCC00FFFFFF00ECC6
      D900CC999900ECC6D90066993300FFFFFF0066CC66000099000000990000F2EA
      BF009999990099999900E5E5E50000000000CCCCCC000000000000000000CCCC
      CC0099999900CCCCCC009999990000000000CCCCCC0099999900999999000000
      0000999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2EABF00FFFFFF00FFFFFF00ECC6
      D900ECC6D900ECC6D90099CC990000990000339933000099000000990000F2EA
      BF00CCCC990080808000E5E5E50000000000CCCCCC000000000000000000CCCC
      CC00CCCCCC00CCCCCC00B2B2B200999999009999990099999900999999000000
      0000C0C0C0008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFCC00FFFFCC00FFFFCC00FFFF
      FF00FFFFFF00E2EFF100E5E5E50099CC990099CC990066CC660000990000FFFF
      CC00C0C0C00080808000CCCCCC0000000000CCCCCC0000000000000000000000
      0000000000000000000000000000B2B2B200B2B2B200CCCCCC00999999000000
      0000C0C0C00080808000CCCCCC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFCC00FFFFCC00FFFFCC00FFFF
      CC00E2EFF100E2EFF100E2EFF100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFCC00646F7100CCCCCC0000000000CCCCCC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2EABF00F2EABF00F2EABF00E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E2EFF100F2EABF00FFFF
      CC00FFFFCC00646F7100CCCCCC000000000000000000CCCCCC00CCCCCC000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E5E5E500E5E5E50099CC
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00E2EFF10099CCFF00FFCC9900FFCC
      9900FFFFCC0080808000E5E5E50000000000000000000000000000000000CCCC
      CC000000000000000000000000000000000000000000CCCCCC00C0C0C000C0C0
      C000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E2EF
      F10099CCFF0099CCFF0099CCFF00CCFFFF00CCFFFF0099CCFF00FFCC9900FFCC
      9900FFCC9900C0C0C000E2EFF100000000000000000000000000000000000000
      0000CCCCCC00CCCCCC00CCCCCC000000000000000000CCCCCC00C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099CCFF0099CCFF0099CCFF00F2EABF00F2EA
      BF00E5E5E500E2EFF10000000000000000000000000000000000000000000000
      0000000000000000000000000000CCCCCC00CCCCCC00CCCCCC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009933000099330000993300009933
      0000000000000000000000000000993300009933000099330000993300000000
      0000000000000000000000000000000000009999990099999900999999009999
      9900000000000000000000000000999999009999990099999900999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999999009999990000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099330000CC660000CC660000CC66
      000099330000000000000000000099330000CC660000CC660000CC6600009933
      00000000000000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC0099999900000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300000000000000000000000000000000000000000000000000009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999000000000000000000000000000000000099330000CC660000CC66
      0000CC66000099330000000000000000000099330000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999999009999990000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC660000CC66000099330000000000000000000099330000CC660000CC66
      0000CC660000993300000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      0000000000009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC66000099330000000000000000000099330000CC66
      0000CC660000CC66000099330000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC0099999900000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099330000CC660000CC660000CC6600009933000000000000000000009933
      0000CC660000CC660000CC660000993300000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC009999990000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00999999003399CC0000669900006699000066
      99000066990000669900006699000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC9966009999990099999900999999009999
      9900999999009999990099999900000000000000000099999900999999009999
      9900999999009999990099999900999999000000000000000000000000000000
      000099330000CC660000CC660000CC6600009933000000000000000000009933
      0000CC660000CC660000CC660000993300000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC009999990000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00999999003399CC0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF00006699000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC99660099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099999900000000000000
      0000000000000000000000000000999999000000000000000000000000009933
      0000CC660000CC660000CC66000099330000000000000000000099330000CC66
      0000CC660000CC66000099330000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC0099999900000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC0099999900000000003399CC0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF00006699000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC99660099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099999900000000000000
      000000000000000000000000000099999900000000000000000099330000CC66
      0000CC660000CC66000099330000000000000000000099330000CC660000CC66
      0000CC660000993300000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000003399CC0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF00006699000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC99660099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099999900000000000000
      0000000000000000000000000000999999000000000099330000CC660000CC66
      0000CC66000099330000000000000000000099330000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000003399CC0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF00006699000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC99660099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099999900000000000000
      00000000000000000000000000009999990099330000CC660000CC660000CC66
      000099330000000000000000000099330000CC660000CC660000CC6600009933
      00000000000000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC0099999900000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000003399CC0099FFFF0099FFFF003399
      CC003399CC003399CC003399CC000000000000000000CC996600FFFFFF00FFFF
      FF00CC996600CC996600CC996600CC99660099999900CCCCCC00CCCCCC009999
      9900999999009999990099999900000000000000000099999900000000000000
      0000999999009999990099999900999999009933000099330000993300009933
      0000000000000000000000000000993300009933000099330000993300000000
      0000000000000000000000000000000000009999990099999900999999009999
      9900000000000000000000000000999999009999990099999900999999000000
      0000000000000000000000000000000000003399CC0099FFFF0099FFFF003399
      CC00CCFFFF0000669900000000000000000000000000CC996600FFFFFF00FFFF
      FF00CC996600E5E5E500CC9966000000000099999900CCCCCC00CCCCCC009999
      9900CCCCCC009999990000000000000000000000000099999900000000000000
      000099999900E5E5E50099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC0099FFFF0099FFFF003399
      CC000066990000000000000000000000000000000000CC996600FFFFFF00FFFF
      FF00CC996600CC996600000000000000000099999900CCCCCC00CCCCCC009999
      9900999999000000000000000000000000000000000099999900000000000000
      0000999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC003399CC003399CC003399
      CC000000000000000000000000000000000000000000CC996600CC996600CC99
      6600CC9966000000000000000000000000009999990099999900999999009999
      9900000000000000000000000000000000000000000099999900999999009999
      9900999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500CECECE00CECECE00CECECE00CECECE00CECECE00B5B5B5009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9C9C00CECE
      CE00FFCECE00FFFFFF00FFFFFF00FFFFCE00FFFFFF00CECEFF00FFCECE009CAD
      AD008484840000000000000000000000000000000000000000009C9C9C00CECE
      CE00CECECE000000000000000000000000000000000000000000CECECE009CAD
      AD00848484000000000000000000000000000000000000000000000000000000
      0000000000009C3100009C3100009C3100009C31000000000000000000000000
      00009C3100009C3100009C3100009C3100000000000000000000000000000000
      0000000000009C9C9C009C9C9C009C9C9C009C9C9C0000000000000000000000
      00009C9C9C009C9C9C009C9C9C009C9C9C00000000009C9C9C00B5B5B500FFCE
      CE00FFFFFF00CEFFFF00FFCE9C00FF9C3100CECEFF00FF9C3100CE310000CE31
      0000B5B5B500848484000000000000000000000000009C9C9C00B5B5B500CECE
      CE000000000000000000C6C6C6008484840000000000848484009C9C9C009C9C
      9C00B5B5B5008484840000000000000000000000000000000000000000000000
      00009C310000CE630000CE630000CE6300009C31000000000000000000009C31
      0000CE630000CE630000CE6300009C3100000000000000000000000000000000
      00009C9C9C00CECECE00CECECE00CECECE009C9C9C0000000000000000009C9C
      9C00CECECE00CECECE00CECECE009C9C9C00000000009C9C9C00CE9C9C00CECE
      CE00FFCECE00FFFFFF00FFCE9C00FFCE6300FF9C3100CE310000FF3131009C9C
      CE00CE310000B5B5B5008484840000000000000000009C9C9C009C9C9C00CECE
      CE00CECECE0000000000C6C6C600B5B5B500848484009C9C9C009C9C9C009CAD
      AD009C9C9C00B5B5B50084848400000000000000000000000000000000009C31
      0000CE630000CE630000CE6300009C31000000000000000000009C310000CE63
      0000CE630000CE6300009C310000000000000000000000000000000000009C9C
      9C00CECECE00CECECE00CECECE009C9C9C0000000000000000009C9C9C00CECE
      CE00CECECE00CECECE009C9C9C0000000000000000009C9C9C00B5B5B500FFCE
      CE00FFFFFF00CEFFFF00FFCE9C00FFFF0000FFCE3100FF633100CECEFF00FFFF
      FF00CE9C9C00CE3100008484840063313100000000009C9C9C00B5B5B500CECE
      CE000000000000000000C6C6C600B5B5B5009CADAD009C9C9C00000000000000
      00009C9C9C009C9C9C00848484009C9C9C0000000000000000009C310000CE63
      0000CE630000CE6300009C31000000000000000000009C310000CE630000CE63
      0000CE6300009C310000000000000000000000000000000000009C9C9C00CECE
      CE00CECECE00CECECE009C9C9C0000000000000000009C9C9C00CECECE00CECE
      CE00CECECE009C9C9C000000000000000000000000009C9C9C00CE9C9C00CECE
      CE00FFCECE00FFFFFF00FFCE9C00FFCE3100FF9C3100FF9C3100FF633100FFFF
      FF00CECEFF00CE9C9C008484840063313100000000009C9C9C009C9C9C00CECE
      CE00CECECE0000000000C6C6C6009CADAD0084848400848484009C9C9C000000
      0000000000009C9C9C00848484009C9C9C00000000009C310000CE630000CE63
      0000CE6300009C31000000000000000000009C310000CE630000CE630000CE63
      00009C310000000000000000000000000000000000009C9C9C00CECECE00CECE
      CE00CECECE009C9C9C0000000000000000009C9C9C00CECECE00CECECE00CECE
      CE009C9C9C00000000000000000000000000000000009C9C9C00B5B5B500FFCE
      CE00FFFFFF00CEFFFF00FFCE9C00FF9C3100FFFFCE00FFFFFF00FFFFFF00CE00
      0000CE000000CE0000008484840063313100000000009C9C9C00B5B5B500CECE
      CE000000000000000000C6C6C600848484000000000000000000000000009C9C
      9C009C9C9C009C9C9C00848484009C9C9C009C310000CE630000CE630000CE63
      00009C31000000000000000000009C310000CE630000CE630000CE6300009C31
      0000000000000000000000000000000000009C9C9C00CECECE00CECECE00CECE
      CE009C9C9C0000000000000000009C9C9C00CECECE00CECECE00CECECE009C9C
      9C0000000000000000000000000000000000000000009C9C9C00CE9C9C00CECE
      CE00FFCECE00FFFFFF00FFFFFF00CECEFF00FFCE3100CECEFF00CEFFFF00CECE
      FF00FF000000CE0000008484840063313100000000009C9C9C009C9C9C00CECE
      CE00CECECE000000000000000000000000009CADAD0000000000000000000000
      00009C9C9C009C9C9C00848484009C9C9C009C310000CE630000CE630000CE63
      00009C31000000000000000000009C310000CE630000CE630000CE6300009C31
      0000000000000000000000000000000000009C9C9C00CECECE00CECECE00CECE
      CE009C9C9C0000000000000000009C9C9C00CECECE00CECECE00CECECE009C9C
      9C0000000000000000000000000000000000000000009C9C9C00B5B5B500FFCE
      CE00FFFFFF00CEFFFF00FFFFFF00FFFFFF00FFCE3100FF9C3100FF636300FF31
      3100CE000000CE0000008484840063313100000000009C9C9C00B5B5B500CECE
      CE00000000000000000000000000000000009CADAD0084848400848484009C9C
      9C009C9C9C009C9C9C00848484009C9C9C00000000009C310000CE630000CE63
      0000CE6300009C31000000000000000000009C310000CE630000CE630000CE63
      00009C310000000000000000000000000000000000009C9C9C00CECECE00CECE
      CE00CECECE009C9C9C0000000000000000009C9C9C00CECECE00CECECE00CECE
      CE009C9C9C00000000000000000000000000000000009C9C9C00CE9C9C00CECE
      CE00FFCECE00E7E7E700E7E7E700E7E7E700E7E7E700FF9C3100FF313100FF00
      0000FFCE6300CE0000008484840063313100000000009C9C9C009C9C9C00CECE
      CE00CECECE0000000000000000000000000000000000848484009C9C9C009C9C
      9C00B5B5B5009C9C9C00848484009C9C9C0000000000000000009C310000CE63
      0000CE630000CE6300009C31000000000000000000009C310000CE630000CE63
      0000CE6300009C310000000000000000000000000000000000009C9C9C00CECE
      CE00CECECE00CECECE009C9C9C0000000000000000009C9C9C00CECECE00CECE
      CE00CECECE009C9C9C000000000000000000000000009C9C9C009CADAD00CECE
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CECEFF00CECECE00CECE
      CE00CECECE00B5B5B5008484840063313100000000009C9C9C009CADAD000000
      0000000000000000000000000000000000000000000000000000CECECE00CECE
      CE00CECECE00B5B5B500848484009C9C9C000000000000000000000000009C31
      0000CE630000CE630000CE6300009C31000000000000000000009C310000CE63
      0000CE630000CE6300009C310000000000000000000000000000000000009C9C
      9C00CECECE00CECECE00CECECE009C9C9C0000000000000000009C9C9C00CECE
      CE00CECECE00CECECE009C9C9C0000000000000000009C9C9C00CEFFFF00636B
      7300313131006331310063313100636B73009C6363009C9C9C00CECECE00FFFF
      FF00FFCECE00B5B5B5008484840063313100000000009C9C9C00000000009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00CECECE000000
      0000CECECE00B5B5B500848484009C9C9C000000000000000000000000000000
      00009C310000CE630000CE630000CE6300009C31000000000000000000009C31
      0000CE630000CE630000CE6300009C3100000000000000000000000000000000
      00009C9C9C00CECECE00CECECE00CECECE009C9C9C0000000000000000009C9C
      9C00CECECE00CECECE00CECECE009C9C9C00000000009C9C9C00CEFFFF000063
      9C009C9CCE00CECEFF009C9CCE0063313100FFFFFF00CECE9C00CECE9C00636B
      7300B5B5B500CECECE008484840063313100000000009C9C9C00000000009C9C
      9C009CADAD00000000009CADAD009C9C9C0000000000C6C6C600C6C6C6009C9C
      9C00B5B5B500CECECE00848484009C9C9C000000000000000000000000000000
      0000000000009C3100009C3100009C3100009C31000000000000000000000000
      00009C3100009C3100009C3100009C3100000000000000000000000000000000
      0000000000009C9C9C009C9C9C009C9C9C009C9C9C0000000000000000000000
      00009C9C9C009C9C9C009C9C9C009C9C9C0000000000000000009C9C9C000063
      9C00FFFFFF00CECEFF00CECEFF000031630063313100FFFFFF00FFFFCE00CECE
      9C00633131009CADAD00848484006331310000000000000000009C9C9C009C9C
      9C000000000000000000000000009C9C9C009C9C9C000000000000000000C6C6
      C6009C9C9C009CADAD00848484009C9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C0000639C00FFFFFF00003163000084840000CE630063313100FFFFFF006331
      3100003163009C6363009C636300000000000000000000000000000000009C9C
      9C009C9C9C00000000009C9C9C009C9C9C009C9C9C009C9C9C00000000009C9C
      9C009C9C9C009C9C9C009C9C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000639C009C63630000CECE00313131009C636300633131009C63
      63009C6363000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C009C9C9C00B5B5B5009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063CEFF00319CCE00319C
      CE00319CCE00319CCE00319CCE00319CCE00319CCE00319CCE00319CCE00319C
      CE00319CCE0063CEFF00000000000000000000000000B5B5B5009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C00B5B5B500000000000000000000000000000000009C3100009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C31000000000000000000000000000000000000000000009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C0000000000000000000000000063CEFF00319CCE0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF00319CCE0063CEFF0000000000B5B5B5009C9C9C00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE009C9C9C00B5B5B5000000000000000000CE9C6300FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00CE9C
      6300CE9C63009C310000000000000000000000000000B5B5B500CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00B5B5
      B500B5B5B5009C9C9C000000000000000000319CCE0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00319CCE0000316300319CCE0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00319CCE00000000009C9C9C00CECECE00CECECE00CECE
      CE00CECECE00CECECE009C9C9C00636363009C9C9C00CECECE00CECECE00CECE
      CE00CECECE00CECECE009C9C9C0000000000CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      63009C310000CE9C63009C31000000000000B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B5009C9C9C00B5B5B5009C9C9C0000000000319CCE0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000316300003163000031630000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00319CCE00000000009C9C9C00CECECE00CECECE00CECE
      CE00CECECE00CECECE00636363006363630063636300CECECE00CECECE00CECE
      CE00CECECE00CECECE009C9C9C0000000000CE9C6300FFFFFF00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00CE9C63009C3100009C31000000000000B5B5B50000000000CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00B5B5B5009C9C9C009C9C9C0000000000319CCE0063CEFF0000FFFF0000FF
      FF0000FFFF0000FFFF00319CCE0000316300319CCE0000FFFF0000FFFF0000FF
      FF0000FFFF0063CEFF00319CCE00000000009C9C9C00B5B5B500CECECE00CECE
      CE00CECECE00CECECE009C9C9C00636363009C9C9C00CECECE00CECECE00CECE
      CE00CECECE00B5B5B5009C9C9C0000000000CE9C6300FFFFFF00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C0000CE0000009C0000FFCE9C000000FF000000CE00FFCE
      9C00CE9C6300CE9C63009C31000000000000B5B5B50000000000CECECE00CECE
      CE00CECECE00CECECE00B5B5B5009C9C9C00CECECE00B5B5B5009C9C9C00CECE
      CE00B5B5B500B5B5B5009C9C9C000000000063CEFF00319CCE0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF00319CCE0063CEFF0000000000B5B5B5009C9C9C00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE009C9C9C00B5B5B50000000000CE9C6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9C6300CE9C6300CE9C63009C310000B5B5B50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5B5B500B5B5B500B5B5B5009C9C9C0000000000319CCE0063CEFF0000FF
      FF0000FFFF0000FFFF0063CEFF000031630063CEFF0000FFFF0000FFFF0000FF
      FF0063CEFF00319CCE000000000000000000000000009C9C9C00B5B5B500CECE
      CE00CECECE00CECECE00B5B5B50063636300B5B5B500CECECE00CECECE00CECE
      CE00B5B5B5009C9C9C000000000000000000CE9C6300FFFFFF00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00CE9C6300CE9C6300CE9C63009C310000B5B5B50000000000CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00B5B5B500B5B5B500B5B5B5009C9C9C000000000063CEFF00319CCE0000FF
      FF0000FFFF0000FFFF00319CCE0000316300319CCE0000FFFF0000FFFF0000FF
      FF00319CCE0063CEFF00000000000000000000000000B5B5B5009C9C9C00CECE
      CE00CECECE00CECECE009C9C9C00636363009C9C9C00CECECE00CECECE00CECE
      CE009C9C9C00B5B5B500000000000000000000000000CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300FFCE
      9C00FFCE9C00CE9C6300CE9C63009C31000000000000B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500CECE
      CE00CECECE00B5B5B500B5B5B5009C9C9C000000000000000000319CCE0063CE
      FF0000FFFF0000FFFF0031639C000031630031639C0000FFFF0000FFFF0063CE
      FF00319CCE0000000000000000000000000000000000000000009C9C9C00B5B5
      B500CECECE00CECECE00848484006363630084848400CECECE00CECECE00B5B5
      B5009C9C9C000000000000000000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C
      6300FFCE9C00FFCE9C00CE9C63009C3100000000000000000000B5B5B5000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500CECECE00CECECE00B5B5B5009C9C9C00000000000000000063CEFF00319C
      CE0000FFFF0000FFFF0000316300003163000031630000FFFF0000FFFF00319C
      CE0063CEFF000000000000000000000000000000000000000000B5B5B5009C9C
      9C00CECECE00CECECE00636363006363630063636300CECECE00CECECE009C9C
      9C00B5B5B500000000000000000000000000000000000000000000000000CE9C
      6300FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFFFF00CE9C
      6300CE9C6300CE9C63009C31000000000000000000000000000000000000B5B5
      B50000000000CECECE00CECECE00CECECE00CECECE00CECECE0000000000B5B5
      B500B5B5B500B5B5B5009C9C9C0000000000000000000000000000000000319C
      CE0063CEFF0000FFFF0000316300003163000031630000FFFF0063CEFF00319C
      CE00000000000000000000000000000000000000000000000000000000009C9C
      9C00B5B5B500CECECE00636363006363630063636300CECECE00B5B5B5009C9C
      9C0000000000000000000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9C6300000000000000000000000000000000000000000000000000B5B5
      B500000000000000000000000000000000000000000000000000000000000000
      0000B5B5B50000000000000000000000000000000000000000000000000063CE
      FF00319CCE0000FFFF00319CCE0000316300319CCE0000FFFF00319CCE0063CE
      FF0000000000000000000000000000000000000000000000000000000000B5B5
      B5009C9C9C00CECECE009C9C9C00636363009C9C9C00CECECE009C9C9C00B5B5
      B500000000000000000000000000000000000000000000000000000000000000
      0000CE9C6300FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFF
      FF00CE9C63000000000000000000000000000000000000000000000000000000
      0000B5B5B50000000000CECECE00CECECE00CECECE00CECECE00CECECE000000
      0000B5B5B5000000000000000000000000000000000000000000000000000000
      0000319CCE0063CEFF0000FFFF0000FFFF0000FFFF0063CEFF00319CCE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9C9C00B5B5B500CECECE00CECECE00CECECE00B5B5B5009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C630000000000000000000000000000000000000000000000
      0000B5B5B5000000000000000000000000000000000000000000000000000000
      000000000000B5B5B50000000000000000000000000000000000000000000000
      000063CEFF00319CCE00319CCE00319CCE00319CCE00319CCE0063CEFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5B5B5009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00B5B5B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C630000000000000000000000000000000000000000000000
      000000000000B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B50000000000000000000000000000000000000000000000
      0000000000000000000063CEFF0063CEFF0063CEFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5B5B500B5B5B500B5B5B50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C3100009C310000CE6300009C310000CE6300009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C009C9C9C00CECECE009C9C9C00CECECE009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C3100009C310000CE6300009C310000CE6300009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C009C9C9C00CECECE009C9C9C00CECECE009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C310000CE6300009C310000CE6300009C3100009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C00CECECE009C9C9C00CECECE009C9C9C009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C310000CE6300009C310000CE6300009C3100009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C00CECECE009C9C9C00CECECE009C9C9C009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C3100009C310000CE6300009C310000CE6300009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C009C9C9C00CECECE009C9C9C00CECECE009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C3100009C310000CE6300009C310000CE6300009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C009C9C9C00CECECE009C9C9C00CECECE009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C009C3100009C3100009C3100009C3100009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C009C3100009C3100009C3100009C3100009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00CECECE009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00CECECE009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00CECECE009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00CECECE009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00CECECE009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00CECECE009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00CECECE009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00CECECE009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00CECECE009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00CECECE009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063636300636363006363630063636300000000000000
      0000000000000000000000000000636363000000000000000000000000000000
      000000000000000000009C9C9C009C9C9C009C9C9C009C9C9C00000000000000
      00000000000000000000000000009C9C9C000000000000000000000000000000
      0000000000000000000063636300636363006363630063636300000000000000
      0000000000000000000000000000636363000000000000000000000000000000
      000000000000000000009C9C9C009C9C9C009C9C9C009C9C9C00000000000000
      00000000000000000000000000009C9C9C000000000063636300636363000000
      000000000000636363009C9C9C009C9C9C009C9C9C009C9C9C00636363000000
      000000000000000000006363630063636300000000009C9C9C009C9C9C000000
      0000000000009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C000000
      000000000000000000009C9C9C009C9C9C000000000063636300636363000000
      000000000000636363009C9C9C009C9C9C009C9C9C009C9C9C00636363000000
      000000000000000000006363630063636300000000009C9C9C009C9C9C000000
      0000000000009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C000000
      000000000000000000009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C006363
      6300636363009C9C9C00CECECE00CECECE00CECECE009C9C9C00636363006363
      63006363630063636300CECECE00636363009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C00CECECE00CECECE00CECECE009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C00CECECE009C9C9C009C9C9C009C9C9C009C9C9C006363
      6300636363009C9C9C00CECECE00CECECE00CECECE009C9C9C00636363006363
      63006363630063636300CECECE00636363009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C00CECECE00CECECE00CECECE009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C00CECECE009C9C9C009C9C9C00FFFFFF00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE009C9C9C009C9C
      9C009C9C9C00CECECE0063636300000000009C9C9C00FFFFFF00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE009C9C9C009C9C
      9C009C9C9C00CECECE009C9C9C00000000009C9C9C00FFFFFF00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE009C9C9C009C9C
      9C009C9C9C00CECECE0063636300000000009C9C9C00FFFFFF00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE009C9C9C009C9C
      9C009C9C9C00CECECE009C9C9C00000000009C9C9C00FFFFFF00CECECE00CECE
      CE00FFFFFF00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE009C9C9C0000000000000000009C9C9C00FFFFFF00CECECE00CECE
      CE00FFFFFF00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE009C9C9C0000000000000000009C9C9C00FFFFFF00CECECE00CECE
      CE00FFFFFF00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE009C9C9C0000000000000000009C9C9C00FFFFFF00CECECE00CECE
      CE00FFFFFF00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE009C9C9C0000000000000000009C9C9C00FFFFFF00FFFFFF009C9C
      9C009C9C9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C9C
      9C009C9C9C000000000000000000000000009C9C9C00FFFFFF00FFFFFF009C9C
      9C009C9C9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C9C
      9C009C9C9C000000000000000000000000009C9C9C00FFFFFF00FFFFFF009C9C
      9C009C9C9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C9C
      9C009C9C9C000000000000000000000000009C9C9C00FFFFFF00FFFFFF009C9C
      9C009C9C9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C9C
      9C009C9C9C00000000000000000000000000000000009C9C9C009C9C9C000000
      0000000000009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C000000
      000000000000000000000000000000000000000000009C9C9C009C9C9C000000
      0000000000009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C000000
      000000000000000000000000000000000000000000009C9C9C009C9C9C000000
      0000000000009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C000000
      000000000000000000000000000000000000000000009C9C9C009C9C9C000000
      0000000000009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C000000
      000000000000000000000000000000000000000000000000000000000000E7EF
      F700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CECECE00C6C6C600E7E7
      E700000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CECECE00C6C6C600E7E7
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700C6C6
      C6009C9C9C0084848400848484009C9C9C009CADAD00C6C6C600CECECE00E7EF
      F70000000000000000000000000000000000000000000000000000000000C6C6
      C6009C9C9C009C9C9C00848484009C9C9C00CECECE00C6C6C600CECECE000000
      000000000000000000000000000000000000CECECE00639C9C0063639C009C9C
      9C00E7E7E7000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE00B5B5B5009C9C9C009C9C
      9C00E7E7E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CECECE00CECE
      CE00CECE9C00CECE9C00CECE9C009C9C9C00848484006363630084848400B5B5
      B500E7E7E7000000000000000000000000000000000000000000CECECE00CECE
      CE00C6C6C600C6C6C600C6C6C6009C9C9C00848484009C9C9C0084848400B5B5
      B500000000000000000000000000000000000000000063CEFF00319CCE006363
      9C009C9C9C00E7E7E70000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CECECE00B5B5B5009C9C
      9C009C9C9C00E7E7E70000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700FFFFCE00F7EF
      BD00F7EFBD00CECE9C00EFC6DE00FFCE9C00F7EFBD00F7EFBD00848484006363
      63009C9C9C00E7E7E70000000000000000000000000000000000000000000000
      000000000000C6C6C600CECECE00C6C6C6000000000000000000848484009C9C
      9C009C9C9C0000000000000000000000000000000000CECEFF0063CEFF00319C
      CE0063639C009C9C9C00E7E7E700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700CECECE00B5B5
      B5009C9C9C009C9C9C00E7E7E700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFCE9C00F7EFBD00F7EF
      BD00CECECE00EFC6DE00009C0000CECECE00CECECE00CECECE00FFFFCE00B5B5
      B500636B7300CECECE00000000000000000000000000C6C6C600000000000000
      0000CECECE00CECECE009C9C9C00CECECE00CECECE00CECECE0000000000B5B5
      B5009C9C9C00CECECE0000000000000000000000000000000000CECEFF0063CE
      FF00319CCE0063639C009C9C9C00E7E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700CECE
      CE00B5B5B5009C9C9C009C9C9C00E7E7E7000000000000000000000000000000
      00000000000000000000000000000000000000000000FFCE9C00FFCE9C00E7E7
      E700EFC6DE00EFC6DE00009C0000009C0000009C0000009C00009CCE9C00F7EF
      BD0084848400B5B5B500E7EFF7000000000000000000C6C6C600C6C6C6000000
      0000CECECE00CECECE009C9C9C009C9C9C009C9C9C009C9C9C00B5B5B5000000
      000084848400B5B5B5000000000000000000000000000000000000000000CECE
      FF0063CEFF00319CCE0063639C00CECECE00FFCECE00CE9C9C00CE9C9C00CE9C
      9C00CECE9C00E7E7E7000000000000000000000000000000000000000000E7E7
      E700CECECE00B5B5B5009C9C9C00CECECE00E7E7E7009C9C9C009C9C9C009C9C
      9C00B5B5B500E7E7E7000000000000000000E7E7E700FFCE9C00E7E7E700E7E7
      E700EFC6DE00C6C6C600009C0000009C000063CE6300CEFFCE0031CE3100FFCE
      9C0084848400B5B5B500E7EFF7000000000000000000C6C6C600000000000000
      0000CECECE00C6C6C6009C9C9C009C9C9C00CECECE00000000009C9C9C00C6C6
      C60084848400B5B5B50000000000000000000000000000000000000000000000
      0000CECEFF0063CEFF00B5B5B500CE9C9C00CECE9C00F7EFBD00FFFFCE00F7EF
      BD00F7EFBD00CE9C9C00EFC6DE00000000000000000000000000000000000000
      0000E7E7E700CECECE00B5B5B5009C9C9C00B5B5B500CECECE00CECECE00CECE
      CE00CECECE009C9C9C00E7E7E70000000000F7EFBD00F7EFBD00FFFFFF00FFFF
      FF00CE9C9C00EFC6DE009CCE9C00CECE9C0031CE31009CCE9C009CCE9C00CECE
      9C009C9C9C009C9C9C00E7E7E70000000000CECECE0000000000000000000000
      00009C9C9C00CECECE00B5B5B500C6C6C6009C9C9C00B5B5B500B5B5B500C6C6
      C6009C9C9C009C9C9C0000000000000000000000000000000000000000000000
      000000000000E7E7E700CE9C9C00FFCE9C00FFFFCE00FFFFCE00FFFFCE00FFFF
      FF00FFFFFF00FFFFFF00CE9C9C00E7E7E7000000000000000000000000000000
      000000000000E7E7E7009C9C9C00E7E7E700CECECE00CECECE00CECECE00E7E7
      E700E7E7E700E7E7E7009C9C9C00E7E7E700F7EFBD00FFFFCE00FFFFFF00EFC6
      DE00CE9C9C00EFC6DE00639C3100FFFFFF0063CE6300009C0000009C0000F7EF
      BD009C9C9C009C9C9C00E7E7E70000000000CECECE000000000000000000CECE
      CE009C9C9C00CECECE009C9C9C0000000000CECECE009C9C9C009C9C9C000000
      00009C9C9C009C9C9C0000000000000000000000000000000000000000000000
      000000000000FFCECE00CECE9C00FFFFCE00F7EFBD00FFFFCE00FFFFCE00FFFF
      FF00FFFFFF00FFFFFF00F7EFBD00CECE9C000000000000000000000000000000
      000000000000E7E7E700B5B5B500CECECE00CECECE00CECECE00CECECE00E7E7
      E700E7E7E700E7E7E700CECECE00B5B5B500F7EFBD00FFFFFF00FFFFFF00EFC6
      DE00EFC6DE00EFC6DE009CCE9C00009C0000319C3100009C0000009C0000F7EF
      BD00CECE9C0084848400E7E7E70000000000CECECE000000000000000000CECE
      CE00CECECE00CECECE00B5B5B5009C9C9C009C9C9C009C9C9C009C9C9C000000
      0000C6C6C6008484840000000000000000000000000000000000000000000000
      000000000000CECE9C00FFCE9C00F7EFBD00F7EFBD00FFFFCE00FFFFCE00FFFF
      CE00FFFFFF00FFFFFF00F7EFBD00CE9C9C000000000000000000000000000000
      000000000000B5B5B500E7E7E700CECECE00CECECE00CECECE00CECECE00CECE
      CE00E7E7E700E7E7E700CECECE009C9C9C00FFFFCE00FFFFCE00FFFFCE00FFFF
      FF00FFFFFF00E7EFF700E7E7E7009CCE9C009CCE9C0063CE6300009C0000FFFF
      CE00C6C6C60084848400CECECE0000000000CECECE0000000000000000000000
      0000000000000000000000000000B5B5B500B5B5B500CECECE009C9C9C000000
      0000C6C6C60084848400CECECE00000000000000000000000000000000000000
      000000000000CE9C9C00F7EFBD00F7EFBD00F7EFBD00F7EFBD00FFFFCE00FFFF
      CE00FFFFCE00FFFFCE00FFFFCE00CE9C9C000000000000000000000000000000
      0000000000009C9C9C00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE009C9C9C00FFFFCE00FFFFCE00FFFFCE00FFFF
      CE00E7EFF700E7EFF700E7EFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFCE00636B7300CECECE0000000000CECECE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C00CECECE00000000000000000000000000000000000000
      000000000000CECE9C00F7EFBD00FFFFCE00F7EFBD00F7EFBD00F7EFBD00FFFF
      CE00FFFFCE00FFFFCE00F7EFBD00CE9C9C000000000000000000000000000000
      000000000000B5B5B500CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE009C9C9C00F7EFBD00F7EFBD00F7EFBD00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7EFF700F7EFBD00FFFF
      CE00FFFFCE00636B7300CECECE000000000000000000CECECE00CECECE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C00CECECE00000000000000000000000000000000000000
      000000000000FFCECE00CECE9C00FFFFFF00FFFFFF00F7EFBD00F7EFBD00F7EF
      BD00F7EFBD00FFFFCE00CECE9C00CECE9C000000000000000000000000000000
      000000000000E7E7E700B5B5B500E7E7E700E7E7E700CECECE00CECECE00CECE
      CE00CECECE00CECECE00B5B5B500B5B5B50000000000E7E7E700E7E7E7009CCE
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00E7EFF7009CCEFF00FFCE9C00FFCE
      9C00FFFFCE0084848400E7E7E70000000000000000000000000000000000CECE
      CE000000000000000000000000000000000000000000CECECE00C6C6C600C6C6
      C600000000008484840000000000000000000000000000000000000000000000
      000000000000E7E7E700CE9C9C00EFC6DE00FFFFFF00FFFFCE00F7EFBD00F7EF
      BD00F7EFBD00FFCE9C00CE9C9C00E7E7E7000000000000000000000000000000
      000000000000E7E7E7009C9C9C00E7E7E700E7E7E700CECECE00CECECE00CECE
      CE00CECECE00E7E7E7009C9C9C00E7E7E700000000000000000000000000E7EF
      F7009CCEFF009CCEFF009CCEFF00CEFFFF00CEFFFF009CCEFF00FFCE9C00FFCE
      9C00FFCE9C00C6C6C600E7EFF700000000000000000000000000000000000000
      0000CECECE00CECECE00CECECE000000000000000000CECECE00C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      00000000000000000000FFCECE00CE9C9C00FFCECE00F7EFBD00F7EFBD00F7EF
      BD00CECE9C00CE9C9C00FFCECE00000000000000000000000000000000000000
      00000000000000000000E7E7E7009C9C9C00E7E7E700CECECE00CECECE00CECE
      CE00B5B5B5009C9C9C00E7E7E700000000000000000000000000000000000000
      00000000000000000000000000009CCEFF009CCEFF009CCEFF00F7EFBD00F7EF
      BD00E7E7E700E7EFF70000000000000000000000000000000000000000000000
      0000000000000000000000000000CECECE00CECECE00CECECE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7E7E700CECE9C00CE9C9C00CE9C9C00CE9C
      9C00CE9C9C00E7E7E70000000000000000000000000000000000000000000000
      0000000000000000000000000000E7E7E700B5B5B5009C9C9C009C9C9C009C9C
      9C009C9C9C00E7E7E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7FFFF00C6C6
      C6008484000084848400848484008484000084840000C6C6C600C6C6C600F7FF
      FF0000000000000000000000000000000000000000000000000000000000C6C6
      C60084840000848400008484840084840000C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000084000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6DEC600C6DEC600C6DEC60084840000848484008484840084848400C6C6
      C600F7FFFF000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60084840000848484008484000084848400C6C6
      C6000000000000000000000000000000000000000000000000000000000000FF
      0000008400000084000000840000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600848400008484000084848400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7FFFF00FFFFFF00C6DE
      C600C6DEC600C6DEC600C6C6C600C6DEC600C6DEC600C6DEC600848484008484
      840084840000F7FFFF0000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C6000000000000000000848484008484
      000084840000000000000000000000000000000000000000000000FF00000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6008484
      0000848400008484000084840000848484000000000000000000000000000000
      00000000000000000000000000000000000000000000C6DEC600C6DEC600C6DE
      C600C6C6C600C6C6C60000840000C6C6C600C6C6C600C6C6C600FFFFFF00C6C6
      C60084848400C6C6C600000000000000000000000000C6C6C600000000000000
      0000C6C6C600C6C6C60084840000C6C6C600C6C6C600C6C6C60000000000C6C6
      C60084840000C6C6C60000000000000000000000000000FF0000008400000084
      0000008400000084000000840000008400000084000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600848400008484
      0000848400008484000084840000848400008484840000000000000000000000
      00000000000000000000000000000000000000000000C6DEC600C6DEC600F7FF
      FF00C6C6C600C6C6C6000084000000840000008400000084000084840000C6DE
      C60084848400C6C6C600F7FFFF000000000000000000C6C6C600C6C6C6000000
      0000C6C6C600C6C6C60084840000848400008484000084840000C6C6C6000000
      000084848400C6C6C60000000000000000000000000000FF0000008400000084
      00000084000000FF000000840000008400000084000000840000000000000000
      00000000000000000000000000000000000000000000C6C6C600848400008484
      000084848400C6C6C60084840000848400008484000084848400000000000000
      000000000000000000000000000000000000F7FFFF00C6DEC600F7FFFF00F7FF
      FF00C6C6C600C6C6C600008400000084000084848400C6DEC60000FF0000C6DE
      C60084848400C6C6C600F7FFFF000000000000000000C6C6C600000000000000
      0000C6C6C600C6C6C6008484000084840000C6C6C6000000000084840000C6C6
      C60084848400C6C6C60000000000000000000000000000FF0000008400000084
      0000000000000000000000FF0000008400000084000000840000008400000000
      00000000000000000000000000000000000000000000C6C6C600848400008484
      84000000000000000000C6C6C600848400008484000084840000848484000000
      000000000000000000000000000000000000C6DEC600C6DEC600FFFFFF00FFFF
      FF0084840000C6C6C60084840000C6DEC60000FF00008484000084840000C6DE
      C6008484000084840000F7FFFF0000000000C6C6C60000000000000000000000
      000084840000C6C6C600C6C6C600C6C6C60084840000C6C6C600C6C6C600C6C6
      C600848400008484000000000000000000000000000000FF0000008400000000
      000000000000000000000000000000FF00000084000000840000008400000084
      00000000000000000000000000000000000000000000C6C6C600848484000000
      0000000000000000000000000000C6C6C6008484000084840000848400008484
      840000000000000000000000000000000000C6DEC600FFFFFF00FFFFFF00C6C6
      C60084840000C6C6C60084840000FFFFFF00848484000084000000840000C6DE
      C6008484000084840000F7FFFF0000000000C6C6C6000000000000000000C6C6
      C60084840000C6C6C6008484000000000000C6C6C60084840000848400000000
      0000848400008484000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000840000008400000084
      0000008400000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60084840000848400008484
      000084848400000000000000000000000000C6DEC600FFFFFF00FFFFFF00C6C6
      C600C6C6C600C6C6C6008484000000840000008400000084000000840000C6DE
      C600C6DEC60084848400F7FFFF0000000000C6C6C6000000000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600848400008484000084840000848400000000
      0000C6C6C6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000008400000084
      0000008400000084000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600848400008484
      000084840000848484000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7FFFF00F7FFFF0084840000848400008484840000840000FFFF
      FF00C6C6C60084848400C6C6C60000000000C6C6C60000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C600C6C6C600848400000000
      0000C6C6C60084848400C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000084
      0000008400000084000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6008484
      000084840000848484000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7FFFF00F7FFFF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084848400C6C6C60000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084840000C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000008400000084000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60084840000848484000000000000000000C6DEC600C6DEC600C6DEC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00C6DEC600FFFF
      FF00FFFFFF0084848400C6C6C6000000000000000000C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084840000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000084000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C60084848400000000000000000000000000F7FFFF00F7FFFF00C6C6
      C600F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00C6C6C600C6DEC600C6DE
      C600FFFFFF0084848400F7FFFF0000000000000000000000000000000000C6C6
      C6000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7FF
      FF00C6C6C600C6C6C600C6C6C600F7FFFF00F7FFFF00C6C6C600C6DEC600C6DE
      C600C6DEC600C6C6C600F7FFFF00000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C6000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C600C6C6C600C6DEC600C6DE
      C600F7FFFF00F7FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000848400008484
      0000848400008484000084840000848400008484000084840000848400008484
      0000848400008484000084840000000000000000000000848400008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400848400000000000000000000000000000000000084840000848400008484
      0000848400008484000084840000848400008484000084840000848400008484
      0000C6C6C6000000000000000000000000000000000084000000848400008484
      000084000000F7FFFF008484000084000000F7FFFF00F7FFFF00F7FFFF008400
      0000848400008484000084000000000000000000000084840000C6C6C600C6C6
      C60084840000F7FFFF00C6C6C60084840000F7FFFF00F7FFFF00F7FFFF008484
      0000C6C6C600C6C6C60084840000000000000084840000848400C6DEC600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000084
      8400008484000000000000000000000000008484000084840000F7FFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008484
      0000848400000000000000000000000000000000000084000000848400008484
      000084000000F7FFFF008484000084000000F7FFFF00F7FFFF00F7FFFF008400
      0000848400008484000084000000000000000000000084840000C6C6C600C6C6
      C60084840000F7FFFF00C6C6C60084840000F7FFFF00F7FFFF00F7FFFF008484
      0000C6C6C600C6C6C60084840000000000000084840000848400C6C6C600C6DE
      C600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6C6
      C600008484000084840000000000000000008484000084840000C6C6C600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00C6C6
      C600848400008484000000000000000000000000000084000000848400008484
      000084000000F7FFFF008484000084000000F7FFFF00F7FFFF00F7FFFF008400
      0000848400008484000084000000000000000000000084840000C6C6C600C6C6
      C60084840000F7FFFF00C6C6C60084840000F7FFFF00F7FFFF00F7FFFF008484
      0000C6C6C600C6C6C60084840000000000000084840000848400C6C6C600C6DE
      C600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6C6
      C600848400000084840000000000000000008484000084840000C6C6C600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00C6C6
      C600C6C6C6008484000000000000000000000000000084000000848400008484
      000084000000F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF008400
      0000848400008484000084000000000000000000000084840000C6C6C600C6C6
      C60084840000F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF008484
      0000C6C6C600C6C6C600848400000000000000848400C6C6C60000848400C6DE
      C600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6C6
      C600C6DEC60000848400008484000000000084840000C6C6C60084840000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00C6C6
      C600F7FFFF008484000084840000000000000000000084000000848400008484
      0000848400008400000084000000840000008400000084000000840000008484
      0000848400008484000084000000000000000000000084840000C6C6C600C6C6
      C600C6C6C600848400008484000084840000848400008484000084840000C6C6
      C600C6C6C600C6C6C600848400000000000000848400C6C6C600848400008484
      0000C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6C6
      C600C6DEC60084840000008484000000000084840000C6C6C600C6C6C600C6C6
      C600F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00C6C6
      C600F7FFFF00C6C6C60084840000000000000000000084000000848400008484
      0000848400008484000084840000848400008484000084840000848400008484
      0000848400008484000084000000000000000000000084840000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600848400000000000000848400C6DEC600C6C6C6000084
      8400F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00C6DE
      C600F7FFFF00F7FFFF00008484000000000084840000F7FFFF00C6C6C6008484
      0000F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF0084840000000000000000000084000000848400008484
      0000840000008400000084000000840000008400000084000000840000008400
      0000848400008484000084000000000000000000000084840000C6C6C600C6C6
      C600848400008484000084840000848400008484000084840000848400008484
      0000C6C6C600C6C6C600848400000000000000848400C6DEC600C6DEC600C6C6
      C600008484000084840000848400008484000084840000848400008484000084
      84000084840000848400C6C6C6000000000084840000F7FFFF00F7FFFF00C6C6
      C600848400008484000084840000848400008484000084840000848400008484
      00008484000084840000C6C6C600000000000000000084000000848400008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000008484000084000000000000000000000084840000C6C6C6008484
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084840000C6C6C600848400000000000000848400F7FFFF00C6DEC600C6DE
      C600C6DEC600C6DEC600F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF000084
      84000000000000000000000000000000000084840000F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF008484
      0000000000000000000000000000000000000000000084000000848400008400
      0000FFFFFF00840000008400000084000000840000008400000084000000FFFF
      FF00840000008484000084000000000000000000000084840000C6C6C6008484
      0000FFFFFF00848400008484000084840000848400008484000084840000FFFF
      FF0084840000C6C6C60084840000000000000000000000848400F7FFFF00F7FF
      FF00F7FFFF00F7FFFF0000848400008484000084840000848400008484000000
      0000000000000000000000000000000000000000000084840000F7FFFF00F7FF
      FF00F7FFFF00F7FFFF0084840000848400008484000084840000848400000000
      0000000000000000000000000000000000000000000084000000848400008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000008484000084000000000000000000000084840000C6C6C6008484
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084840000C6C6C60084840000000000000000000000000000008484000084
      8400008484000084840000000000000000000000000000000000000000000000
      0000000000008400000084000000840000000000000000000000848400008484
      0000848400008484000000000000000000000000000000000000000000000000
      0000000000008484000084840000848400000000000084000000F7FFFF008400
      0000FFFFFF00840000008400000084000000840000008400000084000000FFFF
      FF00840000008400000084000000000000000000000084840000F7FFFF008484
      0000FFFFFF00848400008484000084840000848400008484000084840000FFFF
      FF00848400008484000084840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084840000848400000000000084000000848400008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000008484000084000000000000000000000084840000C6C6C6008484
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084840000C6C6C60084840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000008400000000000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000084840000000000000000
      0000000000008484000000000000848400000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000084840000848400008484
      0000848400008484000084840000848400008484000084840000848400008484
      0000848400008484000084840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848400008484
      0000848400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484000000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484000084840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084840000008484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084840000848400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF0000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF0084848400848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084840000C6DEC6000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084840000F7FFFF008484000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484000000848400008484000084840000FFFF0000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084840000848400008484000084840000C6C6C60084840000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400FFFFFF008484840084848400FFFFFF008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084840000C6DEC60000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084840000F7FFFF00C6C6C600C6C6C600C6C6C600C6C6C600848400000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000848484000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400000000000000
      0000000000000000000000000000848400000000000000000000000000000000
      00000000000084840000C6DEC60000FFFF000084840084840000848400008484
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084840000F7FFFF00C6C6C6008484000084840000848400008484
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF000000
      0000FFFFFF000000000000000000C6C6C6000000000000000000000000000000
      00000000000000000000848484000084840084848400FFFFFF00FFFFFF008484
      8400FFFFFF008484840084848400C6C6C6008484840084848400848484000000
      0000000000000000000084840000C6C6C6000000000000000000000000000000
      00000000000084840000C6DEC60000FFFF0000FFFF0000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084840000F7FFFF00C6C6C600C6C6C60084840000000000000000
      00000000000000000000000000000000000084848400FFFFFF00000000000000
      0000FFFFFF0084848400C6C6C600FFFFFF008484840000000000FFFFFF008484
      8400000000008484840000848400C6C6C60084848400FFFFFF00848484008484
      8400FFFFFF0084848400C6C6C600FFFFFF008484840084848400FFFFFF008484
      84000000000084840000C6C6C600FFFFFF000000000000000000848400000084
      8400008484000084840000848400C6DEC60000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000848400008484
      0000848400008484000084840000F7FFFF00C6C6C600C6C6C600848400000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000848484000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF008484840000848400C6C6C600000000008484840084848400848484008484
      8400848484008484840084848400FFFFFF0084848400FFFFFF00FFFFFF00FFFF
      FF0084840000C6C6C600FFFFFF0000000000000000000000000084840000C6DE
      C600C6DEC60000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000084
      840000000000000000000000000000000000000000000000000084840000F7FF
      FF00F7FFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008484
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000FFFFFF008484
      840000848400C6C6C60000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400FFFFFF008484
      0000C6C6C600FFFFFF0000000000000000000000000000000000000000008484
      0000C6DEC600C6DEC60000FFFF0000FFFF000084840084840000848400008484
      0000000000000000000000000000000000000000000000000000000000008484
      0000F7FFFF00F7FFFF00C6C6C600C6C6C6008484000084840000848400008484
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C6000000000000000000FFFFFF00000000000000000000000000848484000084
      8400C6C6C6000000000000000000000000000000000084848400C6C6C600C6C6
      C6008484840084848400FFFFFF0084848400848484008484840084840000C6C6
      C600FFFFFF000000000000000000000000000000000000000000000000008484
      0000C6DEC600C6DEC600C6DEC60000FFFF0000FFFF0000848400000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      0000F7FFFF00F7FFFF00F7FFFF00C6C6C600C6C6C60084840000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00000000008484840000848400C6C6
      C600000000000000000000000000000000000000000084848400C6C6C600FFFF
      FF0084848400FFFFFF00FFFFFF00FFFFFF008484840084840000C6C6C600FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000084840000C6DEC600C6DEC600C6DEC60000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084840000F7FFFF00F7FFFF00F7FFFF00C6C6C600C6C6C600848400000000
      0000000000000000000000000000000000000000000000000000848484008484
      84000000000000000000FFFFFF00FFFFFF008484840000848400C6C6C6000000
      0000000000000000000000000000000000000000000000000000848484008484
      84008484840084848400FFFFFF00FFFFFF0084840000C6C6C600FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084840000C6DEC600C6DEC600C6DEC60000FFFF0000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      000084840000F7FFFF00F7FFFF00F7FFFF00C6C6C600C6C6C600C6C6C6008484
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008484840000848400C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840084848400848484008484840084840000C6C6C600FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084840000C6DEC600C6DEC600C6DEC60000FFFF0000FFFF0000FF
      FF00008484000000000000000000000000000000000000000000000000000000
      00000000000084840000F7FFFF00F7FFFF00F7FFFF00C6C6C600C6C6C600C6C6
      C600848400000000000000000000000000000000000000000000000000000000
      000000000000000000008484840000848400C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840084840000C6C6C600FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484000084840000848400008484000084840000848400008484
      0000848400008484000000000000000000000000000000000000000000000000
      0000000000008484000084840000848400008484000084840000848400008484
      0000848400008484000000000000000000000000000000000000000000000000
      0000000000008484840000848400C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084840000C6C6C600FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484000084000000848400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60084840000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084840000848400008484
      0000848400008484000084840000848400008484000084840000848400008484
      0000848400008400000084000000840000000000000084840000848400008484
      0000848400008484000084840000848400008484000084840000848400008484
      0000C6C6C6008484000084840000848400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084840000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      8400840000008400000084000000848400000000000084840000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848400008484000084840000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084840000FFFFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF008484840084848400848484008400
      000084000000840000008484000000000000000000008484000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6008484840084848400848484008484
      00008484000084840000C6C6C60000000000000000000000FF00000084000000
      84000000840000000000000000000000000000000000000000000000FF000000
      84000000840000008400000000000000000000000000C6C6C600848484008484
      8400848484000000000000000000000000000000000000000000C6C6C6008484
      8400848484008484840000000000000000000000000084840000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7FFFF0084848400FFFFFF00FFFFFF00FFFFFF00C6DE
      C600840000008484000000000000000000000000000084840000000000000000
      00000000000000000000C6C6C60084840000F7FFFF00F7FFFF00FFFFFF00F7FF
      FF0084840000C6C6C6000000000000000000000000000000FF000000FF000000
      FF000000FF00000084000000000000000000000000000000FF000000FF000000
      FF000000FF0000008400000000000000000000000000C6C6C600848400008484
      00008484000084848400000000000000000000000000C6C6C600848400008484
      0000848400008484840000000000000000000000000084840000FFFFFF00F7FF
      FF00F7FFFF00F7FFFF0084840000C6DEC600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084848400000000000000000000000000000000008484000000000000C6C6
      C600C6C6C600C6C6C60084840000F7FFFF00F7FFFF00F7FFFF00F7FFFF00FFFF
      FF008484840000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000008400000000000000FF000000FF000000FF000000
      FF00000084000000000000000000000000000000000000000000C6C6C6008484
      000084840000848400008484840000000000C6C6C60084840000848400008484
      0000848484000000000000000000000000000000000084840000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084840000C6DEC600FFFFFF00C6DEC600FFFFFF00FFFF
      FF00848484000000000000000000000000000000000084840000000000000000
      0000000000000000000084840000F7FFFF00FFFFFF00F7FFFF00F7FFFF00F7FF
      FF00848484000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF00000084000000FF000000FF000000FF000000
      840000000000000000000000000000000000000000000000000000000000C6C6
      C600848400008484000084840000848484008484000084840000848400008484
      8400000000000000000000000000000000000000000084840000FFFFFF00F7FF
      FF00F7FFFF00F7FFFF0084840000C6DEC600FFFFFF00FFFFFF00C6DEC600FFFF
      FF0084848400000000000000000000000000000000008484000000000000C6C6
      C600C6C6C600C6C6C60084840000F7FFFF00FFFFFF00FFFFFF00F7FFFF00F7FF
      FF00848484000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF00000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6008484000084840000848400008484000084840000848484000000
      0000000000000000000000000000000000000000000084840000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084840000C6DEC600C6DEC600C6DEC6008484
      8400848484000000000000000000000000000000000084840000000000000000
      000000000000000000000000000084840000F7FFFF00F7FFFF00F7FFFF008484
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF0000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60084840000848400008484000084848400000000000000
      0000000000000000000000000000000000000000000084840000FFFFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00848400008484000084840000F7FF
      FF0084840000000000000000000000000000000000008484000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600848400008484000084840000F7FF
      FF00848400000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF00000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6008484000084840000848400008484000084840000848484000000
      0000000000000000000000000000000000000000000084840000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848400000000000000000000000000000000000084840000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848400000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF00000084000000FF000000FF000000FF000000
      840000000000000000000000000000000000000000000000000000000000C6C6
      C600848400008484000084840000848484008484000084840000848400008484
      8400000000000000000000000000000000000000000084840000FFFFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00FFFFFF0084840000848400008484
      000084840000000000000000000000000000000000008484000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000000084840000848400008484
      00008484000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000008400000000000000FF000000FF000000FF000000
      FF00000084000000000000000000000000000000000000000000C6C6C6008484
      000084840000848400008484840000000000C6C6C60084840000848400008484
      0000848484000000000000000000000000000000000084840000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084840000F7FFFF008484
      0000000000000000000000000000000000000000000084840000000000000000
      0000000000000000000000000000000000000000000084840000F7FFFF008484
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF00000084000000000000000000000000000000FF000000FF000000
      FF000000FF0000008400000000000000000000000000C6C6C600848400008484
      00008484000084848400000000000000000000000000C6C6C600848400008484
      0000848400008484840000000000000000000000000084840000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084840000848400000000
      0000000000000000000000000000000000000000000084840000000000000000
      0000000000000000000000000000000000000000000084840000848400000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF00000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000084840000848400008484
      0000848400008484000084840000848400008484000084840000000000000000
      0000000000000000000000000000000000000000000084840000848400008484
      0000848400008484000084840000848400008484000084840000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084840000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000848400008484
      0000848400008484000084840000848400008484000084840000848400008484
      0000848400000000000000000000000000000000000084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484000084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084840000C6DEC600C6DE
      C600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC6008484
      00008484000084000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6008484000000000000000000000000000084840000C6C6C6008484
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084840000C6C6C6008484
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484000084840000848400008484
      0000848400008484000084840000848400008484000084840000848400008484
      000084000000848400008400000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60084840000C6C6C60084840000000000000000000084840000C6C6C600C6C6
      C600848400008484000084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000084840000C6C6C600C6C6
      C600848400008484000084848400848484000000000000000000000000000000
      00000000000000000000000000000000000084840000FFFFFF00C6DEC600C6DE
      C600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DE
      C60084840000840000008400000000000000C6C6C60000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600848400008484000000000000000000000000000084840000C6C6
      C600C6C6C6008484000084840000848400008484840084848400000000000000
      000000000000000000000000000000000000000000000000000084840000C6C6
      C600C6C6C6008484000084840000848400008484840084848400000000000000
      00000000000000000000000000000000000084840000FFFFFF00C6DEC600C6DE
      C600C6DEC600C6DEC60000FF000000840000C6DEC6000000FF000000FF00C6DE
      C60084840000848400008400000000000000C6C6C60000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60084840000C6C6C600C6C6C60084840000C6C6
      C600C6C6C600C6C6C6008484000000000000000000000000000084840000F7FF
      FF00C6C6C600C6C6C60084840000848400008484000084000000840000008400
      000000000000000000000000000000000000000000000000000084840000F7FF
      FF00C6C6C600C6C6C60084840000848400008484000084840000848484008484
      84000000000000000000000000000000000084840000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084840000848400008484000084000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600848400000000000000000000000000008484
      0000F7FFFF00C6C6C600C6C6C600848400008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000008484
      0000F7FFFF00C6C6C600C6C6C600848400008484000084840000848400008484
      00008484840000000000000000000000000084840000FFFFFF00C6DEC600C6DE
      C600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DE
      C60084840000848400008484000084000000C6C6C60000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848400000000000000000000000000008484
      0000FFFFFF00F7FFFF00C6C6C600840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000008484
      0000FFFFFF00F7FFFF00C6C6C600848400008484000084840000848400008484
      0000848400008484840000000000000000000000000084840000848400008484
      000084840000848400008484000084840000848400008484000084840000C6DE
      C600C6DEC60084840000848400008400000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848400000000000000000000000000000000
      000084840000FFFFFF0084000000848400008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      000084840000FFFFFF0084840000C6C6C6008484000084840000848400008484
      000084840000848400008484840000000000000000000000000084840000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      0000C6DEC600C6DEC60084840000840000000000000000000000C6C6C6000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600848400000000000000000000000000000000
      0000848400008400000084840000840000008484000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      00008484000084840000C6C6C60084840000C6C6C60084840000848400008484
      0000848400008484000084840000848484000000000000000000000000008484
      0000FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00FFFFFF008484
      000084840000848400008400000000000000000000000000000000000000C6C6
      C60000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000C6C6
      C600C6C6C600C6C6C60084840000000000000000000000000000000000000000
      0000000000008400000084000000848400008400000084840000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000008484000084840000C6C6C60084840000C6C6C600848400008484
      0000848400008484000084840000848400000000000000000000000000008484
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084840000000000000000000000000000000000000000000000000000C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008484000084000000848400008400
      0000840000008400000084000000848400000000000000000000000000000000
      000000000000848400008484000084840000C6C6C60084840000C6C6C6008484
      0000848400008484000084840000848400000000000000000000000000000000
      000084840000FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00FFFF
      FF00848400000000000000000000000000000000000000000000000000000000
      0000C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084840000840000008484
      0000840000008400000084840000848400000000000000000000000000000000
      00000000000000000000848400008484000084840000C6C6C60084840000C6C6
      C600848400008484000084840000848400000000000000000000000000000000
      000084840000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484000000000000000000000000000000000000000000000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000848400008400
      000084000000C6C6C600C6C6C600848400000000000000000000000000000000
      0000000000000000000000000000848400008484000084840000C6C6C6008484
      000084840000C6C6C600C6C6C600848400000000000000000000000000000000
      0000000000008484000084840000848400008484000084840000848400008484
      0000848400008484000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000F7FFFF00F7FFFF00C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000008484000084840000848400008484
      0000F7FFFF00F7FFFF00C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7FF
      FF00F7FFFF00C6C6C600F7FFFF00F7FFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7FF
      FF0000000000C6C6C600F7FFFF00F7FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7FFFF00F7FFFF00C6C6
      C600848400008484840084848400C6C6C600C6C6C600F7FFFF00F7FFFF000000
      00000000000000000000000000000000000000000000F7FFFF0000000000C6C6
      C600848400008484000084840000C6C6C600C6C6C60000000000F7FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848400008400000084000000848400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6008484000084840000C6C6C6000000000000000000000000000000
      000000000000000000000000000000000000F7FFFF0084840000848484008484
      000084840000FFFFFF00848484008484000084840000C6C6C600F7FFFF000000
      0000000000000000000000000000000000000000000084840000848400008484
      000084840000FFFFFF00848400008484000084840000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008484000084840000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      000084840000C6C6C600C6C6C600848400000000000000000000000000000000
      0000000000000000000000000000000000008484840084840000C6DEC600C6DE
      C600C6DEC600FFFFFF0084848400008484000084840000848400F7FFFF000000
      0000000000000000000000000000000000008484000084840000C6C6C600C6C6
      C600C6C6C600FFFFFF0084840000848400008484000084840000F7FFFF000000
      0000000000000000000000000000000000000000000000000000840000008484
      0000848400008400000084000000848400000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084840000C6C6
      C600C6C6C6008484000084840000C6C6C6000000000000000000000000000000
      00000000000000000000000000000000000084848400C6DEC600C6DEC600C6DE
      C600C6DEC600FFFFFF0084848400848400008484000000848400FFFFFF00C6DE
      C6000000000000000000000000000000000084840000C6C6C600C6C6C600C6C6
      C600C6C6C600FFFFFF0084840000C6C6C600C6C6C60084840000FFFFFF00C6C6
      C600000000000000000000000000000000000000000084840000840000008484
      0000840000008484000000000000000000008400000084000000840000008400
      00008400000084000000840000000000000000000000C6C6C60084840000C6C6
      C60084840000C6C6C60000000000000000008484000084840000848400008484
      00008484000084840000848400000000000084848400C6DEC600C6DEC600C6DE
      C600C6DEC600FFFFFF008484840084840000C6C6C60000848400C6DEC6008484
      00000000000000000000000000000000000084840000C6C6C600C6C6C600C6C6
      C600C6C6C600FFFFFF0084840000C6C6C600C6C6C60084840000C6C6C6008484
      0000000000000000000000000000000000000000000084000000848400008400
      0000848400000000000000000000000000008400000084840000848400008484
      0000848400008484000084000000000000000000000084840000C6C6C6008484
      0000C6C6C60000000000000000000000000084840000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600848400000000000084848400C6DEC600848400008484
      0000C6DEC600FFFFFF0084848400C6C6C600C6C6C600C6C6C600FF0000008484
      00000000000000000000000000000000000084840000C6C6C600848400008484
      0000C6C6C600FFFFFF0084840000C6C6C600C6C6C600C6C6C600848400008484
      0000000000000000000000000000000000000000000084000000848400008400
      0000000000000000000000000000000000000000000084000000848400008484
      0000848400008484000084000000000000000000000084840000C6C6C6008484
      0000000000000000000000000000000000000000000084840000C6C6C600C6C6
      C600C6C6C600C6C6C600848400000000000084848400C6DEC60084848400FFFF
      FF00C6DEC600FFFFFF0084848400C6C6C600C6C6C60084840000848400008484
      00008484000084840000848400000000000084840000C6C6C60084848400FFFF
      FF00C6C6C600FFFFFF0084840000C6C6C600C6C6C60084840000848400008484
      0000848400008484000084840000000000000000000084000000848400008400
      0000848400000000000000000000000000000000000084840000840000008484
      0000848400008484000084000000000000000000000084840000C6C6C6008484
      0000C6C6C60000000000000000000000000000000000C6C6C60084840000C6C6
      C600C6C6C600C6C6C600848400000000000084848400C6DEC600848400008484
      8400C6DEC600FFFFFF0084848400000000008484000084840000848400008484
      00008484000084840000848400000000000084840000C6C6C600848400008484
      8400C6C6C600FFFFFF0084840000F7FFFF008484000084840000848400008484
      0000848400008484000084840000000000000000000084840000840000008484
      0000840000008484000000000000848400008400000084000000848400008400
      00008484000084840000840000000000000000000000C6C6C60084840000C6C6
      C60084840000C6C6C60000000000C6C6C6008484000084840000C6C6C6008484
      0000C6C6C600C6C6C600848400000000000084848400C6DEC600C6DEC600C6DE
      C600C6DEC600FFFFFF0084848400000000008484000084840000848400008484
      00008484000084840000848400000000000084840000C6C6C600C6C6C600C6C6
      C600C6C6C600FFFFFF0084840000F7FFFF008484000084840000848400008484
      0000848400008484000084840000000000000000000000000000840000008484
      0000848400008400000084000000840000008484000084840000840000008484
      000084000000848400008400000000000000000000000000000084840000C6C6
      C600C6C6C600848400008484000084840000C6C6C600C6C6C60084840000C6C6
      C60084840000C6C6C600848400000000000084848400C6DEC600C6DEC600C6DE
      C600C6DEC600FFFFFF0084848400C6C6C600F7FFFF0084840000FF0000008484
      00000000000000000000000000000000000084840000C6C6C600C6C6C600C6C6
      C600C6C6C600FFFFFF0084840000C6C6C600F7FFFF0084840000848400008484
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008484000084840000848400008400000084000000000000000000
      0000000000008400000084000000000000000000000000000000000000008484
      000084840000C6C6C600C6C6C600C6C6C6008484000084840000000000000000
      00000000000084840000848400000000000084848400C6DEC600C6DEC600C6DE
      C600C6DEC600FFFFFF0084848400C6C6C60000000000C6C6C600C6DEC6008484
      00000000000000000000000000000000000084840000C6C6C600C6C6C600C6C6
      C600C6C6C600FFFFFF0084840000C6C6C600F7FFFF00C6C6C600C6C6C6008484
      0000000000000000000000000000000000000000000000000000000000000000
      0000848400008400000084000000840000008484000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600848400008484000084840000C6C6C60000000000000000000000
      0000000000000000000000000000000000008484840084840000C6DEC600C6DE
      C600C6DEC600FFFFFF0084848400C6C6C600000000000084840000000000C6DE
      C600000000000000000000000000000000008484000084840000C6C6C600C6C6
      C600C6C6C600FFFFFF0084840000C6C6C600F7FFFF008484000000000000C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600848400008484
      0000C6DEC600FFFFFF0084848400008484000084840000848400000000000000
      00000000000000000000000000000000000000000000C6C6C600848400008484
      0000C6C6C600FFFFFF0084840000848400008484000084840000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600848400008484840084848400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600848400008484000084840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484000000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484000084840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7FFFF00C6C6
      C6008484000084848400848484008484000084840000C6C6C600C6C6C600F7FF
      FF0000000000000000000000000000000000000000000000000000000000C6C6
      C60084840000848400008484840084840000C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084840000008484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084840000848400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6DEC600C6DEC600C6DEC60084840000848484008484840084848400C6C6
      C600F7FFFF000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60084840000848484008484000084848400C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084840000C6DEC6000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084840000F7FFFF008484000000000000000000000000
      00000000000000000000000000000000000000000000F7FFFF00FFFFFF00C6DE
      C600C6DEC600C6DEC600C6C6C600C6DEC600C6DEC600C6DEC600848484008484
      840084840000F7FFFF0000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C6000000000000000000848484008484
      0000848400000000000000000000000000000000000000000000000000000000
      00008484000000848400008484000084840000FFFF0000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084840000848400008484000084840000C6C6C60084840000000000000000
      00000000000000000000000000000000000000000000C6DEC600C6DEC600C6DE
      C600C6C6C600C6C6C60000840000C6C6C600C6C6C600C6C6C600FFFFFF00C6C6
      C60084848400C6C6C600000000000000000000000000C6C6C600000000000000
      0000C6C6C600C6C6C60084840000C6C6C600C6C6C600C6C6C60000000000C6C6
      C60084840000C6C6C60000000000000000000000000000000000000000000000
      000084840000C6DEC60000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084840000F7FFFF00C6C6C600C6C6C600C6C6C600C6C6C600848400000000
      00000000000000000000000000000000000000000000C6DEC600C6DEC600F7FF
      FF00C6C6C600C6C6C6000084000000840000008400000084000084840000C6DE
      C60084848400C6C6C600F7FFFF000000000000000000C6C6C600C6C6C6000000
      0000C6C6C600C6C6C60084840000848400008484000084840000C6C6C6000000
      000084848400C6C6C60000000000000000000000000000000000000000000000
      00000000000084840000C6DEC60000FFFF000084840084840000848400008484
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084840000F7FFFF00C6C6C6008484000084840000848400008484
      000000000000000000000000000000000000F7FFFF00C6DEC600F7FFFF00F7FF
      FF00C6C6C600C6C6C600008400000084000084848400C6DEC60000FF0000C6DE
      C60084848400C6C6C600F7FFFF000000000000000000C6C6C600000000000000
      0000C6C6C600C6C6C6008484000084840000C6C6C6000000000084840000C6C6
      C60084848400C6C6C60000000000000000000000000000000000000000000000
      00000000000084840000C6DEC60000FFFF0000FFFF0000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084840000F7FFFF00C6C6C600C6C6C60084840000000000000000
      000000000000000000000000000000000000C6DEC600C6DEC600FFFFFF00FFFF
      FF0084840000C6C6C60084840000C6DEC60000FF00008484000084840000C6DE
      C6008484000084840000F7FFFF0000000000C6C6C60000000000000000000000
      000084840000C6C6C600C6C6C600C6C6C60084840000C6C6C600C6C6C600C6C6
      C600848400008484000000000000000000000000000000000000848400000084
      8400008484000084840000848400C6DEC60000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000848400008484
      0000848400008484000084840000F7FFFF00C6C6C600C6C6C600848400000000
      000000000000000000000000000000000000C6DEC600FFFFFF00FFFFFF00C6C6
      C60084840000C6C6C60084840000FFFFFF00848484000084000000840000C6DE
      C6008484000084840000F7FFFF0000000000C6C6C6000000000000000000C6C6
      C60084840000C6C6C6008484000000000000C6C6C60084840000848400000000
      000084840000848400000000000000000000000000000000000084840000C6DE
      C600C6DEC60000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000084
      840000000000000000000000000000000000000000000000000084840000F7FF
      FF00F7FFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008484
      000000000000000000000000000000000000C6DEC600FFFFFF00FFFFFF00C6C6
      C600C6C6C600C6C6C6008484000000840000008400000084000000840000C6DE
      C600C6DEC60084848400F7FFFF0000000000C6C6C6000000000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600848400008484000084840000848400000000
      0000C6C6C6008484840000000000000000000000000000000000000000008484
      0000C6DEC600C6DEC60000FFFF0000FFFF000084840084840000848400008484
      0000000000000000000000000000000000000000000000000000000000008484
      0000F7FFFF00F7FFFF00C6C6C600C6C6C6008484000084840000848400008484
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7FFFF00F7FFFF0084840000848400008484840000840000FFFF
      FF00C6C6C60084848400C6C6C60000000000C6C6C60000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C600C6C6C600848400000000
      0000C6C6C60084848400C6C6C600000000000000000000000000000000008484
      0000C6DEC600C6DEC600C6DEC60000FFFF0000FFFF0000848400000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      0000F7FFFF00F7FFFF00F7FFFF00C6C6C600C6C6C60084840000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7FFFF00F7FFFF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084848400C6C6C60000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084840000C6C6C600000000000000000000000000000000000000
      000084840000C6DEC600C6DEC600C6DEC60000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084840000F7FFFF00F7FFFF00F7FFFF00C6C6C600C6C6C600848400000000
      000000000000000000000000000000000000C6DEC600C6DEC600C6DEC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00C6DEC600FFFF
      FF00FFFFFF0084848400C6C6C6000000000000000000C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084840000C6C6C600000000000000000000000000000000000000
      000084840000C6DEC600C6DEC600C6DEC60000FFFF0000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      000084840000F7FFFF00F7FFFF00F7FFFF00C6C6C600C6C6C600C6C6C6008484
      00000000000000000000000000000000000000000000F7FFFF00F7FFFF00C6C6
      C600F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00C6C6C600C6DEC600C6DE
      C600FFFFFF0084848400F7FFFF0000000000000000000000000000000000C6C6
      C6000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600000000008484840000000000000000000000000000000000000000000000
      00000000000084840000C6DEC600C6DEC600C6DEC60000FFFF0000FFFF0000FF
      FF00008484000000000000000000000000000000000000000000000000000000
      00000000000084840000F7FFFF00F7FFFF00F7FFFF00C6C6C600C6C6C600C6C6
      C60084840000000000000000000000000000000000000000000000000000F7FF
      FF00C6C6C600C6C6C600C6C6C600F7FFFF00F7FFFF00C6C6C600C6DEC600C6DE
      C600C6DEC600C6C6C600F7FFFF00000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C6000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000008484000084840000848400008484000084840000848400008484
      0000848400008484000000000000000000000000000000000000000000000000
      0000000000008484000084840000848400008484000084840000848400008484
      0000848400008484000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C600C6C6C600C6DEC600C6DE
      C600F7FFFF00F7FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000848400008484
      0000848400008484000084840000848400008484000084840000848400008484
      0000848400008484000084840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000848400008484
      000084000000F7FFFF008484000084000000F7FFFF00F7FFFF00F7FFFF008400
      0000848400008484000084000000000000000000000084840000C6C6C600C6C6
      C60084840000F7FFFF00C6C6C60084840000F7FFFF00F7FFFF00F7FFFF008484
      0000C6C6C600C6C6C60084840000000000000000000000000000000000000000
      000000FF00000084000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000848400008484
      000084000000F7FFFF008484000084000000F7FFFF00F7FFFF00F7FFFF008400
      0000848400008484000084000000000000000000000084840000C6C6C600C6C6
      C60084840000F7FFFF00C6C6C60084840000F7FFFF00F7FFFF00F7FFFF008484
      0000C6C6C600C6C6C600848400000000000000000000000000000000000000FF
      0000008400000084000000840000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600848400008484000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000848400008484
      000084000000F7FFFF008484000084000000F7FFFF00F7FFFF00F7FFFF008400
      0000848400008484000084000000000000000000000084840000C6C6C600C6C6
      C60084840000F7FFFF00C6C6C60084840000F7FFFF00F7FFFF00F7FFFF008484
      0000C6C6C600C6C6C6008484000000000000000000000000000000FF00000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6008484
      0000848400008484000084840000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000848400008484
      000084000000F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF008400
      0000848400008484000084000000000000000000000084840000C6C6C600C6C6
      C60084840000F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF008484
      0000C6C6C600C6C6C60084840000000000000000000000FF0000008400000084
      0000008400000084000000840000008400000084000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600848400008484
      0000848400008484000084840000848400008484840000000000000000000000
      0000000000000000000000000000000000000000000084000000848400008484
      0000848400008400000084000000840000008400000084000000840000008484
      0000848400008484000084000000000000000000000084840000C6C6C600C6C6
      C600C6C6C600848400008484000084840000848400008484000084840000C6C6
      C600C6C6C600C6C6C60084840000000000000000000000FF0000008400000084
      00000084000000FF000000840000008400000084000000840000000000000000
      00000000000000000000000000000000000000000000C6C6C600848400008484
      000084848400C6C6C60084840000848400008484000084848400000000000000
      0000000000000000000000000000000000000000000084000000848400008484
      0000848400008484000084840000848400008484000084840000848400008484
      0000848400008484000084000000000000000000000084840000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084840000000000000000000000FF0000008400000084
      0000000000000000000000FF0000008400000084000000840000008400000000
      00000000000000000000000000000000000000000000C6C6C600848400008484
      84000000000000000000C6C6C600848400008484000084840000848484000000
      0000000000000000000000000000000000000000000084000000848400008484
      0000840000008400000084000000840000008400000084000000840000008400
      0000848400008484000084000000000000000000000084840000C6C6C600C6C6
      C600848400008484000084840000848400008484000084840000848400008484
      0000C6C6C600C6C6C60084840000000000000000000000FF0000008400000000
      000000000000000000000000000000FF00000084000000840000008400000084
      00000000000000000000000000000000000000000000C6C6C600848484000000
      0000000000000000000000000000C6C6C6008484000084840000848400008484
      8400000000000000000000000000000000000000000084000000848400008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000008484000084000000000000000000000084840000C6C6C6008484
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084840000C6C6C60084840000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000840000008400000084
      0000008400000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60084840000848400008484
      0000848484000000000000000000000000000000000084000000848400008400
      0000FFFFFF00840000008400000084000000840000008400000084000000FFFF
      FF00840000008484000084000000000000000000000084840000C6C6C6008484
      0000FFFFFF00848400008484000084840000848400008484000084840000FFFF
      FF0084840000C6C6C60084840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000008400000084
      0000008400000084000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600848400008484
      0000848400008484840000000000000000000000000084000000848400008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000008484000084000000000000000000000084840000C6C6C6008484
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084840000C6C6C60084840000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000084
      0000008400000084000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6008484
      0000848400008484840000000000000000000000000084000000F7FFFF008400
      0000FFFFFF00840000008400000084000000840000008400000084000000FFFF
      FF00840000008400000084000000000000000000000084840000F7FFFF008484
      0000FFFFFF00848400008484000084840000848400008484000084840000FFFF
      FF00848400008484000084840000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000008400000084000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600848400008484840000000000000000000000000084000000848400008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000008484000084000000000000000000000084840000C6C6C6008484
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084840000C6C6C60084840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00000084000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6008484840000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000084840000848400008484
      0000848400008484000084840000848400008484000084840000848400008484
      0000848400008484000084840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848400008484
      0000848400008484000084840000848400008484000084840000848400008484
      0000848400008484000000000000000000000000000000000000848400008484
      0000848400008484000084840000848400008484000084840000848400008484
      0000848400008484000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084840000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484000000000000000000000000000000000000848400000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484000000000000000000000000000000848400008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400848400000000000000000000000000000000000084840000848400008484
      0000848400008484000084840000848400008484000084840000848400008484
      0000C6C6C600000000000000000000000000000000000000000084840000FFFF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00FFFFFF008484000000000000000000000000000000000000848400000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000008484000000000000000000000084840000848400C6DEC600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000084
      8400008484000000000000000000000000008484000084840000F7FFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008484
      000084840000000000000000000000000000000000000000000084840000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484000000000000000000000000000000000000848400000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484000000000000000000000084840000848400C6C6C600C6DE
      C600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6C6
      C600008484000084840000000000000000008484000084840000C6C6C600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00C6C6
      C60084840000848400000000000000000000000000000000000084840000FFFF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00FFFFFF008484000000000000000000000000000000000000848400000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000008484000000000000000000000084840000848400C6C6C600C6DE
      C600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6C6
      C600848400000084840000000000000000008484000084840000C6C6C600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00C6C6
      C600C6C6C600848400000000000000000000000000000000000084840000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484000000000000000000000000000000000000848400000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084840000000000000000000000848400C6C6C60000848400C6DE
      C600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6C6
      C600C6DEC60000848400008484000000000084840000C6C6C60084840000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00C6C6
      C600F7FFFF00848400008484000000000000000000000000000084840000FFFF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00FFFFFF008484000000000000000000000000000000000000848400000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C6000000000084840000000000000000000000848400C6C6C600848400008484
      0000C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6DEC600C6C6
      C600C6DEC60084840000008484000000000084840000C6C6C600C6C6C600C6C6
      C600F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00C6C6
      C600F7FFFF00C6C6C6008484000000000000000000000000000084840000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484000000000000000000000000000000000000848400000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084840000000000000000000000848400C6DEC600C6C6C6000084
      8400F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00C6DE
      C600F7FFFF00F7FFFF00008484000000000084840000F7FFFF00C6C6C6008484
      0000F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF008484000000000000000000000000000084840000FFFF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00FFFFFF008484000000000000000000000000000000000000848400000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C6000000000084840000000000000000000000848400C6DEC600C6DEC600C6C6
      C600008484000084840000848400008484000084840000848400008484000084
      84000084840000848400C6C6C6000000000084840000F7FFFF00F7FFFF00C6C6
      C600848400008484000084840000848400008484000084840000848400008484
      00008484000084840000C6C6C60000000000000000000000000084840000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484000000000000000000000000000000000000848400000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084840000000000000000000000848400F7FFFF00C6DEC600C6DE
      C600C6DEC600C6DEC600F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF000084
      84000000000000000000000000000000000084840000F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF008484
      000000000000000000000000000000000000000000000000000084840000FFFF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00FFFFFF00848400008484
      0000848400008484000000000000000000000000000000000000848400000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000848400008484
      0000848400008484000000000000000000000000000000848400F7FFFF00F7FF
      FF00F7FFFF00F7FFFF0000848400008484000084840000848400008484000000
      0000000000000000000000000000000000000000000084840000F7FFFF00F7FF
      FF00F7FFFF00F7FFFF0084840000848400008484000084840000848400000000
      000000000000000000000000000000000000000000000000000084840000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084840000F7FF
      FF00848400000000000000000000000000000000000000000000848400000000
      0000000000000000000000000000000000000000000000000000848400000000
      0000848400000000000000000000000000000000000000000000008484000084
      8400008484000084840000000000000000000000000000000000000000000000
      0000000000008400000084000000840000000000000000000000848400008484
      0000848400008484000000000000000000000000000000000000000000000000
      000000000000848400008484000084840000000000000000000084840000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00848400008484
      0000000000000000000000000000000000000000000000000000848400000000
      0000000000000000000000000000000000000000000000000000848400008484
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084840000848400000000000000000000848400008484
      0000848400008484000084840000848400008484000084840000848400000000
      0000000000000000000000000000000000000000000000000000848400008484
      0000848400008484000084840000848400008484000084840000848400000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000008400000000000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000084840000000000000000
      0000000000008484000000000000848400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848400008484
      000084840000000000000000000000000000424D3E000000000000003E000000
      2800000040000000F00000000100010000000000800700000000000000000000
      000000000000000000000000FFFFFF00E07FFFFF00000000C00FE01F00000000
      C007C00F000000008003F8C7000000008003B023000000008001901300000000
      0001B04300000000000170030000000000016113000000000001601300000000
      00017E110000000000017FF90000000000019FF9000000008001EF8B00000000
      E001F18300000000FE03FE3F00000000FFFFFFFFFFFFFFFFFFFFFFFFFBFFFBFF
      0E1F0E1FF3FFF3FF060F060FE007E00783078307F3FFF3FFC183C183FBFFFBFF
      E0C1E0C1FFFFFFFFF060F06001800180F060F060018001BEE0C1E0C1018001BE
      C183C183018001BE83078307018001BE060F060F018001B00E1F0E1F038103B1
      FFFFFFFF078307B3FFFFFFFF0F870F87FFFFFFFFE01FE01FFFFFFFFFC007C7C7
      F870F87080038C83F060F06080018401E0C1E0C180008C30C183C18380008418
      8307830780008CE0060F060F80008770060F060F80008F008307830780008780
      C183C18380009FC0E0C1E0C18000A010F060F0608000A480F870F870C000CE60
      FFFFFFFFE001E421FFFFFFFFF807F807FFFFFFFFFFFFFFFF80038003C007C007
      0001000180038003000100010001000100010001000140010001000100014001
      0001000100007FF080038003000040008003800380008000C007C007C000DFE0
      C007C007E001E821E00FE00FE007EFF7E00FE00FF007F417F01FF01FF003F7FB
      F01FF01FF803F803FC7FFC7FFFFFFFFFF81FF81FF81FF81FF81FF81FF81FF81F
      F81FF81FF81FF81FF81FF81FF81FF81FFC3FFC3FFC3FFC3FFC3FFC3FFC3FFC3F
      FC3FFC3FFC3FFC3FFC3FFC3FFC3FFC3FFC3FFC3FFC3FFC3FFC3EFC3EFC3EFC3E
      981C981C981C981C000000000000000000010001000100010003000300030003
      0007000700070007981F981F981F981FE07FFFFF8FFF8FFFC00FE01F07FF07FF
      C007C00F83FF83FF8003F8C781FF81FF8003B023C0FFC0FF80019013E003E003
      0001B043F001F00100017003F800F80000016113F800F80000016013F800F800
      00017E11F800F80000017FF9F800F80000019FF9F800F8008001EF8BF800F800
      E001F183FC01FC01FE03FE3FFE03FE03FFFFFFFFE07FFFFFFFFFFFFFC00FE01F
      F3FFF3FFC007C00FE1FFE1FF8003F8C7C0FFC0FF8003B023807F807F80019013
      803F803F0001B0438C1F8C1F000170039E0F9E0F00016113FF07FF0700016013
      FF83FF8300017E11FFC3FFC300017FF9FFE3FFE300019FF9FFF3FFF38001EF8B
      FFFFFFFFE001F183FFFFFFFFFE03FE3FFFFFFFFFFFFFFFFFFFFFFFFFC001C001
      8007800780018001000700078001800100030003800180010003000380018001
      0001000180018001000100018001800100010001800180010001000180018001
      000F000F80018001801F801F80018001C3F8C3F880018001FFFCFFFC80018001
      FFBAFFBA80018001FFC7FFC7FFFFFFFFFBFFFBFFFCFFFCFFF9FFF9FFF87FF87F
      FCFFFCFFF07FF07FFC7FFC7FE07FE07FF03FF03FC03FC03FF01FF01F803E803E
      F80FF80F001C001CF83FF83F00080008C01FC01F00010001C00FC00F80038003
      E00FE00F80078007E03FE03F800F800FF01FF01FC01FC01FF00FF00FE03FE03F
      F807F807F07FF07FF803F803F8FFF8FFFFF8FFF8FFFFFFFF80008000FFFFFFFF
      8000BFE0FFFFFFFF8001A00187C387C38003BC03838383838007A007C107C107
      8007BC07E00FE00F8007A007F01FF01F8007BE07F83FF83F8007A007F01FF01F
      8007BFF7E00FE00F8007A087C107C107800FBF8F83838383801FBF9F87C387C3
      803F803FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFF3FFFC007C007
      0FFF0FFF8003800383FF83FF0001000180FF80FF00014001C03FC03F00014001
      C00FC00F00007FF0E007E00700004000E003E00380008000F001F001C000DFE0
      F000F000E001E821F800F800E007EFF7F800F800F007F417FC00FC00F003F7FB
      FE00FE00F803F803FF00FF00FFFFFFFFFDFFFDFFFFFFFFFFE0FFE8FFFFFFFFFF
      801FA05FF0FFF0FF001F803FE0FFE0FF001F001FC0FFC0FF000F000F83018301
      000F000F87018701000F000F8F818F8100010001878187810101000182018201
      01010001C001C001000F000FE039E039008F000FF07FF07F00AF002FFFFFFFFF
      803F803FFFFFFFFFE1FFE1FFFFFFFFFFFBFFFBFFE07FFFFFF9FFF9FFC00FE01F
      FCFFFCFFC007C00FFC7FFC7F8003F8C7F03FF03F8003B023F01FF01F80019013
      F80FF80F0001B043F83FF83F00017003C01FC01F00016113C00FC00F00016013
      E00FE00F00017E11E03FE03F00017FF9F01FF01F00019FF9F00FF00F8001EF8B
      F807F807E001F183F803F803FE03FE3FFFFFFFFFFFFFFFFFC001C001FFFFFFFF
      80018001F3FFF3FF80018001E1FFE1FF80018001C0FFC0FF80018001807F807F
      80018001803F803F800180018C1F8C1F800180019E0F9E0F80018001FF07FF07
      80018001FF83FF8380018001FFC3FFC380018001FFE3FFE380018001FFF3FFF3
      80018001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC003C003FFFFFFFF
      C003DFFB80078007C003D00B00070007C003DFFB00030003C003D00B00030003
      C003DFFB00010001C003D00B00010001C003DFFB00010001C003D00B00010001
      C003DFFB000F000FC003D043801F801FC007DFD7C3F8C3F8C00FDFCFFFFCFFFC
      C01FC01FFFBAFFBAFFFFFFFFFFC7FFC700000000000000000000000000000000
      000000000000}
  end
end
