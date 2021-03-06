unit View.Formulario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, View.CadastrarCLiente,
  Classe.Cliente, View.CadastrarVendedor, View.CadastrarAdministrador;



type
  TForm1 = class(TForm)
    LabelClass: TLabel;
    ComboBoxClass: TComboBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TPessoa }



procedure TForm1.Button1Click(Sender: TObject);

  var
  formularioCliente : TFrmCadastrarCliente;
   formularioVendedor :   TFrmCadastrarVendedor;
    formularioAdministrador :  TFrmCadastrarAdministrador;

begin

formularioCliente := TFrmCadastrarCliente.Create(Self);
formularioVendedor := TFrmCadastrarVendedor.Create(Self);
formularioAdministrador := TFrmCadastrarAdministrador.Create(Self);

if ComboBoxClass.Text = 'Cliente' then  formularioCliente.Show;
if ComboBoxClass.Text = 'Vendedor' then  formularioVendedor.Show;
if ComboBoxClass.Text = 'Administrador' then  formularioAdministrador.Show;

end;

end.
