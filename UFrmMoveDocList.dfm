inherited FrmMoveDocList: TFrmMoveDocList
  Tag = 1
  Caption = #1046#1091#1088#1085#1072#1083' '#1089#1082#1083#1072#1076#1089#1082#1080#1093' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
  ClientHeight = 360
  ClientWidth = 1011
  ExplicitWidth = 1019
  ExplicitHeight = 387
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 341
    Width = 1011
    ExplicitTop = 341
    ExplicitWidth = 1011
    inherited DsFormName: TRzStatusPane
      Caption = 'dsMoveDocsList'
    end
  end
  inherited Panel3: TPanel
    Width = 1011
    Height = 341
    ExplicitWidth = 1011
    ExplicitHeight = 341
    inherited RzToolbar: TRzToolbar
      Width = 1009
      Height = 40
      ButtonLayout = blGlyphTop
      ButtonWidth = 60
      ButtonHeight = 40
      ShowButtonCaptions = True
      TextOptions = ttoCustom
      ExplicitWidth = 1009
      ExplicitHeight = 40
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
        Tag = 1
        Layout = blGlyphTop
        OnClick = BtnNewClick
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnOpen: TRzToolButton
        Left = 225
        Layout = blGlyphTop
        Enabled = True
        OnClick = BtnOpenClick
        ExplicitLeft = 225
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnFind: TRzToolButton
        Left = 345
        Layout = blGlyphTop
        ExplicitLeft = 345
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnPrint: TRzToolButton
        Left = 405
        Width = 74
        Height = 40
        Layout = blGlyphTop
        ExplicitLeft = 405
        ExplicitWidth = 74
        ExplicitHeight = 40
      end
      inherited BtnOK: TRzToolButton
        Left = 479
        Layout = blGlyphTop
        ExplicitLeft = 479
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnCancel: TRzToolButton
        Left = 539
        Layout = blGlyphTop
        ExplicitLeft = 539
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnRefresh: TRzToolButton
        Left = 285
        Layout = blGlyphTop
        Enabled = True
        OnClick = BtnRefreshClick
        ExplicitLeft = 285
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnEdit: TRzToolButton
        Left = 64
        Width = 87
        Height = 40
        Layout = blGlyphTop
        Enabled = True
        OnClick = BtnEditClick
        ExplicitLeft = 64
        ExplicitWidth = 87
        ExplicitHeight = 40
      end
      inherited BtnExecute: TRzToolButton
        Left = 599
        Width = 64
        Height = 40
        Layout = blGlyphTop
        ExplicitLeft = 599
        ExplicitWidth = 64
        ExplicitHeight = 40
      end
      inherited BtnDelete: TRzToolButton
        Left = 663
        Layout = blGlyphTop
        Enabled = True
        Visible = True
        ExplicitLeft = 663
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnSave: TRzToolButton
        Left = 723
        Width = 63
        Height = 40
        Layout = blGlyphTop
        Visible = True
        ExplicitLeft = 723
        ExplicitWidth = 63
        ExplicitHeight = 40
      end
      inherited BtnExit: TRzToolButton
        Left = 786
        Layout = blGlyphTop
        ExplicitLeft = 786
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnView: TRzToolButton
        Left = 151
        Width = 74
        Height = 40
        Layout = blGlyphTop
        Enabled = True
        OnClick = BtnViewClick
        ExplicitLeft = 151
        ExplicitWidth = 74
        ExplicitHeight = 40
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 70
      Width = 1009
      Height = 270
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'MoneyTwins'
      LookAndFeel.SkinName = 'MoneyTwins'
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = BtnEditClick
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = srMoveDocsList
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = cxGrid1DBTableView1F_DOC_COUNT
          end
          item
            Kind = skSum
            Column = cxGrid1DBTableView1F_DOC_SUM
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        Styles.StyleSheet = DM.GridTableViewStyleSheetDevExpress
        object cxGrid1DBTableView1F_ID: TcxGridDBColumn
          DataBinding.FieldName = 'F_ID'
          Visible = False
        end
        object cxGrid1DBTableView1F_DATE: TcxGridDBColumn
          DataBinding.FieldName = 'F_DATE'
          Width = 20
        end
        object cxGrid1DBTableView1F_NUMBER: TcxGridDBColumn
          DataBinding.FieldName = 'F_NUMBER'
          Width = 20
        end
        object cxGrid1DBTableView1F_SKLAD_FROM: TcxGridDBColumn
          DataBinding.FieldName = 'F_SKLAD_FROM'
          Visible = False
        end
        object cxGrid1DBTableView1F_SKLAD_TO: TcxGridDBColumn
          DataBinding.FieldName = 'F_SKLAD_TO'
          Visible = False
        end
        object cxGrid1DBTableView1F_STATE: TcxGridDBColumn
          DataBinding.FieldName = 'F_STATE'
          Visible = False
        end
        object cxGrid1DBTableView1F_PRICE: TcxGridDBColumn
          DataBinding.FieldName = 'F_PRICE'
          Visible = False
        end
        object cxGrid1DBTableView1F_TYPE: TcxGridDBColumn
          DataBinding.FieldName = 'F_TYPE'
          Visible = False
        end
        object cxGrid1DBTableView1F_SKLAD_FROM_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_SKLAD_FROM_NAME'
          Width = 20
        end
        object cxGrid1DBTableView1F_SKLAD_TO_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_SKLAD_TO_NAME'
          Visible = False
          Width = 160
        end
        object cxGrid1DBTableView1F_STATE_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_STATE_NAME'
          Width = 20
        end
        object cxGrid1DBTableView1F_PRICE_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_PRICE_NAME'
          Width = 20
        end
        object cxGrid1DBTableView1F_DOC_COUNT: TcxGridDBColumn
          DataBinding.FieldName = 'F_DOC_COUNT'
          Width = 20
        end
        object cxGrid1DBTableView1F_DOC_SUM: TcxGridDBColumn
          DataBinding.FieldName = 'F_DOC_SUM'
          Width = 374
        end
        object cxGrid1DBTableView1F_TYPE_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_TYPE_NAME'
          Width = 292
        end
        object cxGrid1DBTableView1F_DOC_MOVE: TcxGridDBColumn
          DataBinding.FieldName = 'F_DOC_MOVE'
          Visible = False
        end
        object cxGrid1DBTableView1F_USER: TcxGridDBColumn
          DataBinding.FieldName = 'F_USER'
          Width = 101
        end
        object cxGrid1DBTableView1F_DOP_INFO: TcxGridDBColumn
          DataBinding.FieldName = 'F_DOP_INFO'
          Width = 92
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object ToolBar1: TToolBar
      Left = 1
      Top = 41
      Width = 1009
      Height = 29
      Caption = 'ToolBar1'
      TabOrder = 2
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
  end
  inherited PrnMenu: TPopupMenu
    Left = 96
    Top = 120
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dsMoveDocsList: TpFIBDataSet
    DeleteSQL.Strings = (
      'execute procedure SP_T_DOC_MOVE_D(:f_id)')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_ID as F_DOC_MOVE,'
      '    F_DATE,'
      '    F_NUMBER,'
      '    F_SKLAD_FROM,'
      '    F_SKLAD_TO,'
      '    F_STATE,'
      '    f_state_name,'
      '    F_DOC_SUM,'
      '    F_PRICE,'
      '    F_PRICE_name,'
      '    F_TYPE,'
      '    F_TYPE_NAME,'
      '    F_DOC_COUNT,'
      '    F_SKLAD_FROM_NAME,'
      '    F_SKLAD_TO_NAME,'
      '    f_user,'
      '    f_dop_info,'
      '    F_DOC_PROPERTY'
      'FROM'
      '    SP_T_DOC_MOVE_S(:doc_move,:str_date,:end_date) '
      '')
    BeforeOpen = dsMoveDocsListBeforeOpen
    OnCalcFields = dsMoveDocsListCalcFields
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 528
    Top = 80
    object dsMoveDocsListF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Visible = False
      Size = 0
    end
    object dsMoveDocsListF_DATE: TFIBDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'F_DATE'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object dsMoveDocsListF_NUMBER: TFIBStringField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'F_NUMBER'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsMoveDocsListF_SKLAD_FROM: TFIBBCDField
      FieldName = 'F_SKLAD_FROM'
      Visible = False
      Size = 0
    end
    object dsMoveDocsListF_SKLAD_TO: TFIBBCDField
      FieldName = 'F_SKLAD_TO'
      Visible = False
      Size = 0
    end
    object dsMoveDocsListF_STATE: TFIBBCDField
      FieldName = 'F_STATE'
      Visible = False
      Size = 0
    end
    object dsMoveDocsListF_DOC_SUM: TFIBBCDField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'F_DOC_SUM'
      DisplayFormat = '0.00'
      EditFormat = '0.000'
      Size = 3
    end
    object dsMoveDocsListF_PRICE: TFIBBCDField
      FieldName = 'F_PRICE'
      Visible = False
      Size = 0
    end
    object dsMoveDocsListF_TYPE: TFIBBCDField
      FieldName = 'F_TYPE'
      Visible = False
      Size = 0
    end
    object dsMoveDocsListF_DOC_COUNT: TFIBBCDField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'F_DOC_COUNT'
      DisplayFormat = '0.00'
      EditFormat = '0.000'
      Size = 3
    end
    object dsMoveDocsListF_SKLAD_FROM_NAME: TFIBStringField
      DisplayLabel = #1057#1082#1083#1072#1076' '#1080#1089#1090#1086#1095#1085#1080#1082
      FieldName = 'F_SKLAD_FROM_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsMoveDocsListF_SKLAD_TO_NAME: TFIBStringField
      DisplayLabel = #1057#1082#1083#1072#1076' '#1087#1088#1080#1077#1084#1085#1080#1082
      FieldName = 'F_SKLAD_TO_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsMoveDocsListF_STATE_NAME: TFIBStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'F_STATE_NAME'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsMoveDocsListF_TYPE_NAME: TFIBStringField
      DisplayLabel = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'F_TYPE_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsMoveDocsListF_DOC_MOVE: TFIBBCDField
      FieldName = 'F_DOC_MOVE'
      Size = 0
    end
    object dsMoveDocsListF_USER: TFIBStringField
      DisplayLabel = #1040#1074#1090#1086#1088
      FieldName = 'F_USER'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsMoveDocsListF_PRICE_NAME: TFIBStringField
      DisplayLabel = #1055#1088#1072#1081#1089
      FieldName = 'F_PRICE_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsMoveDocsListF_DOP_INFO: TFIBStringField
      DisplayLabel = #1044#1086#1087'.'#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
      FieldName = 'F_DOP_INFO'
      Size = 10000
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsMoveDocsListF_DOC_PROPERTY: TFIBStringField
      FieldName = 'F_DOC_PROPERTY'
      Size = 10000
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object srMoveDocsList: TDataSource
    DataSet = dsMoveDocsList
    Left = 544
    Top = 96
  end
  object dsExportDoc: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_VALUE'
      'FROM'
      '    PR_EXPORT_DOC_MOVE(:F_ID) ')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 144
    Top = 256
    object dsExportDocF_VALUE: TFIBStringField
      FieldName = 'F_VALUE'
      Size = 10000
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'xml'
    Filter = 'XML|*.xml'
    Left = 176
    Top = 256
  end
  object OpenDialog: TOpenDialog
    Left = 592
    Top = 168
  end
  object dsImportDoc: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID'
      'FROM'
      '    SP_IMPORT_DOC_move(:F_NUMBER,'
      '    :F_DATE,'
      '    :F_sklad,'
      '    :F_EXT_BASE,'
      '    :F_EXT_ID,'
      '    :F_DOC_TYPE,'
      '    :F_USER) ')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 672
    Top = 192
  end
  object spInsDocStr: TpFIBStoredProc
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    SQL.Strings = (
      
        'EXECUTE PROCEDURE SP_T_DOC_move_STR_I (?F_ID, ?F_DOC_move, ?F_GO' +
        'OD, null, ?F_CNT, ?F_price_val)')
    StoredProcName = 'SP_T_DOC_move_STR_I'
    Left = 672
    Top = 264
  end
  object pFIBTransaction: TpFIBTransaction
    DefaultDatabase = DM.pFIBDatabase
    Left = 472
    Top = 144
  end
  object dsDocStrings: TpFIBDataSet
    UpdateSQL.Strings = (
      'execute procedure SP_T_DOC_MOVE_STR_U('
      '    :F_ID,'
      '    :F_DOC_MOVE,'
      '    :F_GOOD,'
      '    :F_PRICE,'
      '    :F_CNT,'
      '    :F_PRICE_VAL);')
    DeleteSQL.Strings = (
      'execute procedure SP_T_DOC_MOVE_STR_D(:f_id)')
    InsertSQL.Strings = (
      'execute procedure SP_T_DOC_MOVE_STR_I('
      '    :F_ID,'
      '    :F_DOC_MOVE,'
      '    :F_GOOD,'
      '    :F_PRICE,'
      '    :F_CNT,'
      '    :F_PRICE_VAL);')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ARTICLE'
      'FROM'
      '    SP_T_DOC_MOVE_STR_S(:DOC_id) ')
    AutoUpdateOptions.ParamsToFieldsLinks.Strings = (
      'F_DOC_MOVE=DOC_ID')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DataSource = srMoveDocsList
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 776
    Top = 152
    object dsDocStringsF_ARTICLE: TFIBStringField
      DisplayLabel = #1040#1088#1090#1080#1082#1091#1083
      FieldName = 'F_ARTICLE'
      Transliterate = False
      EmptyStrToNull = True
    end
  end
end
