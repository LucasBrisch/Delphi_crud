unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids;

type
  TForm3 = class(TForm)
    PageControl1: TPageControl;
    Professores: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Botoes_disciplinas: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Botoes_alunos: TPanel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Botoes_Matriculas: TPanel;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Botoes_professores: TPanel;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Botoes_Turmas: TPanel;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    StringGrid4: TStringGrid;
    StringGrid5: TStringGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

end.
