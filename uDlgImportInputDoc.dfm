object DlgImportInputDoc: TDlgImportInputDoc
  Left = 0
  Top = 0
  Caption = #1048#1084#1087#1086#1088#1090' '#1087#1088#1080#1093#1086#1076#1072
  ClientHeight = 130
  ClientWidth = 285
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object CheckCalcCurrency: TCheckBox
    Left = 8
    Top = 41
    Width = 169
    Height = 17
    Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1094#1077#1085#1099' '#1087#1086' '#1082#1091#1088#1089#1091
    TabOrder = 1
  end
  object EditCource: TRzNumericEdit
    Left = 183
    Top = 39
    Width = 90
    Height = 21
    TabOrder = 2
    DisplayFormat = ',0;(,0)'
  end
  object CheckExecDoc: TCheckBox
    Left = 8
    Top = 8
    Width = 265
    Height = 17
    Caption = #1055#1088#1086#1074#1086#1076#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090#1099' '#1087#1086#1089#1083#1077' '#1079#1072#1075#1088#1091#1079#1082#1080
    TabOrder = 0
  end
  object Button1: TButton
    Left = 102
    Top = 80
    Width = 75
    Height = 25
    Caption = #1053#1072#1095#1072#1090#1100
    ModalResult = 1
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 198
    Top = 80
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 3
  end
  object OpenDialog: TOpenDialog
    Left = 32
    Top = 72
  end
end
