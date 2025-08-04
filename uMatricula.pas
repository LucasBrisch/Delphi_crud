unit uMatricula;

interface

type
  TMatricula = class
  private
    Fcod: Integer;
    FcodAluno: Integer;
    FcodTurma: Integer;
    function GetCod: Integer;
    procedure SetCod(Value: Integer);
    function GetCodAluno: Integer;
    procedure SetCodAluno(Value: Integer);
    function GetCodTurma: Integer;
    procedure SetCodTurma(Value: Integer);
  public
    property Cod: Integer read GetCod write SetCod;
    property CodAluno: Integer read GetCodAluno write SetCodAluno;
    property CodTurma: Integer read GetCodTurma write SetCodTurma;
  end;

implementation

{ TMatricula }

function TMatricula.GetCod: Integer;
begin
  Result := Fcod;
end;

function TMatricula.GetCodAluno: Integer;
begin
  Result := FcodAluno;
end;

function TMatricula.GetCodTurma: Integer;
begin
  Result := FcodTurma;
end;

procedure TMatricula.SetCod(Value: Integer);
begin
  Fcod := Value;
end;

procedure TMatricula.SetCodAluno(Value: Integer);
begin
  FcodAluno := Value;
end;

procedure TMatricula.SetCodTurma(Value: Integer);
begin
  FcodTurma := Value;
end;

end.

