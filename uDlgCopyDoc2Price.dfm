object DlgCopyDoc2Price: TDlgCopyDoc2Price
  Left = 227
  Top = 108
  BorderStyle = bsDialog
  Caption = #1057#1086#1079#1076#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090' '#1094#1077#1085#1086#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1103
  ClientHeight = 109
  ClientWidth = 250
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 4
    Width = 153
    Height = 101
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 14
    Top = 57
    Width = 43
    Height = 13
    Caption = #1053#1072#1094#1077#1085#1082#1072
  end
  object Label2: TLabel
    Left = 16
    Top = 8
    Width = 30
    Height = 13
    Caption = #1055#1088#1072#1081#1089
  end
  object OKBtn: TButton
    Left = 167
    Top = 4
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 167
    Top = 35
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object edNacenka: TRzSpinEdit
    Left = 72
    Top = 54
    Width = 81
    Height = 21
    AllowKeyEdit = True
    Max = 10000.000000000000000000
    TabOrder = 2
  end
  object ChckOpenDoc: TRzCheckBox
    Left = 14
    Top = 81
    Width = 139
    Height = 17
    Caption = #1054#1090#1082#1088#1099#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
    State = cbUnchecked
    TabOrder = 3
  end
  object EdPrice: TRzDBLookupComboBox
    Left = 14
    Top = 24
    Width = 137
    Height = 21
    KeyField = 'f_id'
    ListField = 'f_name'
    ListSource = srPriceList
    TabOrder = 4
  end
  object dsPriceList: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select f_id,f_name from SP_T_NSI_PRICE_S where coalesce(f_formul' +
        'a,'#39#39')='#39#39)
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Container = DM.DataSetsContainer
    Left = 120
    Top = 40
    oFetchAll = True
    object dsPriceListF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
      RoundByScale = True
    end
    object dsPriceListF_NAME: TFIBStringField
      FieldName = 'F_NAME'
      Size = 60
      EmptyStrToNull = True
    end
  end
  object srPriceList: TDataSource
    DataSet = dsPriceList
    Left = 128
    Top = 48
  end
end
