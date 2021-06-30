unit Classe.Administrador;

interface

uses Classe.Funcionario;

type
TAdministrador = class(TFuncionario)
  private
    FBonus: Currency;
    procedure SetBonus(const Value: Currency);

 public
 property Bonus : Currency read FBonus write SetBonus;

 function CalcularSalario : Currency;  override;
end;

implementation

{ TAdministrador }

function TAdministrador.CalcularSalario: Currency;
begin
 Result := Salario + Bonus;
end;

procedure TAdministrador.SetBonus(const Value: Currency);
begin
  FBonus := Value;
end;

end.
