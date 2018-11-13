inherited FrmZapasNEw: TFrmZapasNEw
  Caption = #1054#1089#1090#1072#1090#1082#1080
  ClientHeight = 514
  ClientWidth = 879
  ExplicitWidth = 887
  ExplicitHeight = 541
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 495
    Width = 879
    ExplicitTop = 495
    ExplicitWidth = 879
    inherited DsFormName: TRzStatusPane
      Caption = 'dsZapas'
    end
  end
  inherited Panel3: TPanel
    Width = 879
    Height = 495
    ExplicitWidth = 879
    ExplicitHeight = 495
    inherited RzToolbar: TRzToolbar
      Width = 877
      Height = 25
      ExplicitWidth = 877
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
    object cxGrid2: TcxGrid
      Left = 1
      Top = 26
      Width = 877
      Height = 270
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'MoneyTwins'
      LookAndFeel.SkinName = 'MoneyTwins'
      object cxGrid2DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid2DBTableView1DblClick
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = srZapas
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
          end
          item
            Kind = skSum
          end
          item
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.HeaderAutoHeight = True
        Styles.StyleSheet = DM.GridTableViewStyleSheetDevExpress
        object cxGrid2DBTableView1F_GOOD: TcxGridDBColumn
          DataBinding.FieldName = 'F_GOOD'
          Visible = False
        end
        object cxGrid2DBTableView1F_OST: TcxGridDBColumn
          DataBinding.FieldName = 'F_OST'
          Visible = False
        end
        object cxGrid2DBTableView1F_ARTICLE: TcxGridDBColumn
          DataBinding.FieldName = 'F_ARTICLE'
          SortIndex = 0
          SortOrder = soAscending
          Width = 117
        end
        object cxGrid2DBTableView1F_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_NAME'
          Width = 238
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
    inline FramGoodCard1: TFramGoodCard
      Left = 1
      Top = 296
      Width = 877
      Height = 198
      Align = alBottom
      TabOrder = 2
      ExplicitLeft = 1
      ExplicitTop = 296
      ExplicitWidth = 877
      ExplicitHeight = 198
      inherited Panel4: TPanel
        Width = 676
        Height = 198
        ExplicitWidth = 676
        ExplicitHeight = 198
        inherited cxDBLabel1: TcxDBLabel
          Top = 45
          ExplicitTop = 45
          ExplicitWidth = 674
          Width = 674
        end
        inherited cxDBLabel2: TcxDBLabel
          Top = 86
          ExplicitTop = 86
          ExplicitWidth = 674
          ExplicitHeight = 33
          Height = 33
          Width = 674
        end
        inherited cxDBLabel3: TcxDBLabel
          Style.LookAndFeel.SkinName = ''
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.SkinName = ''
          ExplicitWidth = 674
          ExplicitHeight = 44
          Height = 44
          Width = 674
        end
        inherited cxGrid1: TcxGrid
          Top = 119
          Width = 674
          Height = 78
          LookAndFeel.SkinName = 'MoneyTwins'
          ExplicitTop = 119
          ExplicitWidth = 674
          ExplicitHeight = 78
        end
      end
      inherited cxDBImage1: TcxDBImage
        ExplicitHeight = 198
        Height = 198
      end
      inherited dsGetGoodsInfo: TpFIBDataSet
        SelectSQL.Strings = (
          'select '
          '  f_id,'
          '  f_name,'
          '  f_article,'
          '  f_dop_info,'
          '  f_goods_grp_ext_id,'
          '  f_scancode,'
          
            '  (select F_memo from SP_T_NSI_GOODS_MMEDIA_S(:f_good,:f_ch_date' +
            ')) as f_memo'
          '  '
          'from sp_t_nsi_goods_get(:f_good,null)'
          '')
        DataSource = srZapas
      end
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dsZapas: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from SP_GET_ALL_CURR_OST')
    BeforeOpen = dsZapasBeforeOpen
    OnCalcFields = dsZapasCalcFields
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 560
    Top = 288
    object dsZapasF_GOOD: TFIBBCDField
      FieldName = 'F_GOOD'
      Visible = False
      Size = 0
      RoundByScale = True
    end
    object dsZapasF_OST: TFIBStringField
      FieldName = 'F_OST'
      Visible = False
      Size = 100
      EmptyStrToNull = True
    end
    object dsZapasF_ARTICLE: TFIBStringField
      DisplayLabel = #1040#1088#1090#1080#1082#1091#1083
      FieldName = 'F_ARTICLE'
      Size = 60
      EmptyStrToNull = True
    end
    object dsZapasF_NAME: TFIBStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077
      FieldName = 'F_NAME'
      Size = 255
      EmptyStrToNull = True
    end
  end
  object srZapas: TDataSource
    DataSet = dsZapas
    Left = 600
    Top = 288
  end
end
