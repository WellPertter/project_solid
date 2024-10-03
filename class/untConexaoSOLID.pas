unit untConexaoSOLID;

interface

uses
  FireDAC.Comp.Client, untInterfaceSOLID, FireDAC.Stan.Def,
  FireDAC.Phys.MySQLDef, FireDAC.Phys.MySQL;

type
  TConexao = class(TInterfacedObject, IConexao)
  private
    FConexao: TFDConnection;

  public
    constructor Create(AServer: string = ''; ADataBase: string = '';
      aUser: string = ''; APassword: string = '';
      aVendorLib: string = '\libmysql.dll'; aDrive: string = 'MySQL');
    destructor Destroy; override;

    function GetConexao: TFDConnection;
  end;

implementation

{ TConexao }

constructor TConexao.Create(AServer, ADataBase, aUser, APassword, aVendorLib,
  aDrive: string);
begin
  inherited Create;

  FConexao := TFDConnection.Create(nil);

  FConexao.Params.DriverID := aDrive;
  FConexao.Params.Database := ADataBase;
  FConexao.Params.UserName := aUser;
  FConexao.Params.Password := APassword;

  FConexao.Params.Add('VendorLib=' + aVendorLib);
  FConexao.Params.Add('Server=' + AServer);

  FConexao.Connected := True;
end;

destructor TConexao.Destroy;
begin
  FConexao.Free;
  inherited;
end;

function TConexao.GetConexao: TFDConnection;
begin
  Result := FConexao;
end;

end.
