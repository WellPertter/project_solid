unit untSolidContadorClass;

interface

uses
  untSolidContadorInterface;

type
  TContador = class(TInterfacedObject, IContador)
  private
    FValor: Integer;
  public
    function getValor: Integer;
    procedure incremento;
    procedure resetar;
  end;

implementation

{ TContador }

function TContador.getValor: Integer;
begin
 Result := FValor;
end;

procedure TContador.incremento;
begin
  Inc(FValor);
end;

procedure TContador.resetar;
begin
  FValor := 1;
end;

end.
