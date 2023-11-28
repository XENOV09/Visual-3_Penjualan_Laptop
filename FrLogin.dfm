object FLogin: TFLogin
  Left = 506
  Top = 194
  Width = 302
  Height = 437
  Caption = 'FLogin'
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
    Left = 80
    Top = 16
    Width = 119
    Height = 55
    Caption = 'Login'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 104
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label3: TLabel
    Left = 16
    Top = 136
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object username: TEdit
    Left = 88
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object password: TEdit
    Left = 88
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 88
    Top = 168
    Width = 121
    Height = 25
    Caption = 'Masuk'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Zcon: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'visual3_penjualan_laptop'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\Novriyan09\Documents\Visual 3\Penjualan Laptop\libmysql' +
      '.dll'
    Left = 88
    Top = 208
  end
  object ZQ1: TZQuery
    Connection = Zcon
    Params = <>
    Properties.Strings = (
      'select * from user')
    Left = 176
    Top = 208
  end
end
