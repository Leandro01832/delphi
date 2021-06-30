program ProjetoIniciante;

uses
  Vcl.Forms,
  View.Formulario in 'View.Formulario.pas' {Form1},
  Classe.Vendedor in 'Classe.Vendedor.pas',
  Classe.Funcionario in 'Classe.Funcionario.pas',
  Classe.Pessoa in 'Classe.Pessoa.pas',
  Classe.Administrador in 'Classe.Administrador.pas',
  Classe.Cliente in 'Classe.Cliente.pas',
  Classe.PessoaLgpd in 'Classe.PessoaLgpd.pas',
  Classe.PessoaDado in 'Classe.PessoaDado.pas',
  View.CadastrarCLiente in 'View.CadastrarCLiente.pas' {FrmCadastrarCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFrmCadastrarCliente, FrmCadastrarCliente);
  Application.Run;
end.
