unit uAlunosModal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmAlunosCRUD = class(TForm)
    ModalAlunos: TPanel;
    frmAlunosTitle: TLabel;
    AlunoNomeEdit: TEdit;
    AlunoNomeLabel: TLabel;
    AlunoNomeHolder: TPanel;
    AlunoCodHolder: TPanel;
    AlunoCodLabel: TLabel;
    AlunoCodEdit: TEdit;
    EnviarAluno: TButton;
    CancelarAluno: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAlunosCRUD: TfrmAlunosCRUD;

implementation

{$R *.dfm}

end.
