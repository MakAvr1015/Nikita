inherited FrmNSIGoodsLinks: TFrmNSIGoodsLinks
  Caption = #1050#1086#1084#1087#1083#1077#1082#1090
  ClientHeight = 540
  ClientWidth = 564
  ExplicitWidth = 580
  ExplicitHeight = 578
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 521
    Width = 564
    ExplicitTop = 112
    ExplicitWidth = 419
  end
  inherited Panel3: TPanel
    Width = 564
    Height = 521
    ExplicitWidth = 564
    ExplicitHeight = 521
    inherited RzToolbar: TRzToolbar
      Width = 562
      Height = 25
      ExplicitWidth = 562
      ExplicitHeight = 25
      ToolbarControls = (
        BtnNew
        BtnEdit
        BtnView
        BtnOpen
        BtnRefresh
        BtnFind
        BtnPrint
        BtnOK
        BtnCancel
        BtnExecute
        BtnDelete
        BtnSave
        BtnExit)
      inherited BtnNew: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnOpen: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnFind: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnPrint: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnOK: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnCancel: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnRefresh: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnEdit: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnExecute: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnDelete: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnSave: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnExit: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnView: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 105
      Width = 562
      Height = 415
      Align = alClient
      TabOrder = 1
      ExplicitLeft = 216
      ExplicitTop = 264
      ExplicitWidth = 250
      ExplicitHeight = 200
      object cxGrid1DBCardView1: TcxGridDBCardView
        Navigator.Buttons.OnButtonClick = cxGrid1DBCardView1NavigatorButtonsButtonClick
        Navigator.Buttons.ConfirmDelete = True
        Navigator.Buttons.CustomButtons = <>
        Navigator.Visible = True
        DataController.DataSource = dsrLinkListPos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Appending = True
        OptionsData.Editing = False
        OptionsView.CardIndent = 7
        OptionsView.CardWidth = 159
        object cxGrid1DBCardView1F_ID: TcxGridDBCardViewRow
          DataBinding.FieldName = 'F_ID'
          Visible = False
          Position.BeginsLayer = True
        end
        object cxGrid1DBCardView1F_GOOD: TcxGridDBCardViewRow
          DataBinding.FieldName = 'F_GOOD'
          Visible = False
          Position.BeginsLayer = True
        end
        object cxGrid1DBCardView1F_GOOD_NAME: TcxGridDBCardViewRow
          Caption = #1053#1072#1079#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'F_GOOD_NAME'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.WordWrap = True
          Position.BeginsLayer = True
          Position.LineCount = 2
        end
        object cxGrid1DBCardView1F_GOOD_ARTICLE: TcxGridDBCardViewRow
          Caption = #1040#1088#1090#1080#1082#1091#1083
          DataBinding.FieldName = 'F_GOOD_ARTICLE'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BeginsLayer = True
        end
        object cxGrid1DBCardView1F_GOOD_MMEDIA: TcxGridDBCardViewRow
          DataBinding.FieldName = 'F_GOOD_MMEDIA'
          PropertiesClassName = 'TcxImageProperties'
          Properties.FitMode = ifmProportionalStretch
          Properties.GraphicClassName = 'TdxSmartImage'
          Properties.ReadOnly = True
          Options.Editing = False
          Options.IncSearch = False
          Options.FilteringPopup = False
          Options.Moving = False
          Options.ShowCaption = False
          Position.BeginsLayer = True
          Position.LineCount = 7
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBCardView1
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 26
      Width = 562
      Height = 79
      Align = alTop
      TabOrder = 2
      object RzLabel3: TRzLabel
        Left = 6
        Top = 6
        Width = 48
        Height = 13
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077
      end
      object edArticle: TRzDBEdit
        Left = 60
        Top = 3
        Width = 388
        Height = 21
        DataSource = DsrLinkInfo
        DataField = 'F_NAME'
        TabOrder = 0
      end
    end
  end
  object cxDBRadioGroup1: TcxDBRadioGroup [2]
    Left = 8
    Top = 51
    DataBinding.DataField = 'F_LINK_TYPE'
    DataBinding.DataSource = DsrLinkInfo
    ParentBackground = False
    ParentColor = False
    Properties.Columns = 2
    Properties.DefaultValue = 0
    Properties.Items = <
      item
        Caption = #1050#1086#1084#1087#1083#1077#1082#1090
        Value = 0
      end
      item
        Caption = #1040#1085#1072#1083#1086#1075#1080
        Value = 1
      end>
    Style.Color = clGradientActiveCaption
    TabOrder = 2
    Height = 50
    Width = 441
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited RzFormState: TRzFormState
    Top = 96
  end
  inherited cxPropertiesStore: TcxPropertiesStore
    Top = 56
  end
  object dsLinkInfo: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'execute procedure SP_T_NSI_GOODS_LINKS_SET(:F_LINK, :F_LINK_TYPE' +
        ',:F_NAME)')
    SelectSQL.Strings = (
      
        'select F_ID F_LINK,F_NAME,F_LINK_TYPE from SP_T_NSI_GOODS_LINKS_' +
        'GET(:P_ID)')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    Left = 368
    Top = 40
    object dsLinkInfoF_NAME: TFIBStringField
      FieldName = 'F_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsLinkInfoF_LINK: TFIBIntegerField
      FieldName = 'F_LINK'
    end
    object dsLinkInfoF_LINK_TYPE: TFIBIntegerField
      FieldName = 'F_LINK_TYPE'
    end
  end
  object DsrLinkInfo: TDataSource
    DataSet = dsLinkInfo
    Left = 392
    Top = 56
  end
  object dsLinkListPos: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'execute procedure SP_T_NSI_GOODS_LINK_POS_SET(:F_LINK,:F_ID,:F_G' +
        'OOD)')
    DeleteSQL.Strings = (
      'execute procedure SP_T_NSI_GOODS_LINK_POS_DEL(:F_ID)')
    InsertSQL.Strings = (
      
        'execute procedure SP_T_NSI_GOODS_LINK_POS_SET(:F_LINK,null,:F_GO' +
        'OD)')
    SelectSQL.Strings = (
      'select * from SP_T_NSI_GOODS_LINK_POS_S(:F_LINK)')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    AutoCommit = True
    DataSource = DsrLinkInfo
    Left = 376
    Top = 256
    dcForceOpen = True
    object dsLinkListPosF_ID: TFIBIntegerField
      FieldName = 'F_ID'
    end
    object dsLinkListPosF_GOOD: TFIBIntegerField
      FieldName = 'F_GOOD'
    end
    object dsLinkListPosF_GOOD_NAME: TFIBStringField
      FieldName = 'F_GOOD_NAME'
      Size = 255
      EmptyStrToNull = True
    end
    object dsLinkListPosF_GOOD_ARTICLE: TFIBStringField
      FieldName = 'F_GOOD_ARTICLE'
      Size = 60
      EmptyStrToNull = True
    end
    object dsLinkListPosF_GOOD_MMEDIA: TFIBBlobField
      FieldName = 'F_GOOD_MMEDIA'
      Size = 8
    end
  end
  object dsrLinkListPos: TDataSource
    DataSet = dsLinkListPos
    Left = 384
    Top = 272
  end
end
