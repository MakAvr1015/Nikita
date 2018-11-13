inherited FrmNSIDocProperty: TFrmNSIDocProperty
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1072#1090#1088#1080#1073#1091#1090#1086#1074
  ClientHeight = 462
  ClientWidth = 716
  ExplicitWidth = 724
  ExplicitHeight = 489
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 443
    Width = 716
    ExplicitTop = 443
    ExplicitWidth = 716
    inherited DsFormName: TRzStatusPane
      Caption = 'dsListAtributes'
    end
  end
  inherited Panel3: TPanel
    Width = 716
    Height = 443
    ExplicitWidth = 716
    ExplicitHeight = 443
    object Splitter1: TSplitter [0]
      Left = 251
      Top = 26
      Height = 416
      ExplicitLeft = 336
      ExplicitTop = 312
      ExplicitHeight = 100
    end
    inherited RzToolbar: TRzToolbar
      Width = 714
      Height = 25
      ExplicitWidth = 714
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
        ExplicitTop = 0
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
    object cxGrid2: TcxGrid
      Left = 1
      Top = 26
      Width = 250
      Height = 416
      Align = alLeft
      TabOrder = 1
      LookAndFeel.SkinName = 'MoneyTwins'
      LookAndFeel.SkinName = 'MoneyTwins'
      object cxGrid2DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = srListAtributes
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Styles.StyleSheet = DM.GridTableViewStyleSheetDevExpress
        object cxGrid2DBTableView1F_PROPERTY: TcxGridDBColumn
          DataBinding.FieldName = 'F_PROPERTY'
          Visible = False
        end
        object cxGrid2DBTableView1F_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_NAME'
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
    object Panel1: TPanel
      Left = 254
      Top = 26
      Width = 461
      Height = 416
      Align = alClient
      Caption = 'Panel1'
      TabOrder = 2
      object cxGrid1: TcxGrid
        Left = 1
        Top = 1
        Width = 459
        Height = 414
        Align = alClient
        TabOrder = 0
        LookAndFeel.SkinName = 'MoneyTwins'
        LookAndFeel.SkinName = 'MoneyTwins'
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = srListPropertyVal
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Styles.StyleSheet = DM.GridTableViewStyleSheetDevExpress
          object cxGrid1DBTableView1F_ID: TcxGridDBColumn
            DataBinding.FieldName = 'F_ID'
            Visible = False
          end
          object cxGrid1DBTableView1F_DOC_PROPERTY: TcxGridDBColumn
            DataBinding.FieldName = 'F_DOC_PROPERTY'
            Visible = False
          end
          object cxGrid1DBTableView1F_VALUE: TcxGridDBColumn
            DataBinding.FieldName = 'F_VALUE'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dsListAtributes: TpFIBDataSet
    SelectSQL.Strings = (
      'select f_id as f_property,'
      '  f_name'
      'from sp_t_nsi_doc_property_s')
    AfterOpen = dsListAtributesAfterOpen
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 192
    Top = 280
    object dsListAtributesF_PROPERTY: TFIBBCDField
      FieldName = 'F_PROPERTY'
      Size = 0
      RoundByScale = True
    end
    object dsListAtributesF_NAME: TFIBStringField
      DisplayLabel = #1040#1090#1088#1080#1073#1091#1090
      FieldName = 'F_NAME'
      Size = 255
      EmptyStrToNull = True
    end
  end
  object srListAtributes: TDataSource
    DataSet = dsListAtributes
    Left = 200
    Top = 288
  end
  object dsListPropertyVal: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from T_NSI_DOC_PROPERTY_VAL_S(:F_PROPERTY)')
    AutoUpdateOptions.ParamsToFieldsLinks.Strings = (
      'F_DOC_PROPERTY=F_PROPERTY')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DataSource = srListAtributes
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 328
    Top = 232
    WaitEndMasterScroll = True
    dcForceOpen = True
    object dsListPropertyValF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsListPropertyValF_DOC_PROPERTY: TFIBBCDField
      FieldName = 'F_DOC_PROPERTY'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsListPropertyValF_VALUE: TFIBStringField
      DisplayLabel = #1047#1085#1072#1095#1077#1085#1080#1077
      FieldName = 'F_VALUE'
      Size = 100
      EmptyStrToNull = True
    end
  end
  object srListPropertyVal: TDataSource
    DataSet = dsListPropertyVal
    Left = 336
    Top = 240
  end
end
