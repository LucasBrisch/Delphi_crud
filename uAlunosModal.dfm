object frmAlunosCRUD: TfrmAlunosCRUD
  Left = 0
  Top = 0
  Caption = 'frmAlunosCRUD'
  ClientHeight = 380
  ClientWidth = 294
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
    object frmAlunosTitle: TLabel
      Left = 1
      Top = 1
      Width = 287
      Height = 32
      Align = alTop
      Alignment = taCenter
      Caption = 'ALUNO'
      Font.Charset = MAC_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'NSimSun'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 92
    end
    object AlunoNomeHolder: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 152
      Width = 281
      Height = 56
      Margins.Top = 0
      Align = alTop
      Caption = 'AlunoNomeHolder'
      ShowCaption = False
      TabOrder = 0
      object AlunoNomeLabel: TLabel
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
        Caption = 'Nome:'
        ExplicitWidth = 36
      end
      object AlunoNomeEdit: TEdit
        AlignWithMargins = True
        Left = 4
        Top = 19
        Width = 273
        Height = 23
        Align = alTop
        TabOrder = 0
        TextHint = 'Nome do aluno'
      end
    end
    object AlunoCodHolder: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 93
      Width = 281
      Height = 56
      Margins.Top = 60
      Align = alTop
      Caption = 'Panel2'
      ShowCaption = False
      TabOrder = 1
      object AlunoCodLabel: TLabel
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
      object AlunoCodEdit: TEdit
        AlignWithMargins = True
        Left = 4
        Top = 19
        Width = 273
        Height = 23
        Align = alTop
        Enabled = False
        TabOrder = 0
        TextHint = 'C'#243'digo do aluno'
      end
    end
    object EnviarAluno: TButton
      AlignWithMargins = True
      Left = 4
      Top = 261
      Width = 281
      Height = 25
      Margins.Top = 50
      Align = alTop
      Caption = 'Enviar'
      TabOrder = 2
      OnClick = EnviarAlunoClick
    end
    object CancelarAluno: TButton
      AlignWithMargins = True
      Left = 4
      Top = 292
      Width = 281
      Height = 25
      Align = alTop
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 3
    end
  end
end
