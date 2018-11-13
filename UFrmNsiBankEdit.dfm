inherited FrmNsiBankEdit: TFrmNsiBankEdit
  BorderStyle = bsDialog
  Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1073#1072#1085#1082#1072
  ClientHeight = 208
  ClientWidth = 371
  ExplicitWidth = 377
  ExplicitHeight = 233
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 189
    Width = 371
    ExplicitTop = 189
    ExplicitWidth = 371
  end
  inherited Panel3: TPanel
    Width = 371
    Height = 189
    ExplicitWidth = 371
    ExplicitHeight = 189
    object RzLabel1: TRzLabel [0]
      Left = 7
      Top = 39
      Width = 48
      Height = 13
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077
    end
    object RzLabel2: TRzLabel [1]
      Left = 8
      Top = 74
      Width = 67
      Height = 13
      Caption = #1070#1088'.'#1085#1072#1079#1074#1072#1085#1080#1077
    end
    object RzLabel3: TRzLabel [2]
      Left = 8
      Top = 110
      Width = 50
      Height = 13
      Caption = #1070#1088'.'#1072#1076#1088#1077#1089
    end
    object RzLabel4: TRzLabel [3]
      Left = 8
      Top = 137
      Width = 21
      Height = 13
      Caption = #1048#1053#1053
    end
    object RzLabel5: TRzLabel [4]
      Left = 90
      Top = 137
      Width = 21
      Height = 13
      Caption = #1050#1055#1055
    end
    object RzLabel6: TRzLabel [5]
      Left = 158
      Top = 137
      Width = 51
      Height = 13
      Caption = #1082#1086#1088#1088'.'#1089#1095#1077#1090
    end
    object RzLabel7: TRzLabel [6]
      Left = 260
      Top = 137
      Width = 18
      Height = 13
      Caption = #1041#1080#1082
    end
    inherited RzToolbar: TRzToolbar
      Width = 369
      ExplicitWidth = 369
      ToolbarControls = (
        BtnNew
        BtnEdit
        BtnOpen
        BtnRefresh
        BtnFind
        BtnPrint
        BtnOK
        BtnCancel
        BtnExecute)
    end
    object EdName: TRzDBEdit
      Left = 79
      Top = 35
      Width = 280
      Height = 21
      DataSource = srNsiBakEdit
      DataField = 'F_NAME'
      TabOrder = 1
    end
    object Ed_U_NAME: TRzDBEdit
      Left = 79
      Top = 71
      Width = 280
      Height = 21
      DataSource = srNsiBakEdit
      DataField = 'F_U_NAME'
      TabOrder = 2
    end
    object RzDBEdit1: TRzDBEdit
      Left = 79
      Top = 107
      Width = 280
      Height = 21
      DataSource = srNsiBakEdit
      DataField = 'F_U_ADDRES'
      TabOrder = 3
    end
    object RzDBEdit2: TRzDBEdit
      Left = 8
      Top = 156
      Width = 75
      Height = 21
      DataSource = srNsiBakEdit
      DataField = 'F_INN'
      TabOrder = 4
    end
    object RzDBEdit3: TRzDBEdit
      Left = 90
      Top = 156
      Width = 62
      Height = 21
      DataSource = srNsiBakEdit
      DataField = 'F_KPP'
      TabOrder = 5
    end
    object RzDBEdit4: TRzDBEdit
      Left = 158
      Top = 156
      Width = 99
      Height = 21
      DataSource = srNsiBakEdit
      DataField = 'F_K_SCH'
      TabOrder = 6
    end
    object RzDBEdit5: TRzDBEdit
      Left = 260
      Top = 156
      Width = 99
      Height = 21
      DataSource = srNsiBakEdit
      DataField = 'F_BIK'
      TabOrder = 7
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dsNsiBakEdit: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'EXECUTE PROCEDURE SP_T_NSI_BANK_U(:f_id, :f_name, :f_u_name, :f_' +
        'u_addres, :f_inn, :f_kpp, :f_k_sch, :f_bik)')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_NAME,'
      '    F_U_NAME,'
      '    F_U_ADDRES,'
      '    F_INN,'
      '    F_KPP,'
      '    F_K_SCH,'
      '    F_bik'
      'FROM'
      '    SP_T_NSI_BANK_GET(:F_BANK_ID) ')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 288
    Top = 80
    object dsNsiBakEditF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
      RoundByScale = True
    end
    object dsNsiBakEditF_NAME: TFIBStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077
      FieldName = 'F_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsNsiBakEditF_U_NAME: TFIBStringField
      DisplayLabel = #1070#1088'.'#1053#1072#1079#1074#1072#1085#1080#1077
      FieldName = 'F_U_NAME'
      Size = 255
      EmptyStrToNull = True
    end
    object dsNsiBakEditF_U_ADDRES: TFIBStringField
      DisplayLabel = #1070#1088'.'#1072#1076#1088#1077#1089
      FieldName = 'F_U_ADDRES'
      Size = 255
      EmptyStrToNull = True
    end
    object dsNsiBakEditF_INN: TFIBStringField
      DisplayLabel = #1048#1053#1053
      FieldName = 'F_INN'
      EmptyStrToNull = True
    end
    object dsNsiBakEditF_KPP: TFIBStringField
      DisplayLabel = #1050#1055#1055
      FieldName = 'F_KPP'
      EmptyStrToNull = True
    end
    object dsNsiBakEditF_K_SCH: TFIBStringField
      DisplayLabel = #1050#1086#1088#1088'.'#1089#1095#1077#1090
      FieldName = 'F_K_SCH'
      Size = 60
      EmptyStrToNull = True
    end
    object dsNsiBakEditF_BIK: TFIBStringField
      FieldName = 'F_BIK'
      EmptyStrToNull = True
    end
  end
  object pFIBTransaction: TpFIBTransaction
    DefaultDatabase = DM.pFIBDatabase
    TimeoutAction = TARollback
    Left = 304
    Top = 104
  end
  object srNsiBakEdit: TDataSource
    DataSet = dsNsiBakEdit
    Left = 304
    Top = 72
  end
end
