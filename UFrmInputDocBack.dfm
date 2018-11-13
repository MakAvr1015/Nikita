inherited FrmInputDocBack: TFrmInputDocBack
  Caption = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
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
    end
    inherited RzPanel1: TRzPanel
      Height = 77
      ExplicitHeight = 77
    end
    inherited Panel1: TPanel
      Top = 103
      Height = 316
      ExplicitTop = 103
      ExplicitHeight = 316
      inherited Splitter1: TSplitter
        Height = 314
        ExplicitHeight = 314
      end
      inherited cxGrid1: TcxGrid
        Height = 314
        LookAndFeel.SkinName = 'MoneyTwins'
        ExplicitHeight = 314
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
          inherited cxGrid1DBTableView1F_ARTICLE: TcxGridDBColumn
            Width = 55
          end
          inherited cxGrid1DBTableView1F_GOOD_NAME: TcxGridDBColumn
            Options.Editing = False
            Width = 306
          end
          inherited cxGrid1DBTableView1F_PRICE: TcxGridDBColumn
            Width = 71
          end
          inherited cxGrid1DBTableView1F_ED_IZM_SHORT_NAME: TcxGridDBColumn
            Width = 85
          end
          inherited cxGrid1DBTableView1F_CNT: TcxGridDBColumn
            Width = 71
          end
          inherited cxGrid1DBTableView1F_SUM: TcxGridDBColumn
            Width = 70
          end
          inherited cxGrid1DBTableView1F_PICTURE: TcxGridDBColumn
            Width = 59
          end
          inherited cxGrid1DBTableView1F_ICON: TcxGridDBColumn
            IsCaptionAssigned = True
          end
        end
      end
      inherited cxDBImage1: TcxDBImage
        ExplicitHeight = 314
        Height = 314
      end
    end
  end
  inherited dsDocHead: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID as Doc_id,'
      '    F_ID as f_doc_in,'
      '    F_SKLAD,'
      '    F_PARTNER,'
      '    F_NUMBER,'
      '    F_DATE,'
      '    F_STATE,'
      '    F_PARTNER_NAME,'
      '    F_STATE_NAME,'
      '    F_SKLAD_NAME,'
      '    F_PRICE,'
      '    f_price_name,'
      '    f_doc_type,'
      '    f_doc_sum'
      ''
      'FROM'
      '    SP_T_DOC_IN_GET(:f_doc_in,2) ')
  end
  inherited dsDocStrings: TpFIBDataSet
    InsertSQL.Strings = (
      'execute procedure SP_T_DOC_IN_STR_I'
      '(   :f_id,:F_DOC_IN,:F_GOOD,:F_PRICE_val,:F_CNT,:F_SUM)')
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
