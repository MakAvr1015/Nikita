inherited FrmNsiPartner: TFrmNsiPartner
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1087#1072#1088#1090#1085#1077#1088#1086#1074
  ClientHeight = 372
  ClientWidth = 845
  ExplicitWidth = 853
  ExplicitHeight = 399
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 353
    Width = 845
    ExplicitTop = 353
    ExplicitWidth = 845
    inherited DsFormName: TRzStatusPane
      Caption = 'dsNsiPartner'
    end
  end
  inherited Panel3: TPanel
    Width = 845
    Height = 353
    ExplicitWidth = 845
    ExplicitHeight = 353
    inherited RzToolbar: TRzToolbar
      Width = 843
      Height = 27
      ExplicitWidth = 843
      ExplicitHeight = 27
      ToolbarControls = (
        BtnNew
        BtnEdit
        BtnView
        BtnOpen
        BtnFind
        BtnRefresh
        BtnPrint
        BtnOK
        BtnCancel
        BtnDelete
        BtnSave
        BtnExit)
      inherited BtnNew: TRzToolButton
        OnClick = BtnNewClick
      end
      inherited BtnOpen: TRzToolButton
        Enabled = True
        OnClick = BtnOpenClick
      end
      inherited BtnFind: TRzToolButton
        Left = 104
        ExplicitLeft = 104
      end
      inherited BtnRefresh: TRzToolButton
        Left = 129
        Enabled = True
        OnClick = BtnRefreshClick
        ExplicitLeft = 129
      end
      inherited BtnEdit: TRzToolButton
        Enabled = True
        OnClick = BtnEditClick
      end
      inherited BtnExecute: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnDelete: TRzToolButton
        Left = 243
        Enabled = True
        Visible = True
        ExplicitLeft = 243
      end
      inherited BtnSave: TRzToolButton
        Left = 268
        ExplicitLeft = 268
      end
      inherited BtnExit: TRzToolButton
        Left = 293
        ExplicitLeft = 293
      end
      inherited BtnView: TRzToolButton
        Visible = False
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 28
      Width = 843
      Height = 324
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'MoneyTwins'
      LookAndFeel.SkinName = 'MoneyTwins'
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = BtnEditClick
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = srNsiPartner
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.IncSearchItem = cxGrid1DBTableView1F_NAME
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        Styles.StyleSheet = DM.GridTableViewStyleSheetDevExpress
        object cxGrid1DBTableView1F_ID: TcxGridDBColumn
          DataBinding.FieldName = 'F_ID'
          Visible = False
        end
        object cxGrid1DBTableView1F_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_NAME'
          Width = 132
        end
        object cxGrid1DBTableView1F_U_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_U_NAME'
          Width = 213
        end
        object cxGrid1DBTableView1F_U_ADDRES: TcxGridDBColumn
          DataBinding.FieldName = 'F_U_ADDRES'
          Width = 135
        end
        object cxGrid1DBTableView1F_INN: TcxGridDBColumn
          DataBinding.FieldName = 'F_INN'
          Width = 58
        end
        object cxGrid1DBTableView1F_KPP: TcxGridDBColumn
          DataBinding.FieldName = 'F_KPP'
          Width = 57
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
  object dsNsiPartner: TpFIBDataSet
    DeleteSQL.Strings = (
      'execute procedure SP_T_NSI_partner_D(:f_id)')
    InsertSQL.Strings = (
      
        'execute procedure SP_T_NSI_PARTNER_I(null,:F_NAME,:F_U_NAME,:F_U' +
        '_ADDRES,:F_INN,:F_KPP) ')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_NAME,'
      '    F_U_NAME,'
      '    F_U_ADDRES,'
      '    F_INN,'
      '    F_KPP'
      'FROM'
      '    SP_T_NSI_PARTNER_S ')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 352
    Top = 56
    object dsNsiPartnerF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
      RoundByScale = True
    end
    object dsNsiPartnerF_NAME: TFIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'F_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsNsiPartnerF_U_NAME: TFIBStringField
      DisplayLabel = #1070#1088'.'#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'F_U_NAME'
      Size = 255
      EmptyStrToNull = True
    end
    object dsNsiPartnerF_U_ADDRES: TFIBStringField
      DisplayLabel = #1070#1088'.'#1072#1076#1088#1077#1089
      FieldName = 'F_U_ADDRES'
      Size = 255
      EmptyStrToNull = True
    end
    object dsNsiPartnerF_INN: TFIBStringField
      DisplayLabel = #1048#1053#1053
      FieldName = 'F_INN'
      EmptyStrToNull = True
    end
    object dsNsiPartnerF_KPP: TFIBStringField
      DisplayLabel = #1050#1055#1055
      FieldName = 'F_KPP'
      EmptyStrToNull = True
    end
  end
  object srNsiPartner: TDataSource
    DataSet = dsNsiPartner
    Left = 368
    Top = 72
  end
end
