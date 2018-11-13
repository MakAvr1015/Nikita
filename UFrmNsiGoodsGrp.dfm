inherited FrmNsiGoodsGrp: TFrmNsiGoodsGrp
  Caption = #1058#1086#1074#1072#1088#1085#1099#1077' '#1075#1088#1091#1087#1087#1099
  ClientHeight = 514
  ClientWidth = 791
  ExplicitWidth = 799
  ExplicitHeight = 541
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 495
    Width = 791
    ExplicitTop = 495
    ExplicitWidth = 791
  end
  inherited Panel3: TPanel
    Width = 791
    Height = 495
    ExplicitWidth = 791
    ExplicitHeight = 495
    inherited RzToolbar: TRzToolbar
      Width = 789
      Visible = False
      ExplicitWidth = 789
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
      inherited BtnView: TRzToolButton
        Visible = False
      end
    end
    inline FramNsiGoodsGrp1: TFramNsiGoodsGrp
      Left = 1
      Top = 30
      Width = 789
      Height = 464
      Align = alClient
      TabOrder = 1
      ExplicitLeft = 1
      ExplicitTop = 30
      ExplicitWidth = 789
      ExplicitHeight = 464
      inherited cxDBTreeList: TcxDBTreeList
        Width = 789
        Height = 435
        ExplicitWidth = 789
        ExplicitHeight = 435
      end
      inherited frameRzToolbar: TRzToolbar
        Width = 789
        ExplicitWidth = 789
        ToolbarControls = (
          BtnNew
          BtnEdit
          BtnOpen
          BtnFind
          BtnPrint
          BtnRefresh
          BtnOK
          BtnCancel
          BtnRecycle)
        inherited BtnOpen: TRzToolButton
          Enabled = False
        end
        inherited BtnFind: TRzToolButton
          Enabled = False
        end
        inherited BtnPrint: TRzToolButton
          Enabled = False
        end
        inherited BtnOK: TRzToolButton
          OnClick = BtnOKClick
        end
        inherited BtnCancel: TRzToolButton
          OnClick = BtnCancelClick
        end
        inherited BtnRefresh: TRzToolButton
          Enabled = False
        end
      end
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
