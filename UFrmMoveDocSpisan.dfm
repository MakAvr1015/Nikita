inherited FrmMoveDocSpisan: TFrmMoveDocSpisan
  Caption = #1057#1087#1080#1089#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    inherited RzToolbar: TRzToolbar
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
        BtnExit
        BtnView)
      inherited BtnNew: TRzToolButton
        ExplicitTop = 2
      end
      inherited BtnOpen: TRzToolButton
        Left = 54
        ExplicitLeft = 54
      end
      inherited BtnFind: TRzToolButton
        Left = 104
        ExplicitLeft = 104
      end
      inherited BtnPrint: TRzToolButton
        Left = 129
        ExplicitLeft = 129
      end
      inherited BtnOK: TRzToolButton
        Left = 168
        ExplicitLeft = 168
      end
      inherited BtnCancel: TRzToolButton
        Left = 193
        ExplicitLeft = 193
      end
      inherited BtnRefresh: TRzToolButton
        Left = 79
        ExplicitLeft = 79
      end
      inherited BtnExecute: TRzToolButton
        Left = 218
        ExplicitLeft = 218
      end
      inherited BtnDelete: TRzToolButton
        Left = 257
        ExplicitLeft = 257
      end
      inherited BtnSave: TRzToolButton
        Left = 282
        ExplicitLeft = 282
      end
      inherited BtnExit: TRzToolButton
        Left = 307
        ExplicitLeft = 307
      end
      inherited BtnView: TRzToolButton
        Left = 332
        ExplicitLeft = 332
      end
    end
    inherited RzPanel1: TRzPanel
      Height = 131
      ExplicitHeight = 131
      inherited RzLabel3: TRzLabel
        Visible = False
      end
      inherited RzDBButtonEdit1: TRzDBButtonEdit
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
      object RzDBLookupComboBox2: TRzDBLookupComboBox
        Left = 632
        Top = 39
        Width = 145
        Height = 27
        DataField = 'F_VALUE'
        DataSource = srDocProperty
        KeyField = 'f_value'
        ListField = 'f_value'
        ListSource = srNsiPropertyVal
        TabOrder = 7
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
        LookAndFeel.SkinName = 'MoneyTwins'
        ExplicitHeight = 260
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          Styles.Background = nil
          Styles.Content = nil
          Styles.ContentEven = nil
          Styles.ContentOdd = nil
          Styles.FilterBox = nil
          Styles.Inactive = nil
          Styles.IncSearch = nil
          Styles.Selection = nil
          Styles.Footer = nil
          Styles.Group = nil
          Styles.GroupByBox = nil
          Styles.Header = nil
          Styles.Indicator = nil
          Styles.Preview = nil
          inherited cxGrid1DBTableView1F_SKLAD_TO_OST: TcxGridDBColumn
            Visible = False
          end
        end
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
  object dsNsiPropertyVal: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from T_NSI_DOC_PROPERTY_VAL_S(2)')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 624
    Top = 144
    oFetchAll = True
    object dsNsiPropertyValF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
    end
    object dsNsiPropertyValF_DOC_PROPERTY: TFIBBCDField
      FieldName = 'F_DOC_PROPERTY'
      Size = 0
    end
    object dsNsiPropertyValF_VALUE: TFIBStringField
      FieldName = 'F_VALUE'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object srNsiPropertyVal: TDataSource
    DataSet = dsNsiPropertyVal
    Left = 632
    Top = 160
  end
  object dsDocProperty: TpFIBDataSet
    UpdateSQL.Strings = (
      'execute procedure SP_T_DOC_PROPERTYES_SET(:doc_id,3,2,:f_value)')
    InsertSQL.Strings = (
      'execute procedure SP_T_DOC_PROPERTYES_SET(:doc_id,3,2,:f_value)')
    SelectSQL.Strings = (
      'select * from SP_T_DOC_PROPERTYES_S(:doc_id,3)'
      'where f_property_id=2')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 584
    Top = 320
    object dsDocPropertyF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
    end
    object dsDocPropertyF_PROPERTY_ID: TFIBBCDField
      FieldName = 'F_PROPERTY_ID'
      Size = 0
    end
    object dsDocPropertyF_PROPERTY_NAME: TFIBStringField
      FieldName = 'F_PROPERTY_NAME'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocPropertyF_VALUE: TFIBStringField
      FieldName = 'F_VALUE'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object srDocProperty: TDataSource
    DataSet = dsDocProperty
    Left = 600
    Top = 336
  end
end
