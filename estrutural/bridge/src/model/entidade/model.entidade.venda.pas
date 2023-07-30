unit model.entidade.venda;

interface

uses
  model.entidade.itensVenda, System.Generics.Collections;
type
  TVenda = class
  private
    FIndOper: string;
    FIndEmit: string;
    FCodPart: string;
    FCodMod: string;
    FCodSit: string;
    FSer: string;
    FNumDoc: string;
    FChvNFe: string;
    FDTDoc: string;
    FDTEs: string;
    FVlDoc: string;
    FIndPgto: string;
    FVlDesc: string;
    FVlAbatNT: string;
    FVlMerc: string;
    FIndFrt: string;
    FVlFrt: string;
    FVlSeg: string;
    FVlOutDa: string;
    FVlBcIcms: string;
    FVlIcms: string;
    FVlBcIcmsST: string;
    FVlIcmsST: string;
    FVlIPI: string;
    FVlPIS: string;
    FVlCOFINS: string;
    FVlPISST: string;
    FVlCOFINSS: string;
    FitensVenda: TObjectList<TItensVenda>;
  public
    constructor Create;
    destructor Destroy; override;

    property IndOper: string read FIndOper write FIndOper;
    property IndEmit: string read FIndEmit write FIndEmit;
    property CodPart: string read FCodPart write FCodPart;
    property CodMod: string read FCodMod write FCodMod;
    property CodSit: string read FCodSit write FCodSit;
    property Ser: string read FSer write FSer;
    property NumDoc: string read FNumDoc write FNumDoc;
    property ChvNFe: string read FChvNFe write FChvNFe;
    property DTDoc: string read FDTDoc write FDTDoc;
    property DTEs: string read FDTEs write FDTEs;
    property VlDoc: string read FVlDoc write FVlDoc;
    property IndPgto: string read FIndPgto write FIndPgto;
    property VlDesc: string read FVlDesc write FVlDesc;
    property VlAbatNT: string read FVlAbatNT write FVlAbatNT;
    property VlMerc: string read FVlMerc write FVlMerc;
    property IndFrt: string read FIndFrt write FIndFrt;
    property VlFrt: string read FVlFrt write FVlFrt;
    property VlSeg: string read FVlSeg write FVlSeg;
    property VlOutDa: string read FVlOutDa write FVlOutDa;
    property VlBcIcms: string read FVlBcIcms write FVlBcIcms;
    property VlIcms: string read FVlIcms write FVlIcms;
    property VlBcIcmsST: string read FVlBcIcmsST write FVlBcIcmsST;
    property VlIcmsST: string read FVlIcmsST write FVlIcmsST;
    property VlIPI: string read FVlIPI write FVlIPI;
    property VlPIS: string read FVlPIS write FVlPIS;
    property VlCOFINS: string read FVlCOFINS write FVlCOFINS;
    property VlPISST: string read FVlPISST write FVlPISST;
    property VlCOFINSS: string read FVlCOFINSS write FVlCOFINSS;
    property itensVenda: TObjectList<TItensVenda> read FitensVenda write FitensVenda;
  end;


implementation

{ TVenda }

constructor TVenda.Create;
begin
  FitensVenda:= TObjectList<TItensVenda>.Create;
end;

destructor TVenda.Destroy;
begin
  FitensVenda.Free;
  inherited;
end;

end.
