object CRUD_escolar: TCRUD_escolar
  Left = 0
  Top = 0
  Caption = 'CRUD_escolar'
  ClientHeight = 665
  ClientWidth = 1027
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWhite
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
    ExplicitLeft = 8
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
        object Label11: TLabel
          AlignWithMargins = True
          Left = 818
          Top = 0
          Width = 161
          Height = 65
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 40
          Margins.Bottom = 0
          Align = alRight
          Alignment = taCenter
          Caption = 'TURMAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCornflowerblue
          Font.Height = -43
          Font.Name = 'Sitka Heading'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 840
          ExplicitHeight = 62
        end
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
        end
      end
      object TurmasBox: TListBox
        AlignWithMargins = True
        Left = 300
        Top = 126
        Width = 419
        Height = 484
        Margins.Left = 300
        Margins.Top = 0
        Margins.Right = 300
        Margins.Bottom = 25
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemHeight = 32
        ParentFont = False
        TabOrder = 1
        ExplicitLeft = 0
        ExplicitTop = 106
        ExplicitWidth = 1019
        ExplicitHeight = 529
      end
      object Panel7: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 85
        Width = 1019
        Height = 41
        Margins.Left = 0
        Margins.Top = 20
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel1'
        ShowCaption = False
        TabOrder = 2
        ExplicitTop = 65
        object Label5: TLabel
          Left = 300
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
          Left = 387
          Top = 0
          Width = 242
          Height = 41
          Align = alLeft
          Alignment = taCenter
          Caption = 'PROFESSOR / DISCIPLINA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitHeight = 30
        end
        object Panel8: TPanel
          Left = 327
          Top = 0
          Width = 60
          Height = 41
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'Panel2'
          ShowCaption = False
          TabOrder = 0
        end
        object Panel14: TPanel
          Left = 0
          Top = 0
          Width = 300
          Height = 41
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'Panel2'
          ShowCaption = False
          TabOrder = 1
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
        object Label10: TLabel
          AlignWithMargins = True
          Left = 712
          Top = 0
          Width = 267
          Height = 65
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 40
          Margins.Bottom = 0
          Align = alRight
          Alignment = taCenter
          Caption = 'PROFESSORES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCornflowerblue
          Font.Height = -43
          Font.Name = 'Sitka Heading'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 734
          ExplicitHeight = 62
        end
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
        end
      end
      object ProfessoresBox: TListBox
        AlignWithMargins = True
        Left = 300
        Top = 126
        Width = 419
        Height = 484
        Margins.Left = 300
        Margins.Top = 0
        Margins.Right = 300
        Margins.Bottom = 25
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemHeight = 32
        ParentFont = False
        TabOrder = 1
        ExplicitTop = 106
        ExplicitHeight = 504
      end
      object Panel9: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 85
        Width = 1019
        Height = 41
        Margins.Left = 0
        Margins.Top = 20
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel1'
        ShowCaption = False
        TabOrder = 2
        ExplicitTop = 65
        object Label7: TLabel
          Left = 300
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
          Left = 387
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
        object Panel10: TPanel
          Left = 327
          Top = 0
          Width = 60
          Height = 41
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'Panel2'
          ShowCaption = False
          TabOrder = 0
        end
        object Panel11: TPanel
          Left = 0
          Top = 0
          Width = 300
          Height = 41
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'Panel2'
          ShowCaption = False
          TabOrder = 1
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
        object ALUNOS: TLabel
          AlignWithMargins = True
          Left = 826
          Top = 0
          Width = 153
          Height = 65
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 40
          Margins.Bottom = 0
          Align = alRight
          Alignment = taCenter
          Caption = 'ALUNOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCornflowerblue
          Font.Height = -43
          Font.Name = 'Sitka Heading'
          Font.Style = []
          ParentFont = False
          ExplicitHeight = 62
        end
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
        end
      end
      object AlunosBox: TListBox
        AlignWithMargins = True
        Left = 300
        Top = 126
        Width = 419
        Height = 484
        Margins.Left = 300
        Margins.Top = 0
        Margins.Right = 300
        Margins.Bottom = 25
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemHeight = 32
        ParentFont = False
        TabOrder = 1
        ExplicitTop = 131
        ExplicitHeight = 479
      end
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 85
        Width = 1019
        Height = 41
        Margins.Left = 0
        Margins.Top = 20
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel1'
        ShowCaption = False
        TabOrder = 2
        ExplicitTop = 73
        object Label1: TLabel
          Left = 300
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
          Left = 393
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
          ExplicitLeft = 387
          ExplicitHeight = 30
        end
        object Panel4: TPanel
          Left = 327
          Top = 0
          Width = 66
          Height = 41
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'Panel2'
          ShowCaption = False
          TabOrder = 0
        end
        object Panel15: TPanel
          Left = 0
          Top = 0
          Width = 300
          Height = 41
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'Panel2'
          ShowCaption = False
          TabOrder = 1
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
        object Label9: TLabel
          AlignWithMargins = True
          Left = 735
          Top = 0
          Width = 244
          Height = 65
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 40
          Margins.Bottom = 0
          Align = alRight
          Alignment = taCenter
          Caption = 'MATRICULAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCornflowerblue
          Font.Height = -43
          Font.Name = 'Sitka Heading'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 757
          ExplicitHeight = 62
        end
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
        AlignWithMargins = True
        Left = 300
        Top = 126
        Width = 419
        Height = 484
        Margins.Left = 300
        Margins.Top = 0
        Margins.Right = 300
        Margins.Bottom = 25
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemHeight = 32
        ParentFont = False
        TabOrder = 1
        ExplicitTop = 106
        ExplicitHeight = 504
      end
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 85
        Width = 1019
        Height = 41
        Margins.Left = 0
        Margins.Top = 20
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel1'
        ShowCaption = False
        TabOrder = 2
        ExplicitTop = 62
        object ID: TLabel
          Left = 300
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
          ExplicitLeft = 297
          ExplicitHeight = 30
        end
        object NOME: TLabel
          Left = 387
          Top = 0
          Width = 161
          Height = 41
          Align = alLeft
          Alignment = taCenter
          Caption = 'ALUNO / TURMA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitHeight = 30
        end
        object Panel3: TPanel
          Left = 327
          Top = 0
          Width = 60
          Height = 41
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'Panel2'
          ShowCaption = False
          TabOrder = 0
          ExplicitLeft = 324
        end
        object Panel13: TPanel
          Left = 0
          Top = 0
          Width = 300
          Height = 41
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'Panel2'
          ShowCaption = False
          TabOrder = 1
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Disciplinas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ImageIndex = 4
      ParentFont = False
      object Botoes_disciplinas: TPanel
        Left = 0
        Top = 0
        Width = 1019
        Height = 65
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Botoes_disciplinas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        ShowCaption = False
        TabOrder = 0
        object DISCIPLINAS: TLabel
          AlignWithMargins = True
          Left = 745
          Top = 0
          Width = 234
          Height = 65
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 40
          Margins.Bottom = 0
          Align = alRight
          Alignment = taCenter
          Caption = 'DISCIPLINAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCornflowerblue
          Font.Height = -43
          Font.Name = 'Sitka Heading'
          Font.Style = []
          ParentFont = False
          ExplicitHeight = 62
        end
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
        end
      end
      object DisciplinasBox: TListBox
        AlignWithMargins = True
        Left = 300
        Top = 126
        Width = 419
        Height = 484
        Margins.Left = 300
        Margins.Top = 0
        Margins.Right = 300
        Margins.Bottom = 25
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemHeight = 32
        ParentFont = False
        TabOrder = 1
        ExplicitTop = 131
        ExplicitHeight = 479
      end
      object Panel5: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 85
        Width = 1019
        Height = 41
        Margins.Left = 0
        Margins.Top = 20
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel1'
        ShowCaption = False
        TabOrder = 2
        ExplicitTop = 93
        object Label3: TLabel
          Left = 300
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
          Left = 393
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
          Left = 327
          Top = 0
          Width = 66
          Height = 41
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'Panel2'
          ShowCaption = False
          TabOrder = 0
        end
        object Panel12: TPanel
          Left = 0
          Top = 0
          Width = 300
          Height = 41
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'Panel2'
          ShowCaption = False
          TabOrder = 1
        end
      end
    end
  end
end
