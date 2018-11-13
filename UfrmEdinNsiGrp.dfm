inherited frmEdinNsiGrp: TfrmEdinNsiGrp
  ActiveControl = RzDBEdit1
  Caption = #1058#1086#1074#1072#1088#1085#1072#1103' '#1075#1088#1091#1087#1087#1072
  ClientHeight = 286
  ClientWidth = 347
  ExplicitWidth = 355
  ExplicitHeight = 313
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 267
    Width = 347
    TabOrder = 1
    ExplicitTop = 287
    ExplicitWidth = 239
  end
  inherited Panel3: TPanel
    Width = 347
    Height = 267
    TabOrder = 0
    ExplicitWidth = 347
    ExplicitHeight = 267
    object RzLabel1: TRzLabel [0]
      Left = 8
      Top = 43
      Width = 110
      Height = 13
      Caption = #1042#1099#1096#1077#1089#1090#1086#1103#1097#1072#1103' '#1075#1088#1091#1087#1087#1072
    end
    object RzLabel2: TRzLabel [1]
      Left = 8
      Top = 73
      Width = 48
      Height = 13
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077
    end
    object RzLabel3: TRzLabel [2]
      Left = 8
      Top = 101
      Width = 65
      Height = 13
      Caption = 'ID '#1076#1083#1103' '#1089#1072#1081#1090#1072
    end
    object RzLabel4: TRzLabel [3]
      Left = 8
      Top = 176
      Width = 143
      Height = 13
      Caption = #1044#1086#1087'. '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1076#1083#1103' '#1089#1072#1081#1090#1072
    end
    inherited RzToolbar: TRzToolbar
      Width = 345
      Height = 27
      ExplicitWidth = 345
      ExplicitHeight = 27
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
        BtnExecute)
      inherited BtnExecute: TRzToolButton
        Visible = False
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
        Visible = False
      end
    end
    object RzDBEdit1: TRzDBEdit
      Left = 122
      Top = 70
      Width = 218
      Height = 21
      DataSource = srNsiGoodsGrp
      DataField = 'F_NAME'
      TabOrder = 1
    end
    object dxDBLookupTreeView1: TdxDBLookupTreeView
      Left = 124
      Top = 43
      Width = 216
      Height = 21
      CanSelectParents = True
      ParentColor = False
      TabOrder = 2
      TabStop = True
      Text = 'dxDBLookupTreeView1'
      TreeViewColor = clWindow
      TreeViewCursor = crDefault
      TreeViewFont.Charset = DEFAULT_CHARSET
      TreeViewFont.Color = clWindowText
      TreeViewFont.Height = -11
      TreeViewFont.Name = 'Tahoma'
      TreeViewFont.Style = []
      TreeViewIndent = 19
      TreeViewReadOnly = False
      TreeViewShowButtons = True
      TreeViewShowHint = False
      TreeViewShowLines = True
      TreeViewShowRoot = True
      TreeViewSortType = stNone
      DisplayField = 'F_name'
      DividedChar = '.'
      ListSource = SrSourceGrp
      KeyField = 'GRP_ID'
      ListField = 'F_NAME'
      Options = [trDBCanDelete, trDBConfirmDelete, trCanDBNavigate, trSmartRecordCopy, trCheckHasChildren]
      ParentField = 'F_PARENT'
      RootValue = Null
      TextStyle = tvtsShort
      DataField = 'F_PARENT'
      DataSource = srNsiGoodsGrp
    end
    object RzDBEdit2: TRzDBEdit
      Left = 79
      Top = 98
      Width = 72
      Height = 21
      DataSource = srNsiGoodsGrp
      DataField = 'F_EXT_ID'
      TabOrder = 3
    end
    object RzDBMemo1: TRzDBMemo
      Left = 8
      Top = 195
      Width = 332
      Height = 62
      DataField = 'F_DOP_INFO'
      DataSource = srNsiGoodsGrp
      TabOrder = 4
    end
    object cxDBColorComboBox1: TcxDBColorComboBox
      Left = 193
      Top = 97
      DataBinding.DataField = 'f_color'
      DataBinding.DataSource = srNsiGoodsGrp
      Properties.CustomColors = <>
      TabOrder = 5
      Width = 147
    end
    object RzDBEdit3: TRzDBEdit
      Left = 8
      Top = 151
      Width = 122
      Height = 21
      DataSource = srNsiGoodsGrp
      DataField = 'F_SET_MASK'
      TabOrder = 6
    end
    object RzDBCheckBox1: TRzDBCheckBox
      Left = 8
      Top = 125
      Width = 218
      Height = 20
      DataField = 'F_SET_AUTO'
      DataSource = srNsiGoodsGrp
      ValueChecked = '1'
      ValueUnchecked = '0'
      Caption = #1055#1088#1080#1089#1074#1072#1080#1074#1072#1090#1100' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1087#1086' '#1084#1072#1089#1082#1077
      TabOrder = 7
    end
    object BtnSetGrpAuto: TRzButton
      Left = 136
      Top = 151
      Width = 88
      Caption = #1055#1088#1080#1089#1074#1086#1080#1090#1100
      TabOrder = 8
      OnClick = BtnSetGrpAutoClick
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dsNsiGoodsGrp: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'execute procedure SP_T_NSI_GOODS_GRP_U(:GRP_ID,:F_PARENT,:F_NAME' +
        ', :F_EXT_ID, :F_DOP_INFO,:f_color,:f_set_mask,:f_set_auto)')
    SelectSQL.Strings = (
      'SELECT'
      '    GRP_ID,'
      '    F_PARENT,'
      '    F_NAME,'
      '    F_EXT_ID,'
      '    F_DOP_INFO,'
      '    F_color,'
      '    f_set_auto,'
      '    f_set_mask'
      'FROM'
      '    SP_T_NSI_GOODS_GRP_GET(:F_GRP,'
      '    :F_PARENT_GRP) ')
    AfterOpen = dsNsiGoodsGrpAfterOpen
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 56
    Top = 56
    object dsNsiGoodsGrpGRP_ID: TFIBBCDField
      FieldName = 'GRP_ID'
      Size = 0
    end
    object dsNsiGoodsGrpF_PARENT: TFIBBCDField
      FieldName = 'F_PARENT'
      Size = 0
    end
    object dsNsiGoodsGrpF_NAME: TFIBStringField
      FieldName = 'F_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsNsiGoodsGrpF_EXT_ID: TFIBStringField
      FieldName = 'F_EXT_ID'
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsNsiGoodsGrpF_DOP_INFO: TFIBStringField
      FieldName = 'F_DOP_INFO'
      Size = 10000
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsNsiGoodsGrpF_COLOR: TFIBStringField
      FieldName = 'F_COLOR'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsNsiGoodsGrpF_SET_AUTO: TFIBSmallIntField
      FieldName = 'F_SET_AUTO'
    end
    object dsNsiGoodsGrpF_SET_MASK: TFIBStringField
      FieldName = 'F_SET_MASK'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object pFIBTransaction: TpFIBTransaction
    DefaultDatabase = DM.pFIBDatabase
    Left = 168
    Top = 96
  end
  object srNsiGoodsGrp: TDataSource
    DataSet = dsNsiGoodsGrp
    Left = 64
    Top = 64
  end
  object dsSourceGrp: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    GRP_ID,'
      '    F_PARENT,'
      '    F_NAME'
      'FROM'
      '    SP_T_NSI_GOODS_GRP_S ')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 144
    Top = 48
    object dsSourceGrpGRP_ID: TFIBBCDField
      FieldName = 'GRP_ID'
      Size = 0
    end
    object dsSourceGrpF_PARENT: TFIBBCDField
      FieldName = 'F_PARENT'
      Size = 0
    end
    object dsSourceGrpF_NAME: TFIBStringField
      FieldName = 'F_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object SrSourceGrp: TDataSource
    DataSet = dsSourceGrp
    Left = 152
    Top = 56
  end
  object procSetGrpAuto: TpFIBStoredProc
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    SQL.Strings = (
      
        'EXECUTE PROCEDURE PR_SET_AUTO_NSI_GOODS_GRP (?P_NSI_GOODS_GRP, ?' +
        'P_OVER)')
    StoredProcName = 'PR_SET_AUTO_NSI_GOODS_GRP'
    Left = 200
    Top = 224
  end
end
