object DlgMakeMoveFromZakaz: TDlgMakeMoveFromZakaz
  Left = 0
  Top = 0
  Caption = #1057#1086#1079#1076#1072#1090#1100' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077' '#1080#1079' '#1079#1072#1082#1072#1079#1072
  ClientHeight = 176
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
    Top = 29
    Width = 82
    Height = 13
    Caption = #1057#1082#1083#1072#1076' '#1080#1089#1090#1086#1095#1085#1080#1082
  end
  object RzLabel1: TRzLabel
    Left = 9
    Top = 56
    Width = 83
    Height = 13
    Caption = #1057#1082#1083#1072#1076' '#1087#1088#1080#1077#1084#1085#1080#1082
  end
  object cxRadioGroup2: TcxRadioGroup
    Left = 8
    Top = 75
    Caption = #1059#1095#1077#1090' '#1086#1089#1090#1072#1090#1082#1072' '#1085#1072' '#1080#1089#1090#1086#1095#1085#1080#1082#1077
    Properties.Items = <>
    TabOrder = 0
    Height = 62
    Width = 313
    object cxRadioButtonSkldOst: TcxRadioButton
      Left = 16
      Top = 16
      Width = 153
      Height = 17
      Caption = #1055#1086' '#1086#1089#1090#1072#1090#1082#1091' '#1085#1072' '#1089#1082#1083#1072#1076#1077
      TabOrder = 0
    end
    object cxRadioButtonZakOst: TcxRadioButton
      Left = 16
      Top = 39
      Width = 153
      Height = 17
      Caption = #1041#1077#1079' '#1091#1095#1077#1090#1072' '#1086#1089#1090#1072#1090#1082#1072
      Checked = True
      TabOrder = 1
      TabStop = True
    end
  end
  object cxLookupComboBoxSkladFrom: TcxLookupComboBox
    Left = 136
    Top = 26
    Properties.KeyFieldNames = 'F_ID'
    Properties.ListColumns = <
      item
        FieldName = 'F_NAME'
      end>
    Properties.ListSource = dm.srSklad
    TabOrder = 1
    Width = 185
  end
  object cxLookupComboBoxSkladTo: TcxLookupComboBox
    Left = 136
    Top = 53
    Properties.KeyFieldNames = 'F_ID'
    Properties.ListColumns = <
      item
        FieldName = 'F_NAME'
      end>
    Properties.ListSource = dm.srSklad
    TabOrder = 2
    Width = 185
  end
  object cxButton2: TcxButton
    Left = 152
    Top = 143
    Width = 75
    Height = 25
    Caption = #1057#1086#1079#1076#1072#1090#1100
    ModalResult = 1
    TabOrder = 3
  end
  object cxButton1: TcxButton
    Left = 246
    Top = 143
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 4
  end
  object cxCheckBoxEmpty: TcxCheckBox
    Left = 8
    Top = 8
    Caption = #1055#1091#1089#1090#1086#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
    Style.TransparentBorder = False
    TabOrder = 5
    OnClick = cxCheckBoxEmptyClick
  end
end
