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
    Images = DM.ImageList
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
    ActivePage = cxTabSheetGrp
    Align = alClient
    LookAndFeel.SkinName = 'MoneyTwins'
    LookAndFeel.SkinName = 'MoneyTwins'
    TabOrder = 1
    ClientRectBottom = 415
    ClientRectLeft = 2
    ClientRectRight = 572
    ClientRectTop = 25
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
        Width = 570
        Height = 390
        Align = alClient
        Bands = <
          item
          end>
        BufferedPaint = False
        DataController.DataSource = srNsiGrp
        DataController.ParentField = 'F_PARENT'
        DataController.KeyField = 'GRP_ID'
        DragMode = dmAutomatic
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'MoneyTwins'
        LookAndFeel.SkinName = 'MoneyTwins'
        OptionsBehavior.ExpandOnDblClick = False
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRect = False
        OptionsSelection.InvertSelect = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        RootValue = -1
        Styles.Selection = DM.cxStyle11
        TabOrder = 0
        OnCustomDrawCell = cxDBTreeListCustomDrawCell
        OnDblClick = cxDBTreeListDblClick
        ExplicitTop = 3
        object cxDBTreeList1F_ID: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'F_ID'
          Position.ColIndex = 0
          Position.RowIndex = 0
          Position.BandIndex = 0
        end
        object cxDBTreeList1F_PARENT: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'F_PARENT'
          Position.ColIndex = 1
          Position.RowIndex = 0
          Position.BandIndex = 0
        end
        object cxDBTreeList1F_NAME: TcxDBTreeListColumn
          Caption.MultiLine = True
          DataBinding.FieldName = 'F_NAME'
          Position.ColIndex = 2
          Position.RowIndex = 0
          Position.BandIndex = 0
        end
        object cxDBTreeList1F_COLOR: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'F_COLOR'
          Position.ColIndex = 3
          Position.RowIndex = 0
          Position.BandIndex = 0
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
      object cxDBTreeList1: TcxDBTreeList
        Left = 0
        Top = 0
        Width = 570
        Height = 390
        Align = alClient
        Bands = <
          item
          end>
        BufferedPaint = False
        LookAndFeel.SkinName = 'MoneyTwins'
        LookAndFeel.SkinName = 'MoneyTwins'
        OptionsView.ColumnAutoWidth = True
        RootValue = -1
        TabOrder = 0
        object cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn
          Caption.Text = #1053#1072#1073#1086#1088'/'#1082#1086#1084#1087#1083#1077#1082#1090
          Position.ColIndex = 0
          Position.RowIndex = 0
          Position.BandIndex = 0
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
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 112
    Top = 240
    object dsNsiGrpF_PARENT: TFIBBCDField
      FieldName = 'F_PARENT'
      Size = 0
      RoundByScale = True
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
      RoundByScale = True
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
    DefaultDatabase = DM.pFIBDatabase
    TimeoutAction = TARollback
    Left = 176
    Top = 296
  end
  object dsAlterneteList: TpFIBDataSet
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 352
    Top = 168
  end
  object srAlterneteList: TDataSource
    DataSet = dsAlterneteList
    Left = 360
    Top = 176
  end
end
