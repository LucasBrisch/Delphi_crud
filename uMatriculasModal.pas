unit uMatriculasModal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  // Dependências atualizadas para Matrículas
  uconnection, uturma, ualuno, umatricula;

type
  // Classe do formulário renomeada
  TfrmMatriculasCRUD = class(TForm)
    ModalAlunos: TPanel;
    CancelarMatricula: TButton;
    EnviarMatricula: TButton;
    MatriculaCodHolder: TPanel;
    MatriculaCodEdit: TEdit;
    MatriculaCodLabel: TLabel;
    MatriculaCodTurmaHolder: TPanel;
    ComboBoxTurmas: TComboBox;
    MatriculaCodTurmaLabel: TLabel;
    MatriculaNomeAlunoHolder: TPanel;
    ComboBoxAlunos: TComboBox;
    MatriculaAlunoNomeLabel: TLabel;
    MatriculasAlunosTitle: TLabel;
    procedure EnviarMatriculaClick(Sender: TObject);
    procedure resetform();
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
      ID: integer;
      edit: boolean;
      matricula_editada: tmatricula;
  end;

var
  frmMatriculasCRUD: TfrmMatriculasCRUD;

implementation

{$R *.dfm}

// Lógica principal adaptada para Matrículas
procedure TfrmMatriculasCRUD.EnviarMatriculaClick(Sender: TObject);
var
  // Variáveis locais adaptadas
  turma: TTurma;
  aluno: TAluno;
begin
  if (ComboBoxTurmas.Text = '') or (ComboBoxAlunos.Text = '') then
  begin
    ShowMessage('Por favor, selecione todos os campos.');
    Exit;
  end;

  try
  //showmessage(inttostr(id));
    if not edit then
    begin
      turma := TTurma(ComboBoxTurmas.Items.Objects[ComboBoxTurmas.ItemIndex]);
      aluno := TAluno(ComboBoxAlunos.Items.Objects[ComboBoxAlunos.ItemIndex]);

      dmDatabase.InsertQuery.SQL.Text := 'INSERT INTO matriculas (id, fk_id_turma, fk_id_estudante) ' +
        'VALUES (' + IntToStr(ID) + ', ' + inttoStr(turma.Cod) + ', ' + IntToStr(aluno.codigo) + ')';
      dmDatabase.InsertQuery.ExecSQL;


      matricula_editada.Cod := strtoint(MatriculaCodEdit.Text);
      matricula_editada.CodTurma := turma.Cod;
      matricula_editada.codaluno := aluno.codigo;

      ShowMessage('Matrícula inserida com sucesso!');
      ModalResult := mrOk;
      resetform;
    end
    else if edit then
    begin
      // Recupera os objetos corretos dos ComboBoxes
      turma := TTurma(ComboBoxTurmas.Items.Objects[ComboBoxTurmas.ItemIndex]);
      aluno := TAluno(ComboBoxAlunos.Items.Objects[ComboBoxAlunos.ItemIndex]);
      ID := strtoint(MatriculaCodEdit.Text);

      // Populando o objeto matricula_editada
      matricula_editada.Cod := strtoint(MatriculaCodEdit.Text);
      matricula_editada.codturma := turma.Cod;
      matricula_editada.codaluno := aluno.codigo;

      // SQL de UPDATE adaptado para a tabela MATRICULAS
      dmDatabase.InsertQuery.SQL.Text := 'UPDATE matriculas SET fk_id_turma = ' + IntToStr(turma.Cod) +
        ', fk_id_estudante = ' + IntToStr(aluno.codigo) +
        ' WHERE id = ' + IntToStr(ID);
      dmDatabase.InsertQuery.ExecSQL;

      ShowMessage('Matrícula editada com sucesso!');
      ModalResult := mrOk;
      resetform;
      edit := false;
    end;
  except
    on E: Exception do
      ShowMessage('Erro ao inserir matrícula: ' + E.Message);
  end;
end;

procedure TfrmMatriculasCRUD.FormShow(Sender: TObject);
var
  i: Integer;
  turma: TTurma;
  aluno: TAluno;
begin
  if edit then
  begin
    MatriculaCodEdit.Text := IntToStr(matricula_editada.Cod );
    ID := matricula_editada.Cod;


    for i := 0 to ComboBoxTurmas.Items.Count - 1 do
    begin
      turma := TTurma(ComboBoxTurmas.Items.Objects[i]);
      if turma.Cod = matricula_editada.Codturma then
      begin
        ComboBoxTurmas.ItemIndex := i;
        break;
      end;
    end;


    for i := 0 to ComboBoxAlunos.Items.Count - 1 do
    begin
      aluno := TAluno(ComboBoxAlunos.Items.Objects[i]);
      if aluno.codigo = matricula_editada.codaluno then
      begin
        ComboBoxAlunos.ItemIndex := i;
        break;
      end;
    end;

  end
  else
  begin

    resetform;
  end;
end;


procedure TfrmMatriculasCRUD.resetform;
begin
dmDatabase.Insertquery.Close;
dmDatabase.Insertquery.SQL.Text := 'SELECT COALESCE(MAX(id), 0) + 1 AS id FROM Matriculas';
dmDatabase.Insertquery.Open;
ID := dmDatabase.Insertquery.FieldByName('id').AsInteger;
dmDatabase.Insertquery.Close;
MatriculaCodEdit.Text := ID.ToString;
end;

end.
