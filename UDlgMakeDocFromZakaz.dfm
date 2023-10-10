object DlgMakeDocFromZakaz: TDlgMakeDocFromZakaz
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1086#1079#1076#1072#1090#1100' '#1086#1090#1075#1088#1091#1079#1082#1091' '#1080#1079' '#1079#1072#1082#1072#1079#1072
  ClientHeight = 268
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
    Top = 117
    Width = 32
    Height = 13
    Caption = #1057#1082#1083#1072#1076
  end
  object cxRadioGroup1: TcxRadioGroup
    Left = 8
    Top = 8
    Caption = #1047#1072#1082#1072#1079
    Properties.Items = <>
    TabOrder = 0
    Height = 100
    Width = 313
    object cxRadioButtonAllZakaz: TcxRadioButton
      Left = 16
      Top = 48
      Width = 113
      Height = 17
      Caption = #1055#1086' '#1074#1089#1077#1084#1091' '#1079#1072#1082#1072#1079#1091
      TabOrder = 1
    end
    object cxRadioButtonNoOut: TcxRadioButton
      Left = 16
      Top = 71
      Width = 177
      Height = 17
      Caption = #1055#1086' '#1085#1077#1086#1090#1075#1088#1091#1078#1077#1085#1085#1099#1084' '#1087#1086#1079#1080#1094#1080#1103#1084
      TabOrder = 2
    end
    object cxRadioButtonEmptyDoc: TcxRadioButton
      Left = 16
      Top = 25
      Width = 113
      Height = 17
      Caption = #1055#1091#1089#1090#1086#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
      Checked = True
      TabOrder = 0
      TabStop = True
    end
  end
  object cxRadioGroup2: TcxRadioGroup
    Left = 8
    Top = 147
    Caption = #1057#1082#1083#1072#1076
    Properties.Items = <>
    TabOrder = 2
    Height = 81
    Width = 313
    object cxRadioButtonSkldOst: TcxRadioButton
      Left = 16
      Top = 32
      Width = 153
      Height = 17
      Caption = #1055#1086' '#1086#1089#1090#1072#1090#1082#1091' '#1085#1072' '#1089#1082#1083#1072#1076#1077
      TabOrder = 0
    end
    object cxRadioButtonZakOst: TcxRadioButton
      Left = 16
      Top = 55
      Width = 153
      Height = 17
      Caption = #1041#1077#1079' '#1091#1095#1077#1090#1072' '#1086#1089#1090#1072#1090#1082#1072
      Checked = True
      TabOrder = 1
      TabStop = True
    end
  end
  object cxButton1: TcxButton
    Left = 246
    Top = 234
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 3
  end
  object cxButton2: TcxButton
    Left = 152
    Top = 234
    Width = 75
    Height = 25
    Caption = #1057#1086#1079#1076#1072#1090#1100
    ModalResult = 1
    TabOrder = 4
  end
  object cxLookupComboBoxSklad: TcxLookupComboBox
    Left = 56
    Top = 114
    Properties.KeyFieldNames = 'F_ID'
    Properties.ListColumns = <
      item
        FieldName = 'F_NAME'
      end>
    Properties.ListSource = dm.srSklad
    TabOrder = 1
    Width = 265
  end
end
