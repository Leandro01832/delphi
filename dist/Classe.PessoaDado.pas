unit Classe.PessoaDado;

interface

uses Classe.Pessoa;

type
TPessoaDado = class(TPessoa)
  private
    FCpf: string;
    FRg: String;
    procedure SetCpf(const Value: string);
    procedure SetRg(const Value: String);

  public
  property Cpf : string read FCpf write SetCpf;
  property Rg : String read FRg write SetRg;

end;

implementation

{ TPessoaDado }

procedure TPessoaDado.SetCpf(const Value: string);
begin
  FCpf := Value;
end;

procedure TPessoaDado.SetRg(const Value: String);
begin
  FRg := Value;
end;

end.
