inherited FrmEditSklad: TFrmEditSklad
  BorderStyle = bsDialog
  Caption = #1057#1082#1083#1072#1076
  ClientHeight = 191
  ClientWidth = 418
  ExplicitWidth = 424
  ExplicitHeight = 216
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 172
    Width = 418
  end
  inherited Panel3: TPanel
    Width = 418
    Height = 172
    ExplicitWidth = 418
    ExplicitHeight = 172
    inherited RzToolbar: TRzToolbar
      Width = 416
      ToolbarControls = (
        BtnNew
        BtnEdit
        BtnOpen
        BtnRefresh
        BtnFind
        BtnPrint
        BtnOK
        BtnCancel
        BtnExecute)
    end
    object RzDBEdit1: TRzDBEdit
      Left = 105
      Top = 36
      Width = 296
      Height = 21
      TabOrder = 1
    end
    object RzDBButtonEdit1: TRzDBButtonEdit
      Left = 15
      Top = 136
      Width = 386
      Height = 21
      TabOrder = 2
    end
    object RzDBEdit2: TRzDBEdit
      Left = 15
      Top = 92
      Width = 386
      Height = 21
      TabOrder = 3
    end
  end
end
