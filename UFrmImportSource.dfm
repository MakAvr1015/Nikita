inherited FrmImportSource: TFrmImportSource
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1080#1089#1090#1086#1095#1085#1080#1082#1086#1074' '#1080#1084#1087#1086#1088#1090#1072
  ClientHeight = 353
  ExplicitWidth = 623
  ExplicitHeight = 380
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 334
    ExplicitTop = 334
    inherited DsFormName: TRzStatusPane
      Caption = 'dsImportBase'
    end
  end
  inherited Panel3: TPanel
    Height = 334
    ExplicitHeight = 334
    inherited RzToolbar: TRzToolbar
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
        OnClick = BtnNewClick
      end
      inherited BtnDelete: TRzToolButton
        Enabled = True
      end
      inherited BtnView: TRzToolButton
        Visible = False
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 30
      Width = 613
      Height = 303
      Align = alClient
      TabOrder = 1
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = srImportBase
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1F_ID: TcxGridDBColumn
          DataBinding.FieldName = 'F_ID'
          Visible = False
        end
        object cxGrid1DBTableView1F_NAME: TcxGridDBColumn
          Caption = #1041#1072#1079#1072
          DataBinding.FieldName = 'F_NAME'
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
  object srImportBase: TDataSource
    DataSet = dsImportBase
    Left = 344
    Top = 240
  end
  object dsImportBase: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_EXT_BASE'
      'SET '
      '    F_NAME = :F_NAME'
      'WHERE'
      '    F_ID = :OLD_F_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    T_EXT_BASE'
      'WHERE'
      '        F_ID = :OLD_F_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO T_EXT_BASE('
      '    F_ID,'
      '    F_NAME'
      ')'
      'VALUES('
      '    :F_ID,'
      '    :F_NAME'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_NAME'
      'FROM'
      '    T_EXT_BASE '
      ''
      ' WHERE '
      '        T_EXT_BASE.F_ID = :OLD_F_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_NAME'
      'FROM'
      '    T_EXT_BASE ')
    AutoUpdateOptions.UpdateTableName = 'T_EXT_BASE'
    AutoUpdateOptions.KeyFields = 'F_ID'
    AutoUpdateOptions.GeneratorName = 'GEN_T_EXT_BASE_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 352
    Top = 248
    object dsImportBaseF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
      RoundByScale = True
    end
    object dsImportBaseF_NAME: TFIBStringField
      FieldName = 'F_NAME'
      Size = 60
      EmptyStrToNull = True
    end
  end
end
