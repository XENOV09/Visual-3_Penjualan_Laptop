unit FrUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, frxClass, frxDBSet, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TFUser = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ZCon: TZConnection;
    ZQ: TZQuery;
    DS1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    DBGrid1: TDBGrid;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUser: TFUser;

implementation

{$R *.dfm}

procedure TFUser.DBGrid1CellClick(Column: TColumn);
var
  id_user: string;
  username	: string;
  password: string;

begin
id_user := ZQ.Fields[0].AsString;

  // Mendapatkan nilai dari kolom yang dipilih
  id_user := ZQ.FieldByName('id_user').AsString;
  username := ZQ.FieldByName('username').AsString;
  password := ZQ.FieldByName('password').AsString;


  // Menampilkan nilai ke dalam TEdit atau TComboBox
  Edit1.Text := id_user;
  Edit2.Text := username;
  Edit3.Text := password;
end;

procedure TFUser.Button1Click(Sender: TObject);
begin
ZQ.SQL.Clear;
  ZQ.SQL.Add ('insert into user values("'+Edit1.Text+'", "'+Edit2.Text+'", "'+Edit3.Text+'")');
  ZQ.ExecSQL;

  ZQ.SQL.Clear;
  ZQ.SQL.Add('select * from user');
  ZQ.Open;
  Showmessage('DATA BERHASIL DI SIMPAN..');
end;

procedure TFUser.Button3Click(Sender: TObject);
begin
  ZQ.SQL.Clear;
  ZQ.SQL.Add('delete from user where id_user="'+Edit1.Text+'"');
  ZQ.ExecSQL;

  ZQ.SQL.Clear;
  ZQ.SQL.Add('select * from user');
  ZQ.Open;
  ShowMessage('DATA BERHASIL DIHAPUS..');
end;

procedure TFUser.Button2Click(Sender: TObject);
begin
ZQ.SQL.Clear;
ZQ.SQL.Add('UPDATE user SET id_user="' + Edit1.Text + '", username="' + Edit2.Text + '", password="' + Edit3.Text + '" WHERE id_user="' + Edit1.Text + '"');
ZQ.ExecSQL;

ZQ.SQL.Clear;
ZQ.SQL.Add('SELECT * FROM user');
ZQ.Open;
ShowMessage('DATA BERHASIL DI EDIT..');

end;

procedure TFUser.Button4Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
