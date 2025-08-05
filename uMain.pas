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
    Grid_professores: TStringGrid;
    Grid_Matriculas: TStringGrid;
    Grid_Disciplinas: TStringGrid;
    AlunosBox: TListBox;
    procedure Adicionar_alunosClick(Sender: TObject);
    procedure fillstudents;
    procedure FormShow(Sender: TObject);
    procedure Excluir_alunosClick(Sender: TObject);

  private
    { Private declarations }
  public

  end;

var
  CRUD_escolar: TCRUD_escolar;

implementation

{$R *.dfm}

procedure TCRUD_escolar.Adicionar_alunosClick(Sender: TObject);

var ID: integer;
begin
  frmAlunosCRUD.Showmodal;
  fillstudents;
end;

procedure TCRUD_escolar.Excluir_alunosClick(Sender: TObject);
var
  linhaSelecionada: string;
  posicaoSeparador: Integer;
  idString: string;
  alunoID: Integer;
begin
  if Alunosbox.ItemIndex >= 0 then
  begin
    linhaSelecionada := Alunosbox.Items[Alunosbox.ItemIndex];

    // O 'Pos' encontra a posição do separador " - "
    posicaoSeparador := Pos(' - ', linhaSelecionada);
    // O 'Copy' extrai o que está antes do separador
    idString := Copy(linhaSelecionada, 1, posicaoSeparador - 1);

      try
        dmDatabase.InsertQuery.SQL.Text := 'UPDATE alunos SET ativo = false WHERE ID = ' + idString;
        dmDatabase.InsertQuery.ExecSQL;
        showmessage(idstring)
      except
        showmessage('erro')
      end;

  end;
end;

procedure TCRUD_escolar.fillstudents;
var
  id, nome: string;
begin
  Alunosbox.Clear;

  dmDatabase.SelectAlunos.Close;
  dmDatabase.SelectAlunos.Open;

  while not dmDatabase.SelectAlunos.Eof do
  begin
    id := dmDatabase.SelectAlunos.FieldByName('id').AsString;
    nome := dmDatabase.SelectAlunos.FieldByName('nome').AsString;

    Alunosbox.AddItem(id + ' - ' + nome, nil);

    dmDatabase.SelectAlunos.Next;
  end;
end;

procedure TCRUD_escolar.FormShow(Sender: TObject);
begin
fillstudents;
end;

end.


