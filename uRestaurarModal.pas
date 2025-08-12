unit uRestaurarModal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  // Unidades necessárias para acesso ao banco e componentes FireDAC
  uConnection, FireDAC.Comp.Client, FireDAC.Stan.Intf;

type
  TfrmRestaurarModal = class(TForm)
    Panel1: TPanel;
    ListaItensInativos: TListBox;
    Restaurar: TButton;
    procedure FormShow(Sender: TObject);
    procedure RestaurarClick(Sender: TObject);
  private
    { Private declarations }
    // Esta função será chamada pelo OnShow para carregar a lista
    procedure PreencherLista;
  public
    { Public declarations }
    // Propriedade para receber o nome da tabela do formulário principal
    NomeTabela: string;
  end;

var
  frmRestaurarModal: TfrmRestaurarModal;

implementation

{$R *.dfm}

{ TfrmRestaurarModal }

procedure TfrmRestaurarModal.FormShow(Sender: TObject);
begin
  // Ao exibir o formulário, chamamos a rotina para preencher a lista
  PreencherLista;
end;

procedure TfrmRestaurarModal.PreencherLista;
var
  SQL: string;
  QueryLocal: TFDQuery;
begin
  // Limpa a lista
  ListaItensInativos.Clear;

  // Garante que o formulário principal passou o nome da tabela
  if NomeTabela.IsEmpty then
  begin
    ShowMessage('Nenhuma tabela foi especificada para restauração.');
    // Desabilita o botão se não houver tabela
    Restaurar.Enabled := False;
    Exit;
  end;

  // Monta a query para buscar os itens inativos (só funciona pra disciplina, aluno e professor, que são os q tem nome)
  SQL := Format('SELECT id, nome FROM %s WHERE ativo = false ORDER BY id', [NomeTabela]);

  QueryLocal := TFDQuery.Create(nil);
  try
    QueryLocal.Connection := dmDatabase.Conexao;
    QueryLocal.SQL.Text := SQL;
    QueryLocal.Open;

    // Preenche a ListBox
    while not QueryLocal.Eof do
    begin
      // Adicionamos o nome do item para exibição na lista
      // e guardamos o ID, que é um número, dentro da propriedade 'Objects'
      ListaItensInativos.Items.AddObject(
        QueryLocal.FieldByName('id').AsString + ' - ' +
        QueryLocal.FieldByName('nome').AsString,
        TObject(QueryLocal.FieldByName('id').AsInteger)
      );
      QueryLocal.Next;
    end;

    // Habilita o botão apenas se a lista tiver itens
    Restaurar.Enabled := (ListaItensInativos.Items.Count > 0);

  finally
    QueryLocal.Free;
  end;
end;

procedure TfrmRestaurarModal.RestaurarClick(Sender: TObject);
var
  IDParaRestaurar: Integer;
  SQL: string;
begin

  if ListaItensInativos.ItemIndex < 0 then
  begin
    ShowMessage('Por favor, selecione um item da lista para restaurar.');
    Exit;
  end;

  // Pega o ID do objeto
  IDParaRestaurar := Integer(ListaItensInativos.Items.Objects[ListaItensInativos.ItemIndex]);

  // Monta o comando UPDATE para reativar o registro
  SQL := Format('UPDATE %s SET ativo = true WHERE id = :id', [NomeTabela]);


  dmDatabase.Conexao.StartTransaction;
  try
    dmDatabase.updateQuery.SQL.Text := SQL;
    dmDatabase.updateQuery.ParamByName('id').AsInteger := IDParaRestaurar;
    dmDatabase.updateQuery.ExecSQL;

    dmDatabase.Conexao.Commit; // Confirma a alteração no banco

    ShowMessage('Registro restaurado com sucesso!');



    // Se não houver mais itens, desabilita o botão
    Restaurar.Enabled := (ListaItensInativos.Items.Count > 0);

    // para que ele possa atualizar suas próprias listas.
    ModalResult := mrOk;

  except
    on E: Exception do
    begin
      dmDatabase.Conexao.Rollback; // Desfaz a alteração em caso de erro
      ShowMessage('Erro ao restaurar o registro: ' + E.Message);
    end;
  end;
end;

end.
