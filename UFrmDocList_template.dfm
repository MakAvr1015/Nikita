inherited FrmDocList_template: TFrmDocList_template
  Caption = #1046#1091#1088#1085#1072#1083' '#1079#1072#1075#1086#1090#1086#1074#1086#1082
  ClientHeight = 370
  ClientWidth = 815
  ExplicitWidth = 823
  ExplicitHeight = 397
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 351
    Width = 815
    ExplicitTop = 351
    ExplicitWidth = 815
    inherited DsFormName: TRzStatusPane
      Caption = 'dsDocTemplateList'
    end
  end
  inherited Panel3: TPanel
    Width = 815
    Height = 351
    ExplicitWidth = 815
    ExplicitHeight = 351
    inherited RzToolbar: TRzToolbar
      Width = 813
      Height = 80
      RowHeight = 40
      ButtonLayout = blGlyphTop
      ButtonWidth = 60
      ButtonHeight = 40
      ShowButtonCaptions = True
      TextOptions = ttoCustom
      ExplicitWidth = 813
      ExplicitHeight = 80
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
        Enabled = True
        Visible = True
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
        Top = 40
        Layout = blGlyphTop
        ExplicitLeft = 4
        ExplicitTop = 40
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
    object ToolBar1: TToolBar
      Left = 1
      Top = 81
      Width = 813
      Height = 29
      Caption = 'ToolBar1'
      TabOrder = 1
      object Editstr_date: TDateTimePicker
        Left = 0
        Top = 0
        Width = 99
        Height = 22
        Date = 40911.656940625000000000
        Time = 40911.656940625000000000
        TabOrder = 0
      end
      object Editend_date: TDateTimePicker
        Left = 99
        Top = 0
        Width = 94
        Height = 22
        Date = 40911.657074699080000000
        Time = 40911.657074699080000000
        TabOrder = 1
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 110
      Width = 813
      Height = 240
      Align = alClient
      TabOrder = 2
      LookAndFeel.SkinName = 'MoneyTwins'
      LookAndFeel.SkinName = 'MoneyTwins'
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = BtnEditClick
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = srDocTemplateList
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
          end
          item
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        Styles.StyleSheet = DM.GridTableViewStyleSheetDevExpress
        object cxGrid1DBTableView1F_NUMBER: TcxGridDBColumn
          DataBinding.FieldName = 'F_NUMBER'
          Width = 71
        end
        object cxGrid1DBTableView1F_DATE: TcxGridDBColumn
          DataBinding.FieldName = 'F_DATE'
          Width = 59
        end
        object cxGrid1DBTableView1F_AUTHOR: TcxGridDBColumn
          DataBinding.FieldName = 'F_AUTHOR'
          Width = 334
        end
        object cxGrid1DBTableView1F_STATE: TcxGridDBColumn
          DataBinding.FieldName = 'F_STATE'
          Visible = False
        end
        object cxGrid1DBTableView1F_STATE_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_STATE_NAME'
          Width = 335
        end
        object cxGrid1DBTableView1DOC_ID: TcxGridDBColumn
          DataBinding.FieldName = 'DOC_ID'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  inherited PrnMenu: TPopupMenu
    Left = 96
    Top = 96
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dsDocTemplateList: TpFIBDataSet
    DeleteSQL.Strings = (
      'execute procedure SP_T_DOC_TEMPLATE_D(:doc_id)')
    SelectSQL.Strings = (
      
        'select f_id as doc_id,f_number,f_date,f_author,f_state,f_state_n' +
        'ame'
      'from SP_T_DOC_TEMPLATE_S(:str_date,:end_date)')
    BeforeOpen = dsDocTemplateListBeforeOpen
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 472
    Top = 200
    object dsDocTemplateListF_NUMBER: TFIBStringField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'F_NUMBER'
      Size = 60
      EmptyStrToNull = True
    end
    object dsDocTemplateListF_DATE: TFIBDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'F_DATE'
    end
    object dsDocTemplateListF_AUTHOR: TFIBStringField
      DisplayLabel = #1040#1074#1090#1086#1088
      FieldName = 'F_AUTHOR'
      Size = 60
      EmptyStrToNull = True
    end
    object dsDocTemplateListF_STATE: TFIBBCDField
      FieldName = 'F_STATE'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsDocTemplateListF_STATE_NAME: TFIBStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'F_STATE_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsDocTemplateListDOC_ID: TFIBBCDField
      FieldName = 'DOC_ID'
      Visible = False
      Size = 0
      RoundByScale = True
    end
  end
  object srDocTemplateList: TDataSource
    DataSet = dsDocTemplateList
    Left = 480
    Top = 216
  end
  object spInsDocStr: TpFIBStoredProc
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    SQL.Strings = (
      
        'EXECUTE PROCEDURE SP_T_DOC_template_STR_I (?F_ID, ?F_DOC_templat' +
        'e, ?F_GOOD, ?F_PRICE, ?F_CNT, ?f_descr)')
    StoredProcName = 'SP_T_DOC_OUT_STR_I'
    Left = 672
    Top = 232
  end
  object dsImportDoc: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID'
      'FROM'
      '    SP_IMPORT_DOC_template(:F_NUMBER,'
      '    :F_DATE,'
      '    :F_PARTNER,'
      '    :F_EXT_BASE,'
      '    :F_EXT_ID,'
      '    :F_DOC_TYPE,'
      '    :F_Sklad) ')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 672
    Top = 192
  end
  object OpenDialog: TOpenDialog
    Left = 592
    Top = 168
  end
end
