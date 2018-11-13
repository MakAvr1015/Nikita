inherited FrmOutputPayList: TFrmOutputPayList
  Caption = #1046#1091#1088#1085#1072#1083' '#1080#1089#1093#1086#1076#1103#1097#1080#1093' '#1087#1083#1072#1090#1077#1078#1077#1081
  ClientHeight = 609
  ClientWidth = 820
  ExplicitWidth = 828
  ExplicitHeight = 636
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 590
    Width = 820
    ExplicitTop = 590
    ExplicitWidth = 820
    inherited DsFormName: TRzStatusPane
      Caption = 'dsOutputMoneyList'
    end
  end
  inherited Panel3: TPanel
    Width = 820
    Height = 590
    ExplicitWidth = 820
    ExplicitHeight = 590
    inherited RzToolbar: TRzToolbar
      Width = 818
      Height = 80
      RowHeight = 40
      ButtonLayout = blGlyphTop
      ButtonWidth = 60
      ButtonHeight = 40
      ShowButtonCaptions = True
      TextOptions = ttoShowTextLabels
      ExplicitWidth = 818
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
        Left = 4
        Top = 40
        Layout = blGlyphTop
        ExplicitLeft = 4
        ExplicitTop = 40
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
      Top = 110
      Width = 818
      Height = 479
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'MoneyTwins'
      LookAndFeel.SkinName = 'MoneyTwins'
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = BtnEditClick
        NavigatorButtons.ConfirmDelete = False
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
          Width = 46
        end
        object cxGrid1DBTableView1F_NUMBER: TcxGridDBColumn
          DataBinding.FieldName = 'F_NUMBER'
          Width = 31
        end
        object cxGrid1DBTableView1F_PARTNER_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_PARTNER_NAME'
          Width = 178
        end
        object cxGrid1DBTableView1F_BANK: TcxGridDBColumn
          DataBinding.FieldName = 'F_BANK'
          Visible = False
        end
        object cxGrid1DBTableView1F_BANK_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_BANK_NAME'
          Width = 175
        end
        object cxGrid1DBTableView1F_STATE_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_STATE_NAME'
          Width = 48
        end
        object cxGrid1DBTableView1F_STATE: TcxGridDBColumn
          DataBinding.FieldName = 'F_STATE'
          Visible = False
        end
        object cxGrid1DBTableView1F_SUMMA: TcxGridDBColumn
          DataBinding.FieldName = 'F_SUMMA'
          Width = 44
        end
        object cxGrid1DBTableView1F_TYPE_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_TYPE_NAME'
          Width = 196
        end
        object cxGrid1DBTableView1F_TYPE: TcxGridDBColumn
          DataBinding.FieldName = 'F_TYPE'
          Visible = False
        end
        object cxGrid1DBTableView1F_USER: TcxGridDBColumn
          DataBinding.FieldName = 'F_USER'
          Width = 86
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object ToolBar1: TToolBar
      Left = 1
      Top = 81
      Width = 818
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
  object dsOutputMoneyList: TpFIBDataSet
    DeleteSQL.Strings = (
      'execute procedure SP_T_MONEY_OUT_D(:f_id)')
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
      '    f_user'
      'FROM'
      '    SP_T_MONEY_out_S(:str_date,:end_date) ')
    BeforeOpen = dsOutputMoneyListBeforeOpen
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 48
    Top = 120
    object dsOutputMoneyListF_ID: TFIBBCDField
      Tag = 1
      FieldName = 'F_ID'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsOutputMoneyListF_SKLAD: TFIBBCDField
      FieldName = 'F_SKLAD'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsOutputMoneyListF_PARTNER: TFIBBCDField
      FieldName = 'F_PARTNER'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsOutputMoneyListF_PARTNER_NAME: TFIBStringField
      DisplayLabel = #1055#1072#1088#1090#1085#1077#1088
      FieldName = 'F_PARTNER_NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object dsOutputMoneyListF_BANK: TFIBBCDField
      FieldName = 'F_BANK'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsOutputMoneyListF_BANK_NAME: TFIBStringField
      DisplayLabel = #1041#1072#1085#1082
      FieldName = 'F_BANK_NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object dsOutputMoneyListF_NUMBER: TFIBStringField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'F_NUMBER'
      EmptyStrToNull = True
    end
    object dsOutputMoneyListF_DATE: TFIBDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'F_DATE'
    end
    object dsOutputMoneyListF_STATE_NAME: TFIBStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'F_STATE_NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object dsOutputMoneyListF_STATE: TFIBBCDField
      FieldName = 'F_STATE'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsOutputMoneyListF_SUMMA: TFIBFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'F_SUMMA'
      DisplayFormat = '.00;(,00)'
    end
    object dsOutputMoneyListF_TYPE_NAME: TFIBStringField
      DisplayLabel = #1058#1080#1087
      FieldName = 'F_TYPE_NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object dsOutputMoneyListF_TYPE: TFIBBCDField
      FieldName = 'F_TYPE'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsOutputMoneyListF_USER: TFIBStringField
      DisplayLabel = #1040#1074#1090#1086#1088
      FieldName = 'F_USER'
      Size = 60
      EmptyStrToNull = True
    end
  end
  object srInputMoneyList: TDataSource
    DataSet = dsOutputMoneyList
    Left = 56
    Top = 128
  end
  object MnNewMoneyIn: TPopupMenu
    Left = 48
    Top = 208
    object N1: TMenuItem
      Tag = 1
      Caption = #1053#1072#1083#1080#1095#1085#1099#1081
      OnClick = BtnNewClick
    end
    object MenuItem1: TMenuItem
      Tag = 2
      Caption = #1041#1077#1079#1085#1072#1083#1080#1095#1085#1099#1081
      OnClick = BtnNewClick
    end
    object N2: TMenuItem
      Tag = 3
      Caption = #1050#1072#1088#1090#1072
      OnClick = BtnNewClick
    end
  end
end
