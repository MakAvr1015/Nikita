inherited FrmOutputPay: TFrmOutputPay
  Caption = #1048#1089#1093#1086#1076#1103#1097#1080#1081' '#1087#1083#1072#1090#1077#1078
  ClientHeight = 401
  ClientWidth = 780
  ExplicitWidth = 788
  ExplicitHeight = 428
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 382
    Width = 780
    ExplicitTop = 382
    ExplicitWidth = 780
  end
  inherited Panel3: TPanel
    Width = 780
    Height = 382
    ExplicitWidth = 780
    ExplicitHeight = 382
    inherited RzToolbar: TRzToolbar
      Width = 778
      Height = 25
      ExplicitWidth = 778
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
      Width = 778
      Height = 117
      Align = alTop
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
        Left = 184
        Top = 9
        Width = 32
        Height = 19
        Caption = #1044#1072#1090#1072
      end
      object RzLabel3: TRzLabel
        Left = 364
        Top = 10
        Width = 57
        Height = 19
        Caption = #1055#1072#1088#1090#1085#1077#1088
      end
      object RzLabel4: TRzLabel
        Left = 486
        Top = 42
        Width = 46
        Height = 19
        Caption = #1057#1090#1072#1090#1091#1089
      end
      object RzLabel5: TRzLabel
        Left = 8
        Top = 42
        Width = 45
        Height = 19
        Caption = #1057#1091#1084#1084#1072
      end
      object RzDBEdit1: TRzDBEdit
        Left = 54
        Top = 6
        Width = 121
        Height = 27
        DataSource = srMoneyInHead
        DataField = 'F_NUMBER'
        TabOrder = 0
      end
      object RzDBLookupComboBox1: TRzDBLookupComboBox
        Left = 544
        Top = 39
        Width = 145
        Height = 27
        DataField = 'F_STATE'
        DataSource = srMoneyInHead
        KeyField = 'f_id'
        ListField = 'f_name'
        ListSource = DM.srStateSource
        TabOrder = 1
      end
      object RzDBDateTimeEdit1: TRzDBDateTimeEdit
        Left = 230
        Top = 6
        Width = 121
        Height = 27
        DataSource = srMoneyInHead
        DataField = 'F_DATE'
        TabOrder = 2
        EditType = etDate
      end
      object RzDBButtonEdit1: TRzDBButtonEdit
        Left = 433
        Top = 6
        Width = 256
        Height = 27
        DataSource = srMoneyInHead
        DataField = 'F_PARTNER_NAME'
        TabOrder = 3
        OnButtonClick = RzDBButtonEdit1ButtonClick
      end
      object BtnMakePay: TButton
        Left = 230
        Top = 42
        Width = 121
        Height = 25
        Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100
        TabOrder = 4
        OnClick = BtnMakePayClick
      end
      object RzDBMemo1: TRzDBMemo
        Left = 2
        Top = 73
        Width = 774
        Height = 42
        Align = alBottom
        DataField = 'F_DOP_INFO'
        DataSource = srMoneyInHead
        TabOrder = 5
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 143
      Width = 778
      Height = 238
      Align = alClient
      TabOrder = 2
      LookAndFeel.SkinName = 'MoneyTwins'
      LookAndFeel.SkinName = 'MoneyTwins'
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = srMoneyInBody
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = cxGrid1DBTableView1F_SUMMA
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Navigator = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        Styles.StyleSheet = DM.GridTableViewStyleSheetDevExpress
        object cxGrid1DBTableView1F_ID: TcxGridDBColumn
          DataBinding.FieldName = 'F_ID'
          Visible = False
        end
        object cxGrid1DBTableView1F_DOC: TcxGridDBColumn
          DataBinding.FieldName = 'F_DOC'
          Visible = False
        end
        object cxGrid1DBTableView1F_PAY: TcxGridDBColumn
          DataBinding.FieldName = 'F_PAY'
          Visible = False
        end
        object cxGrid1DBTableView1F_DOC_INFO: TcxGridDBColumn
          DataBinding.FieldName = 'F_DOC_INFO'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Width = 618
        end
        object cxGrid1DBTableView1F_SUMMA: TcxGridDBColumn
          DataBinding.FieldName = 'F_SUMMA'
          Width = 121
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object RzDBNumericEdit1: TRzDBNumericEdit [2]
    Left = 55
    Top = 69
    Width = 121
    Height = 27
    DataSource = srMoneyInHead
    DataField = 'F_SUMMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    IntegersOnly = False
    DisplayFormat = '.00;(,00)'
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dsMoneyInHead: TpFIBDataSet
    UpdateSQL.Strings = (
      'execute procedure SP_T_MONEY_OUT_U(:f_pay,'
      '    :F_SKLAD,'
      '    :F_PARTNER,'
      '    :F_BANK,'
      '    :F_NUMBER,'
      '    :F_DATE,'
      '    :F_STATE,'
      '    :F_SUMMA,'
      '    :F_TYPE,'
      '    :F_DOP_INFO)')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID as f_pay,'
      '    F_SKLAD,'
      '    F_PARTNER,'
      '    F_PARTNER_NAME,'
      '    F_BANK,'
      '    F_BANK_NAME,'
      '    F_NUMBER,'
      '    F_DATE,'
      '    F_STATE_NAME,'
      '    F_STATE,'
      '    F_SUMMA,'
      '    F_TYPE_NAME,'
      '    F_TYPE,'
      '    f_dop_info'
      'FROM'
      '    SP_T_MONEY_OUT_GET(:F_pay,'
      '    :F_MONEY_TYPE) ')
    AfterOpen = dsMoneyInHeadAfterOpen
    AfterPost = dsMoneyInBodyAfterPost
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 32
    Top = 56
    object dsMoneyInHeadF_SKLAD: TFIBBCDField
      FieldName = 'F_SKLAD'
      Size = 0
    end
    object dsMoneyInHeadF_PARTNER: TFIBBCDField
      FieldName = 'F_PARTNER'
      Size = 0
    end
    object dsMoneyInHeadF_PARTNER_NAME: TFIBStringField
      FieldName = 'F_PARTNER_NAME'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsMoneyInHeadF_BANK: TFIBBCDField
      FieldName = 'F_BANK'
      Size = 0
    end
    object dsMoneyInHeadF_BANK_NAME: TFIBStringField
      FieldName = 'F_BANK_NAME'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsMoneyInHeadF_NUMBER: TFIBStringField
      FieldName = 'F_NUMBER'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsMoneyInHeadF_DATE: TFIBDateField
      FieldName = 'F_DATE'
    end
    object dsMoneyInHeadF_STATE_NAME: TFIBStringField
      FieldName = 'F_STATE_NAME'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsMoneyInHeadF_STATE: TFIBBCDField
      FieldName = 'F_STATE'
      Size = 0
    end
    object dsMoneyInHeadF_SUMMA: TFIBFloatField
      FieldName = 'F_SUMMA'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object dsMoneyInHeadF_TYPE_NAME: TFIBStringField
      FieldName = 'F_TYPE_NAME'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsMoneyInHeadF_TYPE: TFIBBCDField
      FieldName = 'F_TYPE'
      Size = 0
    end
    object dsMoneyInHeadF_PAY: TFIBBCDField
      FieldName = 'F_PAY'
      Size = 0
    end
    object dsMoneyInHeadF_DOP_INFO: TFIBStringField
      FieldName = 'F_DOP_INFO'
      Size = 10000
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object srMoneyInHead: TDataSource
    DataSet = dsMoneyInHead
    Left = 40
    Top = 64
  end
  object dsMoneyInBody: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'execute procedure SP_T_MONEY_OUT_STR_U(:f_id,:f_doc,:f_pay,:f_su' +
        'mma)')
    DeleteSQL.Strings = (
      'execute procedure SP_T_MONEY_OUT_STR_D(:f_id)')
    InsertSQL.Strings = (
      'execute procedure SP_T_MONEY_OUT_STR_I('
      '    :F_ID,'
      '    :F_DOC,'
      '    :F_pay,'
      '    :F_SUMMA)')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_DOC,'
      '    F_MONEY as f_pay,'
      '    F_SUMMA,'
      '    F_DOC_INFO'
      'FROM'
      '    SP_T_MONEY_OUT_STR_S(:F_pay) ')
    AutoUpdateOptions.ParamsToFieldsLinks.Strings = (
      'F_PAY=F_PAY')
    AutoUpdateOptions.AutoParamsToFields = True
    AfterDelete = dsMoneyInBodyAfterDelete
    AfterPost = dsMoneyInBodyAfterPost
    OnNewRecord = dsMoneyInBodyNewRecord
    Database = DM.pFIBDatabase
    AutoCommit = True
    DataSource = srMoneyInHead
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 208
    Top = 248
    dcForceOpen = True
    object dsMoneyInBodyF_ID: TFIBBCDField
      Tag = 1
      FieldName = 'F_ID'
      Visible = False
      Size = 0
    end
    object dsMoneyInBodyF_DOC: TFIBBCDField
      FieldName = 'F_DOC'
      Visible = False
      Size = 0
    end
    object dsMoneyInBodyF_PAY: TFIBBCDField
      FieldName = 'F_PAY'
      Visible = False
      Size = 0
    end
    object dsMoneyInBodyF_SUMMA: TFIBFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1088#1072#1079#1085#1086#1089#1082#1080
      FieldName = 'F_SUMMA'
    end
    object dsMoneyInBodyF_DOC_INFO: TFIBStringField
      DisplayLabel = #1058#1086#1074#1072#1088#1085#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
      FieldName = 'F_DOC_INFO'
      ReadOnly = True
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object srMoneyInBody: TDataSource
    DataSet = dsMoneyInBody
    Left = 216
    Top = 256
  end
  object spMakePay: TpFIBStoredProc
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    SQL.Strings = (
      'EXECUTE PROCEDURE SP_MONEY_OUT_AUTO (?F_MONEY, ?F_SUM)')
    StoredProcName = 'SP_MONEY_out_AUTO'
    Left = 368
    Top = 248
  end
end
