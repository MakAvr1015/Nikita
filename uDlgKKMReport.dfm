object DlgKKMReport: TDlgKKMReport
  Left = 227
  Top = 108
  BorderStyle = bsDialog
  Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1050#1050#1052
  ClientHeight = 179
  ClientWidth = 384
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 281
    Height = 161
    Shape = bsFrame
  end
  object OKBtn: TButton
    Left = 300
    Top = 8
    Width = 75
    Height = 25
    Caption = #1055#1077#1095#1072#1090#1072#1090#1100
    Default = True
    ModalResult = 1
    TabOrder = 0
    OnClick = OKBtnClick
  end
  object CancelBtn: TButton
    Left = 300
    Top = 38
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 1
  end
  object Radio_rep1: TRadioButton
    Left = 24
    Top = 16
    Width = 241
    Height = 17
    Caption = #1057#1091#1090#1086#1095#1085#1099#1081' '#1086#1090#1095#1077#1090' '#1089' '#1075#1072#1096#1077#1085#1080#1077#1084
    TabOrder = 2
  end
  object Radio_rep2: TRadioButton
    Left = 24
    Top = 39
    Width = 241
    Height = 17
    Caption = #1057#1091#1090#1086#1095#1085#1099#1081' '#1086#1090#1095#1077#1090' '#1073#1077#1079' '#1075#1072#1096#1077#1085#1080#1103
    Checked = True
    TabOrder = 3
    TabStop = True
  end
  object Radio_rep3: TRadioButton
    Left = 24
    Top = 62
    Width = 113
    Height = 17
    Caption = 'Radio_rep3'
    TabOrder = 4
    Visible = False
  end
  object RadioButton4: TRadioButton
    Left = 24
    Top = 85
    Width = 113
    Height = 17
    Caption = 'RadioButton4'
    TabOrder = 5
    Visible = False
  end
  object Button1: TButton
    Left = 200
    Top = 136
    Width = 75
    Height = 25
    Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072
    TabOrder = 6
    OnClick = Button1Click
  end
end
