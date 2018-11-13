object DlgImportInputDoc: TDlgImportInputDoc
  Left = 0
  Top = 0
  Caption = #1048#1084#1087#1086#1088#1090' '#1087#1088#1080#1093#1086#1076#1072
  ClientHeight = 170
  ClientWidth = 294
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 21
    Width = 96
    Height = 13
    Caption = #1060#1072#1081#1083' '#1076#1083#1103' '#1079#1072#1075#1088#1091#1079#1082#1080
  end
  object CheckCalcCurrency: TCheckBox
    Left = 16
    Top = 101
    Width = 169
    Height = 17
    Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1094#1077#1085#1099' '#1087#1086' '#1082#1091#1088#1089#1091
    TabOrder = 2
  end
  object EditCource: TRzNumericEdit
    Left = 191
    Top = 99
    Width = 90
    Height = 21
    TabOrder = 3
    DisplayFormat = ',0;(,0)'
  end
  object CheckExecDoc: TCheckBox
    Left = 16
    Top = 68
    Width = 265
    Height = 17
    Caption = #1055#1088#1086#1074#1086#1076#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090#1099' '#1087#1086#1089#1083#1077' '#1079#1072#1075#1088#1091#1079#1082#1080
    TabOrder = 1
  end
  object ImportFile: TsFilenameEdit
    Left = 16
    Top = 40
    Width = 265
    Height = 21
    AutoSize = False
    MaxLength = 255
    TabOrder = 0
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'Tahoma'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
    SkinData.SkinSection = 'EDIT'
    GlyphMode.Blend = 0
    GlyphMode.Grayed = False
    Filter = #1060#1072#1081#1083#1099' '#1080#1084#1087#1086#1088#1090#1072'|*.xml'
  end
  object Button1: TButton
    Left = 110
    Top = 136
    Width = 75
    Height = 25
    Caption = #1053#1072#1095#1072#1090#1100
    ModalResult = 1
    TabOrder = 4
  end
  object Button2: TButton
    Left = 206
    Top = 136
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 5
  end
end
