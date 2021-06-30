unit Classe.Pessoa;

interface

uses
 System.SysUtils;

type
  TPessoa = class
  private
    FNome: String;
    FEmail: String;
    procedure SetNome(const Value: String);
    procedure SetEmail(const Value: String);

  public
  property Nome : String read FNome write SetNome;
  property Email : String read FEmail write SetEmail;

  end;

implementation

procedure TPessoa.SetEmail(const Value: String);
begin
  FEmail := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
if Value = '' then  raise Exception.Create('O nome não pode ser vazio!!!');

  FNome := Value;
end;

end.
