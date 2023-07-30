unit model.SPEDC170;

interface

uses
  model.interfaces, model.entidade.venda, System.Classes, System.SysUtils;

type
  TModelSPEDC170 = class(TInterfacedObject, iExport<TVenda>)
    private
      FArquivo : TStringList;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iExport<TVenda>;
      function GerarRegistros(aValue: TVenda) : iExport<TVenda>;
  end;

implementation

const
  ARQUIVO = 'SPED.TXT';

{ TModelSPEDC170 }

constructor TModelSPEDC170.Create;
begin
  FArquivo := TStringList.Create;
  if FileExists(ARQUIVO) then
     FArquivo.LoadFromFile(ARQUIVO);

  FArquivo.Add('|C170|0|1');
end;

destructor TModelSPEDC170.Destroy;
begin
  FArquivo.Free;
  inherited;
end;

function TModelSPEDC170.GerarRegistros(aValue: TVenda): iExport<TVenda>;
var
 I : Integer;
begin
  Result := Self;
  for I := 0 to Pred(aValue.itensVenda.Count) do
      FArquivo.Add(Format('|C170|%d|%f|%d|%f', [aValue.itensVenda[I].codItem,
                                                aValue.itensVenda[I].qtd,
                                                aValue.itensVenda[I].sequencia,
                                                aValue.itensVenda[I].valor]));

  FArquivo.SaveToFile(ARQUIVO);

end;

class function TModelSPEDC170.New: iExport<TVenda>;
begin
  Result := Self.Create;
end;

end.

