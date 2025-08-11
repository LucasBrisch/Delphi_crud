unit uProfessoresModal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uprofessor, uconnection;

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
    procedure EnviarProfessorClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure resetform;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var ID: integer;
    edit : boolean;
    professor_editado : tprofessor;
  end;

var
  frmProfessoresCRUD: TfrmProfessoresCRUD;

implementation

{$R *.dfm}



procedure TfrmProfessoresCRUD.EnviarProfessorClick(Sender: TObject);
var i : double;
begin
begin

  if (professorNomeEdit.Text = '') or not(Length(professorcpfedit.text) = 11) then begin
  ShowMessage('Por favor, preencha o nome e um CPF válido com 11 dígitos.');
  Exit;
  end;

  try
   i := strtofloat(professorcpfEdit.Text);
  except
    ShowMessage('Por favor, use apenas numeros para o CPF');
    exit
  end;

  try
  if not edit then begin




    dmDatabase.InsertQuery.SQL.Text := 'INSERT INTO professores (id, nome, cpf) VALUES ('+ inttostr(ID) + ', '+QuotedStr(ProfessorNomeEdit.Text) + ',' + QuotedStr(ProfessorcpfEdit.Text) + ')';
    dmDatabase.InsertQuery.ExecSQL;

    professor_editado.Codigo := strtoint(professorcodedit.Text);
    professor_editado.Nome := (ProfessorNomeEdit.Text);
    professor_editado.CPF := (ProfessorCPFEdit.Text);

    ShowMessage('professor inserido com sucesso!');
    ModalResult := mrOk;  // mrOK serve pra informar sucesso
    resetform;
  end else if edit then begin
    professor_editado.Codigo := strtoint(professorcodedit.Text);
    professor_editado.Nome := (professorNomeEdit.Text);
    professor_editado.CPF := (professorCPFEdit.Text);
    dmDatabase.InsertQuery.SQL.Text := 'UPDATE professores SET nome = ' + QuotedStr(professorNomeEdit.Text) + ', cpf = ' + QuotedStr(professorCpfEdit.Text) + ' WHERE id = ' + professorcodedit.Text;
    dmDatabase.InsertQuery.ExecSQL;

    professor_editado.Nome := professornomeedit.Text;
    Professor_editado.codigo := strtoint(professorcodedit.Text);

    ShowMessage('Professor editado com sucesso!');
    ModalResult := mrOk;  // mrOK serve pra informar sucesso
    resetform;
    edit := false;

  end;

  except
    on E: Exception do
      ShowMessage('Erro ao inserir aluno: ' + E.Message);
  end;


end;
end;

procedure TfrmProfessoresCRUD.FormCreate(Sender: TObject);
begin
  professor_editado := tprofessor.Create;
end;

procedure TfrmProfessoresCRUD.FormShow(Sender: TObject);
begin
if edit then begin

Professorcodedit.text := inttostr(professor_editado.Codigo);
Professornomeedit.text := professor_editado.nome;
Professorcpfedit.text := professor_editado.cpf;

end else if not edit then begin
  Resetform;
end;
end;

procedure TfrmProfessoresCRUD.Resetform;
begin
dmDatabase.Insertquery.SQL.Text := 'SELECT COALESCE(MAX(id), 0) + 1 AS id FROM professores';
dmDatabase.Insertquery.Open;
ID := dmDatabase.Insertquery.FieldByName('id').AsInteger;
dmDatabase.Insertquery.Close;
ProfessorCodEdit.Text := ID.ToString;
ProfessorNomeEdit.Text := ''
end;

end.




