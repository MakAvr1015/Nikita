inherited FrmListInputDocsHz: TFrmListInputDocsHz
  Caption = #1061#1086#1079'.'#1076#1086#1082#1091#1084#1077#1085#1090#1099' ('#1087#1088#1080#1093#1086#1076')'
  ClientHeight = 564
  ClientWidth = 862
  ExplicitWidth = 870
  ExplicitHeight = 591
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 456
    Width = 862
  end
  inherited Panel3: TPanel
    Width = 862
    Height = 456
    ExplicitWidth = 862
    ExplicitHeight = 456
    inherited RzToolbar: TRzToolbar
      Width = 860
      Height = 40
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
        Left = 786
        Top = 0
        UseToolbarButtonLayout = False
        ExplicitLeft = 786
        ExplicitTop = 0
      end
      inherited BtnView: TRzToolButton
        UseToolbarButtonLayout = False
      end
    end
    inherited cxGrid1: TcxGrid
      Top = 70
      Width = 860
      Height = 385
    end
    inherited ToolBar1: TToolBar
      Top = 41
      Width = 860
      ExplicitTop = 41
      ExplicitWidth = 860
    end
  end
  inherited MemoLog: TMemo
    Top = 475
    Width = 862
  end
  inherited dsDocList: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID as f_doc_in,'
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
      '    SP_T_DOC_IN_S(3,:str_date,:end_date) ')
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
