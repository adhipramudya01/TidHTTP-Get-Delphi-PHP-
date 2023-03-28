unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, ExtCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    H: TIdHTTP;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);

{
procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



{
procedure TForm1.Button1Click(Sender: TObject);
begin
end;
 }

function twonumbers(a,b:real):real;
var
  url:string;
  H:TidHTTP;
  ss:Tstringstream;

begin

url:='http://localhost/test/youtube.php?a=' + floattostr(a)+'&b='+floattostr(b);
H :=Tidhttp.Create(nil);
try
        ss:=tstringstream.Create('');
        H.Get(url,ss);
        result:=strtofloat(ss.DataString);
        finally ss.Free;
        end;
        //finally H.free;
        end;


procedure TForm1.Button1Click(Sender: TObject);
begin
edit3.Text:=floattostr(twonumbers(strtofloat(edit1.Text),strtofloat(edit2.Text)));

end;

end.








end.
