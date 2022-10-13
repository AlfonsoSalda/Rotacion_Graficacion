unit Rotacion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  I:integer;
  Coordenadas:array[1..8] of TPoint;
  txi,tyi:integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var inin:array[1..8] of TPoint;
begin
inin[1].X:=100;
inin[1].Y:=50;
inin[2].X:=150;
inin[2].Y:=50;
inin[3].X:=200;
inin[3].Y:=100;
inin[4].X:=200;
inin[4].Y:=150;
inin[5].X:=150;
inin[5].Y:=200;
inin[6].X:=100;
inin[6].Y:=200;
inin[7].X:=50;
inin[7].Y:=150;
inin[8].X:=50;
inin[8].Y:=100;

for I := 1 to 8 do
  begin
    coordenadas[i]:=inin[i];
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
for I := 1 to 7 do
  begin
    Image1.Canvas.MoveTo(Coordenadas[i].X,Coordenadas[i].Y);
    Image1.Canvas.LineTo(Coordenadas[i+1].X,Coordenadas[i+1].Y);
  end;
    Image1.Canvas.MoveTo(Coordenadas[8].X,Coordenadas[8].Y);
    Image1.Canvas.LineTo(Coordenadas[1].X,Coordenadas[1].Y);
end;

procedure TForm1.Button3Click(Sender: TObject);
var angulo:integer;
alpha,xaux,yaux:real;
begin

angulo:=StrToInt(Edit1.Text);
alpha:=(angulo*pi)/180.0;
for I := 1 to 8 do
  begin
    xaux:=Coordenadas[i].X*cos(alpha)+Coordenadas[i].Y*sin(alpha);
    yaux:=-Coordenadas[I].X*sin(alpha)+Coordenadas[i].Y*cos(alpha);
    Coordenadas[I].X:=round(xaux);
    Coordenadas[i].Y:=round(yaux);
  end;

end;

procedure TForm1.Button4Click(Sender: TObject);
var xc,yc,tx,ty,alpha,xaux,yaux:real;
angulo:integer;
begin
angulo:=StrToInt(Edit1.Text);
alpha:=(angulo*pi)/180.0;
xc:=(coordenadas[1].X+Coordenadas[5].X)/2;
yc:=(coordenadas[2].Y+Coordenadas[6].Y)/2;
txi:=round(xc);
tyi:=round(yc);
for I := 1 to 8 do
  begin
    Coordenadas[i].X:=Coordenadas[i].X-txi;
    Coordenadas[i].Y:=Coordenadas[i].Y-tyi;
    xaux:=Coordenadas[i].X*cos(alpha)+Coordenadas[i].Y*sin(alpha);
    yaux:=-Coordenadas[I].X*sin(alpha)+Coordenadas[i].Y*cos(alpha);
    Coordenadas[I].X:=round(xaux);
    Coordenadas[i].Y:=round(yaux);
    Coordenadas[i].X:=Coordenadas[i].X+txi;
    Coordenadas[i].Y:=Coordenadas[i].Y+tyi;
  end;

end;

procedure TForm1.Button5Click(Sender: TObject);
var xc,yc,tx,ty,alpha,xaux,yaux:real;
angulo:integer;
begin
angulo:=StrToInt(Edit1.Text);
alpha:=(angulo*pi)/180.0;
xc:=(coordenadas[1].X+Coordenadas[5].X)/2;
yc:=(coordenadas[2].Y+Coordenadas[6].Y)/2;
txi:=round(xc);
tyi:=round(yc);
for I := 1 to 8 do
  begin
    Coordenadas[i].X:=Coordenadas[i].X-txi;
    Coordenadas[i].Y:=Coordenadas[i].Y-tyi;
    xaux:=Coordenadas[i].X*cos(alpha)+Coordenadas[i].Y*sin(alpha);
    yaux:=-Coordenadas[I].X*sin(alpha)+Coordenadas[i].Y*cos(alpha);
    Coordenadas[I].X:=round(xaux);
    Coordenadas[i].Y:=round(yaux);
    Coordenadas[i].X:=Coordenadas[i].X+txi;
    Coordenadas[i].Y:=Coordenadas[i].Y+tyi;
  end;

  for I := 1 to 7 do
  begin
    Image1.Canvas.MoveTo(Coordenadas[i].X,Coordenadas[i].Y);
    Image1.Canvas.LineTo(Coordenadas[i+1].X,Coordenadas[i+1].Y);
  end;
    Image1.Canvas.MoveTo(Coordenadas[8].X,Coordenadas[8].Y);
    Image1.Canvas.LineTo(Coordenadas[1].X,Coordenadas[1].Y);

end;

procedure TForm1.Button6Click(Sender: TObject);
begin
Image1.Canvas.Brush.Color:=clwhite;
Image1.Canvas.Rectangle(-1,-1,501,501);
end;

end.
