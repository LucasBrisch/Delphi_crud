unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, uconnection,
  Vcl.Grids, uAlunosModal, uProfessoresModal, uDisciplinasModal, uTurmasModal, uMatriculasModal;

type
  TCRUD_escolar = class(TForm)
    PageControl1: TPageControl;
    Professores: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Botoes_disciplinas: TPanel;
    Adicionar_disciplinas: TButton;
    Editar_disciplinas: TButton;
    Excluir_disciplinas: TButton;
    Botoes_alunos: TPanel;
    Adicionar_alunos: TButton;
    Editar_alunos: TButton;
    Excluir_alunos: TButton;
    Botoes_Matriculas: TPanel;
    Adicionar_matriculas: TButton;
    Editar_matriculas: TButton;
    Excluir_matriculas: TButton;
    Botoes_professores: TPanel;
    Adicionar_Professores: TButton;
    Editar_professores: TButton;
    Excluir_professores: TButton;
    Botoes_Turmas: TPanel;
    Adicionar_turmas: TButton;
    Editar_turmas: TButton;
    Excluir_turmas: TButton;
    Grid_Turmas: TStringGrid;
    Grid_professores: TStringGrid;
    Grid_Matriculas: TStringGrid;
    Grid_Disciplinas: TStringGrid;
    Grid_Alunos: TStringGrid;
    procedure Adicionar_alunosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CRUD_escolar: TCRUD_escolar;

implementation

{$R *.dfm}

procedure TCRUD_escolar.Adicionar_alunosClick(Sender: TObject);

var ID: integer;
begin
frmAlunosCRUD.Show;

end;

end.
