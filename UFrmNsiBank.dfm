inherited FrmNsiBank: TFrmNsiBank
  Caption = #1041#1072#1085#1082#1080
  ClientHeight = 360
  ClientWidth = 683
  ExplicitWidth = 691
  ExplicitHeight = 387
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 341
    Width = 683
    ExplicitTop = 341
    ExplicitWidth = 683
    inherited DsFormName: TRzStatusPane
      Caption = 'dsNsiBanks'
    end
  end
  inherited Panel3: TPanel
    Width = 683
    Height = 341
    ExplicitWidth = 683
    ExplicitHeight = 341
    inherited RzToolbar: TRzToolbar
      Width = 681
      Height = 27
      ExplicitWidth = 681
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
        BtnCancel
        BtnExecute)
      inherited BtnNew: TRzToolButton
        OnClick = BtnNewClick
      end
      inherited BtnOpen: TRzToolButton
        Enabled = True
      end
      inherited BtnRefresh: TRzToolButton
        Enabled = True
      end
      inherited BtnEdit: TRzToolButton
        OnClick = cxGrid1DBTableView1DblClick
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
        Visible = False
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 28
      Width = 681
      Height = 312
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'MoneyTwins'
      LookAndFeel.SkinName = 'MoneyTwins'
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid1DBTableView1DblClick
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = srNsiBanks
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
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
          Width = 127
        end
        object cxGrid1DBTableView1F_U_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_U_NAME'
          Width = 166
        end
        object cxGrid1DBTableView1F_U_ADDRES: TcxGridDBColumn
          DataBinding.FieldName = 'F_U_ADDRES'
          Width = 167
        end
        object cxGrid1DBTableView1F_INN: TcxGridDBColumn
          DataBinding.FieldName = 'F_INN'
          Width = 67
        end
        object cxGrid1DBTableView1F_KPP: TcxGridDBColumn
          DataBinding.FieldName = 'F_KPP'
          Width = 72
        end
        object cxGrid1DBTableView1F_K_SCH: TcxGridDBColumn
          DataBinding.FieldName = 'F_K_SCH'
          Width = 80
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
  object srNsiBanks: TDataSource
    DataSet = dsNsiBanks
    Left = 552
    Top = 168
  end
  object dsNsiBanks: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_NAME,'
      '    F_U_NAME,'
      '    F_U_ADDRES,'
      '    F_INN,'
      '    F_KPP,'
      '    F_K_SCH'
      'FROM'
      '    SP_T_NSI_BANK_S ')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 560
    Top = 160
    object dsNsiBanksF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
      RoundByScale = True
    end
    object dsNsiBanksF_NAME: TFIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'F_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsNsiBanksF_U_NAME: TFIBStringField
      DisplayLabel = #1070#1088'.'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'F_U_NAME'
      Size = 255
      EmptyStrToNull = True
    end
    object dsNsiBanksF_U_ADDRES: TFIBStringField
      DisplayLabel = #1070#1088'.'#1072#1076#1088#1077#1089
      FieldName = 'F_U_ADDRES'
      Size = 255
      EmptyStrToNull = True
    end
    object dsNsiBanksF_INN: TFIBStringField
      DisplayLabel = #1048#1053#1053
      FieldName = 'F_INN'
      EmptyStrToNull = True
    end
    object dsNsiBanksF_KPP: TFIBStringField
      DisplayLabel = #1050#1055#1055
      FieldName = 'F_KPP'
      EmptyStrToNull = True
    end
    object dsNsiBanksF_K_SCH: TFIBStringField
      DisplayLabel = #1050#1086#1088#1088'.'#1089#1095#1077#1090
      FieldName = 'F_K_SCH'
      Size = 60
      EmptyStrToNull = True
    end
  end
end
