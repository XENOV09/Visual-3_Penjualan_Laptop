object FKaryawan: TFKaryawan
  Left = 245
  Top = 169
  Width = 1044
  Height = 540
  Caption = 'FKaryawan'
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
    Left = 8
    Top = 16
    Width = 62
    Height = 13
    Caption = 'ID Karyawan'
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 36
    Height = 13
    Caption = 'ID User'
  end
  object Label3: TLabel
    Left = 8
    Top = 80
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Label4: TLabel
    Left = 8
    Top = 112
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label5: TLabel
    Left = 8
    Top = 144
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object Label6: TLabel
    Left = 8
    Top = 176
    Width = 64
    Height = 13
    Caption = 'Tanggal Lahir'
  end
  object Label7: TLabel
    Left = 8
    Top = 208
    Width = 62
    Height = 13
    Caption = 'Tempat Lahir'
  end
  object Label8: TLabel
    Left = 8
    Top = 240
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label9: TLabel
    Left = 8
    Top = 272
    Width = 20
    Height = 13
    Caption = 'Telp'
  end
  object Label10: TLabel
    Left = 8
    Top = 304
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 104
    Top = 176
    Width = 193
    Height = 21
    Date = 45258.694700960640000000
    Time = 45258.694700960640000000
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 104
    Top = 16
    Width = 193
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 104
    Top = 80
    Width = 193
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 104
    Top = 112
    Width = 193
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 104
    Top = 208
    Width = 193
    Height = 21
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 104
    Top = 240
    Width = 193
    Height = 21
    TabOrder = 5
  end
  object Edit6: TEdit
    Left = 104
    Top = 272
    Width = 193
    Height = 21
    TabOrder = 6
  end
  object Cmb1: TComboBox
    Left = 104
    Top = 48
    Width = 193
    Height = 21
    ItemHeight = 13
    TabOrder = 7
  end
  object Cmb2: TComboBox
    Left = 104
    Top = 144
    Width = 193
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Items.Strings = (
      'L'
      'P')
  end
  object Cmb3: TComboBox
    Left = 104
    Top = 304
    Width = 193
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Items.Strings = (
      'Aktif'
      'Inaktif')
  end
  object Button1: TButton
    Left = 8
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 10
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 96
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 11
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 184
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 12
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 272
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 13
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 384
    Top = 16
    Width = 625
    Height = 313
    DataSource = DS1
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
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
    Left = 80
    Top = 376
  end
  object ZQ1: TZQuery
    Connection = ZCon
    Active = True
    SQL.Strings = (
      'select * from karyawan')
    Params = <>
    Left = 16
    Top = 376
  end
  object DS1: TDataSource
    DataSet = ZQ1
    Left = 144
    Top = 376
  end
  object ZQ2: TZQuery
    Connection = ZCon
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 16
    Top = 432
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_karyawan=id_karyawan'
      'id_user=id_user'
      'nik=nik'
      'nama=nama'
      'jk=jk'
      'tgl_lahir=tgl_lahir'
      'tmpt_lahir=tmpt_lahir'
      'alamat=alamat'
      'telp=telp'
      'status=status')
    DataSet = ZQ1
    BCDToCurrency = False
    Left = 144
    Top = 432
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
    ReportOptions.LastChange = 45258.754004629600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 80
    Top = 432
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
            'LAPORAN DATA KARYAWAN')
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
            'ID Karyawan')
        end
        object Memo3: TfrxMemoView
          Left = 79.370130000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'ID User')
        end
        object Memo4: TfrxMemoView
          Left = 154.960730000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'NIK')
        end
        object Memo5: TfrxMemoView
          Left = 230.551330000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'NAMA')
        end
        object Memo6: TfrxMemoView
          Left = 464.882190000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Jenis Kelamin')
        end
        object Memo7: TfrxMemoView
          Left = 563.149970000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Tanggal Lahir')
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 185.196970000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1id_karyawan: TfrxMemoView
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_karyawan'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."id_karyawan"]')
        end
        object frxDBDataset1id_user: TfrxMemoView
          Left = 79.370130000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_user'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."id_user"]')
        end
        object frxDBDataset1nik: TfrxMemoView
          Left = 158.740260000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nik'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."nik"]')
        end
        object frxDBDataset1nama: TfrxMemoView
          Left = 238.110390000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."nama"]')
        end
        object frxDBDataset1jk: TfrxMemoView
          Left = 464.882190000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jk'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."jk"]')
        end
        object frxDBDataset1tgl_lahir: TfrxMemoView
          Left = 563.149970000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tgl_lahir'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."tgl_lahir"]')
        end
      end
    end
  end
end
