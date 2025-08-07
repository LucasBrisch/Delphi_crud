unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, uconnection, system.Generics.Collections,
  Vcl.Grids, uAlunosModal, uProfessoresModal, uDisciplinasModal, uTurmasModal, uMatriculasModal,uprofessor, ualuno, udisciplina;

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
    Grid_Matriculas: TStringGrid;
    AlunosBox: TListBox;
    DisciplinasBox: TListBox;
    ProfessoresBox: TListBox;
    procedure Adicionar_alunosClick(Sender: TObject);
    procedure filldisciplinas;
    procedure fillstudents;
    procedure fillProfessores;
    procedure FormShow(Sender: TObject);
    procedure Excluir_alunosClick(Sender: TObject);
    procedure popularListaAlunos;
    procedure popularListaDisciplinas;
    procedure popularListaProfessores;
    procedure FormCreate(Sender: TObject);
    procedure Editar_alunosClick(Sender: TObject);
    procedure Adicionar_disciplinasClick(Sender: TObject);
    procedure Excluir_disciplinasClick(Sender: TObject);
    procedure Editar_disciplinasClick(Sender: TObject);
    procedure Adicionar_ProfessoresClick(Sender: TObject);
    procedure Editar_professoresClick(Sender: TObject);


    procedure ComecarAsBox;
    procedure Excluir_professoresClick(Sender: TObject);


  private
    { Private declarations }
  public

  AlunosLista : Tobjectlist <taluno>;
  DisciplinasLista: tobjectlist <TDisciplina>;
  ProfessoresLista: tobjectlist <TProfessor>;

  end;

var
  CRUD_escolar: TCRUD_escolar;

implementation


{$R *.dfm}

procedure TCRUD_escolar.Adicionar_alunosClick(Sender: TObject);

begin
  if frmAlunosCRUD.ShowModal <> mrOk then
    Exit;
  // logica nova

  alunoslista.Add(uAlunosmodal.frmAlunosCRUD.aluno_editado);
  Alunosbox.AddItem(inttostr(uAlunosmodal.frmAlunosCRUD.aluno_editado.Codigo) + ' - ' + uAlunosmodal.frmAlunosCRUD.aluno_editado.Nome, nil);

  //logica nova
end;

procedure TCRUD_escolar.Adicionar_disciplinasClick(Sender: TObject);
begin
  if frmDisciplinasCRUD.ShowModal <> mrOk then
    Exit;
  Disciplinaslista.Add(uDisciplinasmodal.frmDisciplinasCRUD.disciplina_editada);
  Disciplinasbox.AddItem(inttostr(uDisciplinasmodal.frmDisciplinasCRUD.Disciplina_editada.Cod) + ' - ' + uDisciplinasmodal.frmDisciplinasCRUD.Disciplina_editada.Nome, nil);
end;


procedure TCRUD_escolar.Adicionar_ProfessoresClick(Sender: TObject);
begin
if frmProfessoresCRUD.ShowModal <> mrOk then
    Exit;

Professoreslista.Add(uprofessoresmodal.frmProfessoresCRUD.professor_editado);
Professoresbox.AddItem(inttostr(uProfessoresmodal.frmProfessoresCRUD.Professor_editado.Codigo) + ' - ' + uprofessoresmodal.frmprofessoresCRUD.professor_editado.Nome + ' - ' + uprofessoresmodal.frmprofessoresCRUD.professor_editado.Cpf , nil);

end;



procedure TCRUD_escolar.Editar_alunosClick(Sender: TObject);
var linhaselecionada, idString, nome : string;
posicaoseparador, i : integer;
aluno : taluno;
begin
uAlunosmodal.frmAlunosCRUD.edit := true;



if Alunosbox.ItemIndex = -1 then begin
  showmessage ('por favor escolha um aluno para ser editado');
  exit
end;



aluno := Alunoslista[Alunosbox.ItemIndex];
idstring := inttostr(aluno.Codigo);

//logica nova (e se tudo der certo inteligente)


dmDatabase.SelectQuery.Close;
dmDatabase.SelectQuery.SQL.Text := 'SELECT id, nome FROM alunos WHERE id = '+ idstring;
dmDatabase.SelectQuery.Open;

uAlunosmodal.frmAlunosCRUD.aluno_editado.Codigo := dmDatabase.SelectQuery.FieldByName('id').AsInteger;
uAlunosmodal.frmAlunosCRUD.aluno_editado.Nome := dmDatabase.SelectQuery.FieldByName('nome').AsString;

frmAlunosCRUD.ShowModal;

for i := 0 to Alunoslista.Count - 1 do begin

  if AlunosLista[i].Codigo = ualunosmodal.frmalunosCRUD.aluno_editado.codigo then begin

    alunoslista[i].Nome := ualunosmodal.frmalunosCRUD.aluno_editado.nome;

    alunosbox.Items.Delete(alunosbox.ItemIndex);
    alunosbox.items.Insert(i, inttostr(alunoslista[i].codigo) + ' - ' + alunoslista[i].Nome);

    exit
  end;

end;

end;

procedure TCRUD_escolar.Editar_disciplinasClick(Sender: TObject);
var linhaselecionada, idString, nome : string;
posicaoseparador, i : integer;
disciplina : tdisciplina;
begin
uDisciplinasmodal.frmDisciplinasCRUD.edit := true;



if Disciplinasbox.ItemIndex = -1 then begin
  showmessage ('por favor escolha uma disciplina para ser editado');
  exit
end;


//logica nova (e se tudo der certo inteligente)

disciplina := disciplinaslista[Disciplinasbox.ItemIndex];
idstring := inttostr(disciplina.Cod);

//logica nova (e se tudo der certo inteligente)


dmDatabase.SelectQuery.Close;
dmDatabase.SelectQuery.SQL.Text := 'SELECT id, nome FROM disciplinas WHERE id = '+idstring;;
uDisciplinasmodal.frmDisciplinasCRUD.disciplina_editada.Nome := '';
dmDatabase.SelectQuery.Open;

uDisciplinasmodal.frmDisciplinasCRUD.Disciplina_editada.Cod := dmDatabase.SelectQuery.FieldByName('id').AsInteger;
uDisciplinasmodal.frmDisciplinasCRUD.Disciplina_editada.Nome := dmDatabase.SelectQuery.FieldByName('nome').AsString;

frmDisciplinasCRUD.ShowModal;


// precisa fazer uma logica nova para atualizar a lista do front e do back

for i := 0 to Disciplinaslista.Count - 1 do begin

  if DisciplinasLista[i].Cod = uDisciplinasmodal.frmDisciplinasCRUD.Disciplina_editada.cod then begin
    disciplinaslista[i].Nome := udisciplinasmodal.frmdisciplinasCRUD.disciplina_editada.nome;

    disciplinasbox.Items.Delete(disciplinasbox.ItemIndex);
    disciplinasbox.items.Insert(i, inttostr(disciplinaslista[i].cod) + ' - ' + disciplinaslista[i].Nome);
    exit
  end;

end;
//final da logica

end;

procedure TCRUD_escolar.Editar_professoresClick(Sender: TObject);
var linhaselecionada, idString, nome : string;
posicaoseparador, i : integer;
professor : tprofessor;
begin
uProfessoresmodal.frmprofessoresCRUD.edit := true;



if Professoresbox.ItemIndex = -1 then begin
  showmessage ('por favor escolha um professor para ser editado');
  exit
end;


//logica nova (e se tudo der certo inteligente)

professor := Professoreslista[professoresbox.ItemIndex];
idstring := inttostr(professor.Codigo);

//logica nova (e se tudo der certo inteligente)


dmDatabase.SelectQuery.Close;
dmDatabase.SelectQuery.SQL.Text := 'SELECT id, nome, cpf FROM professores WHERE id = '+idstring;;
uprofessoresmodal.frmprofessoresCRUD.professor_editado.Nome := '';
dmDatabase.SelectQuery.Open;

uprofessoresmodal.frmprofessoresCRUD.professor_editado.Codigo := dmDatabase.SelectQuery.FieldByName('id').AsInteger;
uprofessoresmodal.frmprofessoresCRUD.professor_editado.Nome := dmDatabase.SelectQuery.FieldByName('nome').AsString;
uprofessoresmodal.frmprofessoresCRUD.professor_editado.cpf := dmDatabase.SelectQuery.FieldByName('cpf').AsString;

frmProfessoresCRUD.ShowModal;

for i := 0 to Professoreslista.Count - 1 do begin

  if professoresLista[i].Codigo = uprofessoresmodal.frmprofessoresCRUD.professor_editado.codigo then begin

    professoreslista[i].Nome := uprofessoresmodal.frmprofessoresCRUD.professor_editado.nome;

    professoresbox.Items.Delete(professoresbox.ItemIndex);
    professoresbox.items.Insert(i, inttostr(professoreslista[i].codigo) + ' - ' + professoreslista[i].Nome + ' - ' + professoresLista[i].CPF);

    exit
  end;

end;

end;

procedure TCRUD_escolar.Excluir_alunosClick(Sender: TObject);
var
  linhaSelecionada: string;
  posicaoSeparador: Integer;
  idString: string;
  alunoID: Integer;
  aluno : taluno;
begin
  if Alunosbox.ItemIndex >= 0 then
  begin

    aluno := Alunoslista[Alunosbox.ItemIndex];
    idstring := inttostr(aluno.Codigo);

      try
        dmDatabase.InsertQuery.SQL.Text := 'UPDATE alunos SET ativo = false WHERE ID = ' + idString;
        dmDatabase.InsertQuery.ExecSQL;
        showmessage('excluido com sucesso');


        // logica nova

        Alunosbox.Items.Delete(alunosbox.ItemIndex);
        for aluno in alunoslista do begin
          if inttostr(aluno.codigo) = idstring then begin
            alunoslista.Remove(aluno);
            exit
          end;

        end;

        //logica nova
      except
        showmessage('erro')
      end;

  end;
end;

procedure TCRUD_escolar.Excluir_disciplinasClick(Sender: TObject);
var
  linhaSelecionada: string;
  posicaoSeparador: Integer;
  idString: string;
  alunoID: Integer;
  disciplina : tdisciplina;
begin
  if Disciplinasbox.ItemIndex >= 0 then
  begin
  disciplina := Disciplinaslista[Disciplinasbox.ItemIndex];
  idstring := inttostr(disciplina.Cod);


      try
        dmDatabase.InsertQuery.SQL.Text := 'UPDATE disciplinas SET ativo = false WHERE ID = ' + idString;
        dmDatabase.InsertQuery.ExecSQL;
        showmessage('excluido com sucesso');
        // logica nova

        Disciplinasbox.Items.Delete(Disciplinasbox.ItemIndex);
        for disciplina in Disciplinaslista do begin
          if inttostr(disciplina.cod) = idstring then begin
            disciplinaslista.Remove(disciplina);
            exit
          end;

        end;

        //logica nova
      except
        showmessage('erro')
      end;

  end;
end;

procedure TCRUD_escolar.Excluir_professoresClick(Sender: TObject);
var
  linhaSelecionada: string;
  posicaoSeparador: Integer;
  idString: string;
  alunoID: Integer;
  professor : tprofessor;
begin

  if Professoresbox.ItemIndex >= 0 then
  begin
  professor := professoreslista[professoresbox.ItemIndex];
  idstring := inttostr(professor.Codigo);


      try
        dmDatabase.InsertQuery.SQL.Text := 'UPDATE professores SET ativo = false WHERE ID = ' + idString;
        dmDatabase.InsertQuery.ExecSQL;
        showmessage('excluido com sucesso');
        // logica nova

        Professoresbox.Items.Delete(professoresbox.ItemIndex);
        for professor in professoreslista do begin
          if inttostr(professor.codigo) = idstring then begin
            professoreslista.Remove(professor);
            exit
          end;

        end;

        //logica nova
      except
        showmessage('erro')
      end;

  end;
end;

procedure TCRUD_escolar.filldisciplinas;
var
  id, nome: string;
  Disciplina : tDisciplina;
  I: integer;
begin
  Disciplinasbox.Clear;

  for I := 0 to DisciplinasLista.Count - 1 do begin
    Disciplina := DisciplinasLista[I];
    Disciplinasbox.AddItem(inttostr(Disciplina.Cod) + ' - ' + Disciplina.Nome, nil);
  end;

end;

procedure TCRUD_escolar.fillProfessores;
var
  id, nome: string;
  professor: tprofessor;
  I: integer;
begin
  Professoresbox.Clear;

  for I := 0 to ProfessoresLista.Count - 1 do begin
    professor := ProfessoresLista[I];
    professoresbox.AddItem(inttostr(Professor.Codigo) + ' - ' + professor.Nome + ' - ' + professor.CPF, nil);
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
  Disciplinaslista := TObjectList<TDisciplina>.Create(True);
  Professoreslista := TObjectList<TProfessor>.Create(True);

  popularlistaAlunos;
  popularlistaDisciplinas;
  popularListaProfessores;
end;

procedure TCRUD_escolar.FormShow(Sender: TObject);
begin

uAlunosmodal.frmAlunosCRUD.aluno_editado := taluno.create;
uProfessoresmodal.frmProfessoresCRUD.professor_editado := tprofessor.create;

fillstudents;
fillDisciplinas;
fillProfessores
end;

procedure TCRUD_escolar.popularListaAlunos;
var
aluno : TAluno;
begin
  if not Assigned(dmDatabase) or not Assigned(dmDatabase.SelectQuery) then Exit;

  AlunosLista.Clear;

  dmDatabase.SelectQuery.Close;
  dmDatabase.SelectQuery.SQL.Text := 'SELECT id, nome FROM alunos WHERE ativo = TRUE order by ID';
  dmDatabase.SelectQuery.Open;

while not dmDatabase.SelectQuery.Eof do
begin
aluno := TAluno.Create();
aluno.Codigo := dmDatabase.SelectQuery.FieldByName('id').AsInteger;
aluno.Nome := dmDatabase.SelectQuery.FieldByName('nome').AsString;

AlunosLista.Add(aluno);
dmDatabase.SelectQuery.Next;
end;
end;

procedure TCRUD_escolar.popularListaDisciplinas;
var
disciplina : TDisciplina;
begin
  if not Assigned(dmDatabase) or not Assigned(dmDatabase.SelectQuery) then Exit;

  DisciplinasLista.Clear;

  dmDatabase.SelectQuery.Close;
  dmDatabase.SelectQuery.SQL.Text := 'SELECT id, nome FROM Disciplinas WHERE ativo = TRUE order by ID';
  dmDatabase.SelectQuery.Open;

while not dmDatabase.SelectQuery.Eof do
begin
Disciplina := Tdisciplina.Create();
Disciplina.Cod := dmDatabase.SelectQuery.FieldByName('id').AsInteger;
Disciplina.Nome := dmDatabase.SelectQuery.FieldByName('nome').AsString;

DisciplinasLista.Add(disciplina);
dmDatabase.SelectQuery.Next;
end;
end;

procedure TCRUD_escolar.popularListaProfessores;
var
professor : Tprofessor;
begin
  if not Assigned(dmDatabase) or not Assigned(dmDatabase.SelectQuery) then Exit;

  ProfessoresLista.Clear;

  dmDatabase.SelectQuery.Close;
  dmDatabase.SelectQuery.SQL.Text := 'SELECT id, nome, cpf FROM Professores WHERE ativo = TRUE order by ID';
  dmDatabase.SelectQuery.Open;

while not dmDatabase.SelectQuery.Eof do
begin
professor := Tprofessor.Create();
professor.Codigo := dmDatabase.SelectQuery.FieldByName('id').AsInteger;
professor.Nome := dmDatabase.SelectQuery.FieldByName('nome').AsString;
professor.cpf := dmDatabase.SelectQuery.FieldByName('cpf').AsString;

ProfessoresLista.Add(professor);
dmDatabase.SelectQuery.Next;
end;
end;


procedure TCRUD_escolar.ComecarAsBox;
begin
professoresbox.AddItem('ID -    NOME    -   CPF   ', nil);
alunosbox.AddItem('ID -    NOME', nil);
Disciplinasbox.AddItem('ID -    NOME', nil);
end;

end.


