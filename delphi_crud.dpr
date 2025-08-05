program delphi_crud;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {CRUD_escolar},
  uAlunosModal in 'uAlunosModal.pas' {frmAlunosCRUD},
  uProfessoresModal in 'uProfessoresModal.pas' {frmProfessoresCRUD},
  uDisciplinasModal in 'uDisciplinasModal.pas' {frmDisciplinasCRUD},
  uTurmasModal in 'uTurmasModal.pas' {frmTurmasCRUD},
  uMatriculasModal in 'uMatriculasModal.pas' {frmMatriculasCRUD},
  uConnection in 'uConnection.pas' {DmDatabase: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCRUD_escolar, CRUD_escolar);
  Application.CreateForm(TDmDatabase, DmDatabase);
  Application.CreateForm(TfrmAlunosCRUD, frmAlunosCRUD);
  Application.CreateForm(TfrmProfessoresCRUD, frmProfessoresCRUD);
  Application.CreateForm(TfrmDisciplinasCRUD, frmDisciplinasCRUD);
  Application.CreateForm(TfrmTurmasCRUD, frmTurmasCRUD);
  Application.CreateForm(TfrmMatriculasCRUD, frmMatriculasCRUD);
  Application.Run;
end.
