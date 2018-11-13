inherited FrmCalcPrice: TFrmCalcPrice
  BorderStyle = bsDialog
  Caption = #1056#1072#1089#1095#1077#1090' '#1094#1077#1085
  ClientHeight = 130
  ClientWidth = 240
  ExplicitWidth = 246
  ExplicitHeight = 155
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 111
    Width = 240
    ExplicitTop = 111
    ExplicitWidth = 240
  end
  inherited Panel3: TPanel
    Width = 240
    Height = 111
    ExplicitWidth = 240
    ExplicitHeight = 111
    inherited RzToolbar: TRzToolbar
      Width = 238
      Height = 54
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 238
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
        BtnExecute)
      inherited BtnCancel: TRzToolButton
        Left = 4
        Top = 27
        ExplicitLeft = 4
        ExplicitTop = 27
      end
      inherited BtnExecute: TRzToolButton
        Left = 29
        Top = 27
        ExplicitLeft = 29
        ExplicitTop = 27
      end
      inherited BtnView: TRzToolButton
        Visible = False
      end
    end
    object EdPriceID: TRzDBLookupComboBox
      Left = 10
      Top = 52
      Width = 220
      Height = 21
      DropDownRows = 5
      KeyField = 'f_id'
      ListField = 'f_name'
      ListSource = srPriceSource
      TabOrder = 1
      Visible = False
    end
    object EdStartDate: TRzDateTimeEdit
      Left = 105
      Top = 79
      Width = 121
      Height = 21
      EditType = etDate
      TabOrder = 2
    end
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dsPriceSource: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_NAME,'
      '    F_PARENT_OBJECT,'
      '    F_FORMULA'
      'FROM'
      '    SP_T_NSI_PRICE_S ')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 40
    Top = 72
    object dsPriceSourceF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
      RoundByScale = True
    end
    object dsPriceSourceF_NAME: TFIBStringField
      FieldName = 'F_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsPriceSourceF_PARENT_OBJECT: TFIBBCDField
      FieldName = 'F_PARENT_OBJECT'
      Size = 0
      RoundByScale = True
    end
    object dsPriceSourceF_FORMULA: TFIBStringField
      FieldName = 'F_FORMULA'
      Size = 255
      EmptyStrToNull = True
    end
  end
  object srPriceSource: TDataSource
    DataSet = dsPriceSource
    Left = 56
    Top = 80
  end
end
