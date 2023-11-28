unit FrSupplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, frxClass, frxDBSet, Grids, DBGrids;

type
  TFSupplier = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    id: TEdit;
    nama: TEdit;
    alamat: TEdit;
    telp: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ZCon: TZConnection;
    ZQ: TZQuery;
    DS1: TDataSource;
    DBGrid1: TDBGrid;
    frxDBDataset1: TfrxDBDataset;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSupplier: TFSupplier;

implementation

{$R *.dfm}

procedure TFSupplier.Button1Click(Sender: TObject);
begin
ZQ.SQL.Clear;
  ZQ.SQL.Add ('insert into supplier values("'+id.Text+'", "'+nama.Text+'", "'+alamat.Text+'", "'+telp.Text+'")');
  ZQ.ExecSQL;

  ZQ.SQL.Clear;
  ZQ.SQL.Add('select * from supplier');
  ZQ.Open;
  Showmessage('DATA BERHASIL DI SIMPAN..');
end;

procedure TFSupplier.DBGrid1CellClick(Column: TColumn);
var
  id_supplier: string;
  nm_supplier	: string;
  alamat_supplier: string;
  telpon: string;
begin
id_supplier := ZQ.Fields[0].AsString;

  // Mendapatkan nilai dari kolom yang dipilih
  id_supplier := ZQ.FieldByName('id_supplier').AsString;
  nm_supplier := ZQ.FieldByName('nm_supplier').AsString;
  alamat_supplier := ZQ.FieldByName('alamat').AsString;
  telpon := ZQ.FieldByName('telp').AsString;

  // Menampilkan nilai ke dalam TEdit atau TComboBox
  id.Text := id_supplier;
  nama.Text := nm_supplier;
  alamat.Text := alamat_supplier;
  telp.Text := telpon;
end;

procedure TFSupplier.Button2Click(Sender: TObject);
begin
ZQ.SQL.Clear;
  ZQ.SQL.Add('update supplier set id_supplier="'+id.Text+'", nm_supplier	="'+nama.Text+'", alamat="'+alamat.Text+'", telp="'+telp.Text+'"  where id_supplier="'+id.Text+'"');
  ZQ.ExecSQL;

  ZQ.SQL.Clear;
  ZQ.SQL.Add('select * from supplier');
  ZQ.Open;
  Showmessage('DATA BERHASIL DI EDIT..');
end;

procedure TFSupplier.Button3Click(Sender: TObject);
begin
  ZQ.SQL.Clear;
  ZQ.SQL.Add('delete from supplier where id_supplier="'+id.Text+'"');
  ZQ.ExecSQL;

  ZQ.SQL.Clear;
  ZQ.SQL.Add('select * from supplier');
  ZQ.Open;
  ShowMessage('DATA BERHASIL DIHAPUS..');
end;

end.
