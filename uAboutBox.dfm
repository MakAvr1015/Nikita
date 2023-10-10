object AboutBox: TAboutBox
  Left = 200
  Top = 108
  BorderStyle = bsDialog
  Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
  ClientHeight = 212
  ClientWidth = 299
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 281
    Height = 161
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentColor = True
    TabOrder = 0
    object ProgramIcon: TImage
      Left = 8
      Top = 8
      Width = 65
      Height = 57
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
        000000200806000000737A7AF4000000017352474200AECE1CE9000000046741
        4D410000B18F0BFC6105000000097048597300000EC300000EC301C76FA86400
        0001CA494441545847ED96CF4A424114C67D85164570C77C0171A3BE41B489A0
        559B1E227023B4A8BDB40922EA152E5428146E7C855253AB9D2DC2FE18A43DC0
        C9039D69EEB977B8C7E95A100D0CE8389EF33BDFF7C1BDA9D4FFFA54A0542A41
        12DB59D0249A638D6F0380E3A201FE1EC079F71DD68EEF6169E74E6BB3D71886
        74B2592856840A9895772F9E61AE7CA337FD86671C2271009CDC6C8E9F4D000E
        C107983A13BC00CA6E0388CA69E200E989E74900706BAC99E013A808000E34BF
        7DABC5B029E00CB07A14B680032C1FF46301E8426C26F804D5EB71C8020EE05F
        8E66078095CBD5472BC4D6C92090459B05CE0AD01F4F5B235839ECC3C2C46FF4
        1C653727E70DE2BE8B43E8F84888B56466004FFBFB803B31057CDF07C9A68683
        4A055A4A0520A254142B20698E77CC25811003B8660055106FCF3BD340514F43
        17087173A5869D4C663104E0FA6A46B052802BA5360376B836E6CA89004CE96D
        A170B544001094FEA70142D2C70148AD910676EA77C45F03E0A4D24C8C1B0DE8
        158BD02B146054AF6B61E8BCE9790F6DA5D6C54AD045290036A7207673390D60
        9E37957A7106B059429D7AF9BC06E864B35F00C6F94485D79901A0EC3839367F
        ABD534009D63F3763ABD41001F206C58302ADFCF410000000049454E44AE4260
        82}
      Stretch = True
      IsControl = True
    end
    object ProductName: TLabel
      Left = 88
      Top = 16
      Width = 156
      Height = 13
      Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1085#1099#1081' '#1082#1086#1084#1087#1083#1077#1082#1089' Nikita'
      IsControl = True
    end
    object Version: TLabel
      Left = 88
      Top = 40
      Width = 35
      Height = 13
      Caption = 'Version'
      IsControl = True
    end
    object Copyright: TLabel
      Left = 8
      Top = 80
      Width = 44
      Height = 13
      Caption = 'Copyright'
      Visible = False
      IsControl = True
    end
    object Comments: TLabel
      Left = 8
      Top = 104
      Width = 49
      Height = 13
      Caption = 'Comments'
      Visible = False
      IsControl = True
    end
    object ProgressBar: TProgressBar
      Left = 2
      Top = 143
      Width = 277
      Height = 16
      Align = alBottom
      TabOrder = 0
    end
  end
  object OKButton: TButton
    Left = 111
    Top = 180
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 179
    Width = 75
    Height = 25
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 200
    Top = 179
    Width = 89
    Height = 25
    Caption = #1042#1086#1089#1089#1090#1072#1085#1086#1074#1080#1090#1100
    TabOrder = 3
    OnClick = Button2Click
  end
  object pFIBScripter: TpFIBScripter
    Database = DM.pFIBDatabase
    Transaction = pFIBTransaction1
    OnExecuteError = pFIBScripterExecuteError
    BeforeStatementExecute = pFIBScripterAfterStatementExecute
    Left = 144
    Top = 40
  end
  object pFIBTransaction1: TpFIBTransaction
    DefaultDatabase = DM.pFIBDatabase
    Left = 144
    Top = 88
  end
  object pFIBBackupService: TpFIBBackupService
    Protocol = TCP
    LoginPrompt = False
    BlockingFactor = 0
    Options = []
    Left = 248
    Top = 40
  end
  object pFIBRestoreService: TpFIBRestoreService
    Protocol = TCP
    LoginPrompt = False
    Verbose = True
    PageBuffers = 0
    Left = 248
    Top = 88
  end
end
