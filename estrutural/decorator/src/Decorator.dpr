program Decorator;

uses
  Vcl.Forms,
  Principal in 'view\Principal.pas' {Form1},
  model.NFC in 'model\model.NFC.pas',
  model.SAT in 'model\model.SAT.pas',
  model.venda.interfaces in 'model\model.venda.interfaces.pas',
  model.Dto.ModeloVendas in 'model\DTO\model.Dto.ModeloVendas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
