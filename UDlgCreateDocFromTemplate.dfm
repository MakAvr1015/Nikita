object DlgCreateDocFromTemplate: TDlgCreateDocFromTemplate
  Left = 0
  Top = 0
  Caption = #1057#1086#1079#1076#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090' '#1080#1079' '#1079#1072#1075#1086#1090#1086#1074#1082#1080
  ClientHeight = 273
  ClientWidth = 333
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RzLabel5: TRzLabel
    Left = 9
    Top = 38
    Width = 32
    Height = 13
    Caption = #1057#1082#1083#1072#1076
  end
  object cxComboDocType: TcxComboBox
    Left = 104
    Top = 8
    Properties.Items.Strings = (
      #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103
      #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077)
    TabOrder = 0
    Text = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103
    Width = 217
  end
  object cxLabel1: TcxLabel
    Left = 8
    Top = 8
    Caption = #1042#1080#1076' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  end
  object cxLookupComboBoxSklad: TcxLookupComboBox
    Left = 56
    Top = 35
    Properties.KeyFieldNames = 'F_ID'
    Properties.ListColumns = <
      item
        FieldName = 'F_NAME'
      end>
    Properties.ListSource = dm.srSklad
    TabOrder = 2
    Width = 265
  end
  object cxRadioGroupGood: TcxRadioGroup
    Left = 8
    Top = 62
    Caption = #1058#1086#1074#1072#1088
    Properties.Items = <
      item
        Caption = #1055#1091#1089#1090#1086#1081
        Value = -1
      end
      item
        Caption = #1053#1077' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1085#1085#1099#1081
        Value = 0
      end
      item
        Caption = #1042#1077#1089#1100
        Value = 1
      end>
    ItemIndex = 0
    TabOrder = 3
    Height = 83
    Width = 313
  end
  object cxRadioGroupCnt: TcxRadioGroup
    Left = 8
    Top = 151
    Caption = #1054#1089#1090#1072#1090#1086#1082
    Properties.Items = <
      item
        Caption = #1041#1077#1079' '#1091#1095#1077#1090#1072' '#1086#1089#1090#1072#1090#1082#1086#1074
        Value = -1
      end
      item
        Caption = #1057' '#1091#1095#1077#1090#1086#1084' '#1086#1089#1090#1072#1090#1082#1086#1074
        Value = 0
      end
      item
        Caption = #1042#1089#1077' '#1087#1086' 1'
        Value = 1
      end>
    ItemIndex = 0
    TabOrder = 4
    Height = 83
    Width = 313
  end
  object BtnOk: TButton
    Left = 152
    Top = 240
    Width = 75
    Height = 25
    Caption = #1057#1086#1079#1076#1072#1090#1100
    ModalResult = 1
    TabOrder = 5
  end
  object BtnCancel: TButton
    Left = 244
    Top = 240
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 6
  end
end
