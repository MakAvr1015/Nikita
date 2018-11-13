object DlgSave: TDlgSave
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1074#1099#1075#1088#1091#1079#1082#1080
  ClientHeight = 191
  ClientWidth = 410
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 313
    Height = 171
  end
  object Label1: TLabel
    Left = 14
    Top = 133
    Width = 110
    Height = 13
    Caption = #1060#1072#1081#1083' '#1076#1083#1103' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103
  end
  object GroupBox1: TGroupBox
    Left = 14
    Top = 15
    Width = 299
    Height = 114
    Caption = #1048#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103
    TabOrder = 0
    object Label6: TLabel
      Left = 8
      Top = 43
      Width = 94
      Height = 13
      Caption = #1048#1079#1084#1077#1085#1077#1085#1085#1099#1077' '#1087#1086#1089#1083#1077
    end
    object Label4: TLabel
      Left = 8
      Top = 67
      Width = 126
      Height = 13
      Caption = #1050#1072#1090#1072#1083#1086#1075' '#1076#1083#1103' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103
    end
    object SaveImg: TcxCheckBox
      Left = 8
      Top = 17
      Caption = #1042#1099#1075#1088#1091#1078#1072#1090#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103
      TabOrder = 0
      Width = 150
    end
    object editDateFrom: TcxDateEdit
      Left = 112
      Top = 40
      EditValue = 0d
      TabOrder = 1
      Width = 105
    end
    object DirToSave: TcxShellComboBox
      Left = 3
      Top = 86
      Properties.ShowFullPath = sfpAlways
      TabOrder = 2
      Width = 288
    end
  end
  object OKBtn: TButton
    Left = 326
    Top = 8
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object CancelBtn: TButton
    Left = 326
    Top = 38
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object sFilenameEdit: TsFilenameEdit
    Left = 14
    Top = 151
    Width = 299
    Height = 21
    AutoSize = False
    MaxLength = 255
    TabOrder = 3
    OnChange = sFilenameEditChange
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
  end
end
