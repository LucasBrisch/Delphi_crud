unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, uconnection, system.Generics.Collections,
  Vcl.Grids, uAlunosModal, uProfessoresModal, uDisciplinasModal, uTurmasModal, uMatriculasModal, ualuno;

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
    procedure popularListaAlunos;
    procedure FormCreate(Sender: TObject);
    procedure Editar_alunosClick(Sender: TObject);

  private
    { Private declarations }
  public

  AlunosLista : Tobjectlist <taluno>;

  end;

var
  CRUD_escolar: TCRUD_escolar;

implementation


{$R *.dfm}

procedure TCRUD_escolar.Adicionar_alunosClick(Sender: TObject);

begin
  frmAlunosCRUD.Showmodal;
  popularListaAlunos;
  fillstudents;
end;

procedure TCRUD_escolar.Editar_alunosClick(Sender: TObject);
var linhaselecionada, idString, nome : string;
posicaoseparador : integer;
begin
uAlunosmodal.frmAlunosCRUD.edit := true;



if Alunosbox.ItemIndex = -1 then begin
  showmessage ('por favor escolha um aluno para ser editado');
  exit
end;
    linhaSelecionada := Alunosbox.Items[Alunosbox.ItemIndex];
    // O 'Pos' encontra a posição do separador " - "
    posicaoSeparador := Pos(' - ', linhaSelecionada);
    // O 'Copy' extrai o que está antes do separador
    idString := Copy(linhaSelecionada, 1, posicaoSeparador - 1);


dmDatabase.SelectAlunos.Close;
dmDatabase.SelectAlunos.SQL.Text := 'SELECT id, nome FROM alunos WHERE id = '+idstring;;
uAlunosmodal.frmAlunosCRUD.aluno_editado.Nome := '';
dmDatabase.SelectAlunos.Open;

uAlunosmodal.frmAlunosCRUD.aluno_editado.Codigo := dmDatabase.SelectAlunos.FieldByName('id').AsInteger;
uAlunosmodal.frmAlunosCRUD.aluno_editado.Nome := dmDatabase.SelectAlunos.FieldByName('nome').AsString;

frmAlunosCRUD.ShowModal;
popularListaAlunos;
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
        showmessage('excluido com sucesso');
        popularListaAlunos;
        fillstudents;
      except
        showmessage('erro')
      end;

  end;
end;

procedure TCRUD_escolar.fillstudents;
var
  id, nome: string;
  aluno: taluno;
  I: integer;
begin
  Alunosbox.Clear;

  for I := 0 to AlunosLista.Count - 1 do begin
    aluno := AlunosLista[I];
    Alunosbox.AddItem(inttostr(Aluno.Codigo) + ' - ' + aluno.Nome, nil);
  end;

end;

procedure TCRUD_escolar.FormCreate(Sender: TObject);
begin
  Alunoslista := TObjectList<TAluno>.Create(True);

  popularlistaAlunos;
end;

procedure TCRUD_escolar.FormShow(Sender: TObject);
begin
uAlunosmodal.frmAlunosCRUD.aluno_editado := taluno.Create();
fillstudents;
end;

procedure TCRUD_escolar.popularListaAlunos;
var
aluno : TAluno;
begin
  if not Assigned(dmDatabase) or not Assigned(dmDatabase.SelectAlunos) then Exit;

  AlunosLista.Clear;

  dmDatabase.SelectAlunos.Close;
  dmDatabase.SelectAlunos.SQL.Text := 'SELECT id, nome FROM alunos WHERE ativo = TRUE order by ID';
  dmDatabase.SelectAlunos.Open;

while not dmDatabase.SelectAlunos.Eof do
begin
aluno := TAluno.Create();
aluno.Codigo := dmDatabase.SelectAlunos.FieldByName('id').AsInteger;
aluno.Nome := dmDatabase.SelectAlunos.FieldByName('nome').AsString;

AlunosLista.Add(aluno);
dmDatabase.SelectAlunos.Next;
end;
end;

end.


