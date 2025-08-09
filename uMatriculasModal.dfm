object frmMatriculasCRUD: TfrmMatriculasCRUD
  Left = 0
  Top = 0
  Caption = 'frmMatriculasCRUD'
  ClientHeight = 378
  ClientWidth = 292
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object ModalAlunos: TPanel
    Left = 0
    Top = 8
    Width = 289
    Height = 369
    Caption = 'ModalAlunos'
    ShowCaption = False
    TabOrder = 0
    object MatriculasAlunosTitle: TLabel
      Left = 1
      Top = 1
      Width = 287
      Height = 32
      Align = alTop
      Alignment = taCenter
      Caption = 'MATR'#205'CULAS'
      Font.Charset = MAC_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'NSimSun'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 173
    end
    object MatriculaNomeAlunoHolder: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 201
      Width = 281
      Height = 56
      Margins.Top = 0
      Align = alTop
      Caption = 'MatriculaNomeAlunoHolder'
      ShowCaption = False
      TabOrder = 0
      object MatriculaAlunoNomeLabel: TLabel
        AlignWithMargins = True
        Left = 9
        Top = 1
        Width = 271
        Height = 15
        Margins.Left = 8
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Nome do aluno:'
        ExplicitWidth = 86
      end
      object ComboBoxAlunos: TComboBox
        AlignWithMargins = True
        Left = 4
        Top = 19
        Width = 273
        Height = 23
        Align = alClient
        TabOrder = 0
        Text = 'ComboBoxAlunos'
      end
    end
    object MatriculaCodHolder: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 83
      Width = 281
      Height = 56
      Margins.Top = 50
      Align = alTop
      Caption = 'Panel2'
      ShowCaption = False
      TabOrder = 1
      object MatriculaCodLabel: TLabel
        AlignWithMargins = True
        Left = 9
        Top = 1
        Width = 271
        Height = 15
        Margins.Left = 8
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = 'C'#243'digo:'
        ExplicitWidth = 42
      end
      object MatriculaCodEdit: TEdit
        AlignWithMargins = True
        Left = 4
        Top = 19
        Width = 273
        Height = 23
        Align = alTop
        Enabled = False
        TabOrder = 0
        TextHint = 'C'#243'digo da matricula'
      end
    end
    object EnviarMatricula: TButton
      AlignWithMargins = True
      Left = 4
      Top = 310
      Width = 281
      Height = 25
      Margins.Top = 50
      Align = alTop
      Caption = 'Enviar'
      TabOrder = 2
      OnClick = EnviarMatriculaClick
    end
    object CancelarMatricula: TButton
      AlignWithMargins = True
      Left = 4
      Top = 341
      Width = 281
      Height = 25
      Align = alTop
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 3
    end
    object MatriculaCodTurmaHolder: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 142
      Width = 281
      Height = 56
      Margins.Top = 0
      Align = alTop
      Caption = 'MatriculaNomeAlunoHolder'
      ShowCaption = False
      TabOrder = 4
      object MatriculaCodTurmaLabel: TLabel
        AlignWithMargins = True
        Left = 9
        Top = 1
        Width = 271
        Height = 15
        Margins.Left = 8
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Numero da turma:'
        ExplicitWidth = 98
      end
      object ComboBoxTurmas: TComboBox
        AlignWithMargins = True
        Left = 4
        Top = 19
        Width = 273
        Height = 23
        Align = alClient
        TabOrder = 0
        Text = 'ComboBoxAlunos'
      end
    end
  end
end
