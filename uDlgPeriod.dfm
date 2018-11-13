object DlgPeriod: TDlgPeriod
  Left = 227
  Top = 108
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1074#1099#1075#1088#1091#1079#1082#1080
  ClientHeight = 149
  ClientWidth = 313
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 297
    Height = 102
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 16
    Top = 53
    Width = 131
    Height = 19
    Caption = #1053#1072#1095#1072#1083#1086' '#1087#1077#1088#1080#1086#1076#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 168
    Top = 53
    Width = 121
    Height = 19
    Caption = #1050#1086#1085#1077#1094' '#1087#1077#1088#1080#1086#1076#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 24
    Width = 50
    Height = 19
    Caption = #1055#1088#1072#1081#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object OKBtn: TButton
    Left = 8
    Top = 116
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 230
    Top = 116
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object StartDate: TRzDateTimeEdit
    Left = 16
    Top = 78
    Width = 131
    Height = 26
    EditType = etDate
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object EndDate: TRzDateTimeEdit
    Left = 168
    Top = 78
    Width = 121
    Height = 26
    EditType = etDate
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object rzEditPrice: TRzDBLookupComboBox
    Left = 75
    Top = 22
    Width = 214
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    KeyField = 'f_id'
    ListField = 'f_name'
    ListSource = srPrice
    NullValueKey = 16430
    ParentFont = False
    TabOrder = 4
  end
  object srPrice: TDataSource
    DataSet = dsPrice
    Left = 208
    Top = 32
  end
  object dsPrice: TpFIBDataSet
    SelectSQL.Strings = (
      'select *'
      'from'
      '('
      'SELECT'
      '    F_ID,'
      '    F_NAME'
      'FROM'
      '    SP_T_NSI_PRICE_S '
      'union all'
      'select null,null from rdb$database'
      ')'
      'order by f_id')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Container = DM.DataSetsContainer
    Left = 216
    Top = 40
    object dsPriceF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
      RoundByScale = True
    end
    object dsPriceF_NAME: TFIBStringField
      FieldName = 'F_NAME'
      Size = 60
      EmptyStrToNull = True
    end
  end
end
