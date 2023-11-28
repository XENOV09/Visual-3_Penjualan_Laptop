object FSupplier: TFSupplier
  Left = 361
  Top = 187
  Width = 1044
  Height = 540
  Caption = 'FSupplier'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 52
    Height = 13
    Caption = 'ID Supplier'
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 68
    Height = 13
    Caption = 'Nama Supplier'
  end
  object Label3: TLabel
    Left = 16
    Top = 88
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label4: TLabel
    Left = 16
    Top = 120
    Width = 32
    Height = 13
    Caption = 'Telpon'
  end
  object id: TEdit
    Left = 120
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object nama: TEdit
    Left = 120
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object alamat: TEdit
    Left = 120
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object telp: TEdit
    Left = 120
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 16
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 104
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 192
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 280
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 7
  end
  object DBGrid1: TDBGrid
    Left = 376
    Top = 16
    Width = 393
    Height = 169
    DataSource = DS1
    TabOrder = 8
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
    Left = 24
    Top = 200
  end
  object ZQ: TZQuery
    Connection = ZCon
    Active = True
    SQL.Strings = (
      'select * from supplier')
    Params = <>
    Left = 72
    Top = 200
  end
  object DS1: TDataSource
    DataSet = ZQ
    Left = 120
    Top = 200
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 24
    Top = 248
  end
end
