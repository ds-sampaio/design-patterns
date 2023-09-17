unit model.NFC;

interface

uses
  model.venda.interfaces;

type
  TModelNFC = class(TInterfacedObject, iVenda)
    private
      FDecorator : iVenda;
    public
      constructor Create(aDecorator : iVenda);
      class function New(aDecorator : iVenda): iVenda;
      function venda : String;
  end;

implementation

{ TModelNFC }

constructor TModelNFC.Create(aDecorator : iVenda);
begin
  FDecorator := aDecorator;
end;

class function TModelNFC.New(aDecorator : iVenda): iVenda;
begin
  Result := Self.Create(aDecorator);
end;

function TModelNFC.venda: String;
begin
 Result :=  ' Venda Realizada no NFC ';
  if Assigned(FDecorator) then
    Result := Result + FDecorator.venda;
end;

end.

