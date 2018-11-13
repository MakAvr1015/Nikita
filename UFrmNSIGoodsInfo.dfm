inherited FrmNSIGoodsInfo: TFrmNSIGoodsInfo
  BorderStyle = bsDialog
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1089#1074#1086#1081#1089#1090#1074' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1099
  ClientHeight = 485
  ClientWidth = 739
  ExplicitWidth = 745
  ExplicitHeight = 510
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 466
    Width = 739
    ExplicitTop = 466
    ExplicitWidth = 739
    inherited DsFormName: TRzStatusPane
      Caption = 'dsNsiGoodsInfo'
    end
  end
  inherited Panel3: TPanel
    Width = 739
    Height = 466
    ExplicitWidth = 739
    ExplicitHeight = 466
    inherited RzToolbar: TRzToolbar
      Width = 737
      Height = 25
      ExplicitWidth = 737
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
        ExplicitTop = 0
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 26
      Width = 737
      Height = 439
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'MoneyTwins'
      LookAndFeel.SkinName = 'MoneyTwins'
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = srNsiGoodsInfo
        DataController.KeyFieldNames = 'F_ID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NewItemRow.Visible = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Appending = True
        OptionsView.Navigator = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        Styles.StyleSheet = DM.GridTableViewStyleSheetDevExpress
        object cxGrid1DBTableView1F_ID: TcxGridDBColumn
          DataBinding.FieldName = 'F_ID'
          Options.Editing = False
          Width = 54
        end
        object cxGrid1DBTableView1F_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_NAME'
          Width = 475
        end
        object cxGrid1DBTableView1F_MULTI: TcxGridDBColumn
          DataBinding.FieldName = 'F_MULTI'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 84
        end
      end
      object cxGrid1DBTableView2: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = srNSIGoodInfoSTR
        DataController.DetailKeyFieldNames = 'F_NSI_GOODS_INFO'
        DataController.KeyFieldNames = 'F_ID'
        DataController.MasterKeyFieldNames = 'F_ID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NewItemRow.Visible = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Styles.StyleSheet = DM.GridTableViewStyleSheetDevExpress
        object cxGrid1DBTableView2F_ID: TcxGridDBColumn
          DataBinding.FieldName = 'F_ID'
          Visible = False
        end
        object cxGrid1DBTableView2F_NSI_GOODS_INFO: TcxGridDBColumn
          DataBinding.FieldName = 'F_NSI_GOODS_INFO'
          Visible = False
        end
        object cxGrid1DBTableView2F_ORDER: TcxGridDBColumn
          DataBinding.FieldName = 'F_ORDER'
          PropertiesClassName = 'TcxSpinEditProperties'
        end
        object cxGrid1DBTableView2F_VALUE: TcxGridDBColumn
          DataBinding.FieldName = 'F_VALUE'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
        object cxGrid1Level2: TcxGridLevel
          GridView = cxGrid1DBTableView2
        end
      end
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dsNsiGoodsInfo: TpFIBDataSet
    UpdateSQL.Strings = (
      'execute procedure SP_T_NSI_GOODS_INFO_U(:f_id,:f_name,:f_multi)')
    InsertSQL.Strings = (
      'execute procedure SP_T_NSI_GOODS_INFO_I(:f_id,:f_name,:f_multi)')
    SelectSQL.Strings = (
      'select * from sp_t_nsi_goods_info_s')
    Transaction = pFIBTransaction1
    Database = DM.pFIBDatabase
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 120
    Top = 152
    WaitEndMasterScroll = True
    dcForceMasterRefresh = True
    dcForceOpen = True
    object dsNsiGoodsInfoF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
      RoundByScale = True
    end
    object dsNsiGoodsInfoF_NAME: TFIBStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077
      FieldName = 'F_NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object dsNsiGoodsInfoF_MULTI: TFIBSmallIntField
      DisplayLabel = #1052#1085#1086#1078#1077#1089#1090#1074#1077#1085#1085#1099#1081' '#1074#1099#1073#1086#1088
      FieldName = 'F_MULTI'
    end
  end
  object pFIBTransaction1: TpFIBTransaction
    DefaultDatabase = DM.pFIBDatabase
    TimeoutAction = TARollback
    Left = 280
    Top = 248
  end
  object srNsiGoodsInfo: TDataSource
    DataSet = dsNsiGoodsInfo
    Left = 128
    Top = 168
  end
  object dsNSIGoodInfoSTR: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'execute procedure SP_T_NSI_GOODS_INFO_STR_U(:f_id,:F_NSI_GOODS_I' +
        'NFO,:f_order,:f_value)')
    InsertSQL.Strings = (
      
        'execute procedure SP_T_NSI_GOODS_INFO_STR_I(:f_id,:F_NSI_GOODS_I' +
        'NFO,:f_order,:f_value)')
    SelectSQL.Strings = (
      'select * from SP_T_NSI_GOODS_INFO_STR_S(:f_id)')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DataSource = srNsiGoodsInfo
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 152
    Top = 200
    WaitEndMasterScroll = True
    dcForceOpen = True
    object dsNSIGoodInfoSTRF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsNSIGoodInfoSTRF_NSI_GOODS_INFO: TFIBBCDField
      FieldName = 'F_NSI_GOODS_INFO'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsNSIGoodInfoSTRF_ORDER: TFIBBCDField
      DisplayLabel = #1056#1072#1085#1075
      FieldName = 'F_ORDER'
      Size = 0
      RoundByScale = True
    end
    object dsNSIGoodInfoSTRF_VALUE: TFIBStringField
      DisplayLabel = #1047#1085#1072#1095#1077#1085#1080#1077
      FieldName = 'F_VALUE'
      Size = 100
      EmptyStrToNull = True
    end
  end
  object srNSIGoodInfoSTR: TDataSource
    DataSet = dsNSIGoodInfoSTR
    Left = 168
    Top = 216
  end
end
