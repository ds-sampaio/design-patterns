unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, model.venda,
  System.Generics.Collections,System.JSON;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  model.SPEDC100, model.SPEDC170;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  LJson : TJSONArray;
begin
  LJson := TJSONObject.ParseJSONValue(Memo1.Lines.Text) as TJSONArray;
  try
    TModelVenda
     .New(LJson)
     .Exportar(TModelSPEDC100.New)
     .Exportar(TModelSPEDC170.New);
  finally
    LJson.Free;
  end;

end;

end.
