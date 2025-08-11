object CRUD_escolar: TCRUD_escolar
  Left = 0
  Top = 0
  Caption = 'CRUD_escolar'
  ClientHeight = 665
  ClientWidth = 1027
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1027
    Height = 665
    ActivePage = Professores
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet4: TTabSheet
      Caption = 'Turmas'
      ImageIndex = 3
      object Botoes_Turmas: TPanel
        Left = 0
        Top = 0
        Width = 1019
        Height = 65
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Botoes_disciplinas'
        ShowCaption = False
        TabOrder = 0
        object Adicionar_turmas: TButton
          AlignWithMargins = True
          Left = 15
          Top = 0
          Width = 111
          Height = 65
          Margins.Left = 15
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Adicionar'
          TabOrder = 0
          OnClick = Adicionar_turmasClick
          ExplicitTop = -3
        end
        object Editar_turmas: TButton
          AlignWithMargins = True
          Left = 141
          Top = 0
          Width = 111
          Height = 65
          Margins.Left = 15
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Editar'
          TabOrder = 1
          OnClick = Editar_turmasClick
          ExplicitLeft = 142
          ExplicitTop = 1
          ExplicitHeight = 63
        end
        object Excluir_turmas: TButton
          AlignWithMargins = True
          Left = 267
          Top = 0
          Width = 111
          Height = 65
          Margins.Left = 15
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = Excluir_turmasClick
          ExplicitLeft = 268
          ExplicitTop = 1
          ExplicitHeight = 63
        end
      end
      object TurmasBox: TListBox
        Left = 0
        Top = 106
        Width = 1019
        Height = 529
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemHeight = 32
        ParentFont = False
        TabOrder = 1
        ExplicitTop = 65
        ExplicitHeight = 570
      end
      object Panel2: TPanel
        Left = 0
        Top = 65
        Width = 1019
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel1'
        ShowCaption = False
        TabOrder = 2
        object Label1: TLabel
          Left = 0
          Top = 0
          Width = 27
          Height = 41
          Align = alLeft
          Alignment = taCenter
          Caption = ' ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitHeight = 30
        end
        object Label2: TLabel
          Left = 95
          Top = 0
          Width = 219
          Height = 41
          Align = alLeft
          Alignment = taCenter
          Caption = 'PROFESSOR / MATERIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 101
          ExplicitTop = -6
        end
        object Panel4: TPanel
          Left = 27
          Top = 0
          Width = 68
          Height = 41
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'Panel2'
          ShowCaption = False
          TabOrder = 0
          ExplicitLeft = 21
        end
      end
    end
    object Professores: TTabSheet
      Caption = 'Professores'
      object Botoes_professores: TPanel
        Left = 0
        Top = 0
        Width = 1019
        Height = 65
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Botoes_disciplinas'
        ShowCaption = False
        TabOrder = 0
        ExplicitTop = -6
        object Adicionar_Professores: TButton
          AlignWithMargins = True
          Left = 15
          Top = 0
          Width = 111
          Height = 65
          Margins.Left = 15
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Adicionar'
          TabOrder = 0
          OnClick = Adicionar_ProfessoresClick
          ExplicitLeft = 16
          ExplicitTop = 1
          ExplicitHeight = 63
        end
        object Editar_professores: TButton
          AlignWithMargins = True
          Left = 141
          Top = 0
          Width = 111
          Height = 65
          Margins.Left = 15
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Editar'
          TabOrder = 1
          OnClick = Editar_professoresClick
          ExplicitLeft = 142
          ExplicitTop = 1
          ExplicitHeight = 63
        end
        object Excluir_professores: TButton
          AlignWithMargins = True
          Left = 267
          Top = 0
          Width = 111
          Height = 65
          Margins.Left = 15
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = Excluir_professoresClick
          ExplicitLeft = 268
          ExplicitTop = 1
          ExplicitHeight = 63
        end
      end
      object ProfessoresBox: TListBox
        Left = 0
        Top = 106
        Width = 1019
        Height = 529
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemHeight = 32
        ParentFont = False
        TabOrder = 1
        ExplicitTop = 65
        ExplicitHeight = 570
      end
      object Panel7: TPanel
        Left = 0
        Top = 65
        Width = 1019
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel1'
        ShowCaption = False
        TabOrder = 2
        ExplicitTop = 73
        object Label5: TLabel
          Left = 0
          Top = 0
          Width = 27
          Height = 41
          Align = alLeft
          Alignment = taCenter
          Caption = ' ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitHeight = 30
        end
        object Label6: TLabel
          Left = 95
          Top = 0
          Width = 117
          Height = 41
          Align = alLeft
          Alignment = taCenter
          Caption = 'NOME / CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitHeight = 30
        end
        object Panel8: TPanel
          Left = 27
          Top = 0
          Width = 68
          Height = 41
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'Panel2'
          ShowCaption = False
          TabOrder = 0
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Alunos'
      ImageIndex = 1
      object Botoes_alunos: TPanel
        Left = 0
        Top = 0
        Width = 1019
        Height = 65
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Botoes_disciplinas'
        ShowCaption = False
        TabOrder = 0
        object Adicionar_alunos: TButton
          AlignWithMargins = True
          Left = 15
          Top = 0
          Width = 111
          Height = 65
          Margins.Left = 15
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Adicionar'
          TabOrder = 0
          OnClick = Adicionar_alunosClick
          ExplicitLeft = 16
          ExplicitTop = 1
          ExplicitHeight = 63
        end
        object Editar_alunos: TButton
          AlignWithMargins = True
          Left = 141
          Top = 0
          Width = 111
          Height = 65
          Margins.Left = 15
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Editar'
          TabOrder = 1
          OnClick = Editar_alunosClick
          ExplicitLeft = 142
          ExplicitTop = 1
          ExplicitHeight = 63
        end
        object Excluir_alunos: TButton
          AlignWithMargins = True
          Left = 267
          Top = 0
          Width = 111
          Height = 65
          Margins.Left = 15
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = Excluir_alunosClick
          ExplicitTop = -3
        end
      end
      object AlunosBox: TListBox
        Left = 0
        Top = 106
        Width = 1019
        Height = 529
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemHeight = 32
        ParentFont = False
        TabOrder = 1
        ExplicitTop = 65
        ExplicitHeight = 570
      end
      object Panel9: TPanel
        Left = 0
        Top = 65
        Width = 1019
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel1'
        ShowCaption = False
        TabOrder = 2
        ExplicitTop = 73
        object Label7: TLabel
          Left = 0
          Top = 0
          Width = 27
          Height = 41
          Align = alLeft
          Alignment = taCenter
          Caption = ' ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitHeight = 30
        end
        object Label8: TLabel
          Left = 95
          Top = 0
          Width = 62
          Height = 41
          Align = alLeft
          Alignment = taCenter
          Caption = 'NOME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitHeight = 30
        end
        object Panel10: TPanel
          Left = 27
          Top = 0
          Width = 68
          Height = 41
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'Panel2'
          ShowCaption = False
          TabOrder = 0
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Matriculas'
      ImageIndex = 2
      object Botoes_Matriculas: TPanel
        Left = 0
        Top = 0
        Width = 1019
        Height = 65
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Botoes_disciplinas'
        ShowCaption = False
        TabOrder = 0
        object Adicionar_matriculas: TButton
          AlignWithMargins = True
          Left = 15
          Top = 0
          Width = 111
          Height = 65
          Margins.Left = 15
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Adicionar'
          TabOrder = 0
          OnClick = Adicionar_matriculasClick
        end
        object Editar_matriculas: TButton
          AlignWithMargins = True
          Left = 141
          Top = 0
          Width = 111
          Height = 65
          Margins.Left = 15
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Editar'
          TabOrder = 1
          OnClick = Editar_matriculasClick
        end
        object Excluir_matriculas: TButton
          AlignWithMargins = True
          Left = 267
          Top = 0
          Width = 111
          Height = 65
          Margins.Left = 15
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = Excluir_matriculasClick
        end
      end
      object MatriculasBox: TListBox
        Left = 0
        Top = 106
        Width = 1019
        Height = 529
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemHeight = 32
        ParentFont = False
        TabOrder = 1
      end
      object Panel1: TPanel
        Left = 0
        Top = 65
        Width = 1019
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel1'
        ShowCaption = False
        TabOrder = 2
        object ID: TLabel
          Left = 0
          Top = 0
          Width = 27
          Height = 41
          Align = alLeft
          Alignment = taCenter
          Caption = ' ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitHeight = 30
        end
        object NOME: TLabel
          Left = 87
          Top = 0
          Width = 153
          Height = 41
          Align = alLeft
          Alignment = taCenter
          Caption = 'NOME / TURMA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitHeight = 30
        end
        object Panel3: TPanel
          Left = 27
          Top = 0
          Width = 60
          Height = 41
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'Panel2'
          ShowCaption = False
          TabOrder = 0
          ExplicitLeft = 21
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Disciplinas'
      ImageIndex = 4
      object Botoes_disciplinas: TPanel
        Left = 0
        Top = 0
        Width = 1019
        Height = 65
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Botoes_disciplinas'
        ShowCaption = False
        TabOrder = 0
        ExplicitTop = -6
        object Adicionar_disciplinas: TButton
          AlignWithMargins = True
          Left = 15
          Top = 0
          Width = 111
          Height = 65
          Margins.Left = 15
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Adicionar'
          TabOrder = 0
          OnClick = Adicionar_disciplinasClick
          ExplicitLeft = 16
          ExplicitTop = 1
          ExplicitHeight = 63
        end
        object Editar_disciplinas: TButton
          AlignWithMargins = True
          Left = 141
          Top = 0
          Width = 111
          Height = 65
          Margins.Left = 15
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Editar'
          TabOrder = 1
          OnClick = Editar_disciplinasClick
          ExplicitLeft = 142
          ExplicitTop = 1
          ExplicitHeight = 63
        end
        object Excluir_disciplinas: TButton
          AlignWithMargins = True
          Left = 267
          Top = 0
          Width = 111
          Height = 65
          Margins.Left = 15
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = Excluir_disciplinasClick
          ExplicitLeft = 268
          ExplicitTop = 1
          ExplicitHeight = 63
        end
      end
      object DisciplinasBox: TListBox
        Left = 0
        Top = 106
        Width = 1019
        Height = 529
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemHeight = 32
        ParentFont = False
        TabOrder = 1
        ExplicitTop = 65
        ExplicitHeight = 570
      end
      object Panel5: TPanel
        Left = 0
        Top = 65
        Width = 1019
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel1'
        ShowCaption = False
        TabOrder = 2
        object Label3: TLabel
          Left = 0
          Top = 0
          Width = 27
          Height = 41
          Align = alLeft
          Alignment = taCenter
          Caption = ' ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitHeight = 30
        end
        object Label4: TLabel
          Left = 95
          Top = 0
          Width = 109
          Height = 41
          Align = alLeft
          Alignment = taCenter
          Caption = 'DISCIPLINA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitHeight = 30
        end
        object Panel6: TPanel
          Left = 27
          Top = 0
          Width = 68
          Height = 41
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'Panel2'
          ShowCaption = False
          TabOrder = 0
        end
      end
    end
  end
end
