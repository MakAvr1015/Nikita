inherited FrmNSIGoodType: TFrmNSIGoodType
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1090#1080#1087#1086#1074' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1099
  ExplicitWidth = 623
  ExplicitHeight = 350
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    inherited RzToolbar: TRzToolbar
      Height = 25
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
      Top = 26
      Width = 613
      Height = 277
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'MoneyTwins'
      LookAndFeel.SkinName = 'MoneyTwins'
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = srListTypeGoods
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
          end
          item
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        Styles.StyleSheet = DM.GridTableViewStyleSheetDevExpress
        object cxGrid1DBTableView1F_ID: TcxGridDBColumn
          DataBinding.FieldName = 'F_ID'
          Visible = False
          Width = 69
        end
        object cxGrid1DBTableView1F_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'F_NAME'
          Width = 271
        end
        object cxGrid1DBTableView1F_CHECK_OST: TcxGridDBColumn
          DataBinding.FieldName = 'F_CHECK_OST'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.AllowGrayed = True
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Width = 130
        end
        object cxGrid1DBTableView1F_COMPL: TcxGridDBColumn
          DataBinding.FieldName = 'F_COMPL'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Width = 129
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dsListTypeGoods: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'execute procedure SP_T_NSI_GOOD_TYPE_U(:f_id,:f_name,:f_check_os' +
        't,:f_compl)')
    DeleteSQL.Strings = (
      'execute procedure SP_T_NSI_GOOD_TYPE_D(:f_id)')
    InsertSQL.Strings = (
      
        'execute procedure SP_T_NSI_GOOD_TYPE_I(:f_id,:f_name,:f_check_os' +
        't,:f_compl)')
    SelectSQL.Strings = (
      'select * from sp_t_nsi_good_type_S')
    Transaction = pFIBTransaction1
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 120
    Top = 160
    object dsListTypeGoodsF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
      RoundByScale = True
    end
    object dsListTypeGoodsF_NAME: TFIBStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077
      FieldName = 'F_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsListTypeGoodsF_CHECK_OST: TFIBSmallIntField
      DefaultExpression = '0'
      DisplayLabel = #1061#1088#1072#1085#1080#1090#1100' '#1086#1089#1090#1072#1090#1082#1080
      FieldName = 'F_CHECK_OST'
    end
    object dsListTypeGoodsF_COMPL: TFIBSmallIntField
      DefaultExpression = '0'
      DisplayLabel = #1050#1086#1084#1087#1083#1077#1082#1090
      FieldName = 'F_COMPL'
    end
  end
  object pFIBTransaction1: TpFIBTransaction
    DefaultDatabase = DM.pFIBDatabase
    TimeoutAction = TARollback
    Left = 120
    Top = 200
  end
  object srListTypeGoods: TDataSource
    DataSet = dsListTypeGoods
    Left = 448
    Top = 120
  end
end
