object FramBanner: TFramBanner
  Left = 0
  Top = 0
  Width = 475
  Height = 277
  TabOrder = 0
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 475
    Height = 277
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ExplicitLeft = 40
    ExplicitTop = 24
    ExplicitWidth = 289
    ExplicitHeight = 193
    ClientRectBottom = 273
    ClientRectLeft = 4
    ClientRectRight = 471
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = #1040#1085#1072#1083#1086#1075#1080
      ImageIndex = 0
      ExplicitLeft = 5
      ExplicitTop = 25
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 467
        Height = 249
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 80
        ExplicitTop = 96
        ExplicitWidth = 250
        ExplicitHeight = 200
        object cxGrid1DBTableAnalog: TcxGridDBTableView
          DragMode = dmAutomatic
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsrAnalogList
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableAnalogF_GOOD: TcxGridDBColumn
            DataBinding.FieldName = 'F_GOOD'
            Visible = False
          end
          object cxGrid1DBTableAnalogF_GOOD_ARTICLE: TcxGridDBColumn
            Caption = #1040#1088#1090#1080#1082#1091#1083
            DataBinding.FieldName = 'F_GOOD_ARTICLE'
            Width = 131
          end
          object cxGrid1DBTableAnalogF_GOOD_NAME: TcxGridDBColumn
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'F_GOOD_NAME'
            Width = 116
          end
          object cxGrid1DBTableAnalogF_GOOD_MMEDIA: TcxGridDBColumn
            Caption = #1060#1086#1090#1086
            DataBinding.FieldName = 'F_GOOD_MMEDIA'
            PropertiesClassName = 'TcxImageProperties'
            Properties.FitMode = ifmProportionalStretch
            Properties.GraphicClassName = 'TdxSmartImage'
            Width = 101
          end
          object cxGrid1DBTableAnalogF_OST: TcxGridDBColumn
            DataBinding.FieldName = 'F_OST'
            Visible = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableAnalog
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #1050#1086#1084#1087#1083#1077#1082#1090#1099
      ImageIndex = 1
    end
  end
  object dsAnalogList: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      'f_good,'
      'f_good_name,'
      'f_good_article,'
      'f_good_mmedia,'
      '(select f_ost from SP_GET_GOOD_CURR_OST(f_good)) as f_ost'
      'from SP_T_NSI_GOODS_LINK_BY_GOOD(:P_GOOD,1)')
    BeforeOpen = dsAnalogListBeforeOpen
    OnCalcFields = dsAnalogListCalcFields
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    Left = 180
    Top = 160
    object dsAnalogListF_GOOD: TFIBIntegerField
      FieldName = 'F_GOOD'
    end
    object dsAnalogListF_GOOD_NAME: TFIBStringField
      FieldName = 'F_GOOD_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsAnalogListF_GOOD_ARTICLE: TFIBStringField
      FieldName = 'F_GOOD_ARTICLE'
      Size = 60
      EmptyStrToNull = True
    end
    object dsAnalogListF_GOOD_MMEDIA: TFIBBlobField
      FieldName = 'F_GOOD_MMEDIA'
      Size = 8
    end
    object dsAnalogListF_OST: TFIBStringField
      FieldName = 'F_OST'
      Size = 255
      EmptyStrToNull = True
    end
  end
  object dsrAnalogList: TDataSource
    DataSet = dsAnalogList
    Left = 136
    Top = 192
  end
end
