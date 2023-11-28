object FTransaksi: TFTransaksi
  Left = 73
  Top = 175
  Width = 1044
  Height = 540
  Caption = 'FTransaksi'
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
    Width = 59
    Height = 13
    Caption = 'ID Transaksi'
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 47
    Height = 13
    Caption = 'ID Laptop'
  end
  object Label3: TLabel
    Left = 16
    Top = 80
    Width = 64
    Height = 13
    Caption = 'ID Pelanggan'
  end
  object Label4: TLabel
    Left = 16
    Top = 112
    Width = 62
    Height = 13
    Caption = 'ID Karyawan'
  end
  object Label5: TLabel
    Left = 16
    Top = 144
    Width = 86
    Height = 13
    Caption = 'Tanggal Transaksi'
  end
  object Label6: TLabel
    Left = 16
    Top = 176
    Width = 56
    Height = 13
    Caption = 'Keterangan'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 120
    Top = 144
    Width = 186
    Height = 21
    Date = 45258.845804664350000000
    Time = 45258.845804664350000000
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 120
    Top = 16
    Width = 185
    Height = 21
    TabOrder = 1
  end
  object c1: TComboBox
    Left = 120
    Top = 48
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 2
  end
  object c2: TComboBox
    Left = 120
    Top = 80
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 3
  end
  object c3: TComboBox
    Left = 120
    Top = 112
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 4
  end
  object Button1: TButton
    Left = 16
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 104
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 192
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 280
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 8
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
    OnCellClick = DBGrid1CellClick
  end
  object Edit2: TEdit
    Left = 120
    Top = 176
    Width = 185
    Height = 21
    TabOrder = 10
  end
  object ZQ1: TZQuery
    Connection = ZCon
    Active = True
    SQL.Strings = (
      'select * from transaksi')
    Params = <>
    Left = 16
    Top = 256
  end
  object ZQ2: TZQuery
    Connection = ZCon
    Active = True
    SQL.Strings = (
      'select * from laptop')
    Params = <>
    Left = 16
    Top = 312
  end
  object ZQ3: TZQuery
    Connection = ZCon
    Active = True
    SQL.Strings = (
      'select * from pelanggan')
    Params = <>
    Left = 64
    Top = 256
  end
  object ZQ4: TZQuery
    Connection = ZCon
    Active = True
    SQL.Strings = (
      'select * from karyawan')
    Params = <>
    Left = 64
    Top = 312
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
    Left = 112
    Top = 256
  end
  object DS1: TDataSource
    DataSet = ZQ1
    Left = 160
    Top = 256
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_transaksi=id_transaksi'
      'id_laptop=id_laptop'
      'id_pelanggan=id_pelanggan'
      'id_karyawan=id_karyawan'
      'tanggal=tanggal'
      'keterangan=keterangan')
    DataSet = ZQ1
    BCDToCurrency = False
    Left = 160
    Top = 312
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
    ReportOptions.LastChange = 45258.872789965300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 112
    Top = 312
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
            'LAPORAN TRANSAKSI')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 105.826840000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'ID TRANSAKSI')
        end
        object Memo3: TfrxMemoView
          Left = 117.165430000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'ID LAPTOP')
        end
        object Memo4: TfrxMemoView
          Left = 204.094620000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'ID PELANGGAN')
        end
        object Memo5: TfrxMemoView
          Left = 313.700990000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'ID KARYAWAN')
        end
        object Memo6: TfrxMemoView
          Left = 415.748300000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'TANGGAL')
        end
        object Memo7: TfrxMemoView
          Left = 502.677490000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'KETERANGAN')
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
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_transaksi'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."id_transaksi"]')
          ParentFont = False
        end
        object frxDBDataset1id_user: TfrxMemoView
          Left = 117.165430000000000000
          Width = 86.929190000000000000
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
        object frxDBDataset1nik: TfrxMemoView
          Left = 204.094620000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_pelanggan'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."id_pelanggan"]')
          ParentFont = False
        end
        object frxDBDataset1nama: TfrxMemoView
          Left = 313.700990000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_karyawan'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."id_karyawan"]')
          ParentFont = False
        end
        object frxDBDataset1jk: TfrxMemoView
          Left = 415.748300000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tanggal'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."tanggal"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 502.677490000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'keterangan'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."keterangan"]')
          ParentFont = False
        end
      end
    end
  end
end
