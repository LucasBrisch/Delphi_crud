unit uProfessor;

interface

uses uPessoa;

type
  TProfessor = class(TPessoa)
  private
    FCPF: string;
    procedure SetCPF(const Value: string);
    function GetCPF: string;
  public
    property CPF: string read GetCPF write SetCPF;
  end;

implementation

{ TProfessor }

function TProfessor.GetCPF: string;
begin
  result := FCPF
end;

procedure TProfessor.SetCPF(const Value: string);
begin
  FCPF := value;
end;

end.
