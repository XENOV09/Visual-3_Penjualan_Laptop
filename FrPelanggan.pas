unit FrPelanggan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frxClass, frxDBSet, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Grids,
  DBGrids;

type
  TFPelanggan = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Cmb1: TComboBox;
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
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPelanggan: TFPelanggan;

implementation

{$R *.dfm}

procedure TFPelanggan.Button1Click(Sender: TObject);
begin
ZQ.SQL.Clear;
  ZQ.SQL.Add ('insert into pelanggan values("'+Edit1.Text+'", "'+Edit2.Text+'", "'+Cmb1.Text+'", "'+Edit3.Text+'", "'+Edit4.Text+'")');
  ZQ.ExecSQL;

  ZQ.SQL.Clear;
  ZQ.SQL.Add('select * from pelanggan');
  ZQ.Open;
  Showmessage('DATA BERHASIL DI SIMPAN..');
end;

procedure TFPelanggan.DBGrid1CellClick(Column: TColumn);
var
  id_pelanggan: string;
  nm_pelanggan	: string;
  jk: string;
  telp: string;
  alamat: string;
begin
id_pelanggan := ZQ.Fields[0].AsString;

  // Mendapatkan nilai dari kolom yang dipilih
  id_pelanggan := ZQ.FieldByName('id_pelanggan').AsString;
  nm_pelanggan := ZQ.FieldByName('nm_pelanggan').AsString;
  jk := ZQ.FieldByName('jk').AsString;
  telp := ZQ.FieldByName('no_telp').AsString;
  alamat := ZQ.FieldByName('alamat').AsString;

  // Menampilkan nilai ke dalam TEdit atau TComboBox
  Edit1.Text := id_pelanggan;
  Edit2.Text := nm_pelanggan;
  Cmb1.Text := jk;
  Edit4.Text := alamat;
  Edit3.Text := telp;
end;

procedure TFPelanggan.Button2Click(Sender: TObject);
begin
ZQ.SQL.Clear;
  ZQ.SQL.Add('update pelanggan set id_pelanggan="'+Edit1.Text+'", nm_pelanggan="'+Edit2.Text+'", jk="'+Cmb1.Text+'", no_telp="'+Edit3.Text+'", alamat="'+Edit4.Text+'"  where id_pelanggan="'+Edit1.Text+'"');
  ZQ.ExecSQL;

  ZQ.SQL.Clear;
  ZQ.SQL.Add('select * from pelanggan');
  ZQ.Open;
  Showmessage('DATA BERHASIL DI EDIT..');
end;

procedure TFPelanggan.Button3Click(Sender: TObject);
begin
  ZQ.SQL.Clear;
  ZQ.SQL.Add('delete from pelanggan where id_pelanggan="'+Edit1.Text+'"');
  ZQ.ExecSQL;

  ZQ.SQL.Clear;
  ZQ.SQL.Add('select * from pelanggan');
  ZQ.Open;
  ShowMessage('DATA BERHASIL DIHAPUS..');
end;

procedure TFPelanggan.Button4Click(Sender: TObject);
begin
 frxReport1.ShowReport();
end;

end.
