unit Classe.Funcionario;

interface

uses Classe.PessoaDado, System.SysUtils;

type
  TFuncionario = class (TPessoaDado)
  private
    FFuncao: String;
    FSalario: Currency;
    procedure SetFuncao(const Value: String);
    procedure SetSalario(const Value: Currency);

  public
  property Funcao : String read FFuncao write SetFuncao;
  property Salario : Currency read FSalario write SetSalario;

  function CalcularSalario : Currency;  virtual;
  end;

implementation

{ TFuncionario }

function TFuncionario.CalcularSalario: Currency;
begin
 Result := Salario;
end;

procedure TFuncionario.SetFuncao(const Value: String);
begin
  FFuncao := Value;
end;

procedure TFuncionario.SetSalario(const Value: Currency);
begin
if Value <= 0 then  raise Exception.Create('O salario n?o pode ser menor ou igual a zero !!!');

  FSalario := Value;
end;

end.
