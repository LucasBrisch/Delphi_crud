unit uTurmasModal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmTurmasCRUD = class(TForm)
    ModalTurmas: TPanel;
    frmTurmasTitle: TLabel;
    TurmaNomeDoProfessorHolder: TPanel;
    TurmaNomeDoProfessorLabel: TLabel;
    TurmaNomeDoProfessorEdit: TEdit;
    TurmaCodHolder: TPanel;
    TurmaCodLabel: TLabel;
    TurmaCodEdit: TEdit;
    EnviarTurma: TButton;
    CancelarTurma: TButton;
    TurmaNomeDaMateriaHolder: TPanel;
    TurmaNomeDaMateriaLabel: TLabel;
    TurmaNomeDaMateriaEdit: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTurmasCRUD: TfrmTurmasCRUD;

implementation

{$R *.dfm}

end.
