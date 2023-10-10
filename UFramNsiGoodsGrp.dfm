object FramNsiGoodsGrp: TFramNsiGoodsGrp
  Left = 0
  Top = 0
  Width = 574
  Height = 446
  Color = clGradientActiveCaption
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  object frameRzToolbar: TRzToolbar
    Left = 0
    Top = 0
    Width = 574
    Height = 29
    Images = dm.ImageList
    BorderInner = fsNone
    BorderOuter = fsGroove
    BorderSides = [sdTop]
    BorderWidth = 0
    Color = clGradientActiveCaption
    GradientColorStyle = gcsCustom
    GradientColorStop = clGradientActiveCaption
    TabOrder = 0
    VisualStyle = vsGradient
    ToolbarControls = (
      BtnNew
      BtnEdit
      BtnOpen
      BtnFind
      BtnPrint
      BtnRefresh
      BtnOK
      BtnCancel
      BtnRecycle)
    object BtnNew: TRzToolButton
      Left = 4
      Top = 2
      DisabledIndex = 1
      ImageIndex = 0
      Caption = #1057#1086#1079#1076#1072#1090#1100
      OnClick = BtnNewClick
    end
    object BtnOpen: TRzToolButton
      Left = 54
      Top = 2
      DisabledIndex = 3
      ImageIndex = 2
      Caption = #1054#1090#1082#1088#1099#1090#1100
    end
    object BtnFind: TRzToolButton
      Left = 79
      Top = 2
      DisabledIndex = 21
      ImageIndex = 20
      Caption = #1053#1072#1081#1090#1080
    end
    object BtnPrint: TRzToolButton
      Left = 104
      Top = 2
      DisabledIndex = 19
      ImageIndex = 18
      Caption = #1055#1077#1095#1072#1090#1072#1090#1100
    end
    object BtnOK: TRzToolButton
      Left = 154
      Top = 2
      DisabledIndex = 33
      ImageIndex = 32
      Caption = #1042#1099#1073#1088#1072#1090#1100
    end
    object BtnCancel: TRzToolButton
      Left = 179
      Top = 2
      DisabledIndex = 23
      ImageIndex = 22
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    end
    object BtnRefresh: TRzToolButton
      Left = 129
      Top = 2
      DisabledIndex = 15
      ImageIndex = 14
      Caption = 'Refresh'
    end
    object BtnEdit: TRzToolButton
      Left = 29
      Top = 2
      DisabledIndex = 17
      ImageIndex = 16
      Caption = 'Edit'
    end
    object BtnRecycle: TRzToolButton
      Left = 204
      Top = 2
      DisabledIndex = 37
      ImageIndex = 36
      Caption = 'Recycle'
      OnClick = BtnRecycleClick
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 29
    Width = 574
    Height = 417
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = cxTabSheetGrp
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.SkinName = 'MoneyTwins'
    ClientRectBottom = 415
    ClientRectLeft = 2
    ClientRectRight = 572
    ClientRectTop = 26
    object cxTabSheetGrp: TcxTabSheet
      Caption = #1043#1088#1091#1087#1087#1099
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxDBTreeList: TcxDBTreeList
        Left = 0
        Top = 0
        Width = 566
        Height = 389
        Align = alClient
        Bands = <
          item
          end>
        DataController.DataSource = srNsiGrp
        DataController.ParentField = 'F_PARENT'
        DataController.KeyField = 'GRP_ID'
        DragMode = dmAutomatic
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'MoneyTwins'
        Navigator.Buttons.CustomButtons = <>
        OptionsBehavior.ExpandOnDblClick = False
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRect = False
        OptionsSelection.InvertSelect = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        RootValue = -1
        Styles.Selection = dm.cxStyle11
        TabOrder = 0
        OnDblClick = cxDBTreeListDblClick
        object cxDBTreeList1F_ID: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'F_ID'
          Position.ColIndex = 0
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1F_PARENT: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'F_PARENT'
          Position.ColIndex = 1
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1F_NAME: TcxDBTreeListColumn
          Caption.MultiLine = True
          DataBinding.FieldName = 'F_NAME'
          Position.ColIndex = 2
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1F_COLOR: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'F_COLOR'
          Position.ColIndex = 3
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
      end
    end
    object cxTabSheetGrpExt: TcxTabSheet
      Caption = #1053#1072#1073#1086#1088#1099'/'#1082#1086#1084#1087#1083#1077#1082#1090#1099
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 566
        Height = 389
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid1DBTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = srAlterneteList
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1F_ID: TcxGridDBColumn
            DataBinding.FieldName = 'F_ID'
            Visible = False
          end
          object cxGrid1DBTableView1F_NAME: TcxGridDBColumn
            Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1086#1084#1087#1083#1077#1082#1090#1072
            DataBinding.FieldName = 'F_NAME'
            Options.Editing = False
            Options.Grouping = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object dsNsiGrp: TpFIBDataSet
    DeleteSQL.Strings = (
      'execute procedure SP_T_NSI_GOODS_GRP_D(:grp_ID)')
    SelectSQL.Strings = (
      'SELECT'
      '    grp_ID,'
      '    F_PARENT,'
      '    F_NAME,'
      '    F_COLOR'
      'FROM'
      '    sp_T_NSI_GOODS_GRP_s')
    Transaction = pFIBTransaction_frm
    Database = dm.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 112
    Top = 240
    object dsNsiGrpF_PARENT: TFIBBCDField
      FieldName = 'F_PARENT'
      Size = 0
    end
    object dsNsiGrpF_NAME: TFIBStringField
      DisplayLabel = #1058#1086#1074#1072#1088#1085#1072#1103' '#1075#1088#1091#1087#1087#1072
      FieldName = 'F_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsNsiGrpGRP_ID: TFIBBCDField
      FieldName = 'GRP_ID'
      Size = 0
    end
    object dsNsiGrpF_COLOR: TFIBStringField
      FieldName = 'F_COLOR'
      Size = 60
      EmptyStrToNull = True
    end
  end
  object srNsiGrp: TDataSource
    DataSet = dsNsiGrp
    Left = 120
    Top = 248
  end
  object pFIBTransaction_frm: TpFIBTransaction
    DefaultDatabase = dm.pFIBDatabase
    Left = 176
    Top = 296
  end
  object dsAlterneteList: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from SP_T_NSI_GOODS_LINKS_S')
    Transaction = dm.pFIBTransaction
    Database = dm.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 352
    Top = 168
    object dsAlterneteListF_ID: TFIBIntegerField
      FieldName = 'F_ID'
    end
    object dsAlterneteListF_NAME: TFIBStringField
      FieldName = 'F_NAME'
      Size = 60
      EmptyStrToNull = True
    end
  end
  object srAlterneteList: TDataSource
    DataSet = dsAlterneteList
    Left = 360
    Top = 176
  end
end
