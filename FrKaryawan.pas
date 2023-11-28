unit FrKaryawan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TFKaryawan = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label9: TLabel;
    Label10: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Cmb1: TComboBox;
    Cmb2: TComboBox;
    Cmb3: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ZCon: TZConnection;
    ZQ1: TZQuery;
    DS1: TDataSource;
    DBGrid1: TDBGrid;
    ZQ2: TZQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FKaryawan: TFKaryawan;

implementation

{$R *.dfm}

procedure TFKaryawan.FormCreate(Sender: TObject);
begin
ZQ2.First;
while not ZQ2.Eof do
begin
  Cmb1.items.add(ZQ2.fieldbyname('id_user').asstring);
  ZQ2.Next;
end;
end;

procedure TFKaryawan.Button1Click(Sender: TObject);
begin
ZQ1.SQL.Clear;
ZQ1.SQL.Add('insert into karyawan values ("'+Edit1.Text+'","'+Cmb1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+Cmb2.Text+'","'+FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date)+'","'+Edit4.Text+'","'+Edit5.Text+'","'+Edit6.Text+'","'+Cmb3.Text+'")');
ZQ1.ExecSQL;

ZQ1.SQL.Clear;
ZQ1.SQL.Add('select * from karyawan');
ZQ1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
end;

procedure TFKaryawan.Button2Click(Sender: TObject);
begin
ZQ1.SQL.Clear;
  ZQ1.SQL.Add('update karyawan set id_karyawan="'+Edit1.Text+'", id_user="'+Cmb1.Text+'", nik="'+Edit2.Text+'", nama="'+Edit3.Text+'", jk="'+Cmb2.Text+'", tgl_lahir="'+FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date)+'", tmpt_lahir="'+Edit4.Text+'", alamat="'+Edit5.Text+'", telp="'+Edit6.Text+'", status="'+Cmb3.Text+'" where id_karyawan="'+Edit1.Text+'"');
  ZQ1.ExecSQL;

  ZQ1.SQL.Clear;
  ZQ1.SQL.Add('select * from karyawan');
  ZQ1.Open;
  Showmessage('DATA BERHASIL DI EDIT..');
end;

procedure TFKaryawan.DBGrid1CellClick(Column: TColumn);
var
  id_karyawan: string;
  id_user: string;
  nik: string;
  nama: string;
  jenis_kelamin: string;
  tempat_lahir: string;
  alamat: string;
  telp: string;
  status: string;
begin
id_karyawan := ZQ1.Fields[0].AsString;

  // Mendapatkan nilai dari kolom yang dipilih
  id_karyawan := ZQ1.FieldByName('id_karyawan').AsString;
  id_user := ZQ1.FieldByName('id_user').AsString;
  nik := ZQ1.FieldByName('nik').AsString;
  nama := ZQ1.FieldByName('nama').AsString;
  jenis_kelamin := ZQ1.FieldByName('jk').AsString;
  tempat_lahir := ZQ1.FieldByName('tmpt_lahir').AsString;
  alamat := ZQ1.FieldByName('alamat').AsString;
  status := ZQ1.FieldByName('status').AsString;
  telp := ZQ1.FieldByName('telp').AsString;
  DateTimePicker1.Date := ZQ1.FieldByName('tgl_lahir').AsDateTime;

  // Menampilkan nilai ke dalam TEdit atau TComboBox
  Cmb1.ItemIndex := Cmb1.Items.IndexOf(id_user);
  Cmb2.ItemIndex := Cmb2.Items.IndexOf(jenis_kelamin);
  Cmb3.ItemIndex := Cmb3.Items.IndexOf(status);
  Edit1.Text := id_karyawan;
  Edit2.Text := nik;
  Edit3.Text := nama;
  Edit4.Text := tempat_lahir;
  Edit5.Text := alamat;
  Edit6.Text := telp;

end;

procedure TFKaryawan.Button3Click(Sender: TObject);
begin
  ZQ1.SQL.Clear;
  ZQ1.SQL.Add('delete from karyawan where id_karyawan="'+Edit1.Text+'"');
  ZQ1.ExecSQL;

  ZQ1.SQL.Clear;
  ZQ1.SQL.Add('select * from karyawan');
  ZQ1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS..');
end;

procedure TFKaryawan.Button4Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
