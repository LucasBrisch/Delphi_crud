unit uDisciplina;

interface

type
  TDisciplina = class
  private
    Fcod: Integer;
    Fnome: String;
    function GetCod: Integer;
    procedure SetCod(Value: Integer);
    function GetNome: String;
    procedure SetNome(Value: String);
  public
    property Cod: Integer read GetCod write SetCod;
    property Nome: String read GetNome write SetNome;
  end;

implementation

{ TDisciplina }

function TDisciplina.GetCod: Integer;
begin
  Result := Fcod;
end;

procedure TDisciplina.SetCod(Value: Integer);
begin
  Fcod := Value;
end;

function TDisciplina.GetNome: String;
begin
  Result := Fnome;
end;

procedure TDisciplina.SetNome(Value: String);
begin
  Fnome := Value;
end;

end.

