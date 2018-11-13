inherited FrmMoveDocPrihod: TFrmMoveDocPrihod
  Caption = #1054#1087#1088#1080#1093#1086#1076#1086#1074#1072#1085#1080#1077' '#1080#1079#1083#1080#1096#1082#1086#1074
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    inherited RzToolbar: TRzToolbar
      Height = 25
      ExplicitHeight = 25
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
      end
      inherited BtnOpen: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnFind: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnPrint: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnOK: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnCancel: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnRefresh: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnEdit: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnExecute: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnDelete: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnSave: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnExit: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnView: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
    end
    inherited RzPanel1: TRzPanel
      Top = 26
      Height = 131
      ExplicitHeight = 131
      inherited RzLabel5: TRzLabel
        Visible = False
      end
      inherited RzDBButtonEdit2: TRzDBButtonEdit
        Visible = False
      end
      object RzDBMemo1: TRzDBMemo
        Left = 2
        Top = 75
        Width = 872
        Height = 54
        Align = alBottom
        DataField = 'F_DOP_INFO'
        DataSource = srDocHead
        TabOrder = 6
      end
    end
    inherited Panel1: TPanel
      Top = 157
      Height = 262
      ExplicitTop = 157
      ExplicitHeight = 262
      inherited Splitter1: TSplitter
        Height = 260
        ExplicitHeight = 256
      end
      inherited cxGrid1: TcxGrid
        Height = 260
        ExplicitHeight = 260
      end
      inherited cxDBImage1: TcxDBImage
        ExplicitHeight = 260
        Height = 260
      end
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
