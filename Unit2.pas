unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    Button2: TButton;
    BitBtn2: TBitBtn;
    E2: TEdit;
    SGF1: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    E1: TEdit;
    SGF2: TStringGrid;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.Button2Click(Sender: TObject);
begin
  Form1.Show;
  Form2.Close;
end;


end.
