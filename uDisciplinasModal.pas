unit uDisciplinasModal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uconnection, udisciplina;

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
    procedure FormShow(Sender: TObject);
    procedure EnviarDisciplinaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure Resetform;
    { Private declarations }
  public
    { Public declarations }
    var id : integer;
    edit : boolean;
    Disciplina_editada : tDisciplina;
  end;

var
  frmDisciplinasCRUD: TfrmDisciplinasCRUD;

implementation

{$R *.dfm}


procedure TfrmDisciplinasCRUD.EnviarDisciplinaClick(Sender: TObject);
begin
if DisciplinaNomeEdit.Text = '' then begin
    showmessage('por favor coloque o nome da disciplina');
    exit
  end;

  try
  if not edit then begin

    dmDatabase.InsertQuery.SQL.Text := 'INSERT INTO disciplinas (id, nome) VALUES ('+ inttostr(ID) + ', '+QuotedStr(DisciplinaNomeEdit.Text) +')';
    dmDatabase.InsertQuery.ExecSQL;

    disciplina_editada.cod := strtoint(Disciplinacodedit.Text);
    disciplina_editada.nome := disciplinanomeedit.text;


    ShowMessage('Disciplina inserida com sucesso!');
    ModalResult := mrOk;  // mrOK serve pra informar sucesso
    resetform;
  end else if edit then begin
    dmDatabase.InsertQuery.SQL.Text := 'UPDATE Disciplinas SET nome = ' + QuotedStr(DisciplinaNomeEdit.Text) + ' WHERE id = ' + Disciplinacodedit.Text;
    dmDatabase.InsertQuery.ExecSQL;

    ShowMessage('disciplina editado com sucesso!');
    //showmessage(disciplinanomeedit.Text);
    disciplina_editada.Nome := disciplinanomeedit.Text;
    disciplina_editada.cod := strtoint(disciplinacodedit.Text);
    ModalResult := mrOk;  // mrOK serve pra informar sucesso
    resetform;
    edit := false;

  end;

  except
    on E: Exception do
      ShowMessage('Erro ao inserir a disciplina: ' + E.Message);
  end;
end;

procedure TfrmDisciplinasCRUD.FormCreate(Sender: TObject);
begin
disciplina_editada := tdisciplina.Create();
end;

procedure TfrmDisciplinasCRUD.FormShow(Sender: TObject);
begin

if edit then begin

Disciplinacodedit.text := inttostr(Disciplina_editada.Cod);
Disciplinanomeedit.text := Disciplina_editada.nome;

end else if not edit then begin
  Resetform;
end;
end;

procedure TfrmDisciplinasCRUD.Resetform;
begin
dmDatabase.Insertquery.SQL.Text := 'SELECT COALESCE(MAX(id), 0) + 1 AS id FROM Disciplinas';
dmDatabase.Insertquery.Open;
ID := dmDatabase.Insertquery.FieldByName('id').AsInteger;
dmDatabase.Insertquery.Close;
DisciplinaCodEdit.Text := id.ToString;
DisciplinaNomeEdit.Text := ''
end;

end.
