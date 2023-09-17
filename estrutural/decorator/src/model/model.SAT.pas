unit model.SAT;

interface

uses
  model.venda.interfaces;

type
  TModelSAT = class(TInterfacedObject, iVenda)
    private
      FDecorator : iVenda;
    public
      constructor Create(aDecorator : iVenda);
      class function New(aDecorator : iVenda): iVenda;
      function venda : String;
  end;

implementation

{ TModelSAT }

constructor TModelSAT.Create(aDecorator : iVenda);
begin
  FDecorator := aDecorator;
end;

class function TModelSAT.New(aDecorator : iVenda): iVenda;
begin
  Result := Self.Create(aDecorator);
end;

function TModelSAT.venda: String;
begin
  Result :=  ' Venda Realizada no SAT ';
  if Assigned(FDecorator) then
    Result := Result + FDecorator.venda;
end;

end.
