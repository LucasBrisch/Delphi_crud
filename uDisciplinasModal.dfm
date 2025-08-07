object frmDisciplinasCRUD: TfrmDisciplinasCRUD
  Left = 0
  Top = 0
  Caption = 'frmDisciplinasCRUD'
  ClientHeight = 389
  ClientWidth = 302
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object ModalDisciplinas: TPanel
    Left = 0
    Top = 8
    Width = 289
    Height = 369
    Caption = 'ModalDisciplinas'
    ShowCaption = False
    TabOrder = 0
    object frmDisciplinasTitle: TLabel
      Left = 1
      Top = 1
      Width = 287
      Height = 32
      Align = alTop
      Alignment = taCenter
      Caption = 'DISCIPLINA'
      Font.Charset = MAC_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'NSimSun'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 151
    end
    object DisciplinaNomeHolder: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 152
      Width = 281
      Height = 56
      Margins.Top = 0
      Align = alTop
      Caption = 'DisciplinaNomeHolder'
      ShowCaption = False
      TabOrder = 0
      object DisciplinaNomeLabel: TLabel
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
      object DisciplinaNomeEdit: TEdit
        AlignWithMargins = True
        Left = 4
        Top = 19
        Width = 273
        Height = 23
        Align = alTop
        TabOrder = 0
        TextHint = 'Nome da materia'
      end
    end
    object DisciplinasCodHolder: TPanel
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
      object DisciplinaCodLabel: TLabel
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
      object DisciplinaCodEdit: TEdit
        AlignWithMargins = True
        Left = 4
        Top = 19
        Width = 273
        Height = 23
        Align = alTop
        Enabled = False
        TabOrder = 0
        TextHint = 'C'#243'digo da disciplina'
      end
    end
    object EnviarDisciplina: TButton
      AlignWithMargins = True
      Left = 4
      Top = 261
      Width = 281
      Height = 25
      Margins.Top = 50
      Align = alTop
      Caption = 'Enviar'
      TabOrder = 2
      OnClick = EnviarDisciplinaClick
    end
    object CancelarDisciplina: TButton
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
