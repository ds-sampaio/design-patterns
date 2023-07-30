unit model.SPEDC100;

interface

uses
  model.interfaces, model.entidade.venda, System.Classes, System.SysUtils;

type
  TModelSPEDC100 = class(TInterfacedObject, iExport<TVenda>)
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

{ TModelSPEDC100 }

constructor TModelSPEDC100.Create;
begin
  FArquivo := TStringList.Create;
  if FileExists(ARQUIVO) then
     FArquivo.LoadFromFile(ARQUIVO);

  FArquivo.Add('|C100|0|1');
end;

destructor TModelSPEDC100.Destroy;
begin
  FArquivo.Free;
  inherited;
end;

function TModelSPEDC100.GerarRegistros(aValue: TVenda): iExport<TVenda>;
begin
  Result := Self;
  FArquivo.Add(
    '|C100|' +
    aValue.IndOper + '|' +
    aValue.IndEmit + '|' +
    aValue.CodPart + '|' +
    aValue.CodMod + '|' +
    aValue.CodSit + '|' +
    aValue.Ser + '|' +
    aValue.NumDoc + '|' +
    aValue.ChvNFe + '|'
  );
  FArquivo.SaveToFile(ARQUIVO);

end;

class function TModelSPEDC100.New: iExport<TVenda>;
begin
  Result := Self.Create;
end;

end.
