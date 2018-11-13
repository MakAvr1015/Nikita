inherited FrmNSIDiscountCardList: TFrmNSIDiscountCardList
  Caption = #1057#1087#1080#1089#1086#1082' '#1089#1082#1080#1076#1086#1095#1085#1099#1093' '#1082#1072#1088#1090
  ExplicitWidth = 623
  ExplicitHeight = 350
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    inherited DsFormName: TRzStatusPane
      Caption = 'dsNsiDiscountCard'
    end
  end
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
        OnClick = BtnNewClick
        ExplicitTop = 0
      end
      inherited BtnOpen: TRzToolButton
        Top = 0
        Enabled = True
        OnClick = BtnOpenClick
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
        Enabled = True
        OnClick = BtnEditClick
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
        Visible = True
        ExplicitTop = 0
      end
      inherited BtnExit: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnView: TRzToolButton
        Top = 0
        Visible = False
        ExplicitTop = 0
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 26
      Width = 613
      Height = 277
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'MoneyTwins'
      LookAndFeel.SkinName = 'MoneyTwins'
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = BtnEditClick
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = srNsiDiscountCard
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        Styles.StyleSheet = DM.GridTableViewStyleSheetDevExpress
        object cxGrid1DBTableView1F_ID: TcxGridDBColumn
          DataBinding.FieldName = 'F_ID'
          Visible = False
        end
        object cxGrid1DBTableView1F_NUMBER: TcxGridDBColumn
          DataBinding.FieldName = 'F_NUMBER'
        end
        object cxGrid1DBTableView1F_DISCOUNT: TcxGridDBColumn
          DataBinding.FieldName = 'F_DISCOUNT'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dsNsiDiscountCard: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from SP_T_NSI_DISCOUNT_CARD_S')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 560
    Top = 160
    object dsNsiDiscountCardF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
      RoundByScale = True
    end
    object dsNsiDiscountCardF_NUMBER: TFIBStringField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'F_NUMBER'
      Size = 60
      EmptyStrToNull = True
    end
    object dsNsiDiscountCardF_DISCOUNT: TFIBBCDField
      DisplayLabel = #1057#1082#1080#1076#1082#1072
      FieldName = 'F_DISCOUNT'
      Size = 3
      RoundByScale = True
    end
  end
  object srNsiDiscountCard: TDataSource
    DataSet = dsNsiDiscountCard
    Left = 552
    Top = 168
  end
  object OpenDialog: TOpenDialog
    Left = 464
    Top = 152
  end
  object spImportDiscountCard: TpFIBStoredProc
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    SQL.Strings = (
      
        'EXECUTE PROCEDURE SP_IMPORT_NSI_DISCOUNT_CARD(?F_NUMBER, ?F_DISC' +
        'OUNT)')
    Left = 216
    Top = 224
  end
  object dsExportDoc: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_VALUE'
      'FROM'
      '    PR_EXPORT_DISCOUNT_CARD ')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 144
    Top = 256
    object dsExportDocF_VALUE: TFIBStringField
      FieldName = 'F_VALUE'
      Size = 10000
      EmptyStrToNull = True
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'xml'
    Filter = 'XML|*.xml'
    Left = 176
    Top = 256
  end
end
