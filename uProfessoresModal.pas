unit uProfessoresModal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmProfessoresCRUD = class(TForm)
    ModalAlunos: TPanel;
    frmProfessorTitle: TLabel;
    ProfessorNomeHolder: TPanel;
    ProfessorNameLabel: TLabel;
    ProfessorNomeEdit: TEdit;
    ProfessorCodHolder: TPanel;
    ProfessorCodLabel: TLabel;
    ProfessorCodEdit: TEdit;
    EnviarProfessor: TButton;
    CancelarProfessor: TButton;
    ProfessorCPFHolder: TPanel;
    ProfessorCPFLabel: TLabel;
    ProfessorCPFEdit: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProfessoresCRUD: TfrmProfessoresCRUD;

implementation

{$R *.dfm}

end.
