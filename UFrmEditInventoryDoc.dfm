inherited FrmEditInventoryDoc: TFrmEditInventoryDoc
  Caption = #1048#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1086#1085#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090#1100
  ClientHeight = 400
  ClientWidth = 797
  ExplicitWidth = 805
  ExplicitHeight = 427
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 381
    Width = 797
    ExplicitTop = 381
    ExplicitWidth = 797
  end
  inherited Panel3: TPanel
    Width = 797
    Height = 381
    ExplicitWidth = 797
    ExplicitHeight = 381
    inherited RzToolbar: TRzToolbar
      Width = 795
      Height = 25
      ExplicitWidth = 795
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
        Visible = False
        ExplicitTop = 0
      end
    end
    object RzPanel1: TRzPanel
      Left = 1
      Top = 26
      Width = 795
      Height = 75
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object RzLabel1: TRzLabel
        Left = 8
        Top = 10
        Width = 44
        Height = 19
        Caption = #1053#1086#1084#1077#1088
      end
      object RzLabel4: TRzLabel
        Left = 198
        Top = 9
        Width = 46
        Height = 19
        Caption = #1057#1090#1072#1090#1091#1089
      end
      object RzLabel2: TRzLabel
        Left = 8
        Top = 39
        Width = 71
        Height = 19
        Caption = #1052#1077#1085#1077#1076#1078#1077#1088
      end
      object RzDBEdit1: TRzDBEdit
        Left = 54
        Top = 6
        Width = 99
        Height = 27
        DataSource = srHeadDoc
        DataField = 'F_NUMBER'
        ReadOnly = True
        Color = clInfoBk
        TabOrder = 0
      end
      object RzDBLookupComboBox1: TRzDBLookupComboBox
        Left = 250
        Top = 6
        Width = 115
        Height = 27
        DataField = 'F_STATE'
        DataSource = srHeadDoc
        KeyField = 'f_id'
        ListField = 'f_name'
        ListSource = DM.srStateSource
        TabOrder = 1
      end
      object RzDBEdit3: TRzDBEdit
        Left = 94
        Top = 36
        Width = 271
        Height = 27
        DataSource = srHeadDoc
        DataField = 'F_MANAGER'
        TabOrder = 2
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 101
      Width = 795
      Height = 279
      Align = alClient
      Caption = 'Panel1'
      TabOrder = 2
      object Splitter1: TSplitter
        Left = 597
        Top = 1
        Height = 277
        Align = alRight
        ExplicitLeft = 632
        ExplicitTop = 208
        ExplicitHeight = 100
      end
      object cxGrid1: TcxGrid
        Left = 1
        Top = 1
        Width = 596
        Height = 277
        Align = alClient
        TabOrder = 0
        LookAndFeel.SkinName = 'MoneyTwins'
        LookAndFeel.SkinName = 'MoneyTwins'
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnKeyPress = cxGrid1DBTableView1KeyPress
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.Insert.Visible = False
          DataController.DataSource = srInventoryDocStr
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '### ###'
              Kind = skSum
              Column = cxGrid1DBTableView1F_COUNT
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          Styles.StyleSheet = DM.GridTableViewStyleSheetDevExpress
          object cxGrid1DBTableView1F_ID: TcxGridDBColumn
            DataBinding.FieldName = 'F_ID'
            Visible = False
          end
          object cxGrid1DBTableView1F_GOOD: TcxGridDBColumn
            DataBinding.FieldName = 'F_GOOD'
            Visible = False
          end
          object cxGrid1DBTableView1F_GOOD_ARTICLE: TcxGridDBColumn
            DataBinding.FieldName = 'F_GOOD_ARTICLE'
            Options.Editing = False
            Width = 72
          end
          object cxGrid1DBTableView1F_GOOD_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'F_GOOD_NAME'
            Options.Editing = False
            Width = 465
          end
          object cxGrid1DBTableView1F_COUNT: TcxGridDBColumn
            DataBinding.FieldName = 'F_COUNT'
            Width = 99
          end
          object cxGrid1DBTableView1F_INVENTORY_DOC: TcxGridDBColumn
            DataBinding.FieldName = 'F_INVENTORY_DOC'
            Visible = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object cxDBImage1: TcxDBImage
        Left = 600
        Top = 1
        Align = alRight
        DataBinding.DataField = 'f_photo'
        DataBinding.DataSource = srGoodPhoto
        Properties.GraphicClassName = 'TJPEGImage'
        Properties.Stretch = True
        TabOrder = 1
        Height = 277
        Width = 194
      end
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dsHeadDoc: TpFIBDataSet
    UpdateSQL.Strings = (
      'execute procedure SP_T_INVENTORY_DOC_U'
      '('
      '    :f_inv_doc,'
      '    :F_NUMBER,'
      '    :F_MANAGER,'
      '    :F_DOC_COUNT,'
      '    :F_INVENTORY,'
      '    :F_STATE'
      ')')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID as f_inv_doc,'
      '    F_NUMBER,'
      '    F_MANAGER,'
      '    F_DOC_COUNT,'
      '    F_INVENTORY,'
      '    F_STATE,'
      '    F_STATE_NAME'
      'FROM'
      '    SP_T_INVENTORY_DOC_GET(:F_INVENTORY_DOC,'
      '    :F_INV) ')
    Transaction = pFIBTransaction1
    Database = DM.pFIBDatabase
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 136
    Top = 40
    WaitEndMasterScroll = True
    dcForceOpen = True
    object dsHeadDocF_NUMBER: TFIBStringField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'F_NUMBER'
      EmptyStrToNull = True
    end
    object dsHeadDocF_MANAGER: TFIBStringField
      DisplayLabel = #1052#1077#1085#1077#1076#1078#1077#1088
      FieldName = 'F_MANAGER'
      Size = 100
      EmptyStrToNull = True
    end
    object dsHeadDocF_DOC_COUNT: TFIBBCDField
      FieldName = 'F_DOC_COUNT'
      Size = 3
      RoundByScale = True
    end
    object dsHeadDocF_INVENTORY: TFIBBCDField
      FieldName = 'F_INVENTORY'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsHeadDocF_STATE: TFIBBCDField
      FieldName = 'F_STATE'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsHeadDocF_STATE_NAME: TFIBStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'F_STATE_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsHeadDocF_INV_DOC: TFIBBCDField
      FieldName = 'F_INV_DOC'
      Size = 0
      RoundByScale = True
    end
  end
  object srHeadDoc: TDataSource
    DataSet = dsHeadDoc
    Left = 144
    Top = 48
  end
  object pFIBTransaction1: TpFIBTransaction
    DefaultDatabase = DM.pFIBDatabase
    TimeoutAction = TARollback
    Left = 552
    Top = 256
  end
  object DsInventoryDocStr: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'execute procedure SP_T_INVENTORY_DOC_STR_U(:F_ID,:F_GOOD,:F_COUN' +
        'T,:F_INV_DOC)')
    DeleteSQL.Strings = (
      'execute procedure SP_T_INVENTORY_DOC_STR_D(:F_ID)')
    InsertSQL.Strings = (
      
        'execute procedure SP_T_INVENTORY_DOC_STR_I(:F_ID,:F_GOOD,:F_COUN' +
        'T,:F_INV_DOC)')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_GOOD,'
      '    F_GOOD_ARTICLE,'
      '    F_GOOD_NAME,'
      '    F_COUNT,'
      '    f_inventory_doc as F_INV_DOC'
      'FROM'
      '    SP_T_INVENTORY_DOC_STR_S(:F_INV_DOC) ')
    AutoUpdateOptions.ParamsToFieldsLinks.Strings = (
      'F_INV_DOC=F_INV_DOC')
    AfterPost = DsInventoryDocStrAfterPost
    Transaction = pFIBTransaction1
    Database = DM.pFIBDatabase
    AutoCommit = True
    DataSource = srHeadDoc
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 208
    Top = 264
    WaitEndMasterScroll = True
    dcForceOpen = True
    object DsInventoryDocStrF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object DsInventoryDocStrF_GOOD: TFIBBCDField
      FieldName = 'F_GOOD'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object DsInventoryDocStrF_GOOD_ARTICLE: TFIBStringField
      DisplayLabel = #1072#1088#1090#1080#1082#1091#1083
      FieldName = 'F_GOOD_ARTICLE'
      EmptyStrToNull = True
    end
    object DsInventoryDocStrF_GOOD_NAME: TFIBStringField
      DisplayLabel = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
      FieldName = 'F_GOOD_NAME'
      Size = 255
      EmptyStrToNull = True
    end
    object DsInventoryDocStrF_COUNT: TFIBBCDField
      DisplayLabel = #1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'F_COUNT'
      Size = 3
      RoundByScale = True
    end
    object DsInventoryDocStrF_INVENTORY_DOC: TFIBBCDField
      FieldName = 'F_INV_DOC'
      Visible = False
      Size = 0
      RoundByScale = True
    end
  end
  object srInventoryDocStr: TDataSource
    DataSet = DsInventoryDocStr
    Left = 224
    Top = 280
  end
  object dsGoodPhoto: TpFIBDataSet
    SelectSQL.Strings = (
      'select f_memo as f_photo from SP_T_NSI_GOODS_MMEDIA_S(:f_good)')
    Transaction = pFIBTransaction1
    Database = DM.pFIBDatabase
    DataSource = srInventoryDocStr
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 712
    Top = 168
    WaitEndMasterScroll = True
    dcForceOpen = True
  end
  object srGoodPhoto: TDataSource
    DataSet = dsGoodPhoto
    Left = 720
    Top = 176
  end
end
