program Penjualan_Laptop;

uses
  Forms,
  FrLogin in 'FrLogin.pas' {FLogin},
  FrUtama in 'FrUtama.pas' {FUtama},
  FrSupplier in 'FrSupplier.pas' {FSupplier};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFSupplier, FSupplier);
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TFUtama, FUtama);
  Application.Run;
end.
