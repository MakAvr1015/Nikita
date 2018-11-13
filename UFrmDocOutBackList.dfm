inherited FrmDocOutBackList: TFrmDocOutBackList
  Caption = #1046#1091#1088#1085#1072#1083' '#1074#1086#1079#1074#1088#1072#1090#1086#1074' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
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
        Tag = 3
        UseToolbarButtonLayout = False
        ToolStyle = tsButton
        OnClick = BtnNewClick
        ExplicitWidth = 60
      end
      inherited BtnOpen: TRzToolButton
        Left = 225
        UseToolbarButtonLayout = False
        ExplicitLeft = 225
      end
      inherited BtnFind: TRzToolButton
        Left = 345
        UseToolbarButtonLayout = False
        ExplicitLeft = 345
      end
      inherited BtnPrint: TRzToolButton
        Left = 405
        UseToolbarButtonLayout = False
        ExplicitLeft = 405
      end
      inherited BtnOK: TRzToolButton
        Left = 479
        UseToolbarButtonLayout = False
        ExplicitLeft = 479
      end
      inherited BtnCancel: TRzToolButton
        Left = 539
        UseToolbarButtonLayout = False
        ExplicitLeft = 539
      end
      inherited BtnRefresh: TRzToolButton
        Left = 285
        UseToolbarButtonLayout = False
        ExplicitLeft = 285
      end
      inherited BtnEdit: TRzToolButton
        Left = 64
        UseToolbarButtonLayout = False
        ExplicitLeft = 64
      end
      inherited BtnExecute: TRzToolButton
        Left = 599
        UseToolbarButtonLayout = False
        ExplicitLeft = 599
      end
      inherited BtnDelete: TRzToolButton
        Left = 663
        UseToolbarButtonLayout = False
        ExplicitLeft = 663
      end
      inherited BtnSave: TRzToolButton
        Left = 723
        UseToolbarButtonLayout = False
        ExplicitLeft = 723
      end
      inherited BtnExit: TRzToolButton
        Left = 800
        UseToolbarButtonLayout = False
        ExplicitLeft = 800
      end
      inherited BtnView: TRzToolButton
        Left = 151
        UseToolbarButtonLayout = False
        ExplicitLeft = 151
      end
    end
    inherited cxGrid1: TcxGrid
      LookAndFeel.SkinName = 'MoneyTwins'
      inherited cxGrid1DBTableView1: TcxGridDBTableView
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = cxGrid1DBTableView1F_DOC_SKIDKA
          end
          item
            Kind = skSum
            Column = cxGrid1DBTableView1F_DOC_SUM
          end>
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
        inherited cxGrid1DBTableView1F_PAYDATE_PLAN: TcxGridDBColumn
          Visible = False
        end
        inherited cxGrid1DBTableView1F_DOC_SKIDKA: TcxGridDBColumn
          Visible = False
        end
        inherited cxGrid1DBTableView1F_DOC_SKIDKA_PERCENT: TcxGridDBColumn
          Visible = False
        end
        inherited cxGrid1DBTableView1TYPE: TcxGridDBColumn
          DataBinding.ValueType = ''
          DataBinding.FieldName = ''
          Visible = False
        end
        inherited cxGrid1DBTableView1F_PROPERTY_1: TcxGridDBColumn
          Visible = False
          IsCaptionAssigned = True
        end
      end
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited dsDocList: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID as f_doc_out,'
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
      '    '#39#39' as Type,'
      '    cast(0 as numeric(15,3)) as f_pay_type,'
      '    f_user,'
      '    f_property_1'
      'FROM'
      '    SP_T_DOC_OUT_S(3,:str_date,:end_date) ')
    inherited dsDocListTYPE: TFIBStringField
      Size = 0
    end
  end
end
