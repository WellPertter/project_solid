unit untMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, untSolidContadorClass;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    FContador: TContador;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessage('Valor atual: ' + IntToStr(FContador.getValor));
  FContador.incremento;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FContador.resetar;
  ShowMessage('Contagem resetada!');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FContador := TContador.Create();
end;

end.
