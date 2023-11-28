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
    procedure Supplier1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUtama: TFUtama;

implementation

uses FrSupplier;

{$R *.dfm}

procedure TFUtama.Supplier1Click(Sender: TObject);
begin
FSupplier.showmodal;
end;

end.
