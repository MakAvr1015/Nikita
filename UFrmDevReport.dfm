inherited FrmDevReport: TFrmDevReport
  Caption = 'FrmDevReport'
  ClientHeight = 473
  ClientWidth = 778
  ExplicitWidth = 786
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 454
    Width = 778
  end
  inherited Panel3: TPanel
    Width = 778
    Height = 454
    ExplicitWidth = 778
    ExplicitHeight = 454
    object Splitter1: TSplitter [0]
      Left = 1
      Top = 237
      Width = 776
      Height = 3
      Cursor = crVSplit
      Align = alBottom
      ExplicitTop = 30
      ExplicitWidth = 210
    end
    inherited RzToolbar: TRzToolbar
      Width = 776
      ToolbarControls = (
        BtnNew
        BtnEdit
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
      inherited BtnRefresh: TRzToolButton
        Enabled = True
        OnClick = BtnRefreshClick
      end
    end
    object cxDBPivotGrid: TcxDBPivotGrid
      Left = 1
      Top = 30
      Width = 776
      Height = 207
      Align = alClient
      DataSource = srReport
      Groups = <>
      TabOrder = 1
      ExplicitLeft = 2
      ExplicitTop = 27
    end
    object DBChart: TDBChart
      Left = 1
      Top = 240
      Width = 776
      Height = 213
      Title.Text.Strings = (
        'TDBChart')
      Align = alBottom
      TabOrder = 2
      ExplicitLeft = 2
      ExplicitTop = 243
      object dxDbOrgChart: TdxDbOrgChart
        Left = 168
        Top = 8
        Width = 320
        Height = 200
        DataSource = srReportChart
        Options = [ocSelect, ocFocus, ocButtons, ocDblClick, ocEdit, ocCanDrag, ocShowDrag]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object BarSeria: TBarSeries
        Marks.Callout.Brush.Color = clBlack
        Marks.Visible = True
        DataSource = dsReport
        Gradient.Direction = gdTopBottom
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Bar'
        YValues.Order = loNone
      end
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object srReport: TDataSource
    DataSet = dsReport
    Left = 432
    Top = 280
  end
  object dsReport: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from t_reg_good')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 432
    Top = 248
  end
  object dsReportChart: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select f_good,sum(f_str_ost) as f_ost from t_reg_good group by f' +
        '_good')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 472
    Top = 248
  end
  object srReportChart: TDataSource
    DataSet = dsReportChart
    Left = 472
    Top = 280
  end
end
