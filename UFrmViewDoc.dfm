inherited FrmViewDoc: TFrmViewDoc
  ActiveControl = cxGrid1
  Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  ClientHeight = 631
  ClientWidth = 1101
  ExplicitTop = -28
  ExplicitWidth = 1109
  ExplicitHeight = 658
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 612
    Width = 1101
    ExplicitTop = 612
    ExplicitWidth = 1101
    inherited DsFormName: TRzStatusPane
      Visible = True
    end
  end
  inherited Panel3: TPanel
    Width = 1101
    Height = 612
    ExplicitWidth = 1101
    ExplicitHeight = 612
    inherited RzToolbar: TRzToolbar
      Width = 1099
      Visible = False
      ExplicitWidth = 1099
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
    object RzPanel1: TRzPanel
      Left = 1
      Top = 26
      Width = 1099
      Height = 72
      Align = alTop
      Color = clSkyBlue
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
      object RzLabel2: TRzLabel
        Left = 8
        Top = 42
        Width = 32
        Height = 19
        Caption = #1044#1072#1090#1072
      end
      object RzLabel3: TRzLabel
        Left = 164
        Top = 42
        Width = 78
        Height = 19
        Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100
      end
      object RzLabel4: TRzLabel
        Left = 471
        Top = 42
        Width = 46
        Height = 19
        Caption = #1057#1090#1072#1090#1091#1089
      end
      object RzLabel5: TRzLabel
        Left = 164
        Top = 10
        Width = 89
        Height = 19
        Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100
      end
      object RzLabel6: TRzLabel
        Left = 471
        Top = 12
        Width = 42
        Height = 19
        Caption = #1055#1088#1072#1081#1089
      end
      object RzDBEdit1: TRzDBEdit
        Left = 54
        Top = 6
        Width = 104
        Height = 27
        DataSource = srDocHead
        DataField = 'F_NUMBER'
        ReadOnly = True
        Color = clInfoBk
        TabOrder = 0
      end
      object RzDBLookupComboBox1: TRzDBLookupComboBox
        Left = 527
        Top = 38
        Width = 145
        Height = 27
        Color = clInfoBk
        DataField = 'F_STATE'
        DataSource = srDocHead
        KeyField = 'f_id'
        ListField = 'f_name'
        ListSource = DM.srStateSource
        ReadOnly = True
        TabOrder = 1
      end
      object cxDBLabel1: TcxDBLabel
        Left = 259
        Top = 38
        DataBinding.DataField = 'F_RECIPIENT_NAME'
        DataBinding.DataSource = srDocHead
        Style.BorderStyle = ebsFlat
        Height = 27
        Width = 197
      end
      object cxDBLabel2: TcxDBLabel
        Left = 259
        Top = 6
        DataBinding.DataField = 'F_SENDER_NAME'
        DataBinding.DataSource = srDocHead
        Style.BorderStyle = ebsFlat
        Height = 27
        Width = 197
      end
      object cxDBLabel3: TcxDBLabel
        Left = 54
        Top = 42
        DataBinding.DataField = 'F_DATE'
        DataBinding.DataSource = srDocHead
        Style.BorderStyle = ebsFlat
        Height = 20
        Width = 104
      end
      object cxDBLabel4: TcxDBLabel
        Left = 527
        Top = 10
        DataBinding.DataField = 'F_PRICE_NAME'
        DataBinding.DataSource = srDocHead
        Style.BorderStyle = ebsFlat
        Height = 21
        Width = 145
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 98
      Width = 1099
      Height = 513
      Align = alClient
      TabOrder = 2
      LookAndFeel.SkinName = 'MoneyTwins'
      LookAndFeel.SkinName = 'MoneyTwins'
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.Insert.Visible = False
        DataController.DataModeController.GridModeBufferCount = 20
        DataController.DataSource = srDocBody
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Position = spFooter
          end
          item
            Kind = skSum
            Position = spFooter
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'F_SUM'
            DisplayText = #1048#1090#1086#1075#1086#1074#1072#1103' '#1089#1091#1084#1084#1072
          end
          item
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.Navigator = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
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
        object cxGrid1DBTableView1f_article: TcxGridDBColumn
          DataBinding.FieldName = 'f_article'
          Width = 72
        end
        object cxGrid1DBTableView1F_GOOD_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_GOOD_NAME'
          Width = 319
        end
        object cxGrid1DBTableView1F_PRICE_VAL: TcxGridDBColumn
          DataBinding.FieldName = 'F_PRICE_VAL'
          Width = 65
        end
        object cxGrid1DBTableView1F_CNT: TcxGridDBColumn
          DataBinding.FieldName = 'F_CNT'
          Width = 84
        end
        object cxGrid1DBTableView1F_SKLAD_OST: TcxGridDBColumn
          DataBinding.FieldName = 'F_SKLAD_OST'
          Width = 91
        end
        object cxGrid1DBTableView1F_SUM: TcxGridDBColumn
          DataBinding.FieldName = 'F_SUM'
          Width = 78
        end
        object cxGrid1DBTableView1F_MEMO: TcxGridDBColumn
          DataBinding.FieldName = 'F_MEMO'
          PropertiesClassName = 'TcxImageProperties'
          Properties.GraphicClassName = 'TJPEGImage'
          Properties.ReadOnly = True
          Properties.Stretch = True
          Width = 147
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
  object dsDocBody: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from SP_GET_DOC_BODY(:f_name,:f_id,1)')
    BeforeOpen = dsDocHeadBeforeOpen
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 440
    Top = 328
    object dsDocBodyF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
    end
    object dsDocBodyF_GOOD: TFIBBCDField
      DisplayLabel = 'ID '#1090#1086#1074#1072#1088#1072
      FieldName = 'F_GOOD'
      Size = 0
    end
    object dsDocBodyf_article: TStringField
      DisplayLabel = #1040#1088#1090#1080#1082#1091#1083
      FieldName = 'f_article'
      Size = 60
    end
    object dsDocBodyF_GOOD_NAME: TFIBStringField
      DisplayLabel = #1058#1086#1074#1072#1088
      FieldName = 'F_GOOD_NAME'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocBodyF_PRICE_VAL: TFIBBCDField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'F_PRICE_VAL'
      DisplayFormat = '#,##0.000'
      EditFormat = '0.000'
      Size = 3
    end
    object dsDocBodyF_CNT: TFIBBCDField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'F_CNT'
      DisplayFormat = '#,##0.000'
      EditFormat = '0.000'
      Size = 3
    end
    object dsDocBodyF_SUM: TFIBBCDField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'F_SUM'
      DisplayFormat = '#,##0.000'
      EditFormat = '0.000'
      Size = 3
    end
    object dsDocBodyF_MEMO: TFIBBlobField
      DisplayLabel = #1060#1086#1090#1086
      FieldName = 'F_MEMO'
      Size = 8
    end
    object dsDocBodyF_SKLAD_OST: TBCDField
      DisplayLabel = #1058#1077#1082#1091#1097#1080#1081' '#1086#1089#1090#1072#1090#1086#1082
      FieldName = 'F_SKLAD_OST'
    end
  end
  object dsDocHead: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from SP_GET_DOC_HEAD(:f_name,:f_id)')
    BeforeOpen = dsDocHeadBeforeOpen
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 776
    Top = 48
    object dsDocHeadF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
    end
    object dsDocHeadF_NUMBER: TFIBStringField
      FieldName = 'F_NUMBER'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_DATE: TFIBDateField
      FieldName = 'F_DATE'
    end
    object dsDocHeadF_SENDER_NAME: TFIBStringField
      FieldName = 'F_SENDER_NAME'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_RECIPIENT_NAME: TFIBStringField
      FieldName = 'F_RECIPIENT_NAME'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_PRICE: TFIBBCDField
      FieldName = 'F_PRICE'
      Size = 0
    end
    object dsDocHeadF_STATE: TFIBBCDField
      FieldName = 'F_STATE'
      Size = 0
    end
    object dsDocHeadF_PRICE_NAME: TFIBStringField
      FieldName = 'F_PRICE_NAME'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_STATE_NAME: TFIBStringField
      FieldName = 'F_STATE_NAME'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_TYPE_NAME: TFIBStringField
      FieldName = 'F_TYPE_NAME'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_TYPE: TFIBBCDField
      FieldName = 'F_TYPE'
      Size = 0
    end
  end
  object pFIBTransaction: TpFIBTransaction
    DefaultDatabase = DM.pFIBDatabase
    Left = 760
    Top = 168
  end
  object srDocHead: TDataSource
    DataSet = dsDocHead
    Left = 784
    Top = 56
  end
  object srDocBody: TDataSource
    DataSet = dsDocBody
    Left = 448
    Top = 336
  end
end
