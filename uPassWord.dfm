object PasswordDlg: TPasswordDlg
  Left = 245
  Top = 108
  BorderStyle = bsDialog
  Caption = 'Password Dialog'
  ClientHeight = 248
  ClientWidth = 538
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 5
    Top = 191
    Width = 37
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100
  end
  object Label2: TLabel
    Left = 5
    Top = 163
    Width = 72
    Height = 13
    Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
  end
  object Label3: TLabel
    Left = 5
    Top = 104
    Width = 23
    Height = 13
    Caption = #1041#1072#1079#1072
    OnDblClick = EdBaseDblClick
  end
  object Password: TEdit
    Left = 82
    Top = 187
    Width = 144
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
  end
  object OKBtn: TButton
    Left = 70
    Top = 215
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object CancelBtn: TButton
    Left = 151
    Top = 215
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object EdBase: TEdit
    Left = 82
    Top = 101
    Width = 144
    Height = 21
    Enabled = False
    TabOrder = 3
  end
  object RadioGroup1: TRadioGroup
    Left = 5
    Top = -1
    Width = 221
    Height = 42
    Caption = #1050#1050#1052
    TabOrder = 4
  end
  object Atol: TRadioButton
    Left = 8
    Top = 16
    Width = 113
    Height = 17
    Caption = #1040#1090#1086#1083
    Checked = True
    TabOrder = 5
    TabStop = True
  end
  object Strih: TRadioButton
    Left = 127
    Top = 16
    Width = 90
    Height = 17
    Caption = #1064#1090#1088#1080#1093'-'#1052
    TabOrder = 6
  end
  object LangSelect: TComboBox
    Left = 82
    Top = 131
    Width = 144
    Height = 21
    Style = csDropDownList
    TabOrder = 7
  end
  object cxShellComboBox: TcxShellComboBox
    Left = 8
    Top = 48
    Enabled = False
    Properties.ShowFullPath = sfpAlways
    Properties.ViewOptions = []
    TabOrder = 8
    OnDblClick = cxShellComboBoxDblClick
    Width = 218
  end
  object BaseName: TEdit
    Left = 82
    Top = 75
    Width = 144
    Height = 21
    Enabled = False
    TabOrder = 9
  end
  object StringGridBase: TStringGrid
    Left = 232
    Top = 5
    Width = 291
    Height = 204
    ColCount = 2
    DefaultColWidth = 150
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    TabOrder = 10
    OnDblClick = StringGridBaseDblClick
  end
  object EdUser: TComboBox
    Left = 81
    Top = 160
    Width = 145
    Height = 21
    Sorted = True
    TabOrder = 11
  end
  object cxPropertiesStore: TcxPropertiesStore
    Components = <
      item
        Component = Atol
        Properties.Strings = (
          'Checked')
      end
      item
        Component = BaseName
        Properties.Strings = (
          'Text')
      end
      item
        Component = LangSelect
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = Strih
        Properties.Strings = (
          'Checked')
      end>
    StorageName = 'Nikita\Login'
    StorageType = stRegistry
    Left = 96
    Top = 72
  end
end
