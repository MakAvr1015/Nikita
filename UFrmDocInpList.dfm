inherited FrmListInputDocs: TFrmListInputDocs
  Caption = #1046#1091#1088#1085#1072#1083' '#1087#1088#1080#1093#1086#1076#1085#1099#1093' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
  ClientHeight = 333
  ClientWidth = 808
  ExplicitWidth = 816
  ExplicitHeight = 360
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 225
    Width = 808
    ExplicitTop = 225
    ExplicitWidth = 808
    inherited DsFormName: TRzStatusPane
      Caption = 'dsDocList'
    end
  end
  inherited Panel3: TPanel
    Width = 808
    Height = 225
    ExplicitWidth = 808
    ExplicitHeight = 225
    inherited RzToolbar: TRzToolbar
      Width = 806
      Height = 80
      RowHeight = 40
      ButtonLayout = blGlyphTop
      ButtonWidth = 60
      ButtonHeight = 40
      ShowButtonCaptions = True
      TextOptions = ttoCustom
      ParentShowHint = False
      Transparent = True
      ExplicitWidth = 806
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
        Tag = 1
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
        Visible = True
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
        Enabled = True
        OnClick = BtnViewClick
        ExplicitLeft = 151
        ExplicitTop = 0
        ExplicitWidth = 74
        ExplicitHeight = 40
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 110
      Width = 806
      Height = 114
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'MoneyTwins'
      LookAndFeel.SkinName = 'MoneyTwins'
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = BtnEditClick
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = srDocList
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
        object cxGrid1DBTableView1F_DOC_IN: TcxGridDBColumn
          DataBinding.FieldName = 'F_DOC_IN'
          Visible = False
        end
        object cxGrid1DBTableView1F_DATE: TcxGridDBColumn
          DataBinding.FieldName = 'F_DATE'
          Width = 26
        end
        object cxGrid1DBTableView1F_NUMBER: TcxGridDBColumn
          DataBinding.FieldName = 'F_NUMBER'
          Width = 28
        end
        object cxGrid1DBTableView1F_SKLAD: TcxGridDBColumn
          DataBinding.FieldName = 'F_SKLAD'
          Visible = False
          Width = 108
        end
        object cxGrid1DBTableView1F_PARTNER: TcxGridDBColumn
          DataBinding.FieldName = 'F_PARTNER'
          Visible = False
          Width = 109
        end
        object cxGrid1DBTableView1F_STATE: TcxGridDBColumn
          DataBinding.FieldName = 'F_STATE'
          Visible = False
          Width = 344
        end
        object cxGrid1DBTableView1F_SKLAD_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_SKLAD_NAME'
          Width = 84
        end
        object cxGrid1DBTableView1F_PARTNER_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_PARTNER_NAME'
          Width = 144
        end
        object cxGrid1DBTableView1F_STATE_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_STATE_NAME'
          Width = 85
        end
        object cxGrid1DBTableView1F_DOC_COUNT: TcxGridDBColumn
          DataBinding.FieldName = 'F_DOC_COUNT'
          Width = 54
        end
        object cxGrid1DBTableView1F_DOC_SUM: TcxGridDBColumn
          DataBinding.FieldName = 'F_DOC_SUM'
          Width = 56
        end
        object cxGrid1DBTableView1F_DOC_TYPE: TcxGridDBColumn
          DataBinding.FieldName = 'F_DOC_TYPE'
          Visible = False
        end
        object cxGrid1DBTableView1F_DOC_TYPE_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_DOC_TYPE_NAME'
          Width = 234
        end
        object cxGrid1DBTableView1F_USER: TcxGridDBColumn
          DataBinding.FieldName = 'F_USER'
          Width = 81
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object ToolBar1: TToolBar
      Left = 1
      Top = 81
      Width = 806
      Height = 29
      Caption = 'ToolBar1'
      DrawingStyle = dsGradient
      GradientEndColor = clWhite
      GradientStartColor = clGradientActiveCaption
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
  object MemoLog: TMemo [2]
    Left = 0
    Top = 244
    Width = 808
    Height = 89
    Align = alBottom
    ScrollBars = ssVertical
    TabOrder = 2
    Visible = False
  end
  object dsDocList: TpFIBDataSet [4]
    DeleteSQL.Strings = (
      'execute procedure SP_T_DOC_IN_D(:f_doc_in)')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID as f_doc_in,'
      '    F_SKLAD,'
      '    F_PARTNER,'
      '    F_NUMBER,'
      '    F_DATE,'
      '    F_STATE,'
      '    f_doc_count,'
      '    f_doc_sum,'
      '    F_SKLAD_NAME,'
      '    F_PARTNER_NAME,'
      '    F_STATE_NAME,'
      '    f_doc_type,'
      '    f_doc_type_name,'
      '    f_user'
      'FROM'
      '    SP_T_DOC_IN_S(1,:str_date,:end_date) ')
    BeforeOpen = dsDocListBeforeOpen
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 400
    Top = 160
    object dsDocListF_SKLAD: TFIBBCDField
      DisplayLabel = #1057#1082#1083#1072#1076
      FieldName = 'F_SKLAD'
      Size = 0
    end
    object dsDocListF_PARTNER: TFIBBCDField
      DisplayLabel = #1055#1072#1088#1090#1085#1077#1088
      FieldName = 'F_PARTNER'
      Size = 0
    end
    object dsDocListF_NUMBER: TFIBStringField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'F_NUMBER'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocListF_DATE: TFIBDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'F_DATE'
    end
    object dsDocListF_STATE: TFIBBCDField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'F_STATE'
      Size = 0
    end
    object dsDocListF_SKLAD_NAME: TFIBStringField
      DisplayLabel = #1057#1082#1083#1072#1076
      FieldName = 'F_SKLAD_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocListF_PARTNER_NAME: TFIBStringField
      DisplayLabel = #1055#1072#1088#1090#1085#1077#1088
      FieldName = 'F_PARTNER_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocListF_STATE_NAME: TFIBStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'F_STATE_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocListF_DOC_SUM: TFIBBCDField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'F_DOC_SUM'
      DisplayFormat = '0.00'
      Size = 3
    end
    object dsDocListF_DOC_COUNT: TFIBFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'F_DOC_COUNT'
      DisplayFormat = '0'
    end
    object dsDocListF_DOC_TYPE: TFIBBCDField
      FieldName = 'F_DOC_TYPE'
      Visible = False
      Size = 0
    end
    object dsDocListF_DOC_TYPE_NAME: TFIBStringField
      DisplayLabel = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'F_DOC_TYPE_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocListF_DOC_IN: TFIBBCDField
      FieldName = 'F_DOC_IN'
      Size = 0
    end
    object dsDocListF_USER: TFIBStringField
      DisplayLabel = #1040#1074#1090#1086#1088
      FieldName = 'F_USER'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object srDocList: TDataSource [5]
    DataSet = dsDocList
    Left = 408
    Top = 176
  end
  object pFIBTransaction: TpFIBTransaction [6]
    DefaultDatabase = DM.pFIBDatabase
    Left = 472
    Top = 144
  end
  inherited frxReport2: TfrxReport
    ReportOptions.CreateDate = 40322.689603171300000000
    ReportOptions.LastChange = 40322.689603171300000000
    Datasets = <>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
    end
  end
  object OpenDialog: TOpenDialog [18]
    Left = 592
    Top = 168
  end
  object dsImportDoc: TpFIBDataSet [19]
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID'
      'FROM'
      '    SP_IMPORT_DOC_IN(:F_NUMBER,'
      '    :F_DATE,'
      '    :F_PARTNER,'
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
  object dsExportDoc: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_VALUE'
      'FROM'
      '    PR_EXPORT_DOC_in(:F_ID) ')
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
    Left = 216
    Top = 264
  end
  object spImportPriceDoc: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID'
      'FROM'
      '    SP_IMPORT_DOC_PRICE(:F_NUMBER,'
      '    :F_PRICE,'
      '    :F_DATE) ')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 392
    Top = 264
    object spImportPriceDocF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
    end
  end
  object spImportPriceDoc_str: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_GOOD_ID,'
      '    F_ID'
      'FROM'
      '    SP_IMPORT_DOC_PRICE_STR(:F_NAME,'
      '    :F_ARTICLE,'
      '    :F_ED_IZM,'
      '    :F_PRICE,'
      '    :F_EXT_ID,'
      '    :F_EXT_BASE,'
      '    :F_DOC_ID) ')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 424
    Top = 264
  end
  object dsImportNsiPrice: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID'
      'FROM'
      '    SP_IMPORT_NSI_PRICE(:F_PRICE_ID,'
      '    :F_PRICE_NAME) ')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 392
    Top = 232
    object dsImportNsiPriceF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
    end
  end
  object spInsDocStr: TpFIBStoredProc
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    SQL.Strings = (
      
        'EXECUTE PROCEDURE SP_T_DOC_IN_STR_I (?F_ID, ?F_DOC_IN, ?F_GOOD, ' +
        '?F_PRICE_VAL, ?F_CNT, ?F_SUM)')
    StoredProcName = 'SP_T_DOC_IN_STR_I'
    Left = 672
    Top = 264
  end
  object dsStoreCalcCource: TpFIBStoredProc
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    SQL.Strings = (
      
        'EXECUTE PROCEDURE PR_SET_IN_DOC_PRICE_BY_CURR (?P_DOC_ID, ?P_CUR' +
        'R_COURCE)')
    StoredProcName = 'PR_SET_IN_DOC_PRICE_BY_CURR'
    Left = 624
    Top = 264
  end
end
