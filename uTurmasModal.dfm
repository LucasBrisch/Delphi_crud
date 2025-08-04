object frmTurmasCRUD: TfrmTurmasCRUD
  Left = 0
  Top = 0
  Caption = 'frmTurmasCRUD'
  ClientHeight = 379
  ClientWidth = 291
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object ModalTurmas: TPanel
    Left = 0
    Top = 8
    Width = 289
    Height = 369
    Caption = 'ModalTurmas'
    ShowCaption = False
    TabOrder = 0
    object frmTurmasTitle: TLabel
      Left = 1
      Top = 1
      Width = 287
      Height = 32
      Align = alTop
      Alignment = taCenter
      Caption = 'TURMA'
      Font.Charset = MAC_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'NSimSun'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 96
    end
    object TurmaNomeDoProfessorHolder: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 201
      Width = 281
      Height = 56
      Margins.Top = 0
      Align = alTop
      Caption = 'TurmaNomeDoProfessorHolder'
      ShowCaption = False
      TabOrder = 0
      ExplicitTop = 152
      object TurmaNomeDoProfessorLabel: TLabel
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
      object TurmaNomeDoProfessorEdit: TEdit
        AlignWithMargins = True
        Left = 4
        Top = 19
        Width = 273
        Height = 23
        Align = alTop
        TabOrder = 0
        TextHint = 'Nome do Professor'
      end
    end
    object TurmaCodHolder: TPanel
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
      ExplicitLeft = 3
      ExplicitTop = 94
      object TurmaCodLabel: TLabel
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
      object TurmaCodEdit: TEdit
        AlignWithMargins = True
        Left = 4
        Top = 19
        Width = 273
        Height = 23
        Align = alTop
        TabOrder = 0
        TextHint = 'C'#243'digo da turma'
      end
    end
    object EnviarTurma: TButton
      AlignWithMargins = True
      Left = 4
      Top = 310
      Width = 281
      Height = 25
      Margins.Top = 50
      Align = alTop
      Caption = 'Enviar'
      TabOrder = 2
      ExplicitTop = 261
    end
    object CancelarTurma: TButton
      AlignWithMargins = True
      Left = 4
      Top = 341
      Width = 281
      Height = 25
      Align = alTop
      Caption = 'Cancelar'
      TabOrder = 3
      ExplicitTop = 292
    end
    object TurmaNomeDaMateriaHolder: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 142
      Width = 281
      Height = 56
      Margins.Top = 0
      Align = alTop
      Caption = 'TurmaNomeDoProfessorHolder'
      ShowCaption = False
      TabOrder = 4
      ExplicitTop = 152
      object TurmaNomeDaMateriaLabel: TLabel
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
        Caption = 'Nome da mat'#233'ria:'
        ExplicitWidth = 95
      end
      object TurmaNomeDaMateriaEdit: TEdit
        AlignWithMargins = True
        Left = 4
        Top = 19
        Width = 273
        Height = 23
        Align = alTop
        TabOrder = 0
        TextHint = 'Nome da mat'#233'ria'
      end
    end
  end
end
