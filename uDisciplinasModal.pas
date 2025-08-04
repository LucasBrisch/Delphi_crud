unit uDisciplinasModal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmDisciplinasCRUD = class(TForm)
    ModalDisciplinas: TPanel;
    frmDisciplinasTitle: TLabel;
    DisciplinaNomeHolder: TPanel;
    DisciplinaNomeLabel: TLabel;
    DisciplinaNomeEdit: TEdit;
    DisciplinasCodHolder: TPanel;
    DisciplinaCodLabel: TLabel;
    DisciplinaCodEdit: TEdit;
    EnviarDisciplina: TButton;
    CancelarDisciplina: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDisciplinasCRUD: TfrmDisciplinasCRUD;

implementation

{$R *.dfm}

end.
