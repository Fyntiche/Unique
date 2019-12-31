unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, TeEngine, Series, GanttCh, ExtCtrls,
  TeeProcs, Chart, Grids, jpeg, ComCtrls, Menus, XPMan, ComObj, ExtDlgs;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Chart1: TChart;
    Series1: TGanttSeries;
    Label2: TLabel;
    Button3: TButton;
    Button2: TButton;
    Panel2: TPanel;
    Image1: TImage;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    XPManifest1: TXPManifest;
    Button6: TButton;
    Button7: TButton;
    Button4: TButton;
    Button5: TButton;
    Button8: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Label4: TLabel;
    StringGrid2: TStringGrid;
    Button9: TButton;
    CheckBox1: TCheckBox;
    Edit3: TEdit;
    Button10: TButton;
    Label5: TLabel;
    Button11: TButton;
    CheckBox2: TCheckBox;
    BitBtn4: TBitBtn;
    Button13: TButton;
    Button12: TButton;
    Button14: TButton;
    Button15: TButton;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure N11Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Edit1Click(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Button11Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure StringGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tab_order:integer;
  key:byte;
  iteraci:byte;
  key1:byte;
  qwe:byte;
  shag:integer;
  W, Table: Variant;
  max2:integer;
  Form1: TForm1;
  wdApp : Variant;
  i,j:integer; //���������� ��� �����
  b1:integer; //���������� ������� � ������� "�������"
  fg:integer;
  nm:integer;
  zz,xx:byte;

implementation
uses Unit2, Unit4;
{$R *.dfm}
procedure TForm1.FormCreate(Sender: TObject);
begin
  Application.Title:='������';
end;

procedure postr;
var
zcv:double;
begin
   for i:=1 to Form1.StringGrid1.RowCount-1 do
    begin
      zcv:=form1.DateTimePicker1.Date-StrToDate('30.12.1899');
      form1.Series1.AddGantt(strtoint(form1.StringGrid1.Cells[3,i])+zcv,(strtoint(form1.StringGrid1.Cells[3,i])+strtoint(form1.StringGrid1.Cells[4,i]))+zcv,strtoint(form1.StringGrid1.Cells[0,i]),(form1.StringGrid1.Cells[6,i]+'; ���.='+form1.StringGrid1.Cells[5,i]));
    end;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  form1.Height:=480;
  form1.Chart1.Visible:=true;
  form1.Series1.Clear;
  postr;
end;

procedure TForm1.StringGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 if ((StringGrid1.Col>0) and (StringGrid1.Col<6)) then
  if not (key in ['0'..'9',#8]) then key:=#0;
end;

procedure schet();
begin
//������ ��� ������ ��������
  for i:=1 to form1.StringGrid1.RowCount-1 do
    for j:=1 to form1.StringGrid1.RowCount-1 do
      begin
        if strtoint(form1.StringGrid1.Cells[1,i])=strtoint(form1.StringGrid1.Cells[2,j]) then
          begin
            if strtoint(form1.StringGrid1.Cells[3,i])<(strtoint(form1.StringGrid1.Cells[3,j])+strtoint(form1.StringGrid1.Cells[4,j])) then
              form1.StringGrid1.Cells[3,i]:=inttostr(strtoint(form1.StringGrid1.Cells[3,j])+strtoint(form1.StringGrid1.Cells[4,j]));
          end;
      end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  iteraci:=1;
  if (form1.Edit1.Text<>'') then
    begin
      if (form1.Edit2.Text<>'') then
        begin
          if nm=1 then
            begin
              W.Quit;
              W:=UnAssigned;
              nm:=0;
            end;
          tab_order:=0;
          fg:=0;
          W:=CreateOleObject('Word.Application'); nm:=1;
          W.Visible:=false;
          W.Documents.Add;
          form1.StringGrid1.Enabled:=true;
          form1.Label4.Visible:=False;
          form1.Button2.Visible:=true;
          form1.CheckBox2.Visible:=true;
          form1.Button3.Visible:=true;
          form1.BitBtn3.Visible:=true;
          form1.Button5.Visible:=true;
          form1.Button8.Visible:=true;
          form1.Button11.Visible:=true;
          form1.Button12.Visible:=true;
          if form1.Edit1.Text<>'' then qwe:=1;
          Form1.StringGrid1.RowCount:=strtoint(form1.Edit2.Text)+1;
          Form1.StringGrid2.RowCount:=strtoint(form1.Edit2.Text)+1;
          for i:=1 to form1.StringGrid1.RowCount do
            begin
              form1.StringGrid1.Cells[5,i]:=inttostr(0);
              form1.StringGrid1.Cells[1,i]:=inttostr(0);
              form1.StringGrid1.Cells[6,i]:='�������� '+inttostr(i);
              form1.StringGrid1.Cells[0,i]:=inttostr(i);
              form1.StringGrid1.Cells[3,i]:=inttostr(0);
              form1.StringGrid1.Cells[4,i]:=inttostr(0);
              form1.StringGrid1.Cells[2,i]:=inttostr(1);
            end;
          form1.StringGrid1.Cells[0,0]:='�';
          form1.StringGrid1.Cells[1,0]:='��������� ��������';
          form1.StringGrid1.Cells[2,0]:='�������� ��������';
          form1.StringGrid1.Cells[3,0]:='����� ������';
          form1.StringGrid1.Cells[4,0]:='�����������������';
          form1.StringGrid1.Cells[5,0]:='�������';
          form1.StringGrid1.Cells[6,0]:='�������� ��������';
        end else showmessage('������� ���������� ��������!');
      end else showmessage('������� ����������� �� ��������!');
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  application.Terminate;
   W.Quit;
   W:=UnAssigned;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key=VK_F1 Then WinExec ('hh.exe Help.chm', SW_SHOW);  //����� ������� �� ������� F1
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key in ['a'..'z'] + ['�'..'�'] + ['�'..'�'] + ['A'..'Z']+['-']+['+']+['/']+['*'] then
  Key := #0;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if Key in ['a'..'z'] + ['�'..'�'] + ['�'..'�'] + ['A'..'Z']+['-']+['+']+['/']+['*'] then
  Key := #0;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
form1.Button1.Click;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
if form1.Chart1.Page>=2 then form1.Chart1.Page:=form1.Chart1.Page-1;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
form1.Chart1.Page:=form1.Chart1.Page+1;
end;

procedure dobavlenie(vc:integer);
begin
table:=W.ActiveDocument.Tables.Item(vc);
for i:=0 to form1.StringGrid1.RowCount-1 do
    for j:=0 to form1.StringGrid1.ColCount-1 do
      Table.Cell(i+1,j+1).Range.Text:=form1.StringGrid1.Cells[j, i];
end;


procedure LoadTable(Table: TStringGrid);
var List: TStringList;
  i, j: Integer;
begin
List:=TStringList.Create;
 if Form1.OpenDialog1.Execute then begin
   with form1.OpenDialog1 do
  if Execute then
    List.LoadFromFile(FileName);
with Table do
  for i:=0 to RowCount-1 do
  for j:=0 to  ColCount-1 do
    Cells[j, i]:=List[i*ColCount+j];      end;
end;

procedure SaveTable(Table: TStringGrid);
var List: TStringList;
  i, j: Integer;
begin
form1.SaveDialog1.DefaultExt:='txt';
List:=TStringList.Create;
with Table do
  for i:=0 to RowCount-1 do
  for j:=0 to  ColCount-1 do
    List.Add(Cells[j, i]);
with form1.SaveDialog1 do
  if Execute then
    List.SaveToFile(FileName);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
   savetable(form1.StringGrid1);
end;

 procedure TForm1.Button8Click(Sender: TObject);
begin
 Loadtable(form1.StringGrid1);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
   MyRange:Variant;
begin
   W.ActiveDocument.Range.InsertAfter(' ');
   MyRange:=W.ActiveDocument.Range(W.ActiveDocument.Range.End-1, W.ActiveDocument.Range.End-1);
   W.ActiveDocument.Tables.Add(Range:=MyRange, NumRows:=form1.stringgrid1.rowcount, NumColumns:=form1.stringgrid1.colcount);
   inc(tab_order);
   dobavlenie(tab_order);
   end;

procedure TForm1.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  zz:=0;
  if (form1.edit2.text<>'') and (form1.edit1.text<>'') then
    if (form1.stringgrid1.cells[Acol,Arow]<>'') then
      begin
          if (Arow>0) then
            if  (Acol=5) then
              if (strtoint(StringGrid1.Cells[5,Arow]) > strtoint(form1.Edit1.text)) then
                begin
                  zz:=Arow; xx:=5;
                  StringGrid1.Canvas.Brush.Color := clRed;
                  form1.Label4.Visible:=true;
                  form1.Button2.Enabled:=false;
                  form1.Button3.Enabled:=false;
                end;
          if (Arow>0) then
            if  (Acol=1) then
              if (strtoint(Stringgrid1.cells[1,Arow])>=strtoint(form1.stringgrid1.cells[2,Arow]))  then
                begin
                  zz:=Arow; xx:=1;
                  StringGrid1.Canvas.Brush.Color := clRed;
                  form1.Label4.Visible:=true;
                  form1.Button2.Enabled:=false;
                  form1.Button3.Enabled:=false;
                end;
            if (Arow>0) then
            if  (Acol=2) then
              if (strtoint(Stringgrid1.cells[1,Arow])>=strtoint(form1.stringgrid1.cells[2,Arow]))  then
                begin
                  zz:=Arow; xx:=2;
                  StringGrid1.Canvas.Brush.Color := clRed;
                  form1.Label4.Visible:=true;
                  form1.Button2.Enabled:=false;
                  form1.Button3.Enabled:=false;
                end;
        if (ACol > 0) and (ARow > 0) then
          begin
            StringGrid1.Canvas.FillRect(Rect);
            StringGrid1.Canvas.Font.Color:=clBlack;
            StringGrid1.Canvas.TextOut(Rect.Left, Rect.Top, StringGrid1.Cells[ACol, ARow]); //�����
          end;
      end
    else
      begin
        showmessage('������� ������!');
        StringGrid1.Canvas.Brush.Color := clRed;
        form1.Label4.Visible:=true;
        form1.Button2.Enabled:=false;
        form1.Button3.Enabled:=false;
        form1.bitbtn3.Enabled:=false;
        if (ACol > 0) and (ARow > 0)  then
          begin
            StringGrid1.Canvas.FillRect(Rect);
            StringGrid1.Canvas.Font.Color:=clBlack;
            StringGrid1.Canvas.TextOut(Rect.Left, Rect.Top, StringGrid1.Cells[ACol, ARow]); //�����
          end;
      end;
end;

procedure TForm1.Edit1Click(Sender: TObject);
begin
qwe:=0;
end;

procedure TForm1.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
vb:byte;
begin
key1:=1;
vb:=0;
for i:=1 to form1.StringGrid1.RowCount do
    if (strtoint(StringGrid1.Cells[5,i]) <= strtoint(form1.Edit1.text)) then vb:=vb+1;;
    if vb=form1.StringGrid1.RowCount then   begin
       form1.Button2.Enabled:=true;
       form1.Button3.Enabled:=true;
       form1.Label4.Visible:=false;
end;end;


procedure TForm1.Button9Click(Sender: TObject);
begin
W.Visible:=True;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  form1.Chart1.MaxPointsPerPage:=strtoint(form1.edit3.text);
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if Key in ['a'..'z'] + ['�'..'�'] + ['�'..'�'] + ['A'..'Z']+['-']+['+']+['/']+['*'] then
  Key := #0;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
iteraci:=1;
if form1.CheckBox2.Checked=True then
 begin
for i:=1 to form1.StringGrid1.RowCount do
          begin
            form1.StringGrid1.Cells[5,i]:=inttostr(random(strtoint(form1.edit1.text))+1);
            form1.StringGrid1.Cells[1,i]:=inttostr(i);
            form1.StringGrid1.Cells[6,i]:='�������� '+inttostr(i);
            form1.StringGrid1.Cells[0,i]:=inttostr(i);
            form1.StringGrid1.Cells[3,i]:=inttostr(0);
            form1.StringGrid1.Cells[4,i]:=inttostr(random(10)+1);
          end;
       for i:=2 to form1.StringGrid1.RowCount do
         form1.StringGrid1.Cells[2,i-1]:=inttostr(i);
 end
  else begin
  for i:=1 to form1.StringGrid1.RowCount do
          begin
            form1.StringGrid1.Cells[5,i]:=inttostr(0);
            form1.StringGrid1.Cells[1,i]:=inttostr(0);
            form1.StringGrid1.Cells[6,i]:='�������� '+inttostr(i);
            form1.StringGrid1.Cells[0,i]:=inttostr(i);
            form1.StringGrid1.Cells[3,i]:=inttostr(0);
            form1.StringGrid1.Cells[4,i]:=inttostr(0);
            form1.StringGrid1.Cells[2,i]:=inttostr(1);
         end;

end;end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  for i:=1 to form1.StringGrid1.RowCount-1 do
    Form1.StringGrid1.cells[3,i]:=inttostr(0);
  for i:=1 to form1.StringGrid1.RowCount-1 do
    for j:=1 to form1.StringGrid1.RowCount-1 do
      begin
        if strtoint(form1.StringGrid1.Cells[1,i])=strtoint(form1.StringGrid1.Cells[2,j]) then
          begin
            if strtoint(form1.StringGrid1.Cells[3,i])<(strtoint(form1.StringGrid1.Cells[3,j])+strtoint(form1.StringGrid1.Cells[4,j])) then
              form1.StringGrid1.Cells[3,i]:=inttostr(strtoint(form1.StringGrid1.Cells[3,j])+strtoint(form1.StringGrid1.Cells[4,j]));
          end;
      end;
      form1.BitBtn3.Click;
    
end;

procedure TForm1.Button3Click(Sender: TObject);
var
zcv:double;
begin
     if iteraci<form1.StringGrid1.RowCount-1 then
       begin
        iteraci:=iteraci+1;
         form1.button9.visible:=true;
    for j:=1 to form1.StringGrid1.RowCount-1 do
      begin
        if strtoint(form1.StringGrid1.Cells[1,iteraci])=strtoint(form1.StringGrid1.Cells[2,j]) then
          begin
            if strtoint(form1.StringGrid1.Cells[3,iteraci])<(strtoint(form1.StringGrid1.Cells[3,j])+strtoint(form1.StringGrid1.Cells[4,j])) then
              form1.StringGrid1.Cells[3,iteraci]:=inttostr(strtoint(form1.StringGrid1.Cells[3,j])+strtoint(form1.StringGrid1.Cells[4,j]));
          end;
      end;
      Form1.Button4.Click
      end
      else  Showmessage('����� ��������!');
  form1.Height:=500;
  form1.Chart1.Visible:=true;
  form1.Series1.Clear;
  for i:=1 to iteraci do
    begin
      zcv:=form1.DateTimePicker1.Date-StrToDate('30.12.1899');
      form1.Series1.AddGantt(strtoint(form1.StringGrid1.Cells[3,i])+zcv,(strtoint(form1.StringGrid1.Cells[3,i])+strtoint(form1.StringGrid1.Cells[4,i]))+zcv,strtoint(form1.StringGrid1.Cells[0,i]),(form1.StringGrid1.Cells[6,i]+'; ���.='+form1.StringGrid1.Cells[5,i]));
    end;
  form1.Button6.Visible:=true;
  form1.Button7.Visible:=true;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
var
i:integer;
z1,x1,c1,v1,b1:integer;
begin
  i:=2;
  while i<>form1.StringGrid1.RowCount-1 do
    begin
      if (strtoint(form1.stringgrid1.cells[1,i])=(strtoint(form1.stringgrid1.cells[1,i-1]))) then
        begin
          if strtoint(form1.stringgrid1.cells[3,i-1])>strtoint(form1.stringgrid1.cells[3,i]) then
            begin
            z1:=strtoint(form1.stringgrid1.cells[1,i-1]);
            x1:=strtoint(form1.stringgrid1.cells[2,i-1]);
            c1:=strtoint(form1.stringgrid1.cells[3,i-1]);
            v1:=strtoint(form1.stringgrid1.cells[4,i-1]);
            b1:=strtoint(form1.stringgrid1.cells[5,i-1]);
            form1.stringgrid1.cells[1,i-1]:=form1.stringgrid1.cells[1,i];
            form1.stringgrid1.cells[2,i-1]:=form1.stringgrid1.cells[2,i];
            form1.stringgrid1.cells[3,i-1]:=form1.stringgrid1.cells[3,i];
            form1.stringgrid1.cells[4,i-1]:=form1.stringgrid1.cells[4,i];
            form1.stringgrid1.cells[5,i-1]:=form1.stringgrid1.cells[5,i];

            form1.stringgrid1.cells[1,i]:=inttostr(z1);
            form1.stringgrid1.cells[2,i]:=inttostr(x1);
            form1.stringgrid1.cells[3,i]:=inttostr(c1);
            form1.stringgrid1.cells[4,i]:=inttostr(v1);
            form1.stringgrid1.cells[5,i]:=inttostr(b1);
            i:=i-1;
            end;
        end;
        i:=i+1;
    end;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  Form1.chart1.PrintLandscape;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  if nm=1 then
            begin
              W.Quit;
              W:=UnAssigned;
              nm:=0;
            end;
  Application.terminate;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  Form1.Chart1.CopyToClipboardBitmap();
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  Chart1.SaveToBitmapFile(FormatDateTime('dd.mm.yyyy_hh.mm', now)+'.bmp');
end;



procedure TForm1.StringGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if zz<>0 then begin
  StringGrid1.Col:=xx;
  StringGrid1.Row:=zz;    end;
end;

end.
