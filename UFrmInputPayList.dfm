inherited FrmInputPayList: TFrmInputPayList
  Caption = #1046#1091#1088#1085#1072#1083' '#1074#1093#1086#1076#1103#1097#1080#1093' '#1087#1083#1072#1090#1077#1078#1077#1081
  ClientHeight = 401
  ClientWidth = 891
  ExplicitWidth = 899
  ExplicitHeight = 428
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 382
    Width = 891
    ExplicitTop = 382
    ExplicitWidth = 891
    inherited DsFormName: TRzStatusPane
      Caption = 'dsInputMoneyList'
    end
  end
  inherited Panel3: TPanel
    Width = 891
    Height = 382
    ExplicitWidth = 891
    ExplicitHeight = 382
    inherited RzToolbar: TRzToolbar
      Width = 889
      Height = 40
      RowHeight = 40
      ButtonLayout = blGlyphTop
      ButtonWidth = 60
      ButtonHeight = 40
      ShowButtonCaptions = True
      TextOptions = ttoShowTextLabels
      ExplicitWidth = 889
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
        Top = 0
        Width = 74
        Height = 40
        DropDownMenu = MnNewMoneyIn
        Layout = blGlyphTop
        ToolStyle = tsDropDown
        ExplicitTop = 0
        ExplicitWidth = 74
        ExplicitHeight = 40
      end
      inherited BtnOpen: TRzToolButton
        Left = 239
        Top = 0
        Layout = blGlyphTop
        ExplicitLeft = 239
        ExplicitTop = 0
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnFind: TRzToolButton
        Left = 359
        Top = 0
        Layout = blGlyphTop
        ExplicitLeft = 359
        ExplicitTop = 0
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnPrint: TRzToolButton
        Left = 419
        Top = 0
        Width = 74
        Height = 40
        Layout = blGlyphTop
        ExplicitLeft = 419
        ExplicitTop = 0
        ExplicitWidth = 74
        ExplicitHeight = 40
      end
      inherited BtnOK: TRzToolButton
        Left = 493
        Top = 0
        Layout = blGlyphTop
        ExplicitLeft = 493
        ExplicitTop = 0
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnCancel: TRzToolButton
        Left = 553
        Top = 0
        Layout = blGlyphTop
        ExplicitLeft = 553
        ExplicitTop = 0
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnRefresh: TRzToolButton
        Left = 299
        Top = 0
        Layout = blGlyphTop
        Enabled = True
        OnClick = BtnRefreshClick
        ExplicitLeft = 299
        ExplicitTop = 0
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnEdit: TRzToolButton
        Left = 78
        Top = 0
        Width = 87
        Height = 40
        Layout = blGlyphTop
        Enabled = True
        OnClick = BtnEditClick
        ExplicitLeft = 78
        ExplicitTop = 0
        ExplicitWidth = 87
        ExplicitHeight = 40
      end
      inherited BtnExecute: TRzToolButton
        Left = 613
        Top = 0
        Width = 64
        Height = 40
        Layout = blGlyphTop
        ExplicitLeft = 613
        ExplicitTop = 0
        ExplicitWidth = 64
        ExplicitHeight = 40
      end
      inherited BtnDelete: TRzToolButton
        Left = 677
        Top = 0
        Layout = blGlyphTop
        Enabled = True
        Visible = True
        ExplicitLeft = 677
        ExplicitTop = 0
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnSave: TRzToolButton
        Left = 737
        Top = 0
        Width = 63
        Height = 40
        Layout = blGlyphTop
        ExplicitLeft = 737
        ExplicitTop = 0
        ExplicitWidth = 63
        ExplicitHeight = 40
      end
      inherited BtnExit: TRzToolButton
        Left = 800
        Top = 0
        Layout = blGlyphTop
        ExplicitLeft = 800
        ExplicitTop = 0
        ExplicitWidth = 60
        ExplicitHeight = 40
      end
      inherited BtnView: TRzToolButton
        Left = 165
        Top = 0
        Width = 74
        Height = 40
        Layout = blGlyphTop
        Visible = False
        ExplicitLeft = 165
        ExplicitTop = 0
        ExplicitWidth = 74
        ExplicitHeight = 40
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 70
      Width = 889
      Height = 311
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'MoneyTwins'
      LookAndFeel.SkinName = 'MoneyTwins'
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = BtnEditClick
        NavigatorButtons.ConfirmDelete = False
        OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
        DataController.DataSource = srInputMoneyList
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Column = cxGrid1DBTableView1F_SUMMA
            Sorted = True
          end
          item
            Kind = skSum
            Position = spFooter
            Column = cxGrid1DBTableView1F_SUMMA
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = cxGrid1DBTableView1F_SUMMA
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsSelection.CellSelect = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        Styles.StyleSheet = DM.GridTableViewStyleSheetDevExpress
        object cxGrid1DBTableView1F_ID: TcxGridDBColumn
          DataBinding.FieldName = 'F_ID'
          Visible = False
        end
        object cxGrid1DBTableView1F_SKLAD: TcxGridDBColumn
          DataBinding.FieldName = 'F_SKLAD'
          Visible = False
        end
        object cxGrid1DBTableView1F_PARTNER: TcxGridDBColumn
          DataBinding.FieldName = 'F_PARTNER'
          Visible = False
        end
        object cxGrid1DBTableView1F_DATE: TcxGridDBColumn
          DataBinding.FieldName = 'F_DATE'
          Width = 48
        end
        object cxGrid1DBTableView1F_NUMBER: TcxGridDBColumn
          DataBinding.FieldName = 'F_NUMBER'
          Width = 32
        end
        object cxGrid1DBTableView1F_PARTNER_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_PARTNER_NAME'
          Width = 184
        end
        object cxGrid1DBTableView1F_BANK: TcxGridDBColumn
          DataBinding.FieldName = 'F_BANK'
          Visible = False
        end
        object cxGrid1DBTableView1F_BANK_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_BANK_NAME'
          Width = 181
        end
        object cxGrid1DBTableView1F_STATE_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_STATE_NAME'
          Width = 50
        end
        object cxGrid1DBTableView1F_STATE: TcxGridDBColumn
          DataBinding.FieldName = 'F_STATE'
          Visible = False
        end
        object cxGrid1DBTableView1F_SUMMA: TcxGridDBColumn
          DataBinding.FieldName = 'F_SUMMA'
          Width = 45
        end
        object cxGrid1DBTableView1F_TYPE_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_TYPE_NAME'
          Width = 126
        end
        object cxGrid1DBTableView1F_TYPE: TcxGridDBColumn
          DataBinding.FieldName = 'F_TYPE'
          Visible = False
        end
        object cxGrid1DBTableView1F_DOC_SUM: TcxGridDBColumn
          DataBinding.FieldName = 'F_DOC_SUM'
          Width = 141
        end
        object cxGrid1DBTableView1F_USER: TcxGridDBColumn
          DataBinding.FieldName = 'F_USER'
          Width = 68
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object ToolBar1: TToolBar
      Left = 1
      Top = 41
      Width = 889
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
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dsInputMoneyList: TpFIBDataSet [14]
    DeleteSQL.Strings = (
      'execute procedure SP_T_MONEY_IN_D(:f_id)')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_SKLAD,'
      '    F_PARTNER,'
      '    F_PARTNER_NAME,'
      '    F_BANK,'
      '    F_BANK_NAME,'
      '    F_NUMBER,'
      '    F_DATE,'
      '    F_STATE_NAME,'
      '    F_STATE,'
      '    F_SUMMA,'
      '    F_TYPE_NAME,'
      '    F_TYPE,'
      '    F_DOC_SUM,'
      '    f_user'
      'FROM'
      '    SP_T_MONEY_IN_S(:str_date,:end_date)')
    BeforeOpen = dsInputMoneyListBeforeOpen
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 48
    Top = 120
    object dsInputMoneyListF_ID: TFIBBCDField
      Tag = 1
      FieldName = 'F_ID'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsInputMoneyListF_SKLAD: TFIBBCDField
      FieldName = 'F_SKLAD'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsInputMoneyListF_PARTNER: TFIBBCDField
      FieldName = 'F_PARTNER'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsInputMoneyListF_PARTNER_NAME: TFIBStringField
      DisplayLabel = #1055#1072#1088#1090#1085#1077#1088
      FieldName = 'F_PARTNER_NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object dsInputMoneyListF_BANK: TFIBBCDField
      FieldName = 'F_BANK'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsInputMoneyListF_BANK_NAME: TFIBStringField
      DisplayLabel = #1041#1072#1085#1082
      FieldName = 'F_BANK_NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object dsInputMoneyListF_NUMBER: TFIBStringField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'F_NUMBER'
      EmptyStrToNull = True
    end
    object dsInputMoneyListF_DATE: TFIBDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'F_DATE'
    end
    object dsInputMoneyListF_STATE_NAME: TFIBStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'F_STATE_NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object dsInputMoneyListF_STATE: TFIBBCDField
      FieldName = 'F_STATE'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsInputMoneyListF_SUMMA: TFIBFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'F_SUMMA'
      DisplayFormat = '.00;(,00)'
    end
    object dsInputMoneyListF_TYPE_NAME: TFIBStringField
      DisplayLabel = #1058#1080#1087
      FieldName = 'F_TYPE_NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object dsInputMoneyListF_TYPE: TFIBBCDField
      FieldName = 'F_TYPE'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsInputMoneyListF_DOC_SUM: TFIBBCDField
      DisplayLabel = #1056#1072#1079#1085#1077#1089#1077#1085#1086
      FieldName = 'F_DOC_SUM'
      DisplayFormat = '.00;(,00)'
      Size = 3
      RoundByScale = True
    end
    object dsInputMoneyListF_USER: TFIBStringField
      DisplayLabel = #1040#1074#1090#1086#1088
      FieldName = 'F_USER'
      Size = 60
      EmptyStrToNull = True
    end
  end
  object srInputMoneyList: TDataSource [15]
    DataSet = dsInputMoneyList
    Left = 56
    Top = 128
  end
  inherited cxPropertiesStore: TcxPropertiesStore
    Components = <
      item
        Component = Editend_date
        Properties.Strings = (
          'Date')
      end
      item
        Component = Editstr_date
        Properties.Strings = (
          'Date')
      end>
  end
  object MnNewMoneyIn: TPopupMenu
    Left = 48
    Top = 208
  end
  object dsPayTypes: TpFIBDataSet
    SelectSQL.Strings = (
      'select f_id, f_name from SP_T_NSI_MONEY_IN_TYPES_S'
      'order by f_id')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 96
    Top = 248
  end
end
