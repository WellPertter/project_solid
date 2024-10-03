program SOLID;

uses
  Vcl.Forms,
  untMain in '..\view\untMain.pas' {Form1},
  untSolidContadorInterface in '..\class\untSolidContadorInterface.pas',
  untSolidContadorClass in '..\class\untSolidContadorClass.pas',
  untInterfaceSOLID in '..\interface\untInterfaceSOLID.pas',
  untConexaoSOLID in '..\class\untConexaoSOLID.pas',
  untQuerySOLID in '..\class\untQuerySOLID.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
