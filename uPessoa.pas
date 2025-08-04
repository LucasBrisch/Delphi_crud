unit uPessoa;

interface

type
  TPessoa = class
  private
    FCodigo: Integer;
    FNome: string;
    procedure SetCodigo(const Value: Integer);
    function GetCodigo: Integer;
    procedure SetNome(const Value: string);
    function GetNome: string;
  public
    property Codigo: Integer read GetCodigo write SetCodigo;
    property Nome: string read GetNome write SetNome;
  end;

implementation

procedure TPessoa.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

function TPessoa.GetCodigo: Integer;
begin
  Result := FCodigo;
end;

procedure TPessoa.SetNome(const Value: string);
begin
  FNome := Value;
end;

function TPessoa.GetNome: string;
begin
  Result := FNome;
end;


end.
