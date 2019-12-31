unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, TeEngine, Series, GanttCh, ExtCtrls,
  TeeProcs, Chart;

type
  TForm2 = class(TForm)
    Chart1: TChart;
    Series1: TGanttSeries;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
Form1.visible:=true;
Form2.Close;
end;

procedure TForm2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
If Key=VK_F1 Then WinExec ('hh.exe Help.chm', SW_SHOW);  //вызов справки по нажатию F1
end;

end.
