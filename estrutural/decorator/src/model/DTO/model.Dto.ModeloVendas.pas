unit model.Dto.ModeloVendas;

interface

type
  TDTOModeloVendas = class
  private
    FSAT: String;
    FNFC: String;
    public
      property SAT: String read FSAT write FSAT;
      property NFC: String read FNFC write FNFC;
  end;

implementation

end.
