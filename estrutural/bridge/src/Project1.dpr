program Project1;

uses
  Vcl.Forms,
  Principal in 'view\Principal.pas' {Form1},
  model.entidade.venda in 'model\entidade\model.entidade.venda.pas',
  model.interfaces in 'model\model.interfaces.pas',
  model.venda in 'model\model.venda.pas',
  model.SPEDC100 in 'model\SPED\model.SPEDC100.pas',
  model.SPEDC170 in 'model\SPED\model.SPEDC170.pas',
  model.entidade.itensVenda in 'model\entidade\model.entidade.itensVenda.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
