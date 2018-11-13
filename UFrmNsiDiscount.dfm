inherited FrmNsiDiscount: TFrmNsiDiscount
  BorderStyle = bsDialog
  Caption = #1057#1082#1080#1076#1086#1095#1085#1072#1103' '#1082#1072#1088#1090#1072
  ClientHeight = 173
  ClientWidth = 348
  ExplicitWidth = 354
  ExplicitHeight = 198
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 154
    Width = 348
    ExplicitTop = 154
    ExplicitWidth = 348
    inherited DsFormName: TRzStatusPane
      Caption = 'dsNsiDiscountCard'
    end
  end
  inherited Panel3: TPanel
    Width = 348
    Height = 154
    ExplicitWidth = 348
    ExplicitHeight = 154
    object RzLabel7: TRzLabel [0]
      Left = 5
      Top = 36
      Width = 105
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = #1050#1072#1088#1090#1072' '#8470
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object RzLabel5: TRzLabel [1]
      Left = 5
      Top = 57
      Width = 105
      Height = 31
      Alignment = taCenter
      AutoSize = False
      Caption = #1057#1082#1080#1076#1082#1072
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    inherited RzToolbar: TRzToolbar
      Width = 346
      Height = 54
      ExplicitWidth = 346
      ExplicitHeight = 54
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
      inherited BtnExit: TRzToolButton
        Left = 4
        Top = 27
        ExplicitLeft = 4
        ExplicitTop = 27
      end
      inherited BtnView: TRzToolButton
        Visible = False
      end
    end
    object RzDBEdit2: TRzDBEdit
      Left = 116
      Top = 34
      Width = 121
      Height = 21
      DataSource = srNsiDiscountCard
      DataField = 'F_NUMBER'
      TabOrder = 1
    end
    object RzDBSpinEdit1: TRzDBSpinEdit
      Left = 116
      Top = 61
      Width = 121
      Height = 31
      DataSource = srNsiDiscountCard
      DataField = 'F_DISCOUNT'
      Alignment = taRightJustify
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      AllowKeyEdit = True
      Value = 1.000000000000000000
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dsNsiDiscountCard: TpFIBDataSet
    UpdateSQL.Strings = (
      
        'execute procedure SP_T_NSI_DISCOUNT_CARD_U(:f_card_id,:f_number,' +
        ':f_discount)')
    InsertSQL.Strings = (
      'select '
      'f_number,'
      'f_discount,'
      'f_discount_id as f_card_id'
      'from SP_T_NSI_DISCOUNT_CREATE')
    RefreshSQL.Strings = (
      'select'
      'f_number,'
      'f_discount,'
      'f_card_id'
      'from SP_GET_NSI_DISCOUNT(:f_number)')
    SelectSQL.Strings = (
      'select'
      'f_number,'
      'f_discount,'
      'f_card_id'
      'from SP_GET_NSI_DISCOUNT(:f_number)')
    AutoUpdateOptions.ParamsToFieldsLinks.Strings = (
      'F_NUMBER=F_NUMBER')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Container = DM.DataSetsContainer
    Left = 64
    Top = 88
    object dsNsiDiscountCardF_NUMBER: TFIBStringField
      FieldName = 'F_NUMBER'
      Size = 60
      EmptyStrToNull = True
    end
    object dsNsiDiscountCardF_DISCOUNT: TFIBBCDField
      FieldName = 'F_DISCOUNT'
      Size = 3
      RoundByScale = True
    end
    object dsNsiDiscountCardF_CARD_ID: TFIBBCDField
      FieldName = 'F_CARD_ID'
      Size = 0
      RoundByScale = True
    end
  end
  object srNsiDiscountCard: TDataSource
    DataSet = dsNsiDiscountCard
    Left = 80
    Top = 104
  end
end
