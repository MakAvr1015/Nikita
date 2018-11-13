object FramGoodCard: TFramGoodCard
  Left = 0
  Top = 0
  Width = 451
  Height = 262
  Align = alBottom
  TabOrder = 0
  object Panel4: TPanel
    Left = 201
    Top = 0
    Width = 250
    Height = 262
    Align = alClient
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    object cxDBLabel1: TcxDBLabel
      Left = 1
      Top = 57
      Align = alTop
      DataBinding.DataField = 'F_NAME'
      DataBinding.DataSource = srGetGoodsInfo
      Properties.WordWrap = True
      Style.BorderStyle = ebsFlat
      Height = 41
      Width = 248
    end
    object cxDBLabel2: TcxDBLabel
      Left = 1
      Top = 98
      Align = alTop
      DataBinding.DataField = 'F_DOP_INFO'
      DataBinding.DataSource = srGetGoodsInfo
      Properties.WordWrap = True
      Style.BorderStyle = ebsFlat
      Height = 54
      Width = 248
    end
    object cxDBLabel3: TcxDBLabel
      Left = 1
      Top = 1
      Align = alTop
      DataBinding.DataField = 'F_ARTICLE'
      DataBinding.DataSource = srGetGoodsInfo
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.SkinName = ''
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.SkinName = ''
      Height = 56
      Width = 248
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 152
      Width = 248
      Height = 109
      Align = alClient
      TabOrder = 3
      LookAndFeel.SkinName = 'MoneyTwins'
      LookAndFeel.SkinName = 'MoneyTwins'
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Append.Visible = False
        NavigatorButtons.Delete.Visible = False
        NavigatorButtons.Edit.Visible = False
        DataController.DataSource = srGoodsDopInfo
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Navigator = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1F_ID: TcxGridDBColumn
          DataBinding.FieldName = 'F_ID'
          Visible = False
        end
        object cxGrid1DBTableView1F_GOOD: TcxGridDBColumn
          DataBinding.FieldName = 'F_GOOD'
          Visible = False
        end
        object cxGrid1DBTableView1F_GOOD_INFO: TcxGridDBColumn
          DataBinding.FieldName = 'F_GOOD_INFO'
          Visible = False
        end
        object cxGrid1DBTableView1F_GOOD_INFO_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_GOOD_INFO_NAME'
          PropertiesClassName = 'TcxLabelProperties'
        end
        object cxGrid1DBTableView1F_GOOD_INFO_VAL: TcxGridDBColumn
          DataBinding.FieldName = 'F_GOOD_INFO_VAL'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object cxDBImage1: TcxDBImage
    Left = 0
    Top = 0
    Align = alLeft
    DataBinding.DataField = 'F_MEMO'
    DataBinding.DataSource = srGetGoodsInfo
    Properties.GraphicClassName = 'TJPEGImage'
    Properties.Stretch = True
    TabOrder = 1
    Height = 262
    Width = 201
  end
  object dsGetGoodsInfo: TpFIBDataSet
    SelectSQL.Strings = (
      'select '
      '  f_id,'
      '  f_name,'
      '  f_article,'
      '  f_dop_info,'
      '  f_goods_grp_ext_id,'
      '  f_scancode,'
      
        '  (select F_memo from SP_T_NSI_GOODS_MMEDIA_S(:f_id,:f_ch_date))' +
        ' as f_memo'
      '  '
      'from sp_t_nsi_goods_get(:f_good,null)'
      '')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 64
    Top = 8
    WaitEndMasterScroll = True
    dcForceOpen = True
    object dsGetGoodsInfoF_NAME: TFIBStringField
      FieldName = 'F_NAME'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsGetGoodsInfoF_ARTICLE: TFIBStringField
      FieldName = 'F_ARTICLE'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsGetGoodsInfoF_DOP_INFO: TFIBStringField
      FieldName = 'F_DOP_INFO'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsGetGoodsInfoF_GOODS_GRP_EXT_ID: TFIBStringField
      FieldName = 'F_GOODS_GRP_EXT_ID'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsGetGoodsInfoF_MEMO: TFIBBlobField
      FieldName = 'F_MEMO'
      Size = 8
    end
    object dsGetGoodsInfoF_SCANCODE: TFIBStringField
      FieldName = 'F_SCANCODE'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsGetGoodsInfoF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
    end
  end
  object srGetGoodsInfo: TDataSource
    DataSet = dsGetGoodsInfo
    Left = 72
    Top = 16
  end
  object dsGoodsDopInfo: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'execute procedure SP_T_NSI_GOODS_DOP_INFO_I(:F_GOOD, :F_GOOD_INF' +
        'O, :F_GOOD_INFO_VAL)')
    DeleteSQL.Strings = (
      'execute procedure SP_T_NSI_GOODS_DOP_INFO_D(:f_ID)')
    SelectSQL.Strings = (
      'select * from SP_T_NSI_GOODS_DOP_INFO_S(:f_id)')
    AutoUpdateOptions.ParamsToFieldsLinks.Strings = (
      'F_GOOD=F_ID')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    AutoCommit = True
    DataSource = srGetGoodsInfo
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 120
    Top = 152
    WaitEndMasterScroll = True
    dcForceOpen = True
    dcIgnoreMasterClose = True
    oFetchAll = True
    object dsGoodsDopInfoF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Visible = False
      Size = 0
    end
    object dsGoodsDopInfoF_GOOD: TFIBBCDField
      FieldName = 'F_GOOD'
      Visible = False
      Size = 0
    end
    object dsGoodsDopInfoF_GOOD_INFO: TFIBBCDField
      FieldName = 'F_GOOD_INFO'
      Visible = False
      Size = 0
    end
    object dsGoodsDopInfoF_GOOD_INFO_NAME: TFIBStringField
      DisplayLabel = #1040#1090#1088#1080#1073#1091#1090
      FieldName = 'F_GOOD_INFO_NAME'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsGoodsDopInfoF_GOOD_INFO_VAL: TFIBStringField
      DisplayLabel = #1047#1085#1072#1095#1077#1085#1080#1077
      FieldName = 'F_GOOD_INFO_VAL'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object srGoodsDopInfo: TDataSource
    DataSet = dsGoodsDopInfo
    Left = 128
    Top = 168
  end
end
