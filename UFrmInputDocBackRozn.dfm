inherited FrmInputDocBackRozn: TFrmInputDocBackRozn
  Caption = #1056#1086#1079#1085#1080#1095#1085#1099#1081' '#1074#1086#1079#1074#1088#1072#1090
  ClientHeight = 553
  ExplicitHeight = 591
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 534
    ExplicitTop = 534
  end
  inherited Panel3: TPanel
    Height = 534
    ExplicitHeight = 534
    inherited RzToolbar: TRzToolbar
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
    end
    inherited RzPanel1: TRzPanel
      Visible = False
      inherited RzLabel5: TRzLabel
        Visible = False
      end
      inherited RzLabel6: TRzLabel
        Visible = False
      end
      inherited RzDBLookupComboBox1: TRzDBLookupComboBox
        Visible = False
      end
      inherited RzDBButtonEdit2: TRzDBButtonEdit
        Visible = False
      end
      inherited RzDBButtonEdit3: TRzDBButtonEdit
        Visible = False
      end
      inherited RzDBButtonEdit1: TRzDBButtonEdit
        Visible = False
      end
      inherited BtnSetPrice: TButton
        Visible = False
      end
    end
    inherited Panel1: TPanel
      Top = 181
      Height = 269
      ExplicitTop = 181
      ExplicitHeight = 269
      inherited Splitter1: TSplitter
        Height = 267
        ExplicitHeight = 271
      end
      inherited cxGrid1: TcxGrid
        Height = 267
        ExplicitHeight = 271
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          Styles.Background = nil
          Styles.Content = nil
          Styles.ContentEven = nil
          Styles.ContentOdd = nil
          Styles.FilterBox = nil
          Styles.IncSearch = nil
          Styles.Footer = nil
          Styles.Group = nil
          Styles.GroupByBox = nil
          Styles.Header = nil
          Styles.Inactive = nil
          Styles.Indicator = nil
          Styles.Preview = nil
          Styles.Selection = nil
          inherited cxGrid1DBTableView1F_OLD_PRICE_VAL: TcxGridDBColumn
            Visible = False
          end
          inherited cxGrid1DBTableView1F_PRICE: TcxGridDBColumn
            Options.Editing = False
          end
          inherited cxGrid1DBTableView1F_ED_IZM_SHORT_NAME: TcxGridDBColumn
            Visible = False
          end
          inherited cxGrid1DBTableView1F_PICTURE: TcxGridDBColumn
            Visible = False
          end
          inherited cxGrid1DBTableView1F_ICON: TcxGridDBColumn
            Visible = False
            IsCaptionAssigned = True
          end
          inherited cxGrid1DBTableView1F_SKLAD_OST: TcxGridDBColumn
            Visible = False
          end
        end
      end
      inherited cxDBImage1: TcxDBImage
        ExplicitHeight = 267
        Height = 267
      end
    end
    object RzPanel2: TRzPanel
      Left = 1
      Top = 102
      Width = 876
      Height = 79
      Align = alTop
      Color = clGradientActiveCaption
      TabOrder = 3
      ExplicitTop = 98
      object RzClockStatus1: TRzClockStatus
        Left = 8
        Top = 6
        Width = 241
        Height = 27
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        ParentFont = False
        Format = 'ddddd tt'
      end
      object RzDBLabel2: TRzDBLabel
        Left = 255
        Top = 6
        Width = 129
        Height = 27
        Alignment = taRightJustify
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        BorderInner = fsFlatRounded
        DataField = 'F_NUMBER'
        DataSource = srDocHead
      end
      object PrintKKM: TRzCheckBox
        Left = 390
        Top = 6
        Width = 161
        Height = 31
        AlignmentVertical = avCenter
        Caption = #1055#1077#1095#1072#1090#1072#1090#1100' '#1095#1077#1082
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbUnchecked
        TabOrder = 0
      end
      object RzButton1: TRzButton
        Left = 8
        Top = 38
        Width = 152
        Height = 34
        ModalResult = 1
        Caption = #1053#1072#1081#1090#1080' '#1087#1088#1086#1076#1072#1078#1091
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = RzButton1Click
      end
    end
    object RzPanel3: TRzPanel
      Left = 1
      Top = 450
      Width = 876
      Height = 83
      Align = alBottom
      Color = clGradientActiveCaption
      TabOrder = 4
      object RzLabel7: TRzLabel
        Left = 80
        Top = 4
        Width = 169
        Height = 31
        Alignment = taCenter
        AutoSize = False
        Caption = #1057#1091#1084#1084#1072
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        BorderInner = fsGroove
      end
      object RzDBLabel1: TRzDBLabel
        Left = 80
        Top = 34
        Width = 169
        Height = 35
        Alignment = taRightJustify
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        BorderInner = fsGroove
        DataField = 'F_DOC_SUM'
        DataSource = srDocHead
      end
      object RzLabel8: TRzLabel
        Left = 8
        Top = 34
        Width = 73
        Height = 35
        AutoSize = False
        Caption = #1048#1090#1086#1075#1086
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        BorderInner = fsGroove
      end
      object BtnClose: TRzButton
        Left = 282
        Top = 34
        Width = 142
        Height = 35
        ModalResult = 1
        Caption = #1047#1072#1082#1088#1099#1090#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BtnCloseClick
      end
    end
  end
  inherited dsDocStrings: TpFIBDataSet
    AfterOpen = dsDocStringsAfterOpen
  end
  inherited frxReport2: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object pFibProcCopyDoc: TpFIBStoredProc
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    SQL.Strings = (
      'EXECUTE PROCEDURE SP_COPY_OUT2IN (?P_IN, ?P_OUT)')
    StoredProcName = 'SP_COPY_OUT2IN'
    Left = 632
    Top = 288
  end
end
