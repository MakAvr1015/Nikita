inherited FrmNsiParnerEdit: TFrmNsiParnerEdit
  BorderStyle = bsDialog
  Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1087#1072#1088#1090#1085#1077#1088#1072
  ClientHeight = 421
  ClientWidth = 491
  ExplicitWidth = 497
  ExplicitHeight = 446
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 402
    Width = 491
    ExplicitTop = 402
    ExplicitWidth = 491
  end
  inherited Panel3: TPanel
    Width = 491
    Height = 402
    ExplicitWidth = 491
    ExplicitHeight = 402
    object RzLabel1: TRzLabel [0]
      Left = 8
      Top = 39
      Width = 48
      Height = 13
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077
    end
    object RzLabel2: TRzLabel [1]
      Left = 8
      Top = 63
      Width = 67
      Height = 13
      Caption = #1070#1088'.'#1085#1072#1079#1074#1072#1085#1080#1077
    end
    object RzLabel3: TRzLabel [2]
      Left = 8
      Top = 87
      Width = 50
      Height = 13
      Caption = #1070#1088'.'#1072#1076#1088#1077#1089
    end
    object RzLabel4: TRzLabel [3]
      Left = 8
      Top = 112
      Width = 21
      Height = 13
      Caption = #1048#1053#1053
    end
    object RzLabel5: TRzLabel [4]
      Left = 293
      Top = 112
      Width = 21
      Height = 13
      Caption = #1050#1055#1055
    end
    object RzLabel6: TRzLabel [5]
      Left = 148
      Top = 183
      Width = 38
      Height = 13
      Caption = #1057#1082#1080#1076#1082#1072
    end
    object RzLabel7: TRzLabel [6]
      Left = 8
      Top = 183
      Width = 49
      Height = 13
      Caption = #1054#1090#1089#1088#1086#1095#1082#1072
    end
    object RzLabel8: TRzLabel [7]
      Left = 269
      Top = 205
      Width = 56
      Height = 13
      Caption = #1044#1077#1073#1080#1090#1086#1088#1082#1072
    end
    object RzLabel9: TRzLabel [8]
      Left = 276
      Top = 176
      Width = 79
      Height = 26
      Caption = #1055#1088#1077#1076#1077#1083#1100#1085#1072#1103' '#1079#1072#1076#1086#1083#1078#1077#1085#1085#1086#1089#1090#1100
      WordWrap = True
    end
    object RzLabel10: TRzLabel [9]
      Left = 8
      Top = 205
      Width = 93
      Height = 13
      Caption = #1057#1088#1077#1076#1085#1103#1103' '#1086#1090#1075#1088#1091#1079#1082#1072
    end
    object RzLabel11: TRzLabel [10]
      Left = 139
      Top = 205
      Width = 83
      Height = 13
      Caption = #1057#1088#1077#1076#1085#1103#1103' '#1086#1087#1083#1072#1090#1072
    end
    object RzDBLabel1: TRzDBLabel [11]
      Left = 8
      Top = 221
      Width = 111
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      BorderInner = fsLowered
      BorderColor = clBtnText
      DataField = 'F_AVG_OUT'
      DataSource = srPartnerCard
    end
    object RzDBLabel2: TRzDBLabel [12]
      Left = 139
      Top = 221
      Width = 111
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      BorderInner = fsLowered
      BorderColor = clBtnText
      DataField = 'F_AVG_PAY'
      DataSource = srPartnerCard
    end
    object RzDBLabel3: TRzDBLabel [13]
      Left = 269
      Top = 221
      Width = 111
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      BorderInner = fsLowered
      BorderColor = clBtnText
      DataField = 'F_DEB_SUM'
      DataSource = srPartnerCard
    end
    inherited RzToolbar: TRzToolbar
      Width = 489
      Height = 27
      ExplicitWidth = 489
      ExplicitHeight = 27
      ToolbarControls = (
        BtnNew
        BtnEdit
        BtnView
        BtnOpen
        BtnRefresh
        BtnFind
        BtnPrint
        BtnOK
        BtnCancel)
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
      inherited BtnView: TRzToolButton
        Top = 2
        Visible = False
        ExplicitTop = 2
      end
    end
    object Ed_U_NAME: TRzDBEdit
      Left = 79
      Top = 62
      Width = 402
      Height = 21
      DataSource = srEditNsiPartner
      DataField = 'F_U_NAME'
      TabOrder = 1
    end
    object EdName: TRzDBEdit
      Left = 79
      Top = 35
      Width = 402
      Height = 21
      DataSource = srEditNsiPartner
      DataField = 'F_NAME'
      TabOrder = 2
    end
    object RzDBEdit1: TRzDBEdit
      Left = 79
      Top = 87
      Width = 402
      Height = 21
      DataSource = srEditNsiPartner
      DataField = 'F_U_ADDRES'
      TabOrder = 3
    end
    object RzDBEdit2: TRzDBEdit
      Left = 79
      Top = 112
      Width = 121
      Height = 21
      DataSource = srEditNsiPartner
      DataField = 'F_INN'
      TabOrder = 4
    end
    object RzDBEdit3: TRzDBEdit
      Left = 360
      Top = 112
      Width = 121
      Height = 21
      DataSource = srEditNsiPartner
      DataField = 'F_KPP'
      TabOrder = 5
    end
    object RzPageControl1: TRzPageControl
      Left = 1
      Top = 269
      Width = 489
      Height = 132
      ActivePage = TabSheet1
      Align = alBottom
      TabIndex = 0
      TabOrder = 6
      TabStyle = tsRoundCorners
      FixedDimension = 19
      object TabSheet1: TRzTabSheet
        Color = clGradientActiveCaption
        Caption = #1041#1072#1085#1082#1086#1074#1089#1082#1080#1077' '#1088#1077#1082#1074#1080#1079#1080#1090#1099
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 485
          Height = 106
          Align = alClient
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            NavigatorButtons.OnButtonClick = cxGrid1DBTableView1NavigatorButtonsButtonClick
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.Images = DM.ImageList
            NavigatorButtons.Insert.ImageIndex = 0
            NavigatorButtons.Insert.Visible = True
            NavigatorButtons.Delete.ImageIndex = 10
            NavigatorButtons.Delete.Visible = True
            NavigatorButtons.Edit.ImageIndex = 28
            NavigatorButtons.Cancel.Visible = False
            NavigatorButtons.Refresh.ImageIndex = 26
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            DataController.DataSource = srPartnerBanls
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Navigator = True
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1F_PARTNER_BANK: TcxGridDBColumn
              DataBinding.FieldName = 'F_PARTNER_BANK'
              Visible = False
            end
            object cxGrid1DBTableView1F_PARTNER: TcxGridDBColumn
              DataBinding.FieldName = 'F_PARTNER'
              Visible = False
            end
            object cxGrid1DBTableView1F_BANK: TcxGridDBColumn
              DataBinding.FieldName = 'F_BANK'
              Visible = False
            end
            object cxGrid1DBTableView1F_BANK_NAME: TcxGridDBColumn
              DataBinding.FieldName = 'F_BANK_NAME'
              PropertiesClassName = 'TcxLabelProperties'
              Options.Editing = False
              Width = 116
            end
            object cxGrid1DBTableView1F_BANK_ADRES: TcxGridDBColumn
              DataBinding.FieldName = 'F_BANK_ADRES'
              PropertiesClassName = 'TcxLabelProperties'
              Options.Editing = False
              Width = 125
            end
            object cxGrid1DBTableView1F_BANK_KPP: TcxGridDBColumn
              DataBinding.FieldName = 'F_BANK_KPP'
              PropertiesClassName = 'TcxLabelProperties'
              Options.Editing = False
              Width = 55
            end
            object cxGrid1DBTableView1F_BANK_INN: TcxGridDBColumn
              DataBinding.FieldName = 'F_BANK_INN'
              PropertiesClassName = 'TcxLabelProperties'
              Options.Editing = False
              Width = 52
            end
            object cxGrid1DBTableView1F_BANK_K_SCH: TcxGridDBColumn
              DataBinding.FieldName = 'F_BANK_K_SCH'
              PropertiesClassName = 'TcxLabelProperties'
              Options.Editing = False
              Width = 58
            end
            object cxGrid1DBTableView1F_R_SCH: TcxGridDBColumn
              DataBinding.FieldName = 'F_R_SCH'
              Width = 81
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object TabSheet2: TRzTabSheet
        Color = clGradientActiveCaption
        Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 485
          Height = 106
          Align = alClient
          TabOrder = 0
          object cxGrid2DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = srDopInfo
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object cxGrid2DBTableView1F_PARTNER_INFO: TcxGridDBColumn
              DataBinding.FieldName = 'F_PARTNER_INFO'
              Visible = False
            end
            object cxGrid2DBTableView1F_PARTNER: TcxGridDBColumn
              DataBinding.FieldName = 'F_PARTNER'
              Visible = False
            end
            object cxGrid2DBTableView1F_INFO: TcxGridDBColumn
              Caption = #1055#1072#1088#1072#1084#1077#1090#1088
              DataBinding.FieldName = 'F_INFO_NAME'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownAutoSize = True
              Properties.DropDownListStyle = lsFixedList
              Properties.KeyFieldNames = 'F_ID'
              Properties.ListColumns = <
                item
                  Caption = #1055#1072#1088#1072#1084#1077#1090#1088
                  FieldName = 'F_NAME'
                end>
              Properties.ListSource = srListNames
              Width = 187
            end
            object cxGrid2DBTableView1F_INFO_NAME: TcxGridDBColumn
              DataBinding.FieldName = 'F_INFO_NAME'
              Visible = False
            end
            object cxGrid2DBTableView1F_VALUE: TcxGridDBColumn
              DataBinding.FieldName = 'F_VALUE'
              Width = 296
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableView1
          end
        end
      end
      object TabSheet3: TRzTabSheet
        Color = clGradientActiveCaption
        Caption = #1044#1080#1089#1082#1086#1085#1090#1085#1099#1077' '#1082#1072#1088#1090#1099
        object cxGrid3: TcxGrid
          Left = 0
          Top = 0
          Width = 485
          Height = 106
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.OnButtonClick = cxGridDBTableView1NavigatorButtonsButtonClick
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.Images = DM.ImageList
            NavigatorButtons.Insert.ImageIndex = 0
            NavigatorButtons.Delete.ImageIndex = 6
            NavigatorButtons.Edit.ImageIndex = 28
            NavigatorButtons.Cancel.Visible = False
            NavigatorButtons.Refresh.ImageIndex = 26
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            DataController.DataSource = srDiscountCards
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Navigator = True
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object cxGridDBTableView1F_DISCOUNT_PARTNER: TcxGridDBColumn
              DataBinding.FieldName = 'F_DISCOUNT_PARTNER'
              Visible = False
            end
            object cxGridDBTableView1F_DISCOUNT_ID: TcxGridDBColumn
              DataBinding.FieldName = 'F_DISCOUNT_ID'
              Visible = False
            end
            object cxGridDBTableView1F_NUMBER: TcxGridDBColumn
              DataBinding.FieldName = 'F_NUMBER'
            end
            object cxGridDBTableView1F_DISCOUNT: TcxGridDBColumn
              DataBinding.FieldName = 'F_DISCOUNT'
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
    end
    object RzDBEdit4: TRzDBEdit
      Left = 203
      Top = 179
      Width = 65
      Height = 21
      DataSource = srPartnerCard
      DataField = 'F_DISCOUNT'
      TabOrder = 7
    end
    object RzDBEdit5: TRzDBEdit
      Left = 78
      Top = 179
      Width = 65
      Height = 21
      DataSource = srPartnerCard
      DataField = 'F_PAY_DAY'
      TabOrder = 8
    end
    object RzDBEdit7: TRzDBEdit
      Left = 360
      Top = 179
      Width = 121
      Height = 21
      DataSource = srPartnerCard
      DataField = 'F_MAX_DEB'
      TabOrder = 9
    end
    object RzButton1: TRzButton
      Left = 401
      Top = 221
      Width = 80
      Height = 21
      Caption = #1040#1082#1090' '#1089#1074#1077#1088#1082#1080
      TabOrder = 10
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dsEditNsiPartner: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'EXECUTE PROCEDURE SP_T_NSI_PARTNER_U(:F_ID, :F_NAME, :F_U_NAME, ' +
        ':F_U_ADDRES, :F_INN, :F_KPP)')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_NAME,'
      '    F_U_NAME,'
      '    F_U_ADDRES,'
      '    F_INN,'
      '    F_KPP'
      'FROM'
      '    SP_T_NSI_PARTNER_GET(:NSI_ID) ')
    AfterOpen = dsEditNsiPartnerAfterOpen
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 440
    Top = 40
    object dsEditNsiPartnerF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
    end
    object dsEditNsiPartnerF_NAME: TFIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'F_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsEditNsiPartnerF_U_NAME: TFIBStringField
      DisplayLabel = #1070#1088'.'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'F_U_NAME'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsEditNsiPartnerF_U_ADDRES: TFIBStringField
      DisplayLabel = #1070#1088'.'#1072#1076#1088#1077#1089
      FieldName = 'F_U_ADDRES'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsEditNsiPartnerF_INN: TFIBStringField
      DisplayLabel = #1048#1053#1053
      FieldName = 'F_INN'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsEditNsiPartnerF_KPP: TFIBStringField
      DisplayLabel = #1050#1055#1055
      FieldName = 'F_KPP'
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object pFIBTransaction: TpFIBTransaction
    DefaultDatabase = DM.pFIBDatabase
    Left = 416
    Top = 16
  end
  object srEditNsiPartner: TDataSource
    DataSet = dsEditNsiPartner
    Left = 424
    Top = 40
  end
  object dsPartnerBanls: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'execute procedure SP_T_PARTNER_BANK_U(:f_partner_bank,:F_id,:F_B' +
        'ANK,:F_R_SCH)')
    DeleteSQL.Strings = (
      'execute procedure SP_T_PARTNER_BANK_D(:f_partner_bank)')
    InsertSQL.Strings = (
      
        'execute procedure SP_T_PARTNER_BANK_I(:f_partner_bank,:F_id,:F_B' +
        'ANK,:F_R_SCH)')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID f_partner_bank,'
      '    F_PARTNER,'
      '    F_BANK,'
      '    F_BANK_NAME,'
      '    F_BANK_KPP,'
      '    F_BANK_INN,'
      '    F_BANK_ADRES,'
      '    F_BANK_K_SCH,'
      '    F_R_SCH'
      'FROM'
      '    SP_T_PARTNER_BANK_S(:F_ID) ')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DataSource = srEditNsiPartner
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 272
    Top = 24
    object dsPartnerBanlsF_PARTNER_BANK: TFIBBCDField
      FieldName = 'F_PARTNER_BANK'
      Size = 0
    end
    object dsPartnerBanlsF_PARTNER: TFIBBCDField
      FieldName = 'F_PARTNER'
      Size = 0
    end
    object dsPartnerBanlsF_BANK: TFIBBCDField
      FieldName = 'F_BANK'
      Size = 0
    end
    object dsPartnerBanlsF_BANK_NAME: TFIBStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077
      FieldName = 'F_BANK_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsPartnerBanlsF_BANK_KPP: TFIBStringField
      DisplayLabel = #1050#1087#1087
      FieldName = 'F_BANK_KPP'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsPartnerBanlsF_BANK_INN: TFIBStringField
      DisplayLabel = #1048#1085#1085
      FieldName = 'F_BANK_INN'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsPartnerBanlsF_BANK_ADRES: TFIBStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      FieldName = 'F_BANK_ADRES'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsPartnerBanlsF_BANK_K_SCH: TFIBStringField
      DisplayLabel = #1050#1086#1088#1088' '#1089#1095#1077#1090
      FieldName = 'F_BANK_K_SCH'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsPartnerBanlsF_R_SCH: TFIBStringField
      DisplayLabel = #1056#1072#1089#1095'. '#1089#1095#1077#1090
      FieldName = 'F_R_SCH'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object srPartnerBanls: TDataSource
    DataSet = dsPartnerBanls
    Left = 280
    Top = 32
  end
  object dsDopInfo: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'EXECUTE PROCEDURE SP_T_NSI_PARTNER_INFO_U(:f_partner_info, :f_pa' +
        'rtner, :F_INFO_NAME, :F_INFO_value)')
    DeleteSQL.Strings = (
      'EXECUTE PROCEDURE SP_T_NSI_PARTNER_INFO_D(:f_partner_info)')
    InsertSQL.Strings = (
      
        'EXECUTE PROCEDURE SP_T_NSI_PARTNER_INFO_I(:f_partner_info,:f_par' +
        'tner ,:f_info_name , :f_value)')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID as f_partner_info,'
      '    F_PARTNER,'
      '    F_INFO,'
      '    F_INFO_NAME,'
      '    F_VALUE'
      'FROM'
      '    SP_T_NSI_PARTNER_INFO_S(:F_ID) ')
    AutoUpdateOptions.ParamsToFieldsLinks.Strings = (
      'F_PARTNER=F_ID')
    AfterPost = dsDopInfoAfterPost
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    AutoCommit = True
    DataSource = srEditNsiPartner
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 56
    Top = 312
    dcForceOpen = True
    object dsDopInfoF_PARTNER_INFO: TFIBBCDField
      FieldName = 'F_PARTNER_INFO'
      Size = 0
    end
    object dsDopInfoF_PARTNER: TFIBBCDField
      FieldName = 'F_PARTNER'
      Size = 0
    end
    object dsDopInfoF_INFO: TFIBStringField
      DisplayLabel = #1055#1072#1088#1072#1084#1077#1090#1088
      FieldName = 'F_INFO'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDopInfoF_INFO_NAME: TFIBBCDField
      FieldName = 'F_INFO_NAME'
      Size = 0
    end
    object dsDopInfoF_VALUE: TFIBStringField
      DisplayLabel = #1047#1085#1072#1095#1077#1085#1080#1077
      FieldName = 'F_VALUE'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object srDopInfo: TDataSource
    DataSet = dsDopInfo
    Left = 64
    Top = 320
  end
  object dsListNames: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_NAME'
      'FROM'
      '    T_NSI_INFO_NAME ')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 168
    Top = 280
  end
  object srListNames: TDataSource
    DataSet = dsListNames
    Left = 176
    Top = 296
  end
  object dsDiscountCards: TpFIBDataSet
    UpdateSQL.Strings = (
      '')
    DeleteSQL.Strings = (
      'EXECUTE PROCEDURE SP_T_PARTNER_DISCOUNT_D(:f_discount_partner)')
    InsertSQL.Strings = (
      
        'EXECUTE PROCEDURE SP_T_PARTNER_DISCOUNT_I(:f_discount_partner, :' +
        'f_partner, :F_discount_id)')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID as f_discount_partner,'
      '    F_discount_id,'
      '    F_number,'
      '    F_discount,'
      '    f_partner'
      'FROM'
      '    SP_T_PARTNER_DISCOUNT_S(:F_ID) ')
    AutoUpdateOptions.ParamsToFieldsLinks.Strings = (
      'F_PARTNER=F_ID')
    AfterPost = dsDopInfoAfterPost
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    AutoCommit = True
    DataSource = srEditNsiPartner
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 320
    Top = 56
    dcForceOpen = True
    object dsDiscountCardsF_DISCOUNT_PARTNER: TFIBBCDField
      FieldName = 'F_DISCOUNT_PARTNER'
      Visible = False
      Size = 0
    end
    object dsDiscountCardsF_DISCOUNT_ID: TFIBBCDField
      FieldName = 'F_DISCOUNT_ID'
      Visible = False
      Size = 0
    end
    object dsDiscountCardsF_NUMBER: TFIBStringField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'F_NUMBER'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDiscountCardsF_DISCOUNT: TFIBBCDField
      DisplayLabel = #1057#1082#1080#1076#1082#1072
      FieldName = 'F_DISCOUNT'
      Size = 3
    end
    object dsDiscountCardsF_PARTNER: TFIBBCDField
      FieldName = 'F_PARTNER'
      Size = 0
    end
  end
  object srDiscountCards: TDataSource
    DataSet = dsDiscountCards
    Left = 328
    Top = 64
  end
  object dsPartnerCard: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'execute procedure SP_T_NSI_PARTNER_CARD_SET(:f_partner,:f_str_da' +
        'te,:f_end_date,'
      '  :f_discount_type,'
      '  :f_discount,'
      '  :f_pay_day,'
      '   :f_max_deb)')
    InsertSQL.Strings = (
      
        'execute procedure SP_T_NSI_PARTNER_CARD_SET(:f_partner,:f_str_da' +
        'te,:f_end_date,'
      '  :f_discount_type,'
      '  :f_discount,'
      '  :f_pay_day,'
      '   :f_max_deb)')
    SelectSQL.Strings = (
      'select cast(:F_ID as bigint) as f_partner,'
      '  f_str_date,'
      '  f_end_date,'
      '  f_max_deb,'
      '  f_discount_type,'
      '  f_discount,'
      '  f_pay_day,'
      '  f_avg_out,'
      '  f_avg_pay,'
      '  f_deb_sum'
      'from SP_T_NSI_PARTNER_CARD_GET(:F_ID)')
    AutoUpdateOptions.ParamsToFieldsLinks.Strings = (
      'F_PARTNER=F_ID')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DataSource = srEditNsiPartner
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 224
    Top = 224
    object dsPartnerCardF_PARTNER: TFIBBCDField
      FieldName = 'F_PARTNER'
      Size = 0
    end
    object dsPartnerCardF_STR_DATE: TFIBDateField
      FieldName = 'F_STR_DATE'
    end
    object dsPartnerCardF_END_DATE: TFIBDateField
      FieldName = 'F_END_DATE'
    end
    object dsPartnerCardF_DISCOUNT_TYPE: TFIBBCDField
      FieldName = 'F_DISCOUNT_TYPE'
      Size = 0
    end
    object dsPartnerCardF_DISCOUNT: TFIBBCDField
      FieldName = 'F_DISCOUNT'
      Size = 3
    end
    object dsPartnerCardF_PAY_DAY: TFIBBCDField
      FieldName = 'F_PAY_DAY'
      Size = 0
    end
    object dsPartnerCardF_AVG_OUT: TFIBBCDField
      FieldName = 'F_AVG_OUT'
      Size = 3
    end
    object dsPartnerCardF_AVG_PAY: TFIBBCDField
      FieldName = 'F_AVG_PAY'
      Size = 3
    end
    object dsPartnerCardF_DEB_SUM: TFIBBCDField
      FieldName = 'F_DEB_SUM'
      Size = 3
    end
    object dsPartnerCardF_MAX_DEB: TFIBBCDField
      FieldName = 'F_MAX_DEB'
      Size = 3
    end
  end
  object srPartnerCard: TDataSource
    DataSet = dsPartnerCard
    Left = 232
    Top = 232
  end
end
