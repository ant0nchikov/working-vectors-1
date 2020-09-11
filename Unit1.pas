unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, StdCtrls, Buttons, Grids;

type
  TForm1 = class(TForm)
    E1: TEdit;
    UD1: TUpDown;
    MM1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N101: TMenuItem;
    N102: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    minmax1: TMenuItem;
    min1: TMenuItem;
    max1: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    BB1: TBitBtn;
    SG1: TStringGrid;
    B1: TButton;
    B2: TButton;
    B3: TButton;
    OD1: TOpenDialog;
    SD1: TSaveDialog;
    N14: TMenuItem;
    N21: TMenuItem;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure UD1Click(Sender: TObject; Button: TUDBtnType);
    procedure B1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N101Click(Sender: TObject);
    procedure N102Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure min1Click(Sender: TObject);
    procedure max1Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure B2Click(Sender: TObject);
    procedure B3Click(Sender: TObject);
    procedure SG1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClick(Sender: TObject);
    procedure E1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  SH,GH,GS,b: array of real;
  i,j,c: integer;
  s,s1,p: real;
  flagEdit,flagSG: boolean;

implementation

uses Unit2;

{$R *.dfm}


function check:boolean;
var
  i:integer;
begin
  check:=true;
  for i:=0 to Form1.SG1.ColCount-1 do
  if Form1.SG1.Cells[i,0]='' then
  check:=false;
end;


procedure TForm1.UD1Click(Sender: TObject; Button: TUDBtnType);
begin
  UD1.Min:=1;
  c:=UD1.Position;
  E1.Text:=inttostr(c);
  UD1.Visible:=True;
end;

procedure TForm1.B1Click(Sender: TObject);
begin

  E1.Visible:=true;
  UD1.Visible:=true;
  Label1.Visible:=true;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  SetLength(SH,c);
    s:=0;
  if check=false then begin
  Messagedlg('Проверьте данные',mtError,[mbOk],0);
  exit;end;
  for i:=0 to c-1 do
    begin
    SH[i]:=strtoint(SG1.Cells[i,0]);
    end;
  for i:=0 to c-1 do
  s:=s+SH[i];
  Form2.Show;
  form2.e2.Text:=floattostr(s);
  form2.e2.Visible:=true;
  form2.Show;
  flagEdit:=true;
  flagSG:=false;
  Form2.Label1.Caption:='Сумма всех элементов';
end;

procedure TForm1.N3Click(Sender: TObject);
begin
   SetLength(SH,c);
    s:=0;
  if check=false then begin
  Messagedlg('Проверьте данные',mtError,[mbOk],0);
  exit;end;
  for i:=0 to c-1 do
    begin
    SH[i]:=strtoint(SG1.Cells[i,0]);
    end;
  for i:=0 to c-1 do
  if SH[i]<0 then s:=s+SH[i];
  form2.e2.Text:=floattostr(s);
  form2.e2.Visible:=true;
  form2.Show;
  flagEdit:=true;
  flagSG:=false;
  Form2.Label1.Caption:='Сумма отрицательных элементов';
end;

procedure TForm1.N4Click(Sender: TObject);
begin
 SetLength(SH,c);
    s:=0;
  if check=false then begin
  Messagedlg('Проверьте данные',mtError,[mbOk],0);
  exit;end;
  for i:=0 to c-1 do
    begin
    SH[i]:=strtoint(SG1.Cells[i,0]);
    end;
  for i:=0 to c-1 do
  if SH[i]>0 then s:=s+SH[i];
    form2.e2.Text:=floattostr(s);
  form2.e2.Visible:=true;
  form2.Show;
  flagEdit:=true;
  flagSG:=false;
  Form2.Label1.Caption:='Сумма положительных элементов';
end;

procedure TForm1.N5Click(Sender: TObject);
begin
  SetLength(SH,c);
    s:=0;
  if check=false then begin
  Messagedlg('Проверьте данные',mtError,[mbOk],0);
  exit;end;
  for i:=0 to c-1 do
    begin
    SH[i]:=strtoint(SG1.Cells[i,0]);
    end;
  for i:=0 to c-1 do
  if trunc(SH[i]) mod 2= 0 then
  s:=s+SH[i];
    form2.e2.Text:=floattostr(s);
  form2.e2.Visible:=true;
  form2.Show;
  flagEdit:=true;
  flagSG:=false;
  Form2.Label1.Caption:='Сумма четных элементов';
end;

procedure TForm1.N6Click(Sender: TObject);
begin
   SetLength(SH,c);
    s:=0;
  if check=false then begin
  Messagedlg('Проверьте данные',mtError,[mbOk],0);
  exit;end;
  for i:=0 to c-1 do
    begin
    SH[i]:=strtoint(SG1.Cells[i,0]);
    end;
  for i:=0 to c-1 do
  if trunc(SH[i]) mod 2<>0 then
  s:=s+SH[i];
    form2.e2.Text:=floattostr(s);
  form2.e2.Visible:=true;
  form2.Show;
  flagEdit:=true;
  flagSG:=false;
  Form2.Label1.Caption:='Сумма нечетных элементов';
end;

procedure TForm1.N101Click(Sender: TObject);
begin
   SetLength(SH,c);
    s:=0;
  if check=false then begin
  Messagedlg('Проверьте данные',mtError,[mbOk],0);
  exit;end;
  for i:=0 to c-1 do
    begin
    SH[i]:=strtoint(SG1.Cells[i,0]);
    end;
  for i:=0 to c-1 do
  if SH[i]>10 then s:=s+SH[i];
    form2.e2.Text:=floattostr(s);
  form2.e2.Visible:=true;
  form2.Show;
  flagEdit:=true;
  flagSG:=false;
  Form2.Label1.Caption:='Сумма элементов, больше 10';
end;

procedure TForm1.N102Click(Sender: TObject);
begin
  SetLength(SH,c);
    s:=0;
  if check=false then begin
  Messagedlg('Проверьте данные',mtError,[mbOk],0);
  exit;end;
  for i:=0 to c-1 do
    begin
    SH[i]:=strtoint(SG1.Cells[i,0]);
    end;
  for i:=0 to c-1 do
  if SH[i]<10 then s:=s+SH[i];
    form2.e2.Text:=floattostr(s);
  form2.e2.Visible:=true;
  form2.Show;
  flagEdit:=true;
  flagSG:=false;
  Form2.Label1.Caption:='Сумма элементов, меньше 10';
end;

procedure TForm1.N7Click(Sender: TObject);
begin
  SetLength(SH,c);
    s:=0;
    s1:=0;
  if check=false then begin
  Messagedlg('Проверьте данные',mtError,[mbOk],0);
  exit;end;
  for i:=0 to c-1 do
    begin
    SH[i]:=strtoint(SG1.Cells[i,0]);
    end;
  for i:=0 to c-1 do s:=s+SH[i];
  for i:=0 to c-1 do
  if SH[i]>(s/(c)) then s1:=s1+SH[i];
    form2.e2.Text:=floattostr(s1);
  form2.e2.Visible:=true;
  form2.Show;
  flagEdit:=true;
  flagSG:=false;
  Form2.Label1.Caption:='Сумма элементов, больше среднего арефметического';
end;

procedure TForm1.N8Click(Sender: TObject);
begin
   SetLength(SH,c);
    s:=0;
    s1:=0;
  if check=false then begin
  Messagedlg('Проверьте данные',mtError,[mbOk],0);
  exit;end;
  for i:=0 to c-1 do
    begin
    SH[i]:=strtoint(SG1.Cells[i,0]);
    end;
  for i:=0 to c-1 do s:=s+SH[i];
  for i:=0 to c-1 do
  if SH[i]<(s/(c)) then s1:=s1+SH[i];
    form2.e2.Text:=floattostr(s1);
  form2.e2.Visible:=true;
  form2.Show;
  flagEdit:=true;
  flagSG:=false;
  Form2.Label1.Caption:='Сумма элементов, меньше среднего арефметического';
end;

procedure TForm1.min1Click(Sender: TObject);
var min,n: real;
begin
  SetLength(SH,c);
  min:=999999;
  n:=1;
  if check=false then begin
  Messagedlg('Проверьте данные',mtError,[mbOk],0);
  exit;end;
  for i:=0 to c-1 do
    begin
    SH[i]:=strtoint(SG1.Cells[i,0]);
    end;
  for i:=0 to c-1 do
  if SH[i]<min then begin min:=SH[i]; n:=i; end;
    form2.e2.Text:=floattostr(min);
    form2.e1.Text:=floattostr(n+1);
  form2.e2.Visible:=true;
  form2.Show;
  flagEdit:=true;
  flagSG:=false;
  Form2.E1.Visible:=true;
  Form2.Label1.Caption:='Минимальный элемент';
  Form2.Label2.Caption:='Номер элемента';
end;

procedure TForm1.max1Click(Sender: TObject);
var min,n: real;
begin
    SetLength(SH,c);
  min:=0;
  n:=0;
  if check=false then begin
  Messagedlg('Проверьте данные',mtError,[mbOk],0);
  exit;end;
  for i:=0 to c-1 do
    begin
    SH[i]:=strtoint(SG1.Cells[i,0]);
    end;
  for i:=0 to c-1 do
  if SH[i]>min then begin min:=SH[i]; n:=i; end;
  form2.e2.Text:=floattostr(min);
  form2.e1.Text:=floattostr(n+1);
  form2.e2.Visible:=true;
  form2.Show;
  flagEdit:=true;
  flagSG:=false;
  Form2.E1.Visible:=true;
  Form2.Label1.Caption:='Максимальный элемент';
  Form2.Label2.Caption:='Номер элемента';
end;

procedure TForm1.N13Click(Sender: TObject);
begin
  BB1.Click;
end;

procedure TForm1.N14Click(Sender: TObject);
var max,min,maxI,minI,countPositive: real;
begin
    SetLength(SH,c);
    countPositive:=0;
    max:=0;
    min:=9999999999999;
    maxI:=0;
    minI:=0;
  if check=false then begin
  Messagedlg('Проверьте данные',mtError,[mbOk],0);
  exit;end;
  for i:=0 to c-1 do
    begin
    SH[i]:=strtofloat(SG1.Cells[i,0]);
    end;
  for i:=0 to c-1 do
    begin
        if SH[i]>max then begin
         max:=SH[i];
         maxI:=i;
         end;
    end;

    for i:=0 to c-1 do
    begin
        if SH[i]<min then begin
            min:=SH[i];
            minI:=i;
        end;
    end;

    for i:=0 to c-1 do
    begin

        if (minI<maxI) then begin
             if (i>minI) and (i<maxI) then begin
                 if (SH[i] > 0) then begin
                   countPositive:= countPositive +1;
                 end;
             end;
        end;
    end;

  Form2.E2.Text:=floattostr(countPositive);
  form2.Show;
  Form2.SGF1.Visible:=false;
  Form2.SGF2.Visible:=false;
  Form2.Label4.Visible:=false;
  Form2.Label5.Visible:=false;
  Form2.Label1.Visible:=true;
  Form2.E2.Visible:=true;
  flagEdit:=false;
  flagSG:=true;
  Form2.Label1.Caption:='Полученное число';
end;

procedure TForm1.N21Click(Sender: TObject);
var countTwo:real;
begin
    SetLength(GH,c);
    SetLength(GS,c);
    countTwo:=0;
      if check=false then begin
  Messagedlg('Проверьте данные',mtError,[mbOk],0);
  exit;end;
  for i:=0 to c-1 do
    begin
    GH[i]:=strtofloat(SG1.Cells[i,0]);
    end;
  for i:=0 to c-1 do
    begin
        if GH[i]<2 then begin
              countTwo:=countTwo+1;
        end;
    end;

    for i:=0 to c-1 do
    begin
    GS[i] := GH[i];
    end;

    if countTwo > 0 then begin
          for i:=0 to c-1 do
    begin
        if GH[i]<0 then begin
             GS[i] := GH[i]*GH[i];
        end;
    end;
        end;

        if countTwo <=0 then begin
            for i:=0 to c-1 do
               begin
                   GS[i]:= GH[i]*0.5;
               end;
               end;


    for i:=0 to c-1 do
    begin
    Form2.SGF1.Cells[i,0]:=FloatToStr(GS[i]);
    end;

    for i:=0 to c-1 do
    begin
    Form2.SGF2.Cells[i,0]:=FloatToStr(GH[i]);
    end;

    form2.Show;
    Form2.SGF1.ColCount:=(c);
    Form2.SGF2.ColCount:=(c);
    Form2.SGF1.Visible:=true;
    Form2.SGF2.Visible:=true;
    Form2.E2.Visible:=false;
    Form2.Label1.Visible:=false;
               end;


procedure TForm1.N10Click(Sender: TObject);
var max: integer;
    v:real;
begin
  Form2.SGF1.Visible:=true;
  SetLength(SH,c);
  SetLength(b,c);
  Form2.SGF1.ColCount:=(c);
  Form2.SGF1.RowCount:=2;
      if check=false then begin
  Messagedlg('Проверьте данные',mtError,[mbOk],0);
  exit;end;
  for i:=0 to c-1 do
    begin
      SH[i]:=strtofloat(SG1.Cells[i,0]);
    end;
  for i:=0 to c-1 do
    begin
      b[i]:=strtofloat(SG1.Cells[i,0]);
    end;
  max:=0;
  for i:=0 to c-1 do
    begin
      max:=i;
      for j:=i+1 to c-1 do
        begin
          if SH[j]<SH[max] then
            begin
              max:=j;
            end;
        end;
    v:=SH[i];
    Sh[i]:=SH[max];
    SH[max]:=v;
    end;
  for i:=0 to c-1 do Form2.SGF1.Cells[i,0]:=floattostr(b[i]);
  for i:=0 to c-1 do Form2.SGF1.Cells[i,1]:=floattostr(SH[i]);
  Form2.Show;
  Form2.E2.Visible:=false;
  Form2.E1.Visible:=false;
  flagEdit:=false;
  flagSG:=true;
  Form2.Label3.Caption:='Полученный вектор';
end;

procedure TForm1.N11Click(Sender: TObject);
var min: integer;
    v:real;
begin
  Form2.SGF1.Visible:=true;
  SetLength(SH,c);
  SetLength(b,c);
  Form2.SGF1.ColCount:=(c);
  Form2.SGF1.RowCount:=2;
      if check=false then begin
  Messagedlg('Проверьте данные',mtError,[mbOk],0);
  exit;end;
  for i:=0 to c-1 do
    begin
      SH[i]:=strtofloat(SG1.Cells[i,0]);
    end;
  for i:=0 to c-1 do
    begin
      b[i]:=strtofloat(SG1.Cells[i,0]);
    end;
  min:=0;
  for i:=0 to c-2 do
    begin
      min:=i;
      for j:=i+1 to c-1 do
        begin
          if SH[j]>SH[min] then
            begin
              min:=j;
            end;
        end;
    v:=SH[i];
    Sh[i]:=SH[min];
    SH[min]:=v;
    end;
  for i:=0 to c-1 do Form2.SGF1.Cells[i,0]:=floattostr(b[i]);
  for i:=0 to c-1 do Form2.SGF1.Cells[i,1]:=floattostr(SH[i]);
  Form2.Show;
  Form2.E2.Visible:=false;
  Form2.E1.Visible:=false;
  flagEdit:=false;
  flagSG:=true;
  Form2.Label3.Caption:='Полученный вектор';
end;

procedure TForm1.B2Click(Sender: TObject);
var k:textfile;
begin
  if SD1.Execute then
  assignfile(k,SD1.FileName);
  rewrite(k);
  writeln(k, E1.Text);
  for i:=0 to c do writeln(k,Form1.SG1.Cells[i,0]);
  closefile(k);
end;

procedure TForm1.B3Click(Sender: TObject);
var k1: textfile;
    g: string;
begin
  if OD1.Execute then
  assignfile(k1,OD1.FileName);
  reset(k1);
  readln(k1,c);
  for i:=0 to c do
  begin
  readln(k1,g);
  SG1.Cells[i,0]:=g;
  end;
  CloseFile(k1);
  SG1.Visible:=True;
  SG1.ColCount:=c;
  end;

procedure TForm1.SG1KeyPress(Sender: TObject; var Key: Char);
  var
  allow:string;ok:boolean;i:integer;
begin
  ok:=false;
  allow:='1234567890-,'+#8;
  for i:=1 to length(allow) do
  if key=allow[i] then ok:=true;
  if not ok then key:=#0;
end;

procedure TForm1.FormClick(Sender: TObject);
begin
  SG1.Visible:=true;
  Label2.Visible:=true;
  SG1.ColCount:=strtoint(E1.Text);
  c:=strtoint(e1.Text);
end;

procedure TForm1.E1KeyPress(Sender: TObject; var Key: Char);
  var
  allow:string;ok:boolean;i:integer;
begin
  ok:=false;
  allow:='1234567890-,'+#8;
  for i:=1 to length(allow) do
  if key=allow[i] then ok:=true;
  if not ok then key:=#0;
end;



procedure TForm1.Button1Click(Sender: TObject);
begin
  for i:=0 to c-1 do
    begin
      SG1.Cols[i].Clear;
    end;
  end;

end.
