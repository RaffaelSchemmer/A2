unit UntFrutas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls;

type
  TForm18 = class(TForm)
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    GroupBox2: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    ListBox1: TListBox;
    Label2: TLabel;
    BitTotal: TBitBtn;
    procedure ComboBox1Select(Sender: TObject);
    procedure BitTotalMouseEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
   private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form18: TForm18;
  VF: Array [0..100] Of real;
  somatorio : real;

implementation

{$R *.dfm}

procedure TForm18.BitBtn1Click(Sender: TObject);
var
  cont: Integer;
  flag: Integer;
begin

  cont := 0;
  flag := 0;
  while(cont < combobox1.items.count) do
  begin
    if(LabeledEdit1.Text = combobox1.Items[cont]) then
    begin
      flag := 1;
    end;
    cont := cont + 1;
  end;
  if flag = 0 then
  begin

    ComboBox1.Items.Append(LabeledEdit1.Text);
    VF[ComboBox1.Items.Count-1] := strtofloat(MaskEdit1.Text);

  end
  else
  begin
    showmessage('Nome de Fruta já cadastrada!');
  end;

end;

procedure TForm18.BitTotalMouseEnter(Sender: TObject);
begin
  showmessage('Sua lista de compras está em '+floattostr(somatorio)+' reais');
end;

procedure TForm18.ComboBox1Select(Sender: TObject);
begin

  ListBox1.Items.Append(ComboBox1.Items[combobox1.ItemIndex]);
  somatorio := somatorio + VF[combobox1.ItemIndex];

end;

procedure TForm18.FormCreate(Sender: TObject);
begin
  somatorio := 0;
  VF[0] := 10;
end;

end.
