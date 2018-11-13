object DlgSaveZapas: TDlgSaveZapas
  Left = 227
  Top = 108
  BorderStyle = bsDialog
  Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100' '#1086#1089#1090#1072#1090#1082#1080
  ClientHeight = 227
  ClientWidth = 531
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 7
    Width = 434
    Height = 212
    Shape = bsFrame
  end
  object Label3: TLabel
    Left = 21
    Top = 173
    Width = 86
    Height = 13
    Caption = #1058#1086#1074#1072#1088#1086#1074' '#1074' '#1092#1072#1081#1083#1077
  end
  object Label4: TLabel
    Left = 21
    Top = 192
    Width = 126
    Height = 13
    Caption = #1050#1072#1090#1072#1083#1086#1075' '#1076#1083#1103' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103
  end
  object OKBtn: TButton
    Left = 448
    Top = 8
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 4
  end
  object CancelBtn: TButton
    Left = 448
    Top = 39
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 5
  end
  object EditCount: TcxSpinEdit
    Left = 157
    Top = 168
    TabOrder = 2
    Value = 500
    Width = 59
  end
  object DirToSave: TcxShellComboBox
    Left = 157
    Top = 189
    Properties.ShowFullPath = sfpAlways
    TabOrder = 3
    Width = 276
  end
  object GroupBox1: TGroupBox
    Left = 21
    Top = 124
    Width = 412
    Height = 41
    Caption = #1048#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103
    TabOrder = 1
    object Label6: TLabel
      Left = 8
      Top = 16
      Width = 94
      Height = 13
      Caption = #1048#1079#1084#1077#1085#1077#1085#1085#1099#1077' '#1087#1086#1089#1083#1077
    end
    object editDateFrom: TcxDateEdit
      Left = 112
      Top = 13
      EditValue = 0d
      TabOrder = 0
      Width = 105
    end
    object SaveImg: TcxCheckBox
      Left = 232
      Top = 12
      Caption = #1042#1099#1075#1088#1091#1078#1072#1090#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103
      TabOrder = 1
      Width = 150
    end
  end
  object GroupBox2: TGroupBox
    Left = 21
    Top = 16
    Width = 412
    Height = 108
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1074#1099#1075#1088#1091#1079#1082#1080
    TabOrder = 0
    object Label5: TLabel
      Left = 8
      Top = 85
      Width = 210
      Height = 13
      Caption = #1054#1090#1084#1077#1095#1072#1090#1100' '#1082#1072#1082' '#1076#1086#1089#1090#1091#1087#1085#1099#1081' '#1087#1088#1080' '#1086#1089#1090#1072#1090#1082#1077' '#1086#1090
    end
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 58
      Height = 31
      Caption = #1054#1087#1090#1086#1074#1099#1081' '#1087#1088#1072#1081#1089
      WordWrap = True
    end
    object Label2: TLabel
      Left = 214
      Top = 16
      Width = 58
      Height = 26
      Caption = #1056#1086#1079#1085#1080#1095#1085#1099#1081' '#1087#1088#1072#1081#1089
      WordWrap = True
    end
    object Label7: TLabel
      Left = 8
      Top = 62
      Width = 133
      Height = 13
      Caption = #1042#1099#1075#1088#1091#1078#1072#1090#1100' '#1089' '#1086#1089#1090#1072#1090#1082#1086#1084' '#1086#1090' '
    end
    object Label8: TLabel
      Left = 232
      Top = 62
      Width = 13
      Height = 13
      Caption = #1076#1086
    end
    object OstPorog: TcxSpinEdit
      Left = 259
      Top = 81
      Properties.MinValue = -1.000000000000000000
      TabOrder = 5
      Value = 1
      Width = 59
    end
    object OnlyPhoto: TcxCheckBox
      Left = 8
      Top = 39
      Caption = #1058#1086#1083#1100#1082#1086' '#1089' '#1082#1072#1088#1090#1080#1085#1082#1072#1084#1080
      TabOrder = 2
      Width = 142
    end
    object OptPrice: TcxLookupComboBox
      Left = 72
      Top = 16
      Properties.KeyFieldNames = 'F_ID'
      Properties.ListColumns = <
        item
          FieldName = 'F_NAME'
        end>
      Properties.ListSource = srPriceList
      TabOrder = 0
      Width = 116
    end
    object RoznPrice: TcxLookupComboBox
      Left = 290
      Top = 16
      Properties.KeyFieldNames = 'F_ID'
      Properties.ListColumns = <
        item
          FieldName = 'F_NAME'
        end>
      Properties.ListSource = srPriceList
      TabOrder = 1
      Width = 116
    end
    object OstFrom: TcxSpinEdit
      Left = 147
      Top = 58
      Properties.MinValue = -1.000000000000000000
      TabOrder = 3
      Width = 59
    end
    object OstTo: TcxSpinEdit
      Left = 259
      Top = 58
      Properties.MinValue = -1.000000000000000000
      TabOrder = 4
      Value = 9999999
      Width = 82
    end
  end
  object dsPriceList: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_NAME'
      'FROM'
      '    SP_T_NSI_PRICE_S ')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 472
    Top = 128
    oFetchAll = True
    object dsPriceListF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
      RoundByScale = True
    end
    object dsPriceListF_NAME: TFIBStringField
      DisplayLabel = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
      FieldName = 'F_NAME'
      Size = 60
      EmptyStrToNull = True
    end
  end
  object srPriceList: TDataSource
    DataSet = dsPriceList
    Left = 480
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = pFIBDataSet1
    Left = 480
    Top = 168
  end
  object pFIBDataSet1: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_NAME'
      'FROM'
      '    SP_T_NSI_PRICE_S ')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 472
    Top = 160
    oFetchAll = True
    object FIBBCDField1: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
      RoundByScale = True
    end
    object FIBStringField1: TFIBStringField
      DisplayLabel = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
      FieldName = 'F_NAME'
      Size = 60
      EmptyStrToNull = True
    end
  end
end
