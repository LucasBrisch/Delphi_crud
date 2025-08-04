unit uTurma;

interface

type
  TTurma = class
  private
    Fcod: Integer;
    FcodProfessor: Integer;
    FcodDisciplina: Integer;
    function GetCod: Integer;
    procedure SetCod(Value: Integer);
    function GetCodProfessor: Integer;
    procedure SetCodProfessor(Value: Integer);
    function GetCodDisciplina: Integer;
    procedure SetCodDisciplina(Value: Integer);
  public
    property Cod: Integer read GetCod write SetCod;
    property CodProfessor: Integer read GetCodProfessor write SetCodProfessor;
    property CodDisciplina: Integer read GetCodDisciplina write SetCodDisciplina;
  end;

implementation

{ TTurma }

function TTurma.GetCod: Integer;
begin
  Result := Fcod;
end;

function TTurma.GetCodDisciplina: Integer;
begin
  Result := FcodDisciplina;
end;

function TTurma.GetCodProfessor: Integer;
begin
  Result := FcodProfessor;
end;

procedure TTurma.SetCod(Value: Integer);
begin
  Fcod := Value;
end;

procedure TTurma.SetCodDisciplina(Value: Integer);
begin
  FcodDisciplina := Value;
end;

procedure TTurma.SetCodProfessor(Value: Integer);
begin
  FcodProfessor := Value;
end;

end.

