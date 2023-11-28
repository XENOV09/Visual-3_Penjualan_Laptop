program Penjualan_Laptop;

uses
  Forms,
  FrLogin in 'FrLogin.pas' {FLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFLogin, FLogin);
  Application.Run;
end.
