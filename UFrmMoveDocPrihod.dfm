inherited FrmMoveDocPrihod: TFrmMoveDocPrihod
  Caption = #1054#1087#1088#1080#1093#1086#1076#1086#1074#1072#1085#1080#1077' '#1080#1079#1083#1080#1096#1082#1086#1074
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
      Height = 131
      ExplicitHeight = 131
      inherited RzLabel5: TRzLabel
        Visible = False
      end
      inherited RzDBButtonEdit2: TRzDBButtonEdit
        Visible = False
      end
    end
    inherited Panel1: TPanel
      Top = 157
      Height = 535
      ExplicitTop = 157
      ExplicitHeight = 535
      inherited Splitter1: TSplitter
        Height = 533
        ExplicitHeight = 256
      end
      inherited cxGrid1: TcxGrid
        Height = 533
        ExplicitHeight = 533
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          Styles.Background = nil
          Styles.Content = nil
          Styles.ContentEven = nil
          Styles.ContentOdd = nil
          Styles.FilterBox = nil
          Styles.IncSearch = nil
          Styles.Footer = nil
          Styles.Group = nil
          Styles.GroupByBox = nil
          Styles.Header = nil
          Styles.Inactive = nil
          Styles.Indicator = nil
          Styles.Preview = nil
          Styles.Selection = nil
        end
      end
      inherited cxDBImage1: TcxDBImage
        ExplicitHeight = 533
        Height = 533
      end
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
