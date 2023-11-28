unit FrLaptop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, frxClass, frxDBSet, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TFLaptop = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Cmb1: TComboBox;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ZCon: TZConnection;
    ZQ1: TZQuery;
    DS1: TDataSource;
    ZQ2: TZQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLaptop: TFLaptop;

implementation

{$R *.dfm}

procedure TFLaptop.FormCreate(Sender: TObject);
begin
ZQ2.First;
while not ZQ2.Eof do
begin
  Cmb1.items.add(ZQ2.fieldbyname('id_supplier').asstring);
  ZQ2.Next;
end;
end;

procedure TFLaptop.Button1Click(Sender: TObject);
begin
ZQ1.SQL.Clear;
ZQ1.SQL.Add('insert into laptop values ("'+Edit1.Text+'","'+Cmb1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'")');
ZQ1.ExecSQL;

ZQ1.SQL.Clear;
ZQ1.SQL.Add('select * from laptop');
ZQ1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
end;

procedure TFLaptop.Button2Click(Sender: TObject);
begin
  ZQ1.SQL.Clear;
  ZQ1.SQL.Add('UPDATE laptop SET id_laptop="' + Edit1.Text + '", id_supplier="' + Cmb1.Text + '", nm_laptop="' + Edit2.Text + '", hrg_laptop="' + Edit3.Text + '", stok="' + Edit4.Text + '" WHERE id_laptop="' + Edit1.Text + '"');
  ZQ1.ExecSQL;

  ZQ1.SQL.Clear;
  ZQ1.SQL.Add('SELECT * FROM laptop');
  ZQ1.Open;
  ShowMessage('DATA BERHASIL DI EDIT..');
end;


procedure TFLaptop.Button3Click(Sender: TObject);
begin
  ZQ1.SQL.Clear;
  ZQ1.SQL.Add('delete from laptop where id_laptop="'+Edit1.Text+'"');
  ZQ1.ExecSQL;

  ZQ1.SQL.Clear;
  ZQ1.SQL.Add('select * from laptop');
  ZQ1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS..');
end;

procedure TFLaptop.Button4Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
