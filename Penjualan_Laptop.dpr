program Penjualan_Laptop;

uses
  Forms,
  FrLogin in 'FrLogin.pas' {FLogin},
  FrUtama in 'FrUtama.pas' {FUtama},
  FrSupplier in 'FrSupplier.pas' {FSupplier},
  FrKaryawan in 'FrKaryawan.pas' {FKaryawan};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFKaryawan, FKaryawan);
  Application.CreateForm(TFUtama, FUtama);
  Application.CreateForm(TFSupplier, FSupplier);
  Application.CreateForm(TFLogin, FLogin);
  Application.Run;
end.
