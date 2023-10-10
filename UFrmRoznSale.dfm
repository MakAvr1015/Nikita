inherited FrmRoznSale: TFrmRoznSale
  ActiveControl = Panel4
  Caption = #1056#1086#1079#1085#1080#1095#1085#1072#1103' '#1087#1088#1086#1076#1072#1078#1072
  ClientHeight = 573
  ClientWidth = 1016
  ExplicitWidth = 1032
  ExplicitHeight = 611
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 554
    Width = 1016
    TabOrder = 1
    ExplicitTop = 554
    ExplicitWidth = 1016
    inherited DsFormName: TRzStatusPane
      Caption = 'dsDocStrings'
    end
  end
  inherited Panel3: TPanel
    Width = 1016
    Height = 554
    TabOrder = 0
    ExplicitWidth = 1016
    ExplicitHeight = 554
    inherited RzToolbar: TRzToolbar
      Width = 1014
      Height = 29
      ExplicitWidth = 1014
      ExplicitHeight = 29
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
        Top = 2
        ExplicitTop = 2
      end
      inherited BtnOpen: TRzToolButton
        Top = 2
        ExplicitTop = 2
      end
      inherited BtnFind: TRzToolButton
        Top = 2
        ExplicitTop = 2
      end
      inherited BtnPrint: TRzToolButton
        Top = 2
        ExplicitTop = 2
      end
      inherited BtnOK: TRzToolButton
        Top = 2
        ExplicitTop = 2
      end
      inherited BtnCancel: TRzToolButton
        Top = 2
        ExplicitTop = 2
      end
      inherited BtnRefresh: TRzToolButton
        Top = 2
        ExplicitTop = 2
      end
      inherited BtnEdit: TRzToolButton
        Top = 2
        ExplicitTop = 2
      end
      inherited BtnExecute: TRzToolButton
        Top = 2
        ExplicitTop = 2
      end
      inherited BtnDelete: TRzToolButton
        Top = 2
        Enabled = True
        Visible = True
        ExplicitTop = 2
      end
      inherited BtnSave: TRzToolButton
        Top = 2
        ExplicitTop = 2
      end
      inherited BtnExit: TRzToolButton
        Top = 2
        ExplicitTop = 2
      end
      inherited BtnView: TRzToolButton
        Top = 2
        Visible = False
        ExplicitTop = 2
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 480
      Width = 1014
      Height = 73
      Align = alBottom
      Color = clGradientActiveCaption
      ParentBackground = False
      TabOrder = 2
      object RzDBLabel1: TRzDBLabel
        Left = 76
        Top = 34
        Width = 169
        Height = 35
        Alignment = taRightJustify
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        BorderInner = fsGroove
        DataField = 'F_DOC_SUM'
        DataSource = srDocHead
      end
      object RzLabel1: TRzLabel
        Left = 4
        Top = 34
        Width = 73
        Height = 35
        AutoSize = False
        Caption = #1048#1090#1086#1075#1086
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        BorderInner = fsGroove
      end
      object RzLabel2: TRzLabel
        Left = 76
        Top = 4
        Width = 169
        Height = 31
        Alignment = taCenter
        AutoSize = False
        Caption = #1057#1091#1084#1084#1072
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        BorderInner = fsGroove
      end
      object RzLabel3: TRzLabel
        Left = 243
        Top = 4
        Width = 170
        Height = 31
        Alignment = taCenter
        AutoSize = False
        Caption = #1054#1087#1083#1072#1090#1072
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        BorderInner = fsGroove
      end
      object RzLabel4: TRzLabel
        Left = 411
        Top = 4
        Width = 170
        Height = 31
        Alignment = taCenter
        AutoSize = False
        Caption = #1057#1076#1072#1095#1072
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        BorderInner = fsGroove
      end
      object LblMoneyBlack: TRzLabel
        Left = 411
        Top = 34
        Width = 170
        Height = 35
        Alignment = taCenter
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        BorderInner = fsGroove
      end
      object EdPayDoc: TRzNumericEdit
        Left = 243
        Top = 34
        Width = 170
        Height = 35
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = EdPayDocChange
        DisplayFormat = ',0;(,0)'
      end
      object BtnClose: TRzButton
        Left = 587
        Top = 32
        Width = 142
        Height = 36
        ModalResult = 1
        Caption = #1047#1072#1082#1088#1099#1090#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BtnCloseClick
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 30
      Width = 1014
      Height = 60
      Align = alTop
      Color = clGradientActiveCaption
      ParentBackground = False
      TabOrder = 3
      ExplicitTop = 26
      object RzClockStatus1: TRzClockStatus
        Left = 4
        Top = 25
        Width = 241
        Height = 27
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        ParentFont = False
        Format = 'ddddd tt'
      end
      object RzDBLabel2: TRzDBLabel
        Left = 251
        Top = 25
        Width = 129
        Height = 33
        Alignment = taRightJustify
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        BorderInner = fsFlatRounded
        DataField = 'F_NUMBER'
        DataSource = srDocHead
      end
      object RzLabel5: TRzLabel
        Left = 382
        Top = 25
        Width = 105
        Height = 31
        Alignment = taCenter
        AutoSize = False
        Caption = #1057#1082#1080#1076#1082#1072
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object RzLabel6: TRzLabel
        Left = 7
        Top = 6
        Width = 43
        Height = 13
        Caption = #1055#1072#1088#1090#1085#1077#1088
      end
      object RzLabel7: TRzLabel
        Left = 386
        Top = 2
        Width = 105
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = #1050#1072#1088#1090#1072' '#8470
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
      object RzDBSpinEdit1: TRzDBSpinEdit
        Left = 491
        Top = 24
        Width = 70
        Height = 31
        DataSource = srDocHead
        DataField = 'F_SKIDKA'
        Alignment = taRightJustify
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnExit = RzDBSpinEdit1Exit
        OnKeyUp = RzDBSpinEdit1KeyUp
        AllowKeyEdit = True
        Max = 100.000000000000000000
        Value = 1.000000000000000000
      end
      object PrintKKM: TRzCheckBox
        Left = 567
        Top = 25
        Width = 139
        Height = 25
        AlignmentVertical = avCenter
        Caption = #1055#1077#1095#1072#1090#1072#1090#1100' '#1095#1077#1082
        Checked = True
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 1
      end
      object RzDBButtonEdit1: TRzDBButtonEdit
        Left = 76
        Top = 2
        Width = 283
        Height = 21
        DataSource = srDocHead
        DataField = 'F_PARTNER_NAME'
        TabOrder = 2
        AltBtnWidth = 15
        ButtonWidth = 15
        OnButtonClick = RzDBButtonEdit1ButtonClick
      end
      object RzDBEdit1: TRzDBEdit
        Left = 490
        Top = 2
        Width = 121
        Height = 21
        DataSource = srDocHead
        DataField = 'F_DISCOUNT_CARD'
        TabOrder = 3
        OnKeyUp = RzDBSpinEdit1KeyUp
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 90
      Width = 1014
      Height = 390
      Align = alClient
      Caption = 'Panel4'
      TabOrder = 1
      ExplicitTop = 86
      ExplicitHeight = 394
      object Splitter1: TSplitter
        Left = 805
        Top = 1
        Height = 392
        Align = alRight
        ExplicitLeft = 40
        ExplicitTop = 232
        ExplicitHeight = 100
      end
      object cxGrid1: TcxGrid
        Left = 1
        Top = 1
        Width = 804
        Height = 392
        Align = alClient
        TabOrder = 0
        LookAndFeel.SkinName = 'MoneyTwins'
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnKeyPress = cxGrid1DBTableView1KeyPress
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = srDocStrings
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
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
              Kind = skSum
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1F_CNT
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1F_SUM_WO_SKIDKA
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1F_SUM
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          Styles.ContentEven = cxStyle1
          Styles.ContentOdd = cxStyle1
          Styles.Footer = cxStyle1
          Styles.Header = cxStyle2
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
            Options.Editing = False
            Width = 79
          end
          object cxGrid1DBTableView1F_GOOD_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'F_GOOD_NAME'
            Options.Editing = False
            Width = 182
          end
          object cxGrid1DBTableView1F_ED_IZM_SHORT_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'F_ED_IZM_SHORT_NAME'
            Options.Editing = False
            Width = 83
          end
          object cxGrid1DBTableView1F_CNT: TcxGridDBColumn
            DataBinding.FieldName = 'F_CNT'
            Width = 80
          end
          object cxGrid1DBTableView1F_PRICE_WO_SKIDKA: TcxGridDBColumn
            Caption = #1062#1077#1085#1072' '#1073#1077#1079' '#1089#1082#1080#1076#1082#1080
            DataBinding.FieldName = 'F_PRICE_WO_SKIDKA'
            Options.Editing = False
            Width = 55
          end
          object cxGrid1DBTableView1F_SKIDKA: TcxGridDBColumn
            DataBinding.FieldName = 'F_SKIDKA'
            Options.Editing = False
            Width = 73
          end
          object cxGrid1DBTableView1F_SUM_WO_SKIDKA: TcxGridDBColumn
            Caption = #1057#1091#1084#1084#1072' '#1073#1077#1079' '#1089#1082#1080#1076#1082#1080
            DataBinding.FieldName = 'F_SUM_WO_SKIDKA'
            Options.Editing = False
            Width = 65
          end
          object cxGrid1DBTableView1F_PRICE_VAL: TcxGridDBColumn
            Caption = #1062#1077#1085#1072
            DataBinding.FieldName = 'F_PRICE_VAL'
            Options.Editing = False
            Width = 99
          end
          object cxGrid1DBTableView1F_SUM: TcxGridDBColumn
            Caption = #1057#1091#1084#1084#1072
            DataBinding.FieldName = 'F_SUM'
            Options.Editing = False
            Width = 90
          end
          object cxGrid1DBTableView1F_SKLAD_OST: TcxGridDBColumn
            DataBinding.FieldName = 'F_SKLAD_OST'
            Options.Editing = False
            Width = 82
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object Panel5: TPanel
        Left = 808
        Top = 1
        Width = 205
        Height = 392
        Align = alRight
        Caption = 'Panel5'
        TabOrder = 1
        object cxDBImage1: TcxDBImage
          Left = 1
          Top = 1
          Align = alClient
          DataBinding.DataField = 'f_photo'
          DataBinding.DataSource = srGoodPhoto
          Properties.FitMode = ifmProportionalStretch
          Properties.GraphicClassName = 'TdxSmartImage'
          TabOrder = 0
          Height = 386
          Width = 203
        end
      end
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited cxPropertiesStore: TcxPropertiesStore
    Components = <
      item
        Component = PrintKKM
        Properties.Strings = (
          'Checked')
      end>
  end
  object dsDocHead: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'execute procedure SP_T_DOC_out_U(:doc_id,:F_SKLAD,:F_PARTNER,:F_' +
        'NUMBER,:F_DATE,:f_paydate_plan,:F_STATE,:F_PRICE,:f_skidka,:f_di' +
        'scount_card)')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID as DOC_ID,'
      '    F_SKLAD,'
      '    F_PARTNER,'
      '    F_NUMBER,'
      '    F_DATE,'
      '    F_PAYDATE_PLAN,'
      '    F_DOC_SUM,'
      '    F_STATE,'
      '    F_PRICE,'
      '    F_PRICE_NAME,'
      '    F_STATE_NAME,'
      '    F_PARTNER_NAME,'
      '    F_PARTNER_ADRES,'
      '    F_PARTNER_INN,'
      '    F_PARTNER_KPP,'
      '    F_PARTNER_BANK,'
      '    F_PARTNER_BANK_ADRES,'
      '    F_PARTNER_BANK_RSCH,'
      '    F_PARTNER_BANK_KSCH,'
      '    F_PARTNER_BANK_BIK,'
      '    F_SKLAD_NAME,'
      '    F_SKLAD_ADRES,'
      '    F_SKLAD_F_NAME,'
      '    F_SKLAD_U_ADRES,'
      '    F_SKLAD_INN,'
      '    F_SKLAD_KPP,'
      '    F_SKLAD_BANK,'
      '    F_SKLAD_BANK_ADRES,'
      '    F_SKLAD_BANK_RSCH,'
      '    F_SKLAD_BANK_KSCH,'
      '    F_SKLAD_BANK_BIK,'
      '    F_SKIDKA,'
      '    F_PAY_SUM,'
      '    f_discount_card'
      'FROM'
      '    SP_T_DOC_OUT_GET(:DOC_ID,:doc_type) ')
    AfterOpen = dsDocHeadAfterOpen
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 736
    Top = 248
    dcForceOpen = True
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
    object dsDocHeadF_PAYDATE_PLAN: TFIBDateField
      FieldName = 'F_PAYDATE_PLAN'
    end
    object dsDocHeadF_DOC_SUM: TFIBBCDField
      FieldName = 'F_DOC_SUM'
      DisplayFormat = '### ### ###.##'
      EditFormat = '### ### ###.##'
      Size = 3
    end
    object dsDocHeadF_STATE: TFIBBCDField
      FieldName = 'F_STATE'
      Size = 0
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
    object dsDocHeadF_STATE_NAME: TFIBStringField
      FieldName = 'F_STATE_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_PARTNER_NAME: TFIBStringField
      FieldName = 'F_PARTNER_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_PARTNER_ADRES: TFIBStringField
      FieldName = 'F_PARTNER_ADRES'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_PARTNER_INN: TFIBStringField
      FieldName = 'F_PARTNER_INN'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_PARTNER_KPP: TFIBStringField
      FieldName = 'F_PARTNER_KPP'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_PARTNER_BANK: TFIBStringField
      FieldName = 'F_PARTNER_BANK'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_PARTNER_BANK_ADRES: TFIBStringField
      FieldName = 'F_PARTNER_BANK_ADRES'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_PARTNER_BANK_RSCH: TFIBStringField
      FieldName = 'F_PARTNER_BANK_RSCH'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_PARTNER_BANK_KSCH: TFIBStringField
      FieldName = 'F_PARTNER_BANK_KSCH'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_PARTNER_BANK_BIK: TFIBStringField
      FieldName = 'F_PARTNER_BANK_BIK'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_SKLAD_NAME: TFIBStringField
      FieldName = 'F_SKLAD_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_SKLAD_ADRES: TFIBStringField
      FieldName = 'F_SKLAD_ADRES'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_SKLAD_F_NAME: TFIBStringField
      FieldName = 'F_SKLAD_F_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_SKLAD_U_ADRES: TFIBStringField
      FieldName = 'F_SKLAD_U_ADRES'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_SKLAD_INN: TFIBStringField
      FieldName = 'F_SKLAD_INN'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_SKLAD_KPP: TFIBStringField
      FieldName = 'F_SKLAD_KPP'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_SKLAD_BANK: TFIBStringField
      FieldName = 'F_SKLAD_BANK'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_SKLAD_BANK_ADRES: TFIBStringField
      FieldName = 'F_SKLAD_BANK_ADRES'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_SKLAD_BANK_RSCH: TFIBStringField
      FieldName = 'F_SKLAD_BANK_RSCH'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_SKLAD_BANK_KSCH: TFIBStringField
      FieldName = 'F_SKLAD_BANK_KSCH'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_SKLAD_BANK_BIK: TFIBStringField
      FieldName = 'F_SKLAD_BANK_BIK'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_SKIDKA: TFIBIntegerField
      FieldName = 'F_SKIDKA'
    end
    object dsDocHeadF_PAY_SUM: TFIBBCDField
      FieldName = 'F_PAY_SUM'
      Size = 3
    end
    object dsDocHeadDOC_ID: TFIBBCDField
      FieldName = 'DOC_ID'
      Size = 0
    end
    object dsDocHeadF_DISCOUNT_CARD: TFIBStringField
      FieldName = 'F_DISCOUNT_CARD'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object pFIBTransaction: TpFIBTransaction
    DefaultDatabase = DM.pFIBDatabase
    Left = 776
    Top = 248
  end
  object srDocHead: TDataSource
    DataSet = dsDocHead
    Left = 744
    Top = 256
  end
  object srDocStrings: TDataSource
    DataSet = dsDocStrings
    Left = 464
    Top = 360
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
      '')
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
      '    SP_T_DOC_OUT_STR_S(:DOC_ID) ')
    AutoUpdateOptions.ParamsToFieldsLinks.Strings = (
      'F_DOC_OUT=DOC_ID')
    AfterDelete = dsDocStringsAfterDelete
    AfterOpen = dsDocStringsAfterOpen
    AfterPost = dsDocStringsAfterPost
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DataSource = srDocHead
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 472
    Top = 352
    WaitEndMasterScroll = True
    dcForceOpen = True
    object dsDocStringsF_ID: TFIBBCDField
      Tag = 1
      FieldName = 'F_ID'
      ReadOnly = True
      Visible = False
      Size = 0
    end
    object dsDocStringsF_DOC_OUT: TFIBBCDField
      FieldName = 'F_DOC_OUT'
      ReadOnly = True
      Visible = False
      Size = 0
    end
    object dsDocStringsF_GOOD: TFIBBCDField
      FieldName = 'F_GOOD'
      ReadOnly = True
      Visible = False
      Size = 0
    end
    object dsDocStringsF_CNT: TFIBFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'F_CNT'
    end
    object dsDocStringsF_GOOD_NAME: TFIBStringField
      DisplayLabel = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
      FieldName = 'F_GOOD_NAME'
      ReadOnly = True
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_ARTICLE: TFIBStringField
      DisplayLabel = #1040#1088#1090#1080#1082#1091#1083
      FieldName = 'F_ARTICLE'
      ReadOnly = True
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_ED_IZM_SHORT_NAME: TFIBStringField
      DisplayLabel = #1077#1076'.'#1080#1079#1084'.'
      FieldName = 'F_ED_IZM_SHORT_NAME'
      ReadOnly = True
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_SKLAD_OST: TFIBFloatField
      DisplayLabel = #1058#1077#1082#1091#1097#1080#1081' '#1086#1089#1090#1072#1090#1086#1082
      FieldName = 'F_SKLAD_OST'
      ReadOnly = True
    end
    object dsDocStringsF_SKIDKA: TFIBBCDField
      DisplayLabel = #1057#1082#1080#1076#1082#1072
      FieldName = 'F_SKIDKA'
      ReadOnly = True
      DisplayFormat = '### ### ###.##'
      Size = 3
    end
    object dsDocStringsF_PRICE_VAL: TFIBBCDField
      FieldName = 'F_PRICE_VAL'
      DisplayFormat = '0.00;(0,00)'
      Size = 3
    end
    object dsDocStringsF_SUM: TFIBBCDField
      FieldName = 'F_SUM'
      DisplayFormat = '0.00;(0,00)'
      Size = 3
    end
    object dsDocStringsF_SUM_WO_SKIDKA: TFIBBCDField
      FieldName = 'F_SUM_WO_SKIDKA'
      DisplayFormat = '0.00;(0,00)'
      Size = 3
    end
    object dsDocStringsF_PRICE_WO_SKIDKA: TFIBFloatField
      FieldName = 'F_PRICE_WO_SKIDKA'
      DisplayFormat = '0.00;(0,00)'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 776
    Top = 288
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Black'
      Font.Style = []
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
    end
  end
  object dsGoodPhoto: TpFIBDataSet
    SelectSQL.Strings = (
      'select f_memo as f_photo from SP_T_NSI_GOODS_MMEDIA_S(:f_good) ')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DataSource = srDocStrings
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 904
    Top = 256
    WaitEndMasterScroll = True
    dcForceOpen = True
  end
  object srGoodPhoto: TDataSource
    DataSet = dsGoodPhoto
    Left = 944
    Top = 304
  end
  object spInsDOC_OUT_S: TpFIBStoredProc
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    SQL.Strings = (
      
        'EXECUTE PROCEDURE SP_T_DOC_OUT_STR_I (?F_ID, ?F_DOC_OUT, ?F_GOOD' +
        ', ?F_PRICE, ?F_CNT, ?F_SUM, ?F_SKD, ?F_DESCR, ?F_BARTER)')
    StoredProcName = 'SP_T_DOC_OUT_STR_I'
    Left = 720
    Top = 312
  end
  object spSetKKm: TpFIBStoredProc
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    SQL.Strings = (
      
        'EXECUTE PROCEDURE PR_T_DOC_OUT_SET_KKM (?P_ID, ?P_PD_NUM, ?P_KKM' +
        '_NUM)')
    StoredProcName = 'PR_T_DOC_OUT_SET_KKM'
    Left = 912
    Top = 352
    qoAutoCommit = True
  end
end
