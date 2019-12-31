unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg;

type
  TForm3 = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
implementation
uses Unit2, Unit1;

{$R *.dfm}

procedure TForm3.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := false;
  Form3.Visible:=false;
  Form1.Show;
end;

procedure TForm3.FormClick(Sender: TObject);
begin
  Form1.Visible:=true;
  Form3.Visible:=false;
end;

procedure TForm3.FormKeyPress(Sender: TObject; var Key: Char);
begin
  Form1.Visible:=true;
  Form3.Visible:=false;
end;
end.
