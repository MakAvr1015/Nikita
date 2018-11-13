inherited FrmInventoryList: TFrmInventoryList
  Caption = #1046#1091#1088#1085#1072#1083' '#1080#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1081
  ClientWidth = 814
  ExplicitWidth = 822
  ExplicitHeight = 350
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Width = 814
    ExplicitWidth = 814
    inherited DsFormName: TRzStatusPane
      Caption = 'dsInventoryList'
    end
  end
  inherited Panel3: TPanel
    Width = 814
    ExplicitWidth = 814
    inherited RzToolbar: TRzToolbar
      Width = 812
      Height = 65
      ButtonLayout = blGlyphTop
      ButtonWidth = 60
      ButtonHeight = 40
      ShowButtonCaptions = True
      TextOptions = ttoCustom
      ExplicitWidth = 812
      ExplicitHeight = 65
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
        Layout = blGlyphTop
        OnClick = BtnNewClick
        ExplicitTop = 0
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnOpen: TRzToolButton
        Left = 225
        Top = 0
        Layout = blGlyphTop
        Enabled = True
        OnClick = BtnOpenClick
        ExplicitLeft = 225
        ExplicitTop = 0
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnFind: TRzToolButton
        Left = 345
        Top = 0
        Layout = blGlyphTop
        ExplicitLeft = 345
        ExplicitTop = 0
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnPrint: TRzToolButton
        Left = 405
        Top = 0
        Width = 74
        Height = 40
        Layout = blGlyphTop
        ExplicitLeft = 405
        ExplicitTop = 0
        ExplicitWidth = 74
        ExplicitHeight = 40
      end
      inherited BtnOK: TRzToolButton
        Left = 479
        Top = 0
        Layout = blGlyphTop
        ExplicitLeft = 479
        ExplicitTop = 0
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnCancel: TRzToolButton
        Left = 539
        Top = 0
        Layout = blGlyphTop
        ExplicitLeft = 539
        ExplicitTop = 0
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnRefresh: TRzToolButton
        Left = 285
        Top = 0
        Layout = blGlyphTop
        Enabled = True
        OnClick = BtnRefreshClick
        ExplicitLeft = 285
        ExplicitTop = 0
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnEdit: TRzToolButton
        Left = 64
        Top = 0
        Width = 87
        Height = 40
        Layout = blGlyphTop
        Enabled = True
        OnClick = BtnEditClick
        ExplicitLeft = 64
        ExplicitTop = 0
        ExplicitWidth = 87
        ExplicitHeight = 40
      end
      inherited BtnExecute: TRzToolButton
        Left = 599
        Top = 0
        Width = 64
        Height = 40
        Layout = blGlyphTop
        ExplicitLeft = 599
        ExplicitTop = 0
        ExplicitWidth = 64
        ExplicitHeight = 40
      end
      inherited BtnDelete: TRzToolButton
        Left = 663
        Top = 0
        Layout = blGlyphTop
        ExplicitLeft = 663
        ExplicitTop = 0
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnSave: TRzToolButton
        Left = 723
        Top = 0
        Width = 63
        Height = 40
        Layout = blGlyphTop
        ExplicitLeft = 723
        ExplicitTop = 0
        ExplicitWidth = 63
        ExplicitHeight = 40
      end
      inherited BtnExit: TRzToolButton
        Left = 4
        Top = 25
        Layout = blGlyphTop
        ExplicitLeft = 4
        ExplicitTop = 25
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnView: TRzToolButton
        Left = 151
        Top = 0
        Width = 74
        Height = 40
        Layout = blGlyphTop
        Visible = False
        ExplicitLeft = 151
        ExplicitTop = 0
        ExplicitWidth = 74
        ExplicitHeight = 40
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 66
      Width = 812
      Height = 237
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'MoneyTwins'
      LookAndFeel.SkinName = 'MoneyTwins'
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = BtnEditClick
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = srInventoryList
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.HeaderAutoHeight = True
        Styles.StyleSheet = DM.GridTableViewStyleSheetDevExpress
        object cxGrid1DBTableView1F_ID: TcxGridDBColumn
          DataBinding.FieldName = 'F_ID'
          Visible = False
        end
        object cxGrid1DBTableView1F_NUMBER: TcxGridDBColumn
          DataBinding.FieldName = 'F_NUMBER'
        end
        object cxGrid1DBTableView1F_DATE_START: TcxGridDBColumn
          DataBinding.FieldName = 'F_DATE_START'
        end
        object cxGrid1DBTableView1F_DATE_COMPLETE: TcxGridDBColumn
          DataBinding.FieldName = 'F_DATE_COMPLETE'
        end
        object cxGrid1DBTableView1F_SKLAD_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_SKLAD_NAME'
        end
        object cxGrid1DBTableView1F_SKLAD: TcxGridDBColumn
          DataBinding.FieldName = 'F_SKLAD'
          Visible = False
        end
        object cxGrid1DBTableView1F_STATE: TcxGridDBColumn
          DataBinding.FieldName = 'F_STATE'
          Visible = False
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
  object dsInventoryList: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from SP_T_INVENTORY_s')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 704
    Top = 192
    object dsInventoryListF_ID: TFIBBCDField
      Tag = 1
      FieldName = 'F_ID'
      Size = 0
      RoundByScale = True
    end
    object dsInventoryListF_NUMBER: TFIBStringField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'F_NUMBER'
      EmptyStrToNull = True
    end
    object dsInventoryListF_DATE_START: TFIBDateField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
      FieldName = 'F_DATE_START'
    end
    object dsInventoryListF_DATE_COMPLETE: TFIBDateField
      DisplayLabel = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
      FieldName = 'F_DATE_COMPLETE'
    end
    object dsInventoryListF_SKLAD_NAME: TFIBStringField
      DisplayLabel = #1057#1082#1083#1072#1076
      FieldName = 'F_SKLAD_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsInventoryListF_SKLAD: TFIBBCDField
      FieldName = 'F_SKLAD'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsInventoryListF_STATE: TFIBBCDField
      FieldName = 'F_STATE'
      Visible = False
      Size = 0
      RoundByScale = True
    end
  end
  object srInventoryList: TDataSource
    DataSet = dsInventoryList
    Left = 712
    Top = 200
  end
  object OpenDialog: TOpenDialog
    Left = 400
    Top = 232
  end
  object pFIBTransaction: TpFIBTransaction
    DefaultDatabase = DM.pFIBDatabase
    TimeoutAction = TARollback
    Left = 664
    Top = 128
  end
  object dsInventory: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'execute procedure SP_T_INVENTORY_U(:f_inv,:f_number,:f_date_star' +
        't,:f_date_complete,:f_sklad,:f_state)')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID as f_inv,'
      '    F_NUMBER,'
      '    F_DATE_START,'
      '    F_DATE_COMPLETE,'
      '    F_SKLAD_NAME,'
      '    F_SKLAD,'
      '    F_STATE'
      'FROM'
      '    SP_T_INVENTORY_GET(:F_INVENTORY) ')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 624
    Top = 128
  end
  object dsInventoryDoc: TpFIBDataSet
    UpdateSQL.Strings = (
      'execute procedure SP_T_INVENTORY_DOC_U'
      '('
      '    :f_inv_doc,'
      '    :F_NUMBER,'
      '    :F_MANAGER,'
      '    :F_DOC_COUNT,'
      '    :F_INVENTORY,'
      '    :F_STATE'
      ')')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID as f_inv_doc,'
      '    F_NUMBER,'
      '    F_MANAGER,'
      '    F_DOC_COUNT,'
      '    F_INVENTORY,'
      '    F_STATE,'
      '    F_STATE_NAME'
      'FROM'
      '    SP_T_INVENTORY_DOC_GET(:F_INVENTORY_DOC,'
      '    :F_INV)')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 624
    Top = 160
  end
  object prInventoryStr: TpFIBStoredProc
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    SQL.Strings = (
      
        'EXECUTE PROCEDURE SP_IMPORT_INVENTORY_DOC_STR (?F_NAME, ?F_ARTIC' +
        'LE, ?F_ED_IZM, ?F_COUNT, ?F_EXT_ID, ?F_EXT_BASE, ?F_DOC_ID)')
    StoredProcName = 'SP_IMPORT_INVENTORY_DOC_STR'
    Left = 664
    Top = 160
  end
end
