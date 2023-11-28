object FLaptop: TFLaptop
  Left = 232
  Top = 157
  Width = 942
  Height = 382
  Caption = 'FLaptop'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 47
    Height = 13
    Caption = 'ID Laptop'
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 52
    Height = 13
    Caption = 'ID Supplier'
  end
  object Label3: TLabel
    Left = 16
    Top = 80
    Width = 63
    Height = 13
    Caption = 'Nama Laptop'
  end
  object Label4: TLabel
    Left = 16
    Top = 112
    Width = 65
    Height = 13
    Caption = 'Harga Laptop'
  end
  object Label5: TLabel
    Left = 16
    Top = 144
    Width = 21
    Height = 13
    Caption = 'Stok'
  end
  object Edit1: TEdit
    Left = 112
    Top = 16
    Width = 193
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 112
    Top = 80
    Width = 193
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 112
    Top = 112
    Width = 193
    Height = 21
    TabOrder = 2
  end
  object Cmb1: TComboBox
    Left = 112
    Top = 48
    Width = 193
    Height = 21
    ItemHeight = 13
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 112
    Top = 144
    Width = 193
    Height = 21
    TabOrder = 4
  end
  object Button1: TButton
    Left = 16
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 104
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 192
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 280
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 8
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 392
    Top = 8
    Width = 481
    Height = 169
    DataSource = DS1
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ZCon: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 0
    Database = 'visual3_penjualan_laptop'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\Novriyan09\Documents\Visual 3\Penjualan Laptop\libmysql' +
      '.dll'
    Left = 88
    Top = 224
  end
  object ZQ1: TZQuery
    Connection = ZCon
    Active = True
    SQL.Strings = (
      'select * from laptop')
    Params = <>
    Left = 24
    Top = 224
  end
  object DS1: TDataSource
    DataSet = ZQ1
    Left = 152
    Top = 224
  end
  object ZQ2: TZQuery
    Connection = ZCon
    Active = True
    SQL.Strings = (
      'select * from supplier')
    Params = <>
    Left = 24
    Top = 280
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_laptop=id_laptop'
      'id_supplier=id_supplier'
      'nm_laptop=nm_laptop'
      'hrg_laptop=hrg_laptop'
      'stok=stok')
    DataSet = ZQ1
    BCDToCurrency = False
    Left = 152
    Top = 280
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45258.745135358800000000
    ReportOptions.LastChange = 45258.833090451400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 88
    Top = 280
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Description = 'as'
        Height = 64.252010000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 15.118120000000000000
          Width = 714.331170000000000000
          Height = 64.252010000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -48
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'LAPORAN DATA LAPTOP')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 105.826840000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'ID LAPTOP')
        end
        object Memo3: TfrxMemoView
          Left = 79.370130000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'ID SUPPLIER')
        end
        object Memo4: TfrxMemoView
          Left = 166.299320000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'NAMA LAPTOP')
        end
        object Memo5: TfrxMemoView
          Left = 309.921460000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'HARGA')
        end
        object Memo6: TfrxMemoView
          Left = 472.441250000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'STOK')
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 185.196970000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1id_karyawan: TfrxMemoView
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_laptop'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."id_laptop"]')
          ParentFont = False
        end
        object frxDBDataset1id_user: TfrxMemoView
          Left = 79.370130000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_supplier'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."id_supplier"]')
          ParentFont = False
        end
        object frxDBDataset1nik: TfrxMemoView
          Left = 166.299320000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nm_laptop'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."nm_laptop"]')
          ParentFont = False
        end
        object frxDBDataset1nama: TfrxMemoView
          Left = 309.921460000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'hrg_laptop'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."hrg_laptop"]')
          ParentFont = False
        end
        object frxDBDataset1jk: TfrxMemoView
          Left = 472.441250000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'stok'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."stok"]')
          ParentFont = False
        end
      end
    end
  end
end
