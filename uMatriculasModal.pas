unit uMatriculasModal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmMatriculasCRUD = class(TForm)
    ModalAlunos: TPanel;
    MatriculasAlunosTitle: TLabel;
    MatriculaNomeAlunoHolder: TPanel;
    MatriculaAlunoNomeLabel: TLabel;
    MatriculaCodHolder: TPanel;
    MatriculaCodLabel: TLabel;
    MatriculaCodEdit: TEdit;
    EnviarMatricula: TButton;
    CancelarMatricula: TButton;
    MatriculaCodTurmaHolder: TPanel;
    MatriculaCodTurmaLabel: TLabel;
    ComboBoxAlunos: TComboBox;
    ComboBoxTurmas: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMatriculasCRUD: TfrmMatriculasCRUD;

implementation

{$R *.dfm}

end.
