inherited FrmListBack: TFrmListBack
  Caption = #1046#1091#1088#1085#1072#1083' '#1042#1086#1079#1074#1088#1072#1090#1086#1074' '#1086#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1077#1081
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
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
        Tag = 2
        Width = 74
        DropDownMenu = PopupMenuNewDoc
        UseToolbarButtonLayout = False
        ToolStyle = tsDropDown
        OnClick = BtnNewDDClick
        ExplicitWidth = 74
      end
      inherited BtnOpen: TRzToolButton
        Left = 239
        UseToolbarButtonLayout = False
        ExplicitLeft = 239
      end
      inherited BtnFind: TRzToolButton
        Left = 359
        UseToolbarButtonLayout = False
        ExplicitLeft = 359
      end
      inherited BtnPrint: TRzToolButton
        Left = 419
        UseToolbarButtonLayout = False
        ExplicitLeft = 419
      end
      inherited BtnOK: TRzToolButton
        Left = 493
        UseToolbarButtonLayout = False
        ExplicitLeft = 493
      end
      inherited BtnCancel: TRzToolButton
        Left = 553
        UseToolbarButtonLayout = False
        ExplicitLeft = 553
      end
      inherited BtnRefresh: TRzToolButton
        Left = 299
        UseToolbarButtonLayout = False
        ExplicitLeft = 299
      end
      inherited BtnEdit: TRzToolButton
        Left = 78
        UseToolbarButtonLayout = False
        ExplicitLeft = 78
      end
      inherited BtnExecute: TRzToolButton
        Left = 613
        UseToolbarButtonLayout = False
        ExplicitLeft = 613
      end
      inherited BtnDelete: TRzToolButton
        Left = 677
        UseToolbarButtonLayout = False
        ExplicitLeft = 677
      end
      inherited BtnSave: TRzToolButton
        Left = 737
        UseToolbarButtonLayout = False
        ExplicitLeft = 737
      end
      inherited BtnExit: TRzToolButton
        UseToolbarButtonLayout = False
      end
      inherited BtnView: TRzToolButton
        Left = 165
        UseToolbarButtonLayout = False
        ExplicitLeft = 165
      end
    end
    inherited cxGrid1: TcxGrid
      LookAndFeel.SkinName = 'MoneyTwins'
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        Styles.Background = nil
        Styles.Content = nil
        Styles.ContentEven = nil
        Styles.ContentOdd = nil
        Styles.FilterBox = nil
        Styles.Inactive = nil
        Styles.IncSearch = nil
        Styles.Selection = nil
        Styles.Footer = nil
        Styles.Group = nil
        Styles.GroupByBox = nil
        Styles.Header = nil
        Styles.Indicator = nil
        Styles.Preview = nil
      end
    end
  end
  inherited dsDocList: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID as f_Doc_in,'
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
      '    SP_T_DOC_IN_S(2,:str_date,:end_date) '
      'union'
      'SELECT'
      '    F_ID as f_Doc_in,'
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
      '    SP_T_DOC_IN_S(4,:str_date,:end_date) ')
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object PopupMenuNewDoc: TPopupMenu
    Left = 152
    Top = 56
    object NOptBack: TMenuItem
      Tag = 2
      Caption = #1054#1087#1090#1086#1074#1099#1081' '#1074#1086#1079#1074#1088#1072#1090
      OnClick = BtnNewClick
    end
    object NRoznBack: TMenuItem
      Tag = 4
      Caption = #1056#1086#1079#1085#1080#1095#1085#1099#1081' '#1074#1086#1079#1074#1088#1072#1090
      OnClick = BtnNewClick
    end
  end
end
