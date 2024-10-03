unit untInterfaceSOLID;

interface

uses
  FireDAC.Comp.Client;

type
  IConexao = interface
    ['{DBDBE8A5-0C29-4E85-9BA4-A84183F2D521}']

  function GetConexao: TFDConnection;
  end;

implementation

end.
