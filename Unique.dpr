program Unique;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit3 in 'Unit3.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
