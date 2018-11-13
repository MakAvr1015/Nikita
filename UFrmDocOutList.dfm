inherited FrmDocOutList: TFrmDocOutList
  Caption = #1046#1091#1088#1085#1072#1083' '#1088#1072#1089#1093#1086#1076#1085#1099#1093' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
  ClientHeight = 432
  ClientWidth = 1000
  OnKeyUp = FormKeyUp
  ExplicitWidth = 1008
  ExplicitHeight = 459
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 413
    Width = 1000
    ExplicitTop = 413
    ExplicitWidth = 1000
    inherited DsFormName: TRzStatusPane
      Caption = 'dsDocList'
    end
  end
  inherited Panel3: TPanel
    Width = 1000
    Height = 413
    ExplicitWidth = 1000
    ExplicitHeight = 413
    inherited RzToolbar: TRzToolbar
      Width = 998
      Height = 40
      ButtonLayout = blGlyphTop
      ButtonWidth = 60
      ButtonHeight = 40
      ShowButtonCaptions = True
      TextOptions = ttoCustom
      ParentShowHint = False
      ExplicitWidth = 998
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
        Width = 74
        Height = 40
        DropDownMenu = NewDocMenu
        Layout = blGlyphTop
        ToolStyle = tsDropDown
        ExplicitWidth = 74
        ExplicitHeight = 40
      end
      inherited BtnOpen: TRzToolButton
        Left = 239
        Layout = blGlyphTop
        Enabled = True
        OnClick = BtnOpenClick
        ExplicitLeft = 239
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnFind: TRzToolButton
        Left = 359
        Layout = blGlyphTop
        ExplicitLeft = 359
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnPrint: TRzToolButton
        Left = 419
        Width = 74
        Height = 40
        Layout = blGlyphTop
        ExplicitLeft = 419
        ExplicitWidth = 74
        ExplicitHeight = 40
      end
      inherited BtnOK: TRzToolButton
        Left = 493
        Layout = blGlyphTop
        ExplicitLeft = 493
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnCancel: TRzToolButton
        Left = 553
        Layout = blGlyphTop
        ShowCaption = True
        UseToolbarShowCaption = False
        ExplicitLeft = 553
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnRefresh: TRzToolButton
        Left = 299
        Layout = blGlyphTop
        Enabled = True
        OnClick = BtnRefreshClick
        ExplicitLeft = 299
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnEdit: TRzToolButton
        Left = 78
        Width = 87
        Height = 40
        Layout = blGlyphTop
        Enabled = True
        OnClick = BtnEditClick
        ExplicitLeft = 78
        ExplicitWidth = 87
        ExplicitHeight = 40
      end
      inherited BtnExecute: TRzToolButton
        Left = 613
        Width = 64
        Height = 40
        Layout = blGlyphTop
        ExplicitLeft = 613
        ExplicitWidth = 64
        ExplicitHeight = 40
      end
      inherited BtnDelete: TRzToolButton
        Left = 677
        Layout = blGlyphTop
        Enabled = True
        Visible = True
        ExplicitLeft = 677
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnSave: TRzToolButton
        Left = 737
        Width = 77
        Height = 40
        DropDownMenu = SaveMenu
        Layout = blGlyphTop
        ToolStyle = tsDropDown
        Visible = True
        OnClick = nil
        ExplicitLeft = 737
        ExplicitWidth = 77
        ExplicitHeight = 40
      end
      inherited BtnExit: TRzToolButton
        Left = 814
        Layout = blGlyphTop
        ExplicitLeft = 814
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnView: TRzToolButton
        Left = 165
        Width = 74
        Height = 40
        Layout = blGlyphTop
        Enabled = True
        OnClick = BtnViewClick
        ExplicitLeft = 165
        ExplicitWidth = 74
        ExplicitHeight = 40
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 70
      Width = 998
      Height = 342
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'MoneyTwins'
      LookAndFeel.SkinName = 'MoneyTwins'
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = BtnEditClick
        OnKeyUp = FormKeyUp
        NavigatorButtons.ConfirmDelete = False
        OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
        DataController.DataModeController.GridModeBufferCount = 10
        DataController.DataSource = srDocList
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Position = spFooter
            Column = cxGrid1DBTableView1F_PAY_SUM
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = cxGrid1DBTableView1F_DOC_SUM
          end
          item
            Kind = skSum
            Column = cxGrid1DBTableView1F_DOC_COUNT
          end
          item
            Kind = skSum
            Column = cxGrid1DBTableView1F_DOC_SKIDKA
          end
          item
            Kind = skSum
            Column = cxGrid1DBTableView1F_PAY_SUM
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.HeaderAutoHeight = True
        Styles.Background = DM.cxStyle12
        Styles.Content = DM.cxStyle13
        Styles.StyleSheet = DM.GridTableViewStyleSheetDevExpress
        object cxGrid1DBTableView1F_PARTNER: TcxGridDBColumn
          DataBinding.FieldName = 'F_PARTNER'
          Visible = False
        end
        object cxGrid1DBTableView1F_NUMBER: TcxGridDBColumn
          DataBinding.FieldName = 'F_NUMBER'
          Width = 53
        end
        object cxGrid1DBTableView1F_DATE: TcxGridDBColumn
          DataBinding.FieldName = 'F_DATE'
          Width = 61
        end
        object cxGrid1DBTableView1F_STATE: TcxGridDBColumn
          DataBinding.FieldName = 'F_STATE'
          Visible = False
        end
        object cxGrid1DBTableView1F_PAYDATE_PLAN: TcxGridDBColumn
          DataBinding.FieldName = 'F_PAYDATE_PLAN'
          Width = 69
        end
        object cxGrid1DBTableView1F_STATE_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_STATE_NAME'
          Width = 42
        end
        object cxGrid1DBTableView1F_SKLAD_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_SKLAD_NAME'
          Width = 49
        end
        object cxGrid1DBTableView1F_PARTNER_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_PARTNER_NAME'
          Width = 235
        end
        object cxGrid1DBTableView1F_SKLAD: TcxGridDBColumn
          DataBinding.FieldName = 'F_SKLAD'
          Visible = False
        end
        object cxGrid1DBTableView1F_DOC_COUNT: TcxGridDBColumn
          DataBinding.FieldName = 'F_DOC_COUNT'
          Width = 73
        end
        object cxGrid1DBTableView1F_DOC_SUM: TcxGridDBColumn
          DataBinding.FieldName = 'F_DOC_SUM'
          Width = 62
        end
        object cxGrid1DBTableView1F_DOC_SKIDKA: TcxGridDBColumn
          DataBinding.FieldName = 'F_DOC_SKIDKA'
          Width = 59
        end
        object cxGrid1DBTableView1F_PRICE_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_PRICE_NAME'
          Width = 46
        end
        object cxGrid1DBTableView1F_DOC_SKIDKA_PERCENT: TcxGridDBColumn
          DataBinding.FieldName = 'F_DOC_SKIDKA_PERCENT'
          Width = 49
        end
        object cxGrid1DBTableView1F_DOC_OUT: TcxGridDBColumn
          DataBinding.FieldName = 'F_DOC_OUT'
          Visible = False
        end
        object cxGrid1DBTableView1F_PAY_SUM: TcxGridDBColumn
          DataBinding.FieldName = 'F_PAY_SUM'
          Width = 65
        end
        object cxGrid1DBTableView1TYPE: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1087#1088#1086#1076#1072#1078#1080
          DataBinding.FieldName = 'TYPE'
          Width = 53
        end
        object cxGrid1DBTableView1F_PAY_TYPE: TcxGridDBColumn
          DataBinding.FieldName = 'F_PAY_TYPE'
          Visible = False
        end
        object cxGrid1DBTableView1F_USER: TcxGridDBColumn
          DataBinding.FieldName = 'F_USER'
          Width = 42
        end
        object cxGrid1DBTableView1F_PROPERTY_1: TcxGridDBColumn
          DataBinding.FieldName = 'F_PROPERTY_1'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Width = 26
          IsCaptionAssigned = True
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object ToolBar1: TToolBar
      Left = 1
      Top = 41
      Width = 998
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
  inherited PrnMenu: TPopupMenu
    Left = 352
    Top = 24
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dsDocList: TpFIBDataSet
    DeleteSQL.Strings = (
      'execute procedure SP_T_DOC_OUT_D(:f_doc_out)')
    SelectSQL.Strings = (
      'select *'
      'from'
      '('
      'SELECT'
      '    F_ID as f_doc_out,'
      '    cast('#39#1054#1087#1090#1086#1074#1099#1081#39' as char(10)) as TYPE,'
      '    F_SKlAD,'
      '    F_PARTNER,'
      '    F_NUMBER,'
      '    F_DATE,'
      '    f_paydate_plan,'
      '    F_STATE,'
      '    F_STATE_NAME,'
      '    F_SKLAD_NAME,'
      '    F_PARTNER_NAME,'
      '    f_doc_count,'
      '    f_doc_sum,'
      '    f_doc_skidka,'
      '    f_price_name,'
      '    f_doc_skidka_percent,'
      '    f_pay_sum,'
      '    f_pay_type,'
      '    f_user,'
      '    f_property_1'
      'FROM'
      '    SP_T_DOC_OUT_S(1,:str_date,:end_date) '
      'union'
      'SELECT'
      '    F_ID,'
      '    '#39#1056#1086#1079#1085#1080#1095#1085#1099#1081#39' as TYPE,'
      '    F_SKlAD,'
      '    F_PARTNER,'
      '    F_NUMBER,'
      '    F_DATE,'
      '    f_paydate_plan,'
      '    F_STATE,'
      '    F_STATE_NAME,'
      '    F_SKLAD_NAME,'
      '    F_PARTNER_NAME,'
      '    f_doc_count,'
      '    f_doc_sum,'
      '    f_doc_skidka,'
      '    f_price_name,'
      '    f_doc_skidka_percent,'
      '    f_pay_sum,'
      '    f_pay_type,'
      '    f_user,'
      '    f_property_1'
      'FROM'
      '    SP_T_DOC_OUT_S(2,:str_date,:end_date) '
      ')')
    Conditions.Data = (
      'ByPeriod'
      'f_date between :start_date and :end_date'
      False
      'ByPartner'
      'f_partner=:f_partner'
      False
      'ByPayType'
      'f_pay_type=:f_pay_type or coalesce(f_pay_type,0) = 0'
      False
      'ByPaySum'
      'f_pay_sum<>f_doc_sum'
      False)
    BeforeOpen = dsDocListBeforeOpen
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 456
    Top = 104
    object dsDocListF_PARTNER: TFIBBCDField
      FieldName = 'F_PARTNER'
      Size = 0
    end
    object dsDocListF_NUMBER: TFIBStringField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'F_NUMBER'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocListF_DATE: TFIBDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'F_DATE'
    end
    object dsDocListF_STATE: TFIBBCDField
      FieldName = 'F_STATE'
      Size = 0
    end
    object dsDocListF_STATE_NAME: TFIBStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'F_STATE_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
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
    object dsDocListF_SKLAD: TFIBBCDField
      FieldName = 'F_SKLAD'
      Visible = False
      Size = 0
    end
    object dsDocListF_DOC_COUNT: TFIBFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'F_DOC_COUNT'
      DisplayFormat = '0'
    end
    object dsDocListF_DOC_SUM: TFIBBCDField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'F_DOC_SUM'
      DisplayFormat = '0.00'
      Size = 3
    end
    object dsDocListF_DOC_SKIDKA: TFIBBCDField
      DisplayLabel = #1057#1082#1080#1076#1082#1072
      FieldName = 'F_DOC_SKIDKA'
      DisplayFormat = '0.00'
      Size = 3
    end
    object dsDocListF_PAYDATE_PLAN: TFIBDateField
      DisplayLabel = #1044#1072#1090#1072' '#1086#1087#1083#1072#1090#1099' ('#1087#1083#1072#1085')'
      FieldName = 'F_PAYDATE_PLAN'
    end
    object dsDocListF_PRICE_NAME: TFIBStringField
      DisplayLabel = #1055#1088#1072#1081#1089
      FieldName = 'F_PRICE_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocListF_DOC_SKIDKA_PERCENT: TFIBBCDField
      DisplayLabel = #1057#1082#1080#1076#1082#1072' %'
      FieldName = 'F_DOC_SKIDKA_PERCENT'
      DisplayFormat = '0'
      Size = 3
    end
    object dsDocListF_DOC_OUT: TFIBBCDField
      FieldName = 'F_DOC_OUT'
      Size = 0
    end
    object dsDocListF_PAY_SUM: TFIBBCDField
      DisplayLabel = #1054#1087#1083#1072#1095#1077#1085#1086
      FieldName = 'F_PAY_SUM'
      DisplayFormat = '0.00'
      Size = 3
    end
    object dsDocListTYPE: TFIBStringField
      FieldName = 'TYPE'
      Size = 10
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocListF_PAY_TYPE: TFIBBCDField
      FieldName = 'F_PAY_TYPE'
      Size = 0
    end
    object dsDocListF_USER: TFIBStringField
      DisplayLabel = #1040#1074#1090#1086#1088
      FieldName = 'F_USER'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocListF_PROPERTY_1: TFIBStringField
      FieldName = 'F_PROPERTY_1'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object pFIBTransaction: TpFIBTransaction
    DefaultDatabase = DM.pFIBDatabase
    Left = 464
    Top = 112
  end
  object srDocList: TDataSource
    DataSet = dsDocList
    Left = 392
    Top = 120
  end
  object dsExportDoc: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_VALUE'
      'FROM'
      '    PR_EXPORT_DOC_OUT(:F_ID) ')
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
  object OpenDialog: TOpenDialog
    Left = 592
    Top = 168
  end
  object dsImportDoc: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID'
      'FROM'
      '    SP_IMPORT_DOC_out(:F_NUMBER,'
      '    :F_DATE,'
      '    :F_PARTNER,'
      '    :F_EXT_BASE,'
      '    :F_EXT_ID,'
      '    :F_DOC_TYPE,'
      '    :F_Sklad,'
      '    :F_DISCOUNT,'
      '    :F_USER,'
      '    :F_SKD_PRC) ')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 672
    Top = 192
  end
  object NewDocMenu: TPopupMenu
    Left = 48
    Top = 24
    object N1: TMenuItem
      Tag = 1
      Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103
      OnClick = BtnNewClick
    end
    object N2: TMenuItem
      Tag = 2
      Caption = #1056#1086#1079#1085#1080#1094#1072
      OnClick = BtnNewClick
    end
  end
  object SaveMenu: TPopupMenu
    Left = 696
    Top = 24
    object N3: TMenuItem
      Caption = #1047#1072' '#1087#1077#1088#1080#1086#1076
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1085#1085#1099#1077
      Visible = False
      OnClick = BtnSaveClick
    end
    object N6: TMenuItem
      Caption = #1054#1076#1080#1085' '#1076#1086#1082#1091#1084#1077#1085#1090
      OnClick = N6Click
    end
  end
  object dsExportPrice: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_VALUE'
      'FROM'
      '    PR_EXPORT_PRICE_BY_DOC_OUT(:F_DOC_OUT,'
      '    :F_PRICE_ID) ')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 144
    Top = 296
    object dsExportPriceF_VALUE: TFIBStringField
      FieldName = 'F_VALUE'
      Size = 10000
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object spInsDocStr: TpFIBStoredProc
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    SQL.Strings = (
      
        'EXECUTE PROCEDURE SP_T_DOC_OUT_STR_I (null, ?F_DOC_OUT, ?F_GOOD,' +
        ' ?F_PRICE, ?F_CNT, ?F_SUM, ?F_SKD, ?F_DESCR)')
    StoredProcName = 'SP_T_DOC_OUT_STR_I'
    Left = 672
    Top = 232
  end
end
