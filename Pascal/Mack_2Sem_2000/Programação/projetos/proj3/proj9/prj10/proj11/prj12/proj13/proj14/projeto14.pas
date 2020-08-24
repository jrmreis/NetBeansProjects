unit projeto14;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, ComCtrls, Tabnotbk, StdCtrls, Spin, math;

type
  TForm1 = class(TForm)
    TabbedNotebook1: TTabbedNotebook;
    StringGrid1: TStringGrid;
    Button1: TButton;
    SpinEdit1: TSpinEdit;
    label1: TLabel;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    Button2: TButton;
    Button3: TButton;
    Button5: TButton;
    Button4: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure SpinEdit1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
   

    private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}



procedure TForm1.SpinEdit1Change(Sender: TObject);
 var j,n,y : integer;

      begin

n:=spinedit1.value;

if n>1 then
stringgrid1.colcount:=n+1;
   stringgrid2.colcount:=n+1;
      stringgrid3.colcount:=n;
stringGrid1.rowcount:=n+1;
   stringGrid2.rowcount:=n+1;
stringGrid1.fixedcols:=0;
   stringGrid2.fixedcols:=0;
      stringGrid3.fixedcols:=0;
stringGrid1.fixedrows:=1;
   stringGrid2.fixedrows:=1;
      stringGrid3.fixedrows:=1;
//preencher a linha fixada 1
  y:=1;
  for j:=0 to n-1 do
     begin
     stringgrid1.cells[j,0]:='X'+floatToStr(y);
       stringgrid2.cells[j,0]:='X'+floatToStr(y);
          stringgrid3.cells[j,0]:='X'+floatToStr(y);
     stringGrid1.cells[j+1,0]:='�';
       stringGrid2.cells[j+1,0]:='�';
     y:=y+1;
     end;


     end;


procedure TForm1.Button3Click(Sender: TObject);
begin
CLOSE;
end;

procedure TForm1.Button2Click(Sender: TObject);
var n,j, i:integer;
begin
n:=spinedit1.value;
for i:=1 to n do
   for j:=0 to n+1 do
   begin
    stringgrid1.cells[j,i]:='';
    stringgrid2.cells[j,i]:='';
   end; 
for j:=0 to n do
    stringgrid3.cells[j,1]:='';
end;
procedure TForm1.Button1Click(Sender: TObject);
var
a: array[1..20,1..20] of Double;

i, j, xi, xj,n, fi, fj: integer;
 s, s1: Double;
begin
n:=spinedit1.value;


for i:=1 to n do
for j:=0 to n do  
a[i,j+1]:=strtofloat(stringgrid1.cells[j,i]); //armazena coeficientes na a
i:=1;
j:=1; s1:=0;
while (i<n) and (j<=n+1) do
      begin

      for fi:=1 to n do

    begin
    
    for fj:=0 to n+1 do
    s1:=s1+abs(a[fi,fj]);

    end;
    if s1<>0 then
      begin
      for xi:=i+1 to n do
          for xj:=j+1 to n+1 do
          begin
          if a[i,j]<>0 then
          a[xi,xj]:=a[xi,xj]-((a[xi,j]*a[i,xj])/a[i,j]);
          end;
      for xi:=i+1 to n do
          a[xi,j]:=0;
      end;
      i:=i+1;
      j:=j+1;
    end;
if s1<>0 then
begin
for i:=1 to n do
for j:=1 to n+1 do
stringgrid2.cells[j-1,i]:=floattostr(a[i,j]);
tabbednotebook1.pageindex:=1;
end;

 procedure TForm1.Button5Click(Sender: TObject);
var
r: array[1..20] of Double;
i, j, n: integer;
s: Double;
begin
n:=spinedit1.value;
  r[n]:=a[n,n]/a[n,n+1];
   for i:=n downto 1 do
       begin
       s:=0;
       for j:=i+1 to n do
           s:=s+(a[i,j]*r[j]);
       r[i]:=(a[i,n+1]-s)/a[i,i];
       stringgrid3.cells[i-1,1]:=floattostr(r[i]);


end;
end;
end;



 end;


procedure TForm1.Button4Click(Sender: TObject);

begin
spinedit1.value:=10;

stringgrid1.cells[0,1]:=floattostr(3);
stringgrid1.cells[0,2]:=floattostr(4);
stringgrid1.cells[0,3]:=floattostr(5);
stringgrid1.cells[0,4]:=floattostr(6);
stringgrid1.cells[0,5]:=floattostr(10);
stringgrid1.cells[0,6]:=floattostr(4);
stringgrid1.cells[0,7]:=floattostr(30);
stringgrid1.cells[0,8]:=floattostr(1);
stringgrid1.cells[0,9]:=floattostr(1);
stringgrid1.cells[0,10]:=floattostr(-1);
stringgrid1.cells[1,1]:=floattostr(2);
stringgrid1.cells[1,2]:=floattostr(-2);
stringgrid1.cells[1,3]:=floattostr(1);
stringgrid1.cells[1,4]:=floattostr(-1);
stringgrid1.cells[1,5]:=floattostr(7);
stringgrid1.cells[1,6]:=floattostr(20);
stringgrid1.cells[1,7]:=floattostr(3);
stringgrid1.cells[1,8]:=floattostr(2);
stringgrid1.cells[1,9]:=floattostr(30);
stringgrid1.cells[1,10]:=floattostr(7);
stringgrid1.cells[2,1]:=floattostr(2);
stringgrid1.cells[2,2]:=floattostr(7);
stringgrid1.cells[2,3]:=floattostr(8);
stringgrid1.cells[2,4]:=floattostr(3);
stringgrid1.cells[2,5]:=floattostr(-2);
stringgrid1.cells[2,6]:=floattostr(-3);
stringgrid1.cells[2,7]:=floattostr(-2);
stringgrid1.cells[2,8]:=floattostr(12);
stringgrid1.cells[2,9]:=floattostr(3);
stringgrid1.cells[2,10]:=floattostr(2);
stringgrid1.cells[3,1]:=floattostr(2);
stringgrid1.cells[3,2]:=floattostr(-2);
stringgrid1.cells[3,3]:=floattostr(-4);
stringgrid1.cells[3,4]:=floattostr(4);
stringgrid1.cells[3,5]:=floattostr(1);
stringgrid1.cells[3,6]:=floattostr(2);
stringgrid1.cells[3,7]:=floattostr(12);
stringgrid1.cells[3,8]:=floattostr(5);
stringgrid1.cells[3,9]:=floattostr(3);
stringgrid1.cells[3,10]:=floattostr(1);
stringgrid1.cells[4,1]:=floattostr(-6);
stringgrid1.cells[4,2]:=floattostr(-4);
stringgrid1.cells[4,3]:=floattostr(-1);
stringgrid1.cells[4,4]:=floattostr(7);
stringgrid1.cells[4,5]:=floattostr(6);
stringgrid1.cells[4,6]:=floattostr(8);
stringgrid1.cells[4,7]:=floattostr(3);
stringgrid1.cells[4,8]:=floattostr(12);
stringgrid1.cells[4,9]:=floattostr(5);
stringgrid1.cells[4,10]:=floattostr(1);
stringgrid1.cells[5,1]:=floattostr(-3);
stringgrid1.cells[5,2]:=floattostr(7);
stringgrid1.cells[5,3]:=floattostr(5);
stringgrid1.cells[5,4]:=floattostr(4);
stringgrid1.cells[5,5]:=floattostr(12);
stringgrid1.cells[5,6]:=floattostr(7);
stringgrid1.cells[5,7]:=floattostr(-10);
stringgrid1.cells[5,8]:=floattostr(11);
stringgrid1.cells[5,9]:=floattostr(12);
stringgrid1.cells[5,10]:=floattostr(9);
stringgrid1.cells[6,1]:=floattostr(3);
stringgrid1.cells[6,2]:=floattostr(2);
stringgrid1.cells[6,3]:=floattostr(4);
stringgrid1.cells[6,4]:=floattostr(4);
stringgrid1.cells[6,5]:=floattostr(9);
stringgrid1.cells[6,6]:=floattostr(12);
stringgrid1.cells[6,7]:=floattostr(8);
stringgrid1.cells[6,8]:=floattostr(7);
stringgrid1.cells[6,9]:=floattostr(12);
stringgrid1.cells[6,10]:=floattostr(5);
stringgrid1.cells[7,1]:=floattostr(1);
stringgrid1.cells[7,2]:=floattostr(3);
stringgrid1.cells[7,3]:=floattostr(-1);
stringgrid1.cells[7,4]:=floattostr(-1);
stringgrid1.cells[7,5]:=floattostr(1);
stringgrid1.cells[7,6]:=floattostr(2);
stringgrid1.cells[7,7]:=floattostr(12);
stringgrid1.cells[7,8]:=floattostr(12);
stringgrid1.cells[7,9]:=floattostr(12);
stringgrid1.cells[7,10]:=floattostr(-1);
stringgrid1.cells[8,1]:=floattostr(3);
stringgrid1.cells[8,2]:=floattostr(1);
stringgrid1.cells[8,3]:=floattostr(2);
stringgrid1.cells[8,4]:=floattostr(-1);
stringgrid1.cells[8,5]:=floattostr(-1);
stringgrid1.cells[8,6]:=floattostr(1);
stringgrid1.cells[8,7]:=floattostr(23);
stringgrid1.cells[8,8]:=floattostr(23);
stringgrid1.cells[8,9]:=floattostr(23);
stringgrid1.cells[8,10]:=floattostr(0);
stringgrid1.cells[9,1]:=floattostr(4);
stringgrid1.cells[9,2]:=floattostr(2);
stringgrid1.cells[9,3]:=floattostr(1);
stringgrid1.cells[9,4]:=floattostr(2);
stringgrid1.cells[9,5]:=floattostr(-1);
stringgrid1.cells[9,6]:=floattostr(-1);
stringgrid1.cells[9,7]:=floattostr(1);
stringgrid1.cells[9,8]:=floattostr(34);
stringgrid1.cells[9,9]:=floattostr(34);
stringgrid1.cells[9,10]:=floattostr(23);
stringgrid1.cells[10,1]:=floattostr(10);
stringgrid1.cells[10,2]:=floattostr(20);
stringgrid1.cells[10,3]:=floattostr(18);
stringgrid1.cells[10,4]:=floattostr(13);
stringgrid1.cells[10,5]:=floattostr(14);
stringgrid1.cells[10,6]:=floattostr(15);
stringgrid1.cells[10,7]:=floattostr(5);
stringgrid1.cells[10,8]:=floattostr(4);
stringgrid1.cells[10,9]:=floattostr(6);
stringgrid1.cells[10,10]:=floattostr(-1);


end;

procedure TForm1.Button6Click(Sender: TObject);

begin
spinedit1.value:=10;


stringgrid1.cells[0,1]:=floattostr(3);
stringgrid1.cells[0,2]:=floattostr(4);
stringgrid1.cells[0,3]:=floattostr(5);
stringgrid1.cells[0,4]:=floattostr(6);
stringgrid1.cells[0,5]:=floattostr(3);
stringgrid1.cells[0,6]:=floattostr(4);
stringgrid1.cells[0,7]:=floattostr(7);
stringgrid1.cells[0,8]:=floattostr(1);
stringgrid1.cells[0,9]:=floattostr(1);
stringgrid1.cells[0,10]:=floattostr(-1);
stringgrid1.cells[1,1]:=floattostr(2);
stringgrid1.cells[1,2]:=floattostr(-2);
stringgrid1.cells[1,3]:=floattostr(1);
stringgrid1.cells[1,4]:=floattostr(-1);
stringgrid1.cells[1,5]:=floattostr(7);
stringgrid1.cells[1,6]:=floattostr(5);
stringgrid1.cells[1,7]:=floattostr(3);
stringgrid1.cells[1,8]:=floattostr(2);
stringgrid1.cells[1,9]:=floattostr(1);
stringgrid1.cells[1,10]:=floattostr(7);
stringgrid1.cells[2,1]:=floattostr(2);
stringgrid1.cells[2,2]:=floattostr(7);
stringgrid1.cells[2,3]:=floattostr(8);
stringgrid1.cells[2,4]:=floattostr(3);
stringgrid1.cells[2,5]:=floattostr(-2);
stringgrid1.cells[2,6]:=floattostr(-3);
stringgrid1.cells[2,7]:=floattostr(-2);
stringgrid1.cells[2,8]:=floattostr(5);
stringgrid1.cells[2,9]:=floattostr(3);
stringgrid1.cells[2,10]:=floattostr(2);
stringgrid1.cells[3,1]:=floattostr(2);
stringgrid1.cells[3,2]:=floattostr(-2);
stringgrid1.cells[3,3]:=floattostr(-4);
stringgrid1.cells[3,4]:=floattostr(4);
stringgrid1.cells[3,5]:=floattostr(1);
stringgrid1.cells[3,6]:=floattostr(2);
stringgrid1.cells[3,7]:=floattostr(3);
stringgrid1.cells[3,8]:=floattostr(5);
stringgrid1.cells[3,9]:=floattostr(3);
stringgrid1.cells[3,10]:=floattostr(1);
stringgrid1.cells[4,1]:=floattostr(-6);
stringgrid1.cells[4,2]:=floattostr(-4);
stringgrid1.cells[4,3]:=floattostr(-1);
stringgrid1.cells[4,4]:=floattostr(7);
stringgrid1.cells[4,5]:=floattostr(6);
stringgrid1.cells[4,6]:=floattostr(8);
stringgrid1.cells[4,7]:=floattostr(3);
stringgrid1.cells[4,8]:=floattostr(4);
stringgrid1.cells[4,9]:=floattostr(5);
stringgrid1.cells[4,10]:=floattostr(1);
stringgrid1.cells[5,1]:=floattostr(-3);
stringgrid1.cells[5,2]:=floattostr(7);
stringgrid1.cells[5,3]:=floattostr(5);
stringgrid1.cells[5,4]:=floattostr(4);
stringgrid1.cells[5,5]:=floattostr(6);
stringgrid1.cells[5,6]:=floattostr(7);
stringgrid1.cells[5,7]:=floattostr(-10);
stringgrid1.cells[5,8]:=floattostr(11);
stringgrid1.cells[5,9]:=floattostr(6);
stringgrid1.cells[5,10]:=floattostr(9);
stringgrid1.cells[6,1]:=floattostr(3);
stringgrid1.cells[6,2]:=floattostr(2);
stringgrid1.cells[6,3]:=floattostr(4);
stringgrid1.cells[6,4]:=floattostr(4);
stringgrid1.cells[6,5]:=floattostr(9);
stringgrid1.cells[6,6]:=floattostr(8);
stringgrid1.cells[6,7]:=floattostr(8);
stringgrid1.cells[6,8]:=floattostr(7);
stringgrid1.cells[6,9]:=floattostr(6);
stringgrid1.cells[6,10]:=floattostr(5);
stringgrid1.cells[7,1]:=floattostr(1);
stringgrid1.cells[7,2]:=floattostr(3);
stringgrid1.cells[7,3]:=floattostr(-1);
stringgrid1.cells[7,4]:=floattostr(-1);
stringgrid1.cells[7,5]:=floattostr(1);
stringgrid1.cells[7,6]:=floattostr(2);
stringgrid1.cells[7,7]:=floattostr(-1);
stringgrid1.cells[7,8]:=floattostr(-1);
stringgrid1.cells[7,9]:=floattostr(-1);
stringgrid1.cells[7,10]:=floattostr(-1);
stringgrid1.cells[8,1]:=floattostr(3);
stringgrid1.cells[8,2]:=floattostr(1);
stringgrid1.cells[8,3]:=floattostr(2);
stringgrid1.cells[8,4]:=floattostr(-1);
stringgrid1.cells[8,5]:=floattostr(-1);
stringgrid1.cells[8,6]:=floattostr(1);
stringgrid1.cells[8,7]:=floattostr(2);
stringgrid1.cells[8,8]:=floattostr(-1);
stringgrid1.cells[8,9]:=floattostr(-1);
stringgrid1.cells[8,10]:=floattostr(0);
stringgrid1.cells[9,1]:=floattostr(4);
stringgrid1.cells[9,2]:=floattostr(2);
stringgrid1.cells[9,3]:=floattostr(1);
stringgrid1.cells[9,4]:=floattostr(2);
stringgrid1.cells[9,5]:=floattostr(-1);
stringgrid1.cells[9,6]:=floattostr(-1);
stringgrid1.cells[9,7]:=floattostr(1);
stringgrid1.cells[9,8]:=floattostr(2);
stringgrid1.cells[9,9]:=floattostr(-1);
stringgrid1.cells[9,10]:=floattostr(-1);
stringgrid1.cells[10,1]:=floattostr(10);
stringgrid1.cells[10,2]:=floattostr(20);
stringgrid1.cells[10,3]:=floattostr(18);
stringgrid1.cells[10,4]:=floattostr(13);
stringgrid1.cells[10,5]:=floattostr(14);
stringgrid1.cells[10,6]:=floattostr(15);
stringgrid1.cells[10,7]:=floattostr(5);
stringgrid1.cells[10,8]:=floattostr(4);
stringgrid1.cells[10,9]:=floattostr(6);
stringgrid1.cells[10,10]:=floattostr(-1);
end;
procedure TForm1.Button7Click(Sender: TObject);

begin
spinedit1.value:=10;


stringgrid1.cells[0,1]:=floattostr(10);
stringgrid1.cells[0,2]:=floattostr(4);
stringgrid1.cells[0,3]:=floattostr(5);
stringgrid1.cells[0,4]:=floattostr(6);
stringgrid1.cells[0,5]:=floattostr(3);
stringgrid1.cells[0,6]:=floattostr(4);
stringgrid1.cells[0,7]:=floattostr(7);
stringgrid1.cells[0,8]:=floattostr(1);
stringgrid1.cells[0,9]:=floattostr(1);
stringgrid1.cells[0,10]:=floattostr(-1);
stringgrid1.cells[1,1]:=floattostr(2);
stringgrid1.cells[1,2]:=floattostr(10);
stringgrid1.cells[1,3]:=floattostr(1);
stringgrid1.cells[1,4]:=floattostr(-1);
stringgrid1.cells[1,5]:=floattostr(7);
stringgrid1.cells[1,6]:=floattostr(5);
stringgrid1.cells[1,7]:=floattostr(3);
stringgrid1.cells[1,8]:=floattostr(2);
stringgrid1.cells[1,9]:=floattostr(1);
stringgrid1.cells[1,10]:=floattostr(7);
stringgrid1.cells[2,1]:=floattostr(2);
stringgrid1.cells[2,2]:=floattostr(7);
stringgrid1.cells[2,3]:=floattostr(10);
stringgrid1.cells[2,4]:=floattostr(3);
stringgrid1.cells[2,5]:=floattostr(-2);
stringgrid1.cells[2,6]:=floattostr(-3);
stringgrid1.cells[2,7]:=floattostr(-2);
stringgrid1.cells[2,8]:=floattostr(5);
stringgrid1.cells[2,9]:=floattostr(3);
stringgrid1.cells[2,10]:=floattostr(2);
stringgrid1.cells[3,1]:=floattostr(2);
stringgrid1.cells[3,2]:=floattostr(-2);
stringgrid1.cells[3,3]:=floattostr(-4);
stringgrid1.cells[3,4]:=floattostr(10);
stringgrid1.cells[3,5]:=floattostr(1);
stringgrid1.cells[3,6]:=floattostr(2);
stringgrid1.cells[3,7]:=floattostr(3);
stringgrid1.cells[3,8]:=floattostr(5);
stringgrid1.cells[3,9]:=floattostr(3);
stringgrid1.cells[3,10]:=floattostr(1);
stringgrid1.cells[4,1]:=floattostr(-6);
stringgrid1.cells[4,2]:=floattostr(-4);
stringgrid1.cells[4,3]:=floattostr(-1);
stringgrid1.cells[4,4]:=floattostr(7);
stringgrid1.cells[4,5]:=floattostr(10);
stringgrid1.cells[4,6]:=floattostr(8);
stringgrid1.cells[4,7]:=floattostr(3);
stringgrid1.cells[4,8]:=floattostr(4);
stringgrid1.cells[4,9]:=floattostr(5);
stringgrid1.cells[4,10]:=floattostr(1);
stringgrid1.cells[5,1]:=floattostr(-3);
stringgrid1.cells[5,2]:=floattostr(7);
stringgrid1.cells[5,3]:=floattostr(5);
stringgrid1.cells[5,4]:=floattostr(4);
stringgrid1.cells[5,5]:=floattostr(6);
stringgrid1.cells[5,6]:=floattostr(10);
stringgrid1.cells[5,7]:=floattostr(-10);
stringgrid1.cells[5,8]:=floattostr(11);
stringgrid1.cells[5,9]:=floattostr(6);
stringgrid1.cells[5,10]:=floattostr(9);
stringgrid1.cells[6,1]:=floattostr(3);
stringgrid1.cells[6,2]:=floattostr(2);
stringgrid1.cells[6,3]:=floattostr(4);
stringgrid1.cells[6,4]:=floattostr(4);
stringgrid1.cells[6,5]:=floattostr(9);
stringgrid1.cells[6,6]:=floattostr(8);
stringgrid1.cells[6,7]:=floattostr(10);
stringgrid1.cells[6,8]:=floattostr(7);
stringgrid1.cells[6,9]:=floattostr(6);
stringgrid1.cells[6,10]:=floattostr(5);
stringgrid1.cells[7,1]:=floattostr(1);
stringgrid1.cells[7,2]:=floattostr(3);
stringgrid1.cells[7,3]:=floattostr(-1);
stringgrid1.cells[7,4]:=floattostr(-1);
stringgrid1.cells[7,5]:=floattostr(1);
stringgrid1.cells[7,6]:=floattostr(2);
stringgrid1.cells[7,7]:=floattostr(-1);
stringgrid1.cells[7,8]:=floattostr(10);
stringgrid1.cells[7,9]:=floattostr(-1);
stringgrid1.cells[7,10]:=floattostr(-1);
stringgrid1.cells[8,1]:=floattostr(3);
stringgrid1.cells[8,2]:=floattostr(1);
stringgrid1.cells[8,3]:=floattostr(2);
stringgrid1.cells[8,4]:=floattostr(-1);
stringgrid1.cells[8,5]:=floattostr(-1);
stringgrid1.cells[8,6]:=floattostr(1);
stringgrid1.cells[8,7]:=floattostr(2);
stringgrid1.cells[8,8]:=floattostr(-1);
stringgrid1.cells[8,9]:=floattostr(10);
stringgrid1.cells[8,10]:=floattostr(0);
stringgrid1.cells[9,1]:=floattostr(4);
stringgrid1.cells[9,2]:=floattostr(2);
stringgrid1.cells[9,3]:=floattostr(1);
stringgrid1.cells[9,4]:=floattostr(2);
stringgrid1.cells[9,5]:=floattostr(-1);
stringgrid1.cells[9,6]:=floattostr(-1);
stringgrid1.cells[9,7]:=floattostr(1);
stringgrid1.cells[9,8]:=floattostr(2);
stringgrid1.cells[9,9]:=floattostr(-1);
stringgrid1.cells[9,10]:=floattostr(10);
stringgrid1.cells[10,1]:=floattostr(1);
stringgrid1.cells[10,2]:=floattostr(2);
stringgrid1.cells[10,3]:=floattostr(3);
stringgrid1.cells[10,4]:=floattostr(4);
stringgrid1.cells[10,5]:=floattostr(5);
stringgrid1.cells[10,6]:=floattostr(6);
stringgrid1.cells[10,7]:=floattostr(7);
stringgrid1.cells[10,8]:=floattostr(8);
stringgrid1.cells[10,9]:=floattostr(9);
stringgrid1.cells[10,10]:=floattostr(10);

end;

procedure TForm1.Button8Click(Sender: TObject);
begin
tabbedNotebook1.pageindex:=0;
end;





end.


