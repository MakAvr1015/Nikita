inherited FrmNsiSkladEdit: TFrmNsiSkladEdit
  BorderStyle = bsDialog
  Caption = #1057#1082#1083#1072#1076
  ClientHeight = 313
  ClientWidth = 418
  ExplicitWidth = 424
  ExplicitHeight = 338
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 294
    Width = 418
    ExplicitTop = 294
    ExplicitWidth = 418
  end
  inherited Panel3: TPanel
    Width = 418
    Height = 294
    ExplicitWidth = 418
    ExplicitHeight = 294
    object RzLabel1: TRzLabel [0]
      Left = 15
      Top = 38
      Width = 48
      Height = 13
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077
    end
    object RzLabel2: TRzLabel [1]
      Left = 15
      Top = 81
      Width = 31
      Height = 13
      Caption = #1040#1076#1088#1077#1089
    end
    object RzLabel3: TRzLabel [2]
      Left = 15
      Top = 125
      Width = 47
      Height = 13
      Caption = #1070#1088'. '#1083#1080#1094#1086
    end
    object RzLabel4: TRzLabel [3]
      Left = 15
      Top = 166
      Width = 119
      Height = 13
      Caption = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090' '#1088#1077#1072#1083#1080#1079#1072#1094#1080#1080
    end
    object RzLabel5: TRzLabel [4]
      Left = 15
      Top = 206
      Width = 139
      Height = 13
      Caption = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090' '#1086#1087#1088#1080#1093#1086#1076#1086#1074#1072#1085#1080#1103
    end
    object RzLabel6: TRzLabel [5]
      Left = 15
      Top = 246
      Width = 111
      Height = 13
      Caption = #1055#1072#1088#1090#1085#1077#1088' '#1076#1083#1103' '#1088#1086#1079#1085#1080#1094#1099
    end
    object RzLabel7: TRzLabel [6]
      Left = 352
      Top = 38
      Width = 44
      Height = 13
      Caption = #1055#1088#1077#1092#1080#1082#1089
    end
    inherited RzToolbar: TRzToolbar
      Width = 416
      ExplicitWidth = 416
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
      inherited BtnView: TRzToolButton
        Visible = False
      end
    end
    object edName: TRzDBEdit
      Left = 15
      Top = 57
      Width = 331
      Height = 21
      DataSource = srEditSklad
      DataField = 'F_NAME'
      TabOrder = 1
    end
    object BtnEdPartner: TRzDBButtonEdit
      Left = 15
      Top = 144
      Width = 386
      Height = 21
      DataSource = srEditSklad
      DataField = 'F_PARTNER_NAME'
      TabOrder = 3
      OnButtonClick = BtnEdPartnerButtonClick
    end
    object EdAddress: TRzDBEdit
      Left = 15
      Top = 100
      Width = 386
      Height = 21
      DataSource = srEditSklad
      DataField = 'F_ADDRES'
      TabOrder = 4
    end
    object BtnEdPrice: TRzDBButtonEdit
      Left = 15
      Top = 184
      Width = 386
      Height = 21
      DataSource = srEditSklad
      DataField = 'F_PRICE_OUT_NAME'
      TabOrder = 5
      OnButtonClick = BtnEdPriceButtonClick
    end
    object BtnEditPriceIn: TRzDBButtonEdit
      Left = 15
      Top = 224
      Width = 386
      Height = 21
      DataSource = srEditSklad
      DataField = 'F_PRICE_IN_NAME'
      TabOrder = 6
      OnButtonClick = BtnEditPriceInButtonClick
    end
    object BtnEditPartnerROzn: TRzDBButtonEdit
      Left = 15
      Top = 265
      Width = 386
      Height = 21
      DataSource = srEditSklad
      DataField = 'f_partner_rozn_name'
      TabOrder = 7
      OnButtonClick = BtnEditPartnerROznButtonClick
    end
    object edPrefix: TRzDBEdit
      Left = 352
      Top = 57
      Width = 49
      Height = 21
      DataSource = srEditSklad
      DataField = 'F_PREFIX'
      TabOrder = 2
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dsEditSklad: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'execute procedure SP_T_NSI_SKLAD_U(:F_ID,:F_NAME,:F_ADDRES,:F_PA' +
        'RTNER,:f_price_in,:f_price_out,:f_partner_rozn,:f_prefix)')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_NAME,'
      '    F_ADDRES,'
      '    F_PRICE_In,'
      '    f_price_in_name,'
      '    F_PRICE_out,'
      '    f_price_out_name,'
      '    F_PARTNER,'
      '    F_PARTNER_NAME,'
      '    f_partner_rozn,'
      '    f_partner_rozn_name,'
      '    f_prefix'
      'FROM'
      '    SP_T_NSI_SKLAD_GET(:SKLAD_ID) ')
    Transaction = pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 320
    Top = 80
    object dsEditSkladF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
      RoundByScale = True
    end
    object dsEditSkladF_NAME: TFIBStringField
      FieldName = 'F_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsEditSkladF_ADDRES: TFIBStringField
      FieldName = 'F_ADDRES'
      Size = 255
      EmptyStrToNull = True
    end
    object dsEditSkladF_PARTNER: TFIBBCDField
      FieldName = 'F_PARTNER'
      Size = 0
      RoundByScale = True
    end
    object dsEditSkladF_PARTNER_NAME: TFIBStringField
      FieldName = 'F_PARTNER_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsEditSkladF_PRICE_IN: TFIBBCDField
      FieldName = 'F_PRICE_IN'
      Size = 0
      RoundByScale = True
    end
    object dsEditSkladF_PRICE_IN_NAME: TFIBStringField
      FieldName = 'F_PRICE_IN_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsEditSkladF_PRICE_OUT: TFIBBCDField
      FieldName = 'F_PRICE_OUT'
      Size = 0
      RoundByScale = True
    end
    object dsEditSkladF_PRICE_OUT_NAME: TFIBStringField
      FieldName = 'F_PRICE_OUT_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsEditSkladf_partner_rozn_name: TStringField
      FieldName = 'f_partner_rozn_name'
      Size = 255
    end
    object dsEditSkladf_partner_rozn: TFIBBCDField
      FieldName = 'f_partner_rozn'
      Size = 0
      RoundByScale = True
    end
    object dsEditSkladF_PREFIX: TFIBStringField
      FieldName = 'F_PREFIX'
      Size = 2
      EmptyStrToNull = True
    end
  end
  object pFIBTransaction: TpFIBTransaction
    DefaultDatabase = DM.pFIBDatabase
    TimeoutAction = TARollback
    Left = 280
    Top = 80
  end
  object srEditSklad: TDataSource
    DataSet = dsEditSklad
    Left = 328
    Top = 88
  end
end
