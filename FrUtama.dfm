object FUtama: TFUtama
  Left = 192
  Top = 125
  Width = 1044
  Height = 540
  Caption = 'FUtama'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 16
    Top = 16
    object K1: TMenuItem
      Caption = 'Menu'
      object Supplier1: TMenuItem
        Caption = 'Supplier'
        OnClick = Supplier1Click
      end
    end
  end
end
