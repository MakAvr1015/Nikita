object DlgLoadPicture: TDlgLoadPicture
  Left = 227
  Top = 108
  BorderStyle = bsDialog
  Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1092#1086#1090#1086#1075#1088#1072#1092#1080#1081
  ClientHeight = 258
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
    Height = 236
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 16
    Top = 19
    Width = 128
    Height = 13
    Caption = #1050#1072#1090#1072#1083#1086#1075' '#1089' '#1092#1086#1090#1086#1075#1088#1072#1092#1080#1103#1084#1080
  end
  object btnLoad: TButton
    Left = 300
    Top = 8
    Width = 75
    Height = 25
    Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
    Default = True
    TabOrder = 0
    OnClick = btnLoadClick
  end
  object cxShellComboBox: TcxShellComboBox
    Left = 16
    Top = 38
    Properties.ShowFullPath = sfpAlways
    TabOrder = 1
    Width = 265
  end
  object memoLog: TMemo
    Left = 16
    Top = 80
    Width = 265
    Height = 153
    Lines.Strings = (
      'memoLog')
    ScrollBars = ssBoth
    TabOrder = 2
  end
  object spImportPictures: TpFIBStoredProc
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    SQL.Strings = (
      
        'EXECUTE PROCEDURE SP_T_NSI_GOOD_IMPORT_PHOTO (?F_ARTICLE, ?F_MME' +
        'DIA)')
    StoredProcName = 'SP_T_NSI_GOOD_IMPORT_PHOTO'
    Left = 200
    Top = 128
  end
end
