unit uAlunosModal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uconnection, ualuno;

type
  TfrmAlunosCRUD = class(TForm)
    ModalAlunos: TPanel;
    frmAlunosTitle: TLabel;
    AlunoNomeEdit: TEdit;
    AlunoNomeLabel: TLabel;
    AlunoNomeHolder: TPanel;
    AlunoCodHolder: TPanel;
    AlunoCodLabel: TLabel;
    AlunoCodEdit: TEdit;
    EnviarAluno: TButton;
    CancelarAluno: TButton;
    procedure EnviarAlunoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Resetform;
  private
    { Private declarations }
  public
    { Public declarations }
    var ID: integer;
    edit : boolean;
    aluno_editado : tAluno;
  end;

var
  frmAlunosCRUD: TfrmAlunosCRUD;

implementation

{$R *.dfm}

procedure TfrmAlunosCRUD.EnviarAlunoClick(Sender: TObject);
begin

  if AlunoNomeEdit.Text = '' then begin
    showmessage('por favor coloque o nome do aluno');
    exit
  end;

  try
  if not edit then begin

    dmDatabase.InsertQuery.SQL.Text := 'INSERT INTO alunos (id, nome) VALUES ('+ inttostr(ID) + ', '+QuotedStr(AlunoNomeEdit.Text) +')';
    dmDatabase.InsertQuery.ExecSQL;

    ShowMessage('Aluno inserido com sucesso!');
    ModalResult := mrOk;  // mrOK serve pra informar sucesso
    resetform;
  end else if edit then begin
    dmDatabase.InsertQuery.SQL.Text := 'UPDATE alunos SET nome = ' + QuotedStr(AlunoNomeEdit.Text) + ' WHERE id = ' + alunocodedit.Text;
    dmDatabase.InsertQuery.ExecSQL;

    ShowMessage('Aluno editado com sucesso!');
    ModalResult := mrOk;  // mrOK serve pra informar sucesso
    resetform;
    edit := false;

  end;

  except
    on E: Exception do
      ShowMessage('Erro ao inserir aluno: ' + E.Message);
  end;


end;



procedure TfrmAlunosCRUD.FormShow(Sender: TObject);

begin
if edit then begin

Alunocodedit.text := inttostr(aluno_editado.Codigo);
Alunonomeedit.text := aluno_editado.nome;

end else if not edit then begin
  Resetform;
end;
end;

procedure TfrmAlunosCRUD.Resetform;
begin
dmDatabase.Insertquery.SQL.Text := 'SELECT COALESCE(MAX(id), 0) + 1 AS id FROM alunos';
dmDatabase.Insertquery.Open;
ID := dmDatabase.Insertquery.FieldByName('id').AsInteger;
dmDatabase.Insertquery.Close;
AlunoCodEdit.Text := ID.ToString;
AlunoNomeEdit.Text := ''
end;

end.
