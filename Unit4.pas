unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Buttons;

type
  TForm4 = class(TForm)
    StringGrid1: TStringGrid;
    BitBtn1: TBitBtn;
    StringGrid2: TStringGrid;
    Label1: TLabel;
    Edit1: TEdit;
    StringGrid3: TStringGrid;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
form1.visible:=true;
Form4.Close;
end;

end.
