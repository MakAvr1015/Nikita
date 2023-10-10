object DlgPrgProp: TDlgPrgProp
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072
  ClientHeight = 255
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 480
    Height = 217
    Align = alTop
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid1TableView1: TcxGridTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      DataController.Data = {
        CD0000000F00000044617461436F6E74726F6C6C657231030000001200000054
        6378537472696E6756616C75655479706512000000546378537472696E675661
        6C75655479706512000000546378537472696E6756616C756554797065010000
        00445855464D5400001900000012043A043B044E044704380442044C04200044
        043E043D043E0432044B04350420003F0440043E0446043504410441044B0400
        0400000054007200750065000010000000530077006900740063006800420061
        0063006B00670072006F0075006E006400}
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      object PropName: TcxGridColumn
        Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072
      end
      object PropValue: TcxGridColumn
        Caption = #1047#1085#1072#1095#1077#1085#1080#1077
        PropertiesClassName = 'TcxCheckBoxProperties'
        SortIndex = 0
        SortOrder = soAscending
      end
      object PropCode: TcxGridColumn
        Caption = #1050#1086#1076
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1TableView1
    end
  end
  object BtnCancel: TButton
    Left = 397
    Top = 223
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 1
  end
  object BtnOk: TButton
    Left = 296
    Top = 223
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    ModalResult = 1
    TabOrder = 2
  end
end
