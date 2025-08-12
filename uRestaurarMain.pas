unit uRestaurarMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, urestaurarmodal;

type
  TForm2 = class(TForm)

  private
    { Private declarations }
  public
    { Public declarations }
    class procedure abrir_modal;
  end;

var
  Form2: TForm2;
  tabela : String;

implementation

{$R *.dfm}

{ TForm2 }

class procedure TForm2.abrir_modal;
begin
frmrestaurarModal.NomeTabela := Tabela;
frmRestaurarModal.showmodal;
end;

end.
