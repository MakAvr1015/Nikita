inherited FrmNsiSklad: TFrmNsiSklad
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1089#1082#1083#1072#1076#1086#1074
  ExplicitWidth = 623
  ExplicitHeight = 350
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    inherited DsFormName: TRzStatusPane
      Caption = 'dsNsiSklad'
    end
  end
  inherited Panel3: TPanel
    inherited RzToolbar: TRzToolbar
      Height = 25
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
        ExplicitTop = 0
      end
      inherited BtnEdit: TRzToolButton
        Top = 0
        Caption = #1055#1088#1080#1093#1086#1076#1099
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
        Enabled = True
        Visible = True
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
    object cxGrid1: TcxGrid
      Left = 1
      Top = 26
      Width = 613
      Height = 277
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'MoneyTwins'
      LookAndFeel.SkinName = 'MoneyTwins'
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = BtnEditClick
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = srNsiSklad
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
          Width = 166
        end
        object cxGrid1DBTableView1F_ADDRES: TcxGridDBColumn
          DataBinding.FieldName = 'F_ADDRES'
          Width = 227
        end
        object cxGrid1DBTableView1F_PREFIX: TcxGridDBColumn
          DataBinding.FieldName = 'F_PREFIX'
          Width = 56
        end
        object cxGrid1DBTableView1F_DEBET: TcxGridDBColumn
          DataBinding.FieldName = 'F_DEBET'
          Width = 79
        end
        object cxGrid1DBTableView1F_CREDET: TcxGridDBColumn
          DataBinding.FieldName = 'F_CREDET'
          Width = 83
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
  object dsNsiSklad: TpFIBDataSet
    DeleteSQL.Strings = (
      'execute procedure SP_T_NSI_SKLAD_D(:f_id)')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_NAME,'
      '    F_ADDRES,'
      '    f_prefix,'
      '    f_debet,'
      '    f_credet'
      'FROM'
      '    SP_T_NSI_SKLAD_S ')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 240
    Top = 80
    object dsNsiSkladF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
      RoundByScale = True
    end
    object dsNsiSkladF_NAME: TFIBStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077
      FieldName = 'F_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsNsiSkladF_ADDRES: TFIBStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      FieldName = 'F_ADDRES'
      Size = 255
      EmptyStrToNull = True
    end
    object dsNsiSkladF_PREFIX: TFIBStringField
      DisplayLabel = #1055#1088#1077#1092#1080#1082#1089
      FieldName = 'F_PREFIX'
      Size = 2
      EmptyStrToNull = True
    end
    object dsNsiSkladF_DEBET: TFIBBCDField
      DisplayLabel = #1044#1077#1073#1080#1090#1086#1088#1082#1072
      FieldName = 'F_DEBET'
      EditFormat = '### ### ###.##'
      Size = 3
      RoundByScale = True
    end
    object dsNsiSkladF_CREDET: TFIBBCDField
      DisplayLabel = #1050#1088#1077#1076#1080#1090#1086#1088#1082#1072
      FieldName = 'F_CREDET'
      EditFormat = '### ### ###.##'
      Size = 3
      RoundByScale = True
    end
  end
  object pFIBTransaction: TpFIBTransaction
    DefaultDatabase = DM.pFIBDatabase
    TimeoutAction = TARollback
    Left = 328
    Top = 168
  end
  object srNsiSklad: TDataSource
    DataSet = dsNsiSklad
    Left = 272
    Top = 80
  end
end
