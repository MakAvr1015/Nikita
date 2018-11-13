inherited FrmNsiPriceEd: TFrmNsiPriceEd
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1087#1088#1072#1081#1089'-'#1083#1080#1089#1090#1072
  ClientHeight = 313
  ClientWidth = 467
  ExplicitWidth = 473
  ExplicitHeight = 338
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 294
    Width = 467
    ExplicitTop = 290
    ExplicitWidth = 351
    inherited DsFormName: TRzStatusPane
      Caption = 'dsNsiPrice'
    end
  end
  inherited Panel3: TPanel
    Width = 467
    Height = 294
    ExplicitWidth = 467
    ExplicitHeight = 294
    object Label1: TLabel [0]
      Left = 5
      Top = 30
      Width = 48
      Height = 13
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077
    end
    object Label2: TLabel [1]
      Left = 5
      Top = 104
      Width = 44
      Height = 13
      Caption = #1060#1086#1088#1084#1091#1083#1072
      Visible = False
    end
    object Label3: TLabel [2]
      Left = 152
      Top = 105
      Width = 61
      Height = 13
      Caption = #1054#1082#1088#1091#1075#1083#1077#1085#1080#1077
      Visible = False
    end
    inherited RzToolbar: TRzToolbar
      Width = 465
      ExplicitWidth = 349
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
      inherited BtnView: TRzToolButton
        Visible = False
      end
    end
    object RzDBEdit1: TRzDBEdit
      Left = 5
      Top = 46
      Width = 268
      Height = 21
      DataSource = srNsiPrice
      DataField = 'F_NAME'
      TabOrder = 1
    end
    object RzDBEdit2: TRzDBEdit
      Left = 55
      Top = 102
      Width = 58
      Height = 21
      DataSource = srNsiPrice
      DataField = 'F_FORMULA'
      TabOrder = 2
      Visible = False
    end
    object RzDBEdit3: TRzDBEdit
      Left = 227
      Top = 102
      Width = 46
      Height = 21
      DataSource = srNsiPrice
      DataField = 'F_ROUND'
      TabOrder = 3
      Visible = False
    end
    object RzDBCheckBox1: TRzDBCheckBox
      Left = 5
      Top = 125
      Width = 268
      Height = 17
      DataField = 'F_SAVE_RESULT'
      DataSource = srNsiPrice
      ValueChecked = '1'
      ValueUnchecked = '0'
      Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1099#1074#1072#1077#1090#1089#1103' '#1074#1088#1091#1095#1085#1091#1102
      TabOrder = 4
    end
    object RzDBLookupComboBox1: TRzDBLookupComboBox
      Left = 5
      Top = 73
      Width = 268
      Height = 21
      DataField = 'F_PARENT_OBJECT'
      DataSource = srNsiPrice
      KeyField = 'f_id'
      ListField = 'f_name'
      ListSource = srParentSrc
      TabOrder = 5
    end
    object cxGrid1: TcxGrid
      Left = 5
      Top = 148
      Width = 452
      Height = 132
      TabOrder = 6
      LookAndFeel.SkinName = 'MoneyTwins'
      LookAndFeel.SkinName = 'MoneyTwins'
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = srDiapazon
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Styles.StyleSheet = DM.GridTableViewStyleSheetDevExpress
        object cxGrid1DBTableView1F_NSI_PRICE_STR: TcxGridDBColumn
          DataBinding.FieldName = 'F_NSI_PRICE_STR'
          Visible = False
        end
        object cxGrid1DBTableView1F_START_LINE: TcxGridDBColumn
          DataBinding.FieldName = 'F_START_LINE'
        end
        object cxGrid1DBTableView1F_END_LINE: TcxGridDBColumn
          DataBinding.FieldName = 'F_END_LINE'
        end
        object cxGrid1DBTableView1F_FORMULA: TcxGridDBColumn
          DataBinding.FieldName = 'F_FORMULA'
        end
        object cxGrid1DBTableView1F_ROUND: TcxGridDBColumn
          DataBinding.FieldName = 'F_ROUND'
        end
        object cxGrid1DBTableView1F_ID: TcxGridDBColumn
          DataBinding.FieldName = 'F_ID'
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
  object dsNsiPrice: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'EXECUTE PROCEDURE SP_T_NSI_PRICE_U(:f_id, :F_NAME,:F_PARENT_OBJE' +
        'CT, :F_FORMULA, :f_round, :F_SAVE_RESULT)')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_NAME,'
      '    F_FORMULA,'
      '    F_ROUND,'
      '    F_PARENT_OBJECT,'
      '    F_SAVE_RESULT'
      'FROM'
      '    SP_T_NSI_PRICE_GET(:PRICE_ID) ')
    AfterOpen = dsNsiPriceAfterOpen
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 168
    Top = 48
    object dsNsiPriceF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
    end
    object dsNsiPriceF_NAME: TFIBStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077
      FieldName = 'F_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsNsiPriceF_FORMULA: TFIBStringField
      DisplayLabel = #1060#1086#1088#1084#1091#1083#1072
      FieldName = 'F_FORMULA'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsNsiPriceF_ROUND: TFIBBCDField
      DisplayLabel = #1054#1082#1088#1091#1075#1083#1077#1085#1080#1077
      FieldName = 'F_ROUND'
      Size = 3
    end
    object dsNsiPriceF_PARENT_OBJECT: TFIBBCDField
      FieldName = 'F_PARENT_OBJECT'
      Size = 0
    end
    object dsNsiPriceF_SAVE_RESULT: TFIBSmallIntField
      FieldName = 'F_SAVE_RESULT'
    end
  end
  object pFIBTransaction: TpFIBTransaction
    DefaultDatabase = DM.pFIBDatabase
    Left = 168
    Top = 80
  end
  object srNsiPrice: TDataSource
    DataSet = dsNsiPrice
    Left = 176
    Top = 40
  end
  object dsParentSrc: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_NAME,'
      '    F_PARENT_OBJECT,'
      '    F_FORMULA,'
      '    F_ROUND,'
      '    F_SAVE_RESULT'
      'FROM'
      '    SP_T_NSI_PRICE_S ')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 168
    Top = 128
    object dsParentSrcF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
    end
    object dsParentSrcF_NAME: TFIBStringField
      FieldName = 'F_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsParentSrcF_PARENT_OBJECT: TFIBBCDField
      FieldName = 'F_PARENT_OBJECT'
      Size = 0
    end
    object dsParentSrcF_FORMULA: TFIBStringField
      FieldName = 'F_FORMULA'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsParentSrcF_ROUND: TFIBBCDField
      FieldName = 'F_ROUND'
      Size = 3
    end
    object dsParentSrcF_SAVE_RESULT: TFIBSmallIntField
      FieldName = 'F_SAVE_RESULT'
    end
  end
  object srParentSrc: TDataSource
    DataSet = dsParentSrc
    Left = 176
    Top = 136
  end
  object dsDiapazon: TpFIBDataSet
    UpdateSQL.Strings = (
      'EXECUTE PROCEDURE SP_T_NSI_PRICE_STR_U('
      '    :f_nsi_price_str,'
      '    :f_id,'
      '    :F_START_LINE,'
      '    :F_END_LINE,'
      '    :F_FORMULA,'
      '    :F_ROUND)')
    DeleteSQL.Strings = (
      'EXECUTE PROCEDURE SP_T_NSI_PRICE_STR_D(:f_nsi_price_str)')
    InsertSQL.Strings = (
      'EXECUTE PROCEDURE SP_T_NSI_PRICE_STR_I('
      '    :f_nsi_price_str,'
      '    :f_id,'
      '    :F_START_LINE,'
      '    :F_END_LINE,'
      '    :F_FORMULA,'
      '    :F_ROUND)')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID as f_nsi_price_str,'
      '    F_NSI_PRICE as f_id,'
      '    F_START_LINE,'
      '    F_END_LINE,'
      '    F_FORMULA,'
      '    F_ROUND'
      'FROM'
      '    SP_T_NSI_PRICE_STR_S(:f_id) ')
    AutoUpdateOptions.ParamsToFieldsLinks.Strings = (
      'F_ID=F_ID')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DataSource = srNsiPrice
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 56
    Top = 216
    object dsDiapazonF_NSI_PRICE_STR: TFIBBCDField
      FieldName = 'F_NSI_PRICE_STR'
      Visible = False
      Size = 0
    end
    object dsDiapazonF_START_LINE: TFIBFloatField
      DisplayLabel = #1053#1080#1078#1085#1103#1103' '#1075#1088#1072#1085#1080#1094#1072
      FieldName = 'F_START_LINE'
    end
    object dsDiapazonF_END_LINE: TFIBFloatField
      DisplayLabel = #1042#1077#1088#1093#1085#1103#1103' '#1075#1088#1072#1085#1080#1094#1072
      FieldName = 'F_END_LINE'
    end
    object dsDiapazonF_FORMULA: TFIBFloatField
      DisplayLabel = #1053#1072#1094#1077#1085#1082#1072
      FieldName = 'F_FORMULA'
    end
    object dsDiapazonF_ROUND: TFIBFloatField
      DisplayLabel = #1054#1082#1088#1091#1075#1083#1077#1085#1080#1077
      FieldName = 'F_ROUND'
    end
    object dsDiapazonF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
    end
  end
  object srDiapazon: TDataSource
    DataSet = dsDiapazon
    Left = 40
    Top = 232
  end
end
