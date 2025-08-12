unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, uconnection, system.Generics.Collections,
  Vcl.Grids, uAlunosModal, uProfessoresModal, uDisciplinasModal,urestaurarmodal, uTurmasModal,uRestaurarMain, uMatriculasModal,uprofessor, ualuno, udisciplina, uturma, umatricula;

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
    AlunosBox: TListBox;
    DisciplinasBox: TListBox;
    ProfessoresBox: TListBox;
    MatriculasBox: TListBox;
    TurmasBox: TListBox;
    Panel1: TPanel;
    ID: TLabel;
    NOME: TLabel;
    Panel3: TPanel;
    ALUNOS: TLabel;
    DISCIPLINAS: TLabel;
    Panel13: TPanel;
    Panel9: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel7: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Panel8: TPanel;
    Panel14: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel4: TPanel;
    Panel15: TPanel;
    Panel5: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Panel6: TPanel;
    Panel12: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Restaurar_alunos: TButton;
    Restaurar_professores: TButton;
    Restaurar_Disciplinas: TButton;
    procedure Adicionar_alunosClick(Sender: TObject);
    procedure filldisciplinas;
    procedure fillstudents;
    procedure fillProfessores;
    procedure fillTurmas;
    procedure fillmatriculas;
    procedure FormShow(Sender: TObject);
    procedure Excluir_alunosClick(Sender: TObject);
    procedure popularListaAlunos;
    procedure popularListaDisciplinas;
    procedure popularListaTurmas;
    procedure popularListaProfessores;
    procedure popularlistaMatriculas;
    procedure FormCreate(Sender: TObject);
    procedure Editar_alunosClick(Sender: TObject);
    procedure Adicionar_disciplinasClick(Sender: TObject);
    procedure Excluir_disciplinasClick(Sender: TObject);
    procedure Editar_disciplinasClick(Sender: TObject);
    procedure Adicionar_ProfessoresClick(Sender: TObject);
    procedure Editar_professoresClick(Sender: TObject);

    function confirmarexclusao : boolean;

    function BuscarProfessorPorID(id: Integer): TProfessor;
    function BuscarDisciplinaPorID(id: Integer): TDisciplina;
    function BuscarTurmaPorID(id: Integer) : tturma;
    function BuscaralunoPorID(id: Integer) : taluno;
    procedure preenchercombobox_turmas;
    procedure preenchercombobox_matriculas;

    procedure Excluir_professoresClick(Sender: TObject);
    procedure Adicionar_matriculasClick(Sender: TObject);
    procedure Adicionar_turmasClick(Sender: TObject);
    procedure Excluir_turmasClick(Sender: TObject);
    procedure Editar_turmasClick(Sender: TObject);
    procedure Editar_matriculasClick(Sender: TObject);
    procedure Excluir_matriculasClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);

    function DesativarRegistroComCascata(const Tabela: string; ID: Integer): Boolean;
    procedure Restaurar_alunosClick(Sender: TObject);
    procedure Restaurar (tabela : String);
    procedure Restaurar_professoresClick(Sender: TObject);
    procedure Restaurar_DisciplinasClick(Sender: TObject);




  private
    { Private declarations }
  public

  AlunosLista : Tobjectlist <taluno>;
  DisciplinasLista: tobjectlist <TDisciplina>;
  ProfessoresLista: tobjectlist <TProfessor>;
  TurmasLista: tobjectlist <tturma>;
  MatriculasLista: tobjectlist <tmatricula>;

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
  Alunosbox.AddItem(inttostr(uAlunosmodal.frmAlunosCRUD.aluno_editado.Codigo) + ' -       ' + uAlunosmodal.frmAlunosCRUD.aluno_editado.Nome, uAlunosmodal.frmAlunosCRUD.aluno_editado);

  //logica nova
end;

procedure TCRUD_escolar.Adicionar_disciplinasClick(Sender: TObject);
begin
  if frmDisciplinasCRUD.ShowModal <> mrOk then
    Exit;
  Disciplinaslista.Add(uDisciplinasmodal.frmDisciplinasCRUD.disciplina_editada);
  Disciplinasbox.AddItem(inttostr(uDisciplinasmodal.frmDisciplinasCRUD.Disciplina_editada.Cod) + ' -       ' + uDisciplinasmodal.frmDisciplinasCRUD.Disciplina_editada.Nome, uDisciplinasmodal.frmDisciplinasCRUD.disciplina_editada);
end;


procedure TCRUD_escolar.Adicionar_matriculasClick(Sender: TObject);
// Declaração de todas as variáveis que vamos precisar para montar o texto
var
  disciplina: tdisciplina;
  professor: tprofessor;
  aluno: taluno;
  turma: tturma;
  matricula: tmatricula;
  textoMatricula: string;
begin

  self.preenchercombobox_matriculas;


  if umatriculasmodal.frmMatriculasCRUD.ShowModal <> mrOk then
    Exit;


  matricula := umatriculasmodal.frmMatriculasCRUD.matricula_editada;


  MatriculasLista.Add(matricula);


  aluno := BuscarAlunoPorID(matricula.codaluno);
  turma := BuscarTurmaPorID(matricula.codturma);


  professor := BuscarProfessorPorID(turma.codprofessor);
  disciplina := BuscarDisciplinaPorID(turma.CodDisciplina);


  textoMatricula :=IntToStr(matricula.Cod) + ' -       '  + aluno.nome + ' / ' + inttostr(turma.cod)  ;


  MatriculasBox.AddItem(textoMatricula, matricula);

end;

procedure TCRUD_escolar.Adicionar_ProfessoresClick(Sender: TObject);
begin
if frmProfessoresCRUD.ShowModal <> mrOk then
    Exit;

Professoreslista.Add(uprofessoresmodal.frmProfessoresCRUD.professor_editado);
Professoresbox.AddItem(inttostr(uProfessoresmodal.frmProfessoresCRUD.Professor_editado.Codigo) + ' -       ' + uprofessoresmodal.frmprofessoresCRUD.professor_editado.Nome + ' / ' + uprofessoresmodal.frmprofessoresCRUD.professor_editado.Cpf , nil);

end;



procedure TCRUD_escolar.Adicionar_turmasClick(Sender: TObject);
var disciplina : tdisciplina;
professor : tprofessor;
textoturma : string;
turma : tturma;
begin

preenchercombobox_turmas;

if frmTurmasCRUD.ShowModal <> mrOk then
    Exit;


    TurmasLista.Add(Uturmasmodal.frmTurmasCRUD.turma_editada);

    professor := BuscarProfessorPorID(uturmasmodal.frmTurmasCRUD.turma_editada.CodProfessor);

    disciplina := BuscarDisciplinaPorID(uturmasmodal.frmTurmasCRUD.turma_editada.CodDisciplina);
    turma := uturmasmodal.frmTurmasCRUD.turma_editada;

    textoTurma := IntToStr(turma.cod) + ' -       ' + professor.nome + ' / ' + disciplina.nome;


    TurmasBox.AddItem(textoTurma, turma);


    //TurmasBox.AddItem(IntToStr(turma.cod) + ' - ' +(professor.nome) + ' / ' + (disciplina.nome), turma);
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

if frmAlunosCRUD.ShowModal <> mrOk then begin
    uAlunosmodal.frmAlunosCRUD.edit := false;
    Exit;
end;

for i := 0 to Alunoslista.Count - 1 do begin

  if AlunosLista[i].Codigo = ualunosmodal.frmalunosCRUD.aluno_editado.codigo then begin

    alunoslista[i].Nome := ualunosmodal.frmalunosCRUD.aluno_editado.nome;

    alunosbox.Items.Delete(alunosbox.ItemIndex);
    alunosbox.items.Insert(i, inttostr(alunoslista[i].codigo) + ' -       ' + alunoslista[i].Nome);

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

if frmDisciplinasCRUD.ShowModal <> mrOk then begin
    uDisciplinasmodal.frmDisciplinasCRUD.edit := false;
    Exit;
end;


// precisa fazer uma logica nova para atualizar a lista do front e do back

for i := 0 to Disciplinaslista.Count - 1 do begin

  if DisciplinasLista[i].Cod = uDisciplinasmodal.frmDisciplinasCRUD.Disciplina_editada.cod then begin
    disciplinaslista[i].Nome := udisciplinasmodal.frmdisciplinasCRUD.disciplina_editada.nome;

    disciplinasbox.Items.Delete(disciplinasbox.ItemIndex);
    disciplinasbox.items.Insert(i, inttostr(disciplinaslista[i].cod) + ' -       ' + disciplinaslista[i].Nome);
    exit
  end;

end;
//final da logica

end;

procedure TCRUD_escolar.Editar_matriculasClick(Sender: TObject);
var
  aluno: TAluno;
  turma: TTurma;
  textoMatricula: string;
  matriculaParaEditar: TMatricula;
  indiceSelecionado: Integer;
begin
  if matriculasbox.ItemIndex = -1 then
  begin
    ShowMessage('Por favor, escolha uma matrícula para editar.');
    Exit;
  end;

  indiceSelecionado := matriculasbox.ItemIndex;
  matriculaParaEditar := matriculaslista[indiceSelecionado];

  umatriculasmodal.frmmatriculasCRUD.edit := true;
  umatriculasmodal.frmmatriculasCRUD.matricula_editada.Cod := matriculaParaEditar.Cod;
  umatriculasmodal.frmmatriculasCRUD.matricula_editada.codAluno := matriculaParaEditar.codaluno;
  umatriculasmodal.frmmatriculasCRUD.matricula_editada.Codturma := matriculaParaEditar.codturma;

  preenchercombobox_matriculas;

  if umatriculasmodal.frmMatriculasCRUD.ShowModal <> mrOk then
  begin
    umatriculasmodal.frmmatriculasCRUD.edit := false;
    Exit;
  end;

  // Atualiza o objeto na lista de dados
  matriculaslista[indiceSelecionado].codaluno := umatriculasmodal.frmmatriculasCRUD.matricula_editada.codaluno;
  matriculaslista[indiceSelecionado].codturma := umatriculasmodal.frmmatriculasCRUD.matricula_editada.codTurma;

  // Busca os dados para montar a string
  aluno := BuscarAlunoPorID(matriculaslista[indiceSelecionado].codaluno);
  turma := BuscarTurmaPorID(matriculaslista[indiceSelecionado].codturma);

  textoMatricula := IntToStr(matriculaslista[indiceSelecionado].Cod) + ' -       ' + aluno.nome + ' / ' + IntToStr(turma.Cod);


  matriculasbox.Items.BeginUpdate;
  try

    matriculasbox.Items[indiceSelecionado] := textoMatricula;


    matriculasbox.Items.Objects[indiceSelecionado] := matriculaslista[indiceSelecionado];
  finally
    matriculasbox.Items.EndUpdate;
  end;


  matriculasbox.ItemIndex := indiceSelecionado;

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

if frmprofessoresCRUD.ShowModal <> mrOk then begin
    uprofessoresmodal.frmprofessoresCRUD.edit := false;
    Exit;
end;

for i := 0 to Professoreslista.Count - 1 do begin

  if professoresLista[i].Codigo = uprofessoresmodal.frmprofessoresCRUD.professor_editado.codigo then begin

    professoreslista[i].Nome := uprofessoresmodal.frmprofessoresCRUD.professor_editado.nome;

    professoresbox.Items.Delete(professoresbox.ItemIndex);
    professoresbox.items.Insert(i, inttostr(professoreslista[i].codigo) + ' -       ' + professoreslista[i].Nome + ' - ' + professoresLista[i].CPF);

    exit
  end;

end;

end;

procedure TCRUD_escolar.Editar_turmasClick(Sender: TObject);
var linhaselecionada, idString, nome : string;
posicaoseparador, i : integer;
turma : tturma;
professor : tprofessor;
disciplina : tdisciplina;
begin

uturmasmodal.frmturmasCRUD.edit := true;
preenchercombobox_turmas;


if Turmasbox.ItemIndex = -1 then begin
  showmessage ('por favor escolha uma turma para ser editada');
  exit
end;


//logica nova (e se tudo der certo inteligente)

turma := Turmaslista[turmasbox.ItemIndex];
idstring := inttostr(turma.Cod);

//logica nova (e se tudo der certo inteligente)


dmDatabase.SelectQuery.Close;
dmDatabase.SelectQuery.SQL.Text := 'SELECT id, fk_id_professor, fk_id_disciplina FROM turmas WHERE id = '+idstring;
dmDatabase.SelectQuery.Open;

uturmasmodal.frmturmasCRUD.turma_editada.Cod := dmDatabase.SelectQuery.FieldByName('id').AsInteger;
uturmasmodal.frmturmasCRUD.turma_editada.codProfessor := dmDatabase.SelectQuery.FieldByName('fk_id_professor').AsInteger;
uturmasmodal.frmturmasCRUD.turma_editada.CodDisciplina := dmDatabase.SelectQuery.FieldByName('fk_id_disciplina').AsInteger;

if frmTurmasCRUD.ShowModal <> mrOk then begin
    uTurmasmodal.frmTurmasCRUD.edit := false;
    Exit;
end;

for i := 0 to turmaslista.Count - 1 do begin

  if turmasLista[i].Cod = uturmasmodal.frmturmasCRUD.turma_editada.cod then begin

    turmaslista[i].codProfessor := uturmasmodal.frmturmasCRUD.turma_editada.codProfessor;
    turmaslista[i].codDisciplina := uturmasmodal.frmturmasCRUD.turma_editada.codDisciplina;

    turmasbox.Items.Delete(turmasbox.ItemIndex);
    professor := BuscarProfessorPorID(turma.CodProfessor);

    disciplina := BuscarDisciplinaPorID(turma.CodDisciplina);


    turmasbox.items.Insert(i, IntToStr(turma.cod) + ' -       ' + professor.nome + ' / ' + disciplina.nome);

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
    if confirmarexclusao then begin

      aluno := Alunoslista[Alunosbox.ItemIndex];
      idstring := inttostr(aluno.Codigo);

      try
        dmDatabase.InsertQuery.SQL.Text := 'UPDATE alunos SET ativo = false WHERE ID = ' + idString;
        dmDatabase.InsertQuery.ExecSQL;
        showmessage('excluido com sucesso');


        //chamada da função de verificação de dependencias
        if Self.DesativarRegistroComCascata('alunos', aluno.codigo) then
        begin
          ShowMessage('Dependências excluídas com sucesso!');
        end;

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

  end else begin
    showmessage ('Escolha um aluno para ser excluido')
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
    if confirmarexclusao then begin
      disciplina := Disciplinaslista[Disciplinasbox.ItemIndex];
      idstring := inttostr(disciplina.Cod);


      try
        dmDatabase.InsertQuery.SQL.Text := 'UPDATE disciplinas SET ativo = false WHERE ID = ' + idString;
        dmDatabase.InsertQuery.ExecSQL;
        showmessage('excluido com sucesso');

        //chamada a função q verifica dependencias
        if Self.DesativarRegistroComCascata('disciplinas', disciplina.Cod) then
        begin
          ShowMessage('Dependências excluídas com sucesso!');
        end;

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

  end else begin
    showmessage ('Escolha uma disciplina para excluir')
  end;
end;

procedure TCRUD_escolar.Excluir_matriculasClick(Sender: TObject);
var
  linhaSelecionada: string;
  posicaoSeparador: Integer;
  idString: string;
  alunoID: Integer;
  matricula : tmatricula;
begin

  if matriculasbox.ItemIndex >= 0 then
  begin
    if confirmarexclusao then begin
      matricula := matriculaslista[matriculasbox.ItemIndex];
      idstring := inttostr(matricula.Cod);


      try
        dmDatabase.InsertQuery.SQL.Text := 'UPDATE matriculas SET ativo = false WHERE ID = ' + idString;
        dmDatabase.InsertQuery.ExecSQL;
        showmessage('excluido com sucesso');
        // logica nova

        matriculasbox.Items.Delete(matriculasbox.ItemIndex);
        for matricula in matriculaslista do begin
          if inttostr(matricula.cod) = idstring then begin
            matriculaslista.Remove(matricula);
            exit
          end;

        end;

        //logica nova
      except
        showmessage('erro')
      end;
    end;

  end else begin
    showmessage ('Escolha uma matricula para excluir')
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
  if confirmarexclusao then begin
    professor := professoreslista[professoresbox.ItemIndex];
    idstring := inttostr(professor.Codigo);


      try
        dmDatabase.InsertQuery.SQL.Text := 'UPDATE professores SET ativo = false WHERE ID = ' + idString;
        dmDatabase.InsertQuery.ExecSQL;
        showmessage('excluido com sucesso');


      // chamada da função q verifica dependencias
        if DesativarRegistroComCascata('professores', professor.Codigo) then
      begin
        ShowMessage('Dependencias excluidas com sucesso!');
      end;
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

  end else begin
    showmessage ('escolha um professor para excluir')
  end;
end;

procedure TCRUD_escolar.Excluir_turmasClick(Sender: TObject);
var
  linhaSelecionada: string;
  posicaoSeparador: Integer;
  idString: string;
  alunoID: Integer;
  turma : tturma;
begin

  if Turmasbox.ItemIndex >= 0 then
  begin
    if confirmarexclusao then begin

      turma := turmaslista[turmasbox.ItemIndex];
      idstring := inttostr(turma.Cod);


      try
        dmDatabase.InsertQuery.SQL.Text := 'UPDATE turmas SET ativo = false WHERE ID = ' + idString;
        dmDatabase.InsertQuery.ExecSQL;
        showmessage('excluido com sucesso');
        // logica nova

        turmasbox.Items.Delete(turmasbox.ItemIndex);
        for turma in turmaslista do begin
          if inttostr(turma.cod) = idstring then begin
            turmaslista.Remove(turma);
            exit
          end;

        end;

        //logica nova

        //   if Self.DesativarRegistroComCascata('turmas', turma.Cod) then
       //   begin
          //   ShowMessage('Dependências excluídas com sucesso!');

         //end;
      except
        showmessage('erro')
      end;
    end;

  end else begin
    showmessage ('escolha alguma turma para ser excluida')
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
    Disciplinasbox.AddItem(inttostr(Disciplina.Cod) + ' -       ' + Disciplina.Nome, disciplina);
  end;

end;

procedure TCRUD_escolar.fillmatriculas;
var
  Matricula: TMatricula;
  aluno: Taluno;
  turma: TTurma;
  I: Integer;
  textoMatricula: string;
  professor : tprofessor;
  disciplina : tdisciplina;
begin
  MatriculasBox.Clear;

  for I := 0 to MatriculasLista.Count - 1 do
  begin
    Matricula := TMatricula(MatriculasLista[I]);

    aluno := BuscaralunoPorID(matricula.Codaluno);

    turma := BuscarTurmaPorID(matricula.Codturma);

    if (aluno = nil) or (turma = nil) then
      Continue;

  aluno := BuscarAlunoPorID(matricula.codaluno);
  turma := BuscarTurmaPorID(matricula.codturma);


  professor := BuscarProfessorPorID(turma.codprofessor);
  disciplina := BuscarDisciplinaPorID(turma.CodDisciplina);


  textoMatricula :=IntToStr(matricula.Cod) + ' -       '  + aluno.nome + ' / ' + inttostr(turma.cod)  ;


    MatriculasBox.AddItem(textoMatricula, matricula);
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
    professoresbox.AddItem(inttostr(Professor.Codigo) + ' -       ' + professor.Nome + ' / ' + professor.CPF, professor);
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
    Alunosbox.AddItem(inttostr(Aluno.Codigo) + ' -       ' + aluno.Nome, aluno);
  end;

end;

procedure TCRUD_escolar.fillTurmas;
var
  turma: TTurma;
  professor: TProfessor;
  disciplina: Tdisciplina;
  I: Integer;
  textoTurma: string;
begin
  TurmasBox.Clear;

  for I := 0 to TurmasLista.Count - 1 do
  begin
    turma := TTurma(TurmasLista[I]);

    professor := BuscarProfessorPorID(turma.CodProfessor);

    disciplina := BuscarDisciplinaPorID(turma.CodDisciplina);

    if (professor = nil) or (disciplina = nil) then
      Continue;

    textoTurma := IntToStr(turma.cod) + ' -       ' + professor.nome + ' / ' + disciplina.nome;


    TurmasBox.AddItem(textoTurma, turma);
  end;
end;

function TCRUD_escolar.BuscarProfessorPorID(id: Integer): TProfessor;
var
  i: Integer;
  prof: TProfessor;
begin
  for i := 0 to ProfessoresLista.Count - 1 do
  begin
    prof := TProfessor(ProfessoresLista[i]);
    if prof.codigo = id then
      Exit(prof);
  end;
  Result := nil;
end;

function TCRUD_escolar.BuscaralunoPorID(id: Integer): taluno;
var
  i: Integer;
  aluno: Taluno;
begin
  for i := 0 to alunosLista.Count - 1 do
  begin
    aluno := Taluno(alunosLista[i]);
    if aluno.codigo = id then
      Exit(aluno);
  end;
  Result := nil;
end;

function TCRUD_escolar.BuscarTurmaPorID(id: Integer): tturma;
var
  i: Integer;
  turma: Tturma;
begin
  for i := 0 to turmasLista.Count - 1 do
  begin
    turma := Tturma(turmasLista[i]);
    if turma.cod = id then
      Exit(turma);
  end;
  Result := nil;
end;

function TCRUD_escolar.confirmarexclusao: Boolean;
begin
  Result := MessageDlg(
    'Confirma a exclusão?',
    mtConfirmation,
    [mbYes, mbNo],  // botões
    0               // help context (geralmente 0)
  ) = mrYes;
end;



function TCRUD_escolar.DesativarRegistroComCascata(const Tabela: string;
  ID: Integer): Boolean;
type
  // Criamos um tipo de registro para "fila de tarefas"
  TRegistroParaDesativar = record
    NomeTabela: string;
    IDRegistro: Integer;
  end;
var
  FilaParaDesativar: TList<TRegistroParaDesativar>;
  RegistroAtual: TRegistroParaDesativar;
  idsDependentes: TStringList;
  TabelaFilha, CampoChaveEstrangeira, SQL: string;
  i: Integer;
begin
  Result := False; // Assume falha
  FilaParaDesativar := TList<TRegistroParaDesativar>.Create;
  idsDependentes := TStringList.Create;
  try
    // Adiciona o primeiro item que o usuário quer deletar na fila
    RegistroAtual.NomeTabela := Tabela;
    RegistroAtual.IDRegistro := ID;
    FilaParaDesativar.Add(RegistroAtual);

    // --- Loop principal: processa a fila até ela ficar vazia ---
    while FilaParaDesativar.Count > 0 do
    begin
      // Pega o primeiro item da fila
      RegistroAtual := FilaParaDesativar[0];
      FilaParaDesativar.Delete(0); // Remove da fila

      // --- MAPA DE DEPENDÊNCIAS (Corrigido com if..else if) ---
      if RegistroAtual.NomeTabela.ToLower = 'professores' then
      begin
        TabelaFilha := 'turmas';
        CampoChaveEstrangeira := 'fk_id_professor';
      end
      else if RegistroAtual.NomeTabela.ToLower = 'disciplinas' then
      begin
        TabelaFilha := 'turmas';
        CampoChaveEstrangeira := 'fk_id_disciplina';
      end
      else if RegistroAtual.NomeTabela.ToLower = 'alunos' then
      begin
        TabelaFilha := 'matriculas';
        CampoChaveEstrangeira := 'fk_id_estudante';
      end
      else if RegistroAtual.NomeTabela.ToLower = 'turmas' then
      begin
        TabelaFilha := 'matriculas';
        CampoChaveEstrangeira := 'fk_id_turma';
      end
      else
      begin
        TabelaFilha := ''; // Sem dependentes conhecidos
      end;
      // ----------------------------------------------------

      // Se este registro pode ter filhos...
      if TabelaFilha <> '' then
      begin
        // Usando seu dmDatabase.SelectQuery
        dmDatabase.SelectQuery.Close;
        SQL := Format('SELECT id FROM %s WHERE %s = :id AND ativo = true', [TabelaFilha, CampoChaveEstrangeira]);
        dmDatabase.SelectQuery.SQL.Text := SQL;
        dmDatabase.SelectQuery.ParamByName('id').AsInteger := RegistroAtual.IDRegistro;
        dmDatabase.SelectQuery.Open;

        // Se encontrou filhos...
        if not dmDatabase.SelectQuery.IsEmpty then
        begin
          idsDependentes.Clear;
          while not dmDatabase.SelectQuery.Eof do
          begin
            idsDependentes.Add(dmDatabase.SelectQuery.FieldByName('id').AsString);
            dmDatabase.SelectQuery.Next;
          end;

          if MessageDlg(Format('O item da tabela "%s" (ID: %d) tem %d dependente(s) ativo(s) na tabela "%s".' +
            #13#10 + 'Deseja desativar estes dependentes também?',
            [RegistroAtual.NomeTabela, RegistroAtual.IDRegistro, idsDependentes.Count, TabelaFilha]),
            mtConfirmation, [mbYes, mbNo], 0) = mrNo then
          begin
            ShowMessage('Operação cancelada.');
            Exit; // Sai da função inteira, retornando False
          end;

          // Se o usuário disse SIM, adiciona os filhos na fila para serem processados
          for i := 0 to idsDependentes.Count - 1 do
          begin
            var NovoRegistro: TRegistroParaDesativar;
            NovoRegistro.NomeTabela := TabelaFilha;
            NovoRegistro.IDRegistro := StrToInt(idsDependentes[i]);
            FilaParaDesativar.Add(NovoRegistro);
          end;
        end;
        dmDatabase.SelectQuery.Close;
      end;

      // Desativa o registro atual que foi processado
      dmDatabase.DeleteQuery.Close;
      SQL := Format('UPDATE %s SET ativo = false WHERE id = :id', [RegistroAtual.NomeTabela]);
      dmDatabase.DeleteQuery.SQL.Text := SQL;
      dmDatabase.DeleteQuery.ParamByName('id').AsInteger := RegistroAtual.IDRegistro;
      dmDatabase.DeleteQuery.ExecSQL;
    end;
    popularlistamatriculas;
    popularlistaturmas;
    fillmatriculas;
    fillturmas;
    Result := True; // Se o loop terminou, tudo foi processado com sucesso
  finally
    FilaParaDesativar.Free;
    idsDependentes.Free;
  end;
end;

function TCRUD_escolar.BuscarDisciplinaPorID(id: Integer): TDisciplina;
var
  i: Integer;
  disc: TDisciplina;
begin
  for i := 0 to DisciplinasLista.Count - 1 do
  begin
    disc := TDisciplina(DisciplinasLista[i]);
    if disc.cod = id then
      Exit(disc);
  end;
  Result := nil;
end;




procedure TCRUD_escolar.FormCreate(Sender: TObject);
begin

  Alunoslista := TObjectList<TAluno>.Create(True);
  Disciplinaslista := TObjectList<TDisciplina>.Create(True);
  Professoreslista := TObjectList<TProfessor>.Create(True);
  turmasLista := TObjectList<TTurma>.Create(True);
  matriculasLista := TObjectList<Tmatricula>.Create(True);

  popularlistaAlunos;
  popularlistaDisciplinas;
  popularListaProfessores;
  popularlistaTurmas;
  popularlistaMatriculas;
end;

procedure TCRUD_escolar.FormShow(Sender: TObject);
begin

uAlunosmodal.frmAlunosCRUD.aluno_editado := taluno.create;
uProfessoresmodal.frmProfessoresCRUD.professor_editado := tprofessor.create;
uTurmasmodal.frmTurmasCRUD.turma_editada := tturma.create;
uMatriculasmodal.frmMatriculasCRUD.Matricula_editada := tMatricula.create;

fillstudents;
fillDisciplinas;
fillProfessores;
fillturmas;
fillmatriculas;
end;



procedure TCRUD_escolar.PageControl1Change(Sender: TObject);
begin
fillturmas;
fillmatriculas;
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

procedure TCRUD_escolar.popularlistaMatriculas;
var
matricula : Tmatricula;
begin
  if not Assigned(dmDatabase) or not Assigned(dmDatabase.SelectQuery) then Exit;

  matriculasLista.Clear;

  dmDatabase.SelectQuery.Close;
  dmDatabase.SelectQuery.SQL.Text := 'SELECT id, fk_id_turma , fk_id_estudante FROM matriculas WHERE ativo = TRUE order by ID';
  dmDatabase.SelectQuery.Open;

while not dmDatabase.SelectQuery.Eof do
begin
matricula := Tmatricula.Create();
matricula.Cod := dmDatabase.SelectQuery.FieldByName('id').AsInteger;
matricula.CodTurma := dmDatabase.SelectQuery.FieldByName('fk_id_turma').Asinteger;
matricula.CodAluno := dmDatabase.SelectQuery.FieldByName('fk_id_estudante').Asinteger;

matriculasLista.Add(matricula);
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


procedure TCRUD_escolar.popularListaTurmas;
var
turma : Tturma;
begin
  if not Assigned(dmDatabase) or not Assigned(dmDatabase.SelectQuery) then Exit;

  TurmasLista.Clear;

  dmDatabase.SelectQuery.Close;
  dmDatabase.SelectQuery.SQL.Text := 'SELECT id, fk_id_professor, fk_id_disciplina FROM turmas WHERE ativo = TRUE order by ID';
  dmDatabase.SelectQuery.Open;

while not dmDatabase.SelectQuery.Eof do
begin
turma := TTurma.Create();
turma.cod := dmDatabase.SelectQuery.FieldByName('id').AsInteger;
turma.CodProfessor := dmDatabase.SelectQuery.FieldByName('fk_id_professor').AsInteger;
turma.CodDisciplina := dmDatabase.SelectQuery.FieldByName('fk_id_disciplina').Asinteger;

TurmasLista.Add(turma);
dmDatabase.SelectQuery.Next;
end;
end;

procedure TCRUD_escolar.preenchercombobox_matriculas;
var

  aluno: TAluno;
  turma: TTurma;
  professor: TProfessor;
  disciplina: TDisciplina;
  textoTurma: string;
begin

  umatriculasmodal.frmMatriculasCRUD.ComboBoxAlunos.Clear;


  for aluno in AlunosLista do
  begin

    umatriculasmodal.frmMatriculasCRUD.ComboBoxAlunos.Items.AddObject(aluno.nome, aluno);
  end;



  umatriculasmodal.frmMatriculasCRUD.ComboBoxTurmas.Clear;


  for turma in TurmasLista do
  begin


    professor := BuscarProfessorPorID(turma.codprofessor);
    disciplina := BuscarDisciplinaPorID(turma.CodDisciplina);


    textoTurma := 'ID ' + IntToStr(turma.cod) + ' (' + disciplina.nome + ' / Prof. ' + professor.nome + ')';


    umatriculasmodal.frmMatriculasCRUD.ComboBoxTurmas.Items.AddObject(textoTurma, turma);
  end;

end;

procedure TCRUD_escolar.preenchercombobox_turmas;
var
disciplina : tdisciplina;
professor : tprofessor;
begin
//logica pra combo box de Disciplinas
  uturmasmodal.frmturmasCRUD.ComboBoxdisciplinas.Clear;

  for disciplina in DisciplinasLista do
  begin
    uturmasmodal.frmturmasCRUD.ComboBoxdisciplinas.Items.AddObject(disciplina.Nome, disciplina); // Associa o objeto ao item
  end;
//final da logica pra combo box de Disciplinas

//logica pra combo box de Professores
  uturmasmodal.frmturmasCRUD.ComboBoxProfessores.Clear;

  for professor in professoresLista do
  begin
    uturmasmodal.frmturmasCRUD.ComboBoxprofessores.Items.AddObject(professor.Nome, professor); // Associa o objeto ao item
  end;
//final da logica pra combo box de Professores
end;


procedure TCRUD_escolar.Restaurar_alunosClick(Sender: TObject);
begin
  Restaurar('alunos')
end;

procedure TCRUD_escolar.Restaurar_DisciplinasClick(Sender: TObject);
begin
  Restaurar('disciplinas')
end;

procedure TCRUD_escolar.Restaurar_professoresClick(Sender: TObject);
begin
  Restaurar('professores')
end;

procedure TCRUD_escolar.Restaurar(tabela: String);
begin
    frmrestaurarModal.NomeTabela := Tabela;
    frmRestaurarModal.showmodal;

    if tabela = 'alunos' then begin
      popularlistaalunos;
      fillstudents;
    end else if tabela = 'professores' then begin
      popularlistaprofessores;
      fillprofessores
    end else if tabela = 'disciplinas' then begin
      popularlistadisciplinas;
      filldisciplinas;
    end;
end;

end.


