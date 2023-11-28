unit FrLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFLogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    username: TEdit;
    password: TEdit;
    Button1: TButton;
    Zcon: TZConnection;
    ZQ1: TZQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

{$R *.dfm}

procedure TFLogin.Button1Click(Sender: TObject);
begin
with ZQ1 do begin
SQL.Clear;
SQL.Add('select * from user where username='+QuotedStr(username.Text));
open;
end;

if ZQ1.RecordCount=0
then
Application.MessageBox('Maaf username tidak ada','INFORMASI',MB_OK or MB_ICONINFORMATION)
else
begin
if ZQ1.FieldByName('password').AsString<>password.Text
then
Application.MessageBox('Password salah!','ERROR',MB_OK or MB_ICONERROR)
else
begin
Application.MessageBox('LOGIN BERHASIL','INFORMASI',MB_OK or MB_ICONINFORMATION);
//Menu_utama.Show;
end;
end;
hide;
end;

end.
