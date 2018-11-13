object DlgShtrihProperty: TDlgShtrihProperty
  Left = 227
  Top = 108
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1076#1088#1072#1081#1074#1077#1088#1072
  ClientHeight = 148
  ClientWidth = 301
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 201
    Height = 129
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 17
    Top = 27
    Width = 10
    Height = 13
    Caption = 'IP'
  end
  object Label2: TLabel
    Left = 17
    Top = 56
    Width = 25
    Height = 13
    Caption = #1055#1086#1088#1090
  end
  object Label3: TLabel
    Left = 17
    Top = 80
    Width = 42
    Height = 13
    Caption = #1058#1072#1081#1084#1072#1091#1090
  end
  object Label4: TLabel
    Left = 17
    Top = 108
    Width = 37
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100
  end
  object OKBtn: TButton
    Left = 215
    Top = 8
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 215
    Top = 39
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
    OnClick = CancelBtnClick
  end
  object EdIP: TEdit
    Left = 76
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object EdPort: TEdit
    Left = 76
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object EdTimeout: TEdit
    Left = 76
    Top = 78
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object EdPassword: TEdit
    Left = 76
    Top = 105
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object cxPropertiesStore: TcxPropertiesStore
    Components = <
      item
        Component = EdIP
        Properties.Strings = (
          'Text')
      end
      item
        Component = EdPassword
        Properties.Strings = (
          'Text')
      end
      item
        Component = EdPort
        Properties.Strings = (
          'Text')
      end
      item
        Component = EdTimeout
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'Nikita\Shtrih'
    StorageType = stRegistry
    Left = 240
    Top = 88
  end
end
