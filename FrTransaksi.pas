unit FrTransaksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, frxClass, frxDBSet, DB,
  ZAbstractConnection, ZConnection, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

type
  TFTransaksi = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    c1: TComboBox;
    c2: TComboBox;
    c3: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ZQ1: TZQuery;
    ZQ2: TZQuery;
    ZQ3: TZQuery;
    ZQ4: TZQuery;
    ZCon: TZConnection;
    DS1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTransaksi: TFTransaksi;

implementation

{$R *.dfm}

procedure TFTransaksi.FormCreate(Sender: TObject);
begin
ZQ2.First;
while not ZQ2.Eof do
begin
  c1.items.add(ZQ2.fieldbyname('id_laptop').asstring);
  ZQ2.Next;
end;
ZQ3.First;
while not ZQ3.Eof do
begin
  c2.Items.Add(ZQ3.FieldByName('id_pelanggan').AsString);
  ZQ3.Next;
end;
ZQ4.First;
while not ZQ4.Eof do
begin
  c3.Items.Add(ZQ4.FieldByName('id_karyawan').AsString);
  ZQ4.Next;
end;
end;

procedure TFTransaksi.Button1Click(Sender: TObject);
begin
ZQ1.SQL.Clear;
  ZQ1.SQL.Add ('insert into transaksi values("'+Edit1.Text+'", "'+c1.Text+'", "'+c2.Text+'", "'+c3.Text+'", "'+FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date)+'", "'+Edit2.Text+'")');
  ZQ1.ExecSQL;

  ZQ1.SQL.Clear;
  ZQ1.SQL.Add('select * from transaksi');
  ZQ1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN..');
end;

procedure TFTransaksi.Button2Click(Sender: TObject);
begin
ZQ1.SQL.Clear;
  ZQ1.SQL.Add('update transaksi set id_transaksi="'+Edit1.Text+'", id_laptop="'+c1.Text+'", id_pelanggan="'+c2.Text+'", id_karyawan="'+c3.Text+'", tanggal="'+FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date)+'", keterangan="'+Edit2.Text+'" where id_transaksi="'+Edit1.Text+'"');
  ZQ1.ExecSQL;

  ZQ1.SQL.Clear;
  ZQ1.SQL.Add('select * from transaksi');
  ZQ1.Open;
  Showmessage('DATA BERHASIL DI EDIT..');
end;

procedure TFTransaksi.Button3Click(Sender: TObject);
begin
  ZQ1.SQL.Clear;
  ZQ1.SQL.Add('delete from transaksi where id_transaksi="'+Edit1.Text+'"');
  ZQ1.ExecSQL;

  ZQ1.SQL.Clear;
  ZQ1.SQL.Add('select * from transaksi');
  ZQ1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS..');
end;
procedure TFTransaksi.DBGrid1CellClick(Column: TColumn);
var
  id_transaksi: string;
  id_laptop: string;
  id_pelanggan: string;
  id_karyawan: string;
  tanggal: string;
  keterangan: string;
begin
id_karyawan := ZQ1.Fields[0].AsString;

  // Mendapatkan nilai dari kolom yang dipilih
  id_transaksi := ZQ1.FieldByName('id_transaksi').AsString;
  id_laptop := ZQ1.FieldByName('id_laptop').AsString;
  id_pelanggan := ZQ1.FieldByName('id_pelanggan').AsString;
  id_karyawan := ZQ1.FieldByName('id_karyawan').AsString;
  keterangan := ZQ1.FieldByName('keterangan').AsString;
  DateTimePicker1.Date := ZQ1.FieldByName('tanggal').AsDateTime;

  // Menampilkan nilai ke dalam TEdit atau TComboBox
  c1.ItemIndex := c1.Items.IndexOf(id_laptop);
  c2.ItemIndex := c2.Items.IndexOf(id_pelanggan);
  c3.ItemIndex := c3.Items.IndexOf(id_karyawan);
  Edit1.Text := id_transaksi;
  Edit2.Text := keterangan;

end;

end.
