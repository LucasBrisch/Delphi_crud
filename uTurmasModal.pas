unit uTurmasModal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uconnection, uturma, uprofessor, udisciplina;

type
  TfrmTurmasCRUD = class(TForm)
    ModalTurmas: TPanel;
    frmTurmasTitle: TLabel;
    TurmaNomeDoProfessorHolder: TPanel;
    TurmaNomeDoProfessorLabel: TLabel;
    TurmaCodHolder: TPanel;
    TurmaCodLabel: TLabel;
    TurmaCodEdit: TEdit;
    EnviarTurma: TButton;
    CancelarTurma: TButton;
    TurmaNomeDaMateriaHolder: TPanel;
    TurmaNomeDaMateriaLabel: TLabel;
    ComboBoxProfessores: TComboBox;
    ComboBoxDisciplinas: TComboBox;
    procedure EnviarTurmaClick(Sender: TObject);
    procedure resetform ();
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var ID: integer;
    edit : boolean;
    turma_editada : tturma;
  end;

var
  frmTurmasCRUD: TfrmTurmasCRUD;

implementation

{$R *.dfm}

procedure TfrmTurmasCRUD.EnviarTurmaClick(Sender: TObject);

var professor: TProfessor;
disciplina: Tdisciplina;
begin
begin

  if (Comboboxdisciplinas.Text = '') or (Comboboxdisciplinas.Text = '') then begin
  ShowMessage('Por favor, selecione todos os campos.');
  Exit;
  end;

  try
  if not edit then begin
    professor := TProfessor(ComboBoxprofessores.Items.Objects[ComboBoxprofessores.ItemIndex]);
    disciplina := tdisciplina(ComboBoxdisciplinas.Items.Objects[ComboBoxdisciplinas.ItemIndex]);




    dmDatabase.InsertQuery.SQL.Text := 'INSERT INTO turmas (id, fk_id_professor, fk_id_disciplina) ' +
    'VALUES (' + IntToStr(ID) + ', ' + IntToStr(professor.codigo) + ', ' + IntToStr(disciplina.cod) + ')';
    dmDatabase.InsertQuery.ExecSQL;

    turma_editada.Cod := strtoint(turmacodedit.Text);
    turma_editada.codprofessor := (professor.Codigo);
    turma_editada.CodDisciplina := (disciplina.Cod);

    ShowMessage('turma inserida com sucesso!');
    ModalResult := mrOk;  // mrOK serve pra informar sucesso
    resetform;
  end else if edit then begin

    professor := TProfessor(ComboBoxprofessores.Items.Objects[ComboBoxprofessores.ItemIndex]);
    disciplina := tdisciplina(ComboBoxdisciplinas.Items.Objects[ComboBoxdisciplinas.ItemIndex]);
    ID := strtoint(Turmacodedit.Text);
    turma_editada.Cod := strtoint(turmacodedit.Text);
    turma_editada.codprofessor := (professor.Codigo);
    turma_editada.CodDisciplina := (disciplina.cod);
    dmDatabase.InsertQuery.SQL.Text := 'UPDATE turmas SET fk_id_professor = ' + IntToStr(professor.codigo) +
    ', fk_id_disciplina = ' + IntToStr(disciplina.cod) +
    ' WHERE id = ' + IntToStr(ID);
    dmDatabase.InsertQuery.ExecSQL;

    turma_editada.codprofessor := professor.Codigo;
    turma_editada.CodDisciplina := disciplina.cod;

    ShowMessage('Turma editada com sucesso!');
    ModalResult := mrOk;  // mrOK serve pra informar sucesso
    resetform;
    edit := false;

  end;

  except
    on E: Exception do
      ShowMessage('Erro ao inserir turma: ' + E.Message);
  end;


end;
end;

procedure TfrmTurmasCRUD.FormShow(Sender: TObject);
begin
if edit then begin

Turmacodedit.text := inttostr(turma_editada.Cod);


end else if not edit then begin
  Resetform;
end;
end;

procedure TfrmTurmasCRUD.resetform;
begin
dmDatabase.Insertquery.Close;
dmDatabase.Insertquery.SQL.Text := 'SELECT COALESCE(MAX(id), 0) + 1 AS id FROM turmas';
dmDatabase.Insertquery.Open;
ID := dmDatabase.Insertquery.FieldByName('id').AsInteger;
dmDatabase.Insertquery.Close;
TurmaCodEdit.Text := ID.ToString;
end;

end.
