inherited FrmMoveDocListSpisan: TFrmMoveDocListSpisan
  Tag = 2
  Caption = #1057#1087#1080#1089#1072#1085#1080#1103
  ExplicitLeft = -148
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
        UseToolbarButtonLayout = False
      end
      inherited BtnOpen: TRzToolButton
        UseToolbarButtonLayout = False
      end
      inherited BtnFind: TRzToolButton
        UseToolbarButtonLayout = False
      end
      inherited BtnPrint: TRzToolButton
        UseToolbarButtonLayout = False
      end
      inherited BtnOK: TRzToolButton
        UseToolbarButtonLayout = False
      end
      inherited BtnCancel: TRzToolButton
        UseToolbarButtonLayout = False
      end
      inherited BtnRefresh: TRzToolButton
        UseToolbarButtonLayout = False
      end
      inherited BtnEdit: TRzToolButton
        UseToolbarButtonLayout = False
      end
      inherited BtnExecute: TRzToolButton
        UseToolbarButtonLayout = False
      end
      inherited BtnDelete: TRzToolButton
        UseToolbarButtonLayout = False
      end
      inherited BtnSave: TRzToolButton
        UseToolbarButtonLayout = False
      end
      inherited BtnExit: TRzToolButton
        UseToolbarButtonLayout = False
      end
      inherited BtnView: TRzToolButton
        UseToolbarButtonLayout = False
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
        inherited cxGrid1DBTableView1F_DATE: TcxGridDBColumn
          Width = 37
        end
        inherited cxGrid1DBTableView1F_NUMBER: TcxGridDBColumn
          Width = 38
        end
        inherited cxGrid1DBTableView1F_SKLAD_FROM_NAME: TcxGridDBColumn
          Width = 292
        end
        inherited cxGrid1DBTableView1F_STATE_NAME: TcxGridDBColumn
          Width = 106
        end
        inherited cxGrid1DBTableView1F_DOC_COUNT: TcxGridDBColumn
          Width = 74
        end
        inherited cxGrid1DBTableView1F_DOC_SUM: TcxGridDBColumn
          Width = 153
        end
        inherited cxGrid1DBTableView1F_TYPE_NAME: TcxGridDBColumn
          Visible = False
        end
        inherited cxGrid1DBTableView1F_USER: TcxGridDBColumn
          Width = 104
        end
        object cxGrid1DBTableView1F_DEFAULT_PROPERTY: TcxGridDBColumn [17]
          DataBinding.FieldName = 'F_DEFAULT_PROPERTY'
          Width = 191
        end
      end
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited dsMoveDocsList: TpFIBDataSet
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
      '    F_DEFAULT_PROPERTY,'
      '    f_DOP_INFO,'
      '    F_DOC_PROPERTY'
      'FROM'
      '    SP_T_DOC_MOVE_S(2,:str_date,:end_date) ')
    object dsMoveDocsListF_DEFAULT_PROPERTY: TFIBStringField [17]
      DisplayLabel = #1042#1080#1076' '#1089#1087#1080#1089#1072#1085#1080#1103
      FieldName = 'F_DEFAULT_PROPERTY'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
  end
end
