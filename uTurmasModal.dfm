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
  OnShow = FormShow
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
        Caption = 'Nome do professor:'
        ExplicitWidth = 105
      end
      object ComboBoxProfessores: TComboBox
        AlignWithMargins = True
        Left = 4
        Top = 19
        Width = 273
        Height = 23
        Align = alClient
        TabOrder = 0
        Text = 'ComboBoxProfessores'
        ExplicitTop = 33
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
        Enabled = False
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
      OnClick = EnviarTurmaClick
    end
    object CancelarTurma: TButton
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
      object ComboBoxDisciplinas: TComboBox
        AlignWithMargins = True
        Left = 4
        Top = 19
        Width = 273
        Height = 23
        Align = alClient
        TabOrder = 0
        Text = 'ComboBoxDisciplinas'
        ExplicitTop = 33
      end
    end
  end
end
