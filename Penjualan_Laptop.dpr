program Penjualan_Laptop;

uses
  Forms,
  FrLogin in 'FrLogin.pas' {FLogin},
  FrUtama in 'FrUtama.pas' {FUtama},
  FrSupplier in 'FrSupplier.pas' {FSupplier},
  FrKaryawan in 'FrKaryawan.pas' {FKaryawan},
  FrUser in 'FrUser.pas' {FUser},
  FrPelanggan in 'FrPelanggan.pas' {FPelanggan},
  FrLaptop in 'FrLaptop.pas' {FLaptop},
  FrTransaksi in 'FrTransaksi.pas' {FTransaksi};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFUtama, FUtama);
  Application.CreateForm(TFKaryawan, FKaryawan);
  Application.CreateForm(TFSupplier, FSupplier);
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TFUser, FUser);
  Application.CreateForm(TFPelanggan, FPelanggan);
  Application.CreateForm(TFLaptop, FLaptop);
  Application.CreateForm(TFTransaksi, FTransaksi);
  Application.Run;
end.
