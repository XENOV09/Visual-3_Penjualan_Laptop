unit FrUtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TFUtama = class(TForm)
    MainMenu1: TMainMenu;
    K1: TMenuItem;
    Supplier1: TMenuItem;
    Karyawan1: TMenuItem;
    User1: TMenuItem;
    procedure Supplier1Click(Sender: TObject);
    procedure Karyawan1Click(Sender: TObject);
    procedure User1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUtama: TFUtama;

implementation

uses FrSupplier, FrKaryawan, FrUser;

{$R *.dfm}

procedure TFUtama.Supplier1Click(Sender: TObject);
begin
FSupplier.showmodal;
end;

procedure TFUtama.Karyawan1Click(Sender: TObject);
begin
FKaryawan.showmodal;
end;

procedure TFUtama.User1Click(Sender: TObject);
begin
FUser.showmodal;
end;

end.
