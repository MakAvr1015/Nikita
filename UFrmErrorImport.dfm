inherited FrmErrorImport: TFrmErrorImport
  Caption = #1054#1096#1080#1073#1082#1080' '#1079#1072#1075#1088#1091#1079#1082#1080
  ExplicitWidth = 623
  ExplicitHeight = 350
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    inherited RzToolbar: TRzToolbar
      Visible = False
      ExplicitTop = -5
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
    object RzListBox1: TRzListBox
      Left = 1
      Top = 30
      Width = 613
      Height = 163
      Align = alTop
      ItemHeight = 13
      TabOrder = 1
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object pFIBDataSet1: TpFIBDataSet
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 472
    Top = 80
  end
end
