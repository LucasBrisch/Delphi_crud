object frmProfessoresCRUD: TfrmProfessoresCRUD
  Left = 0
  Top = 0
  Caption = 'frmProfessoresCRUD'
  ClientHeight = 383
  ClientWidth = 292
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
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
    object frmProfessorTitle: TLabel
      Left = 1
      Top = 1
      Width = 287
      Height = 32
      Align = alTop
      Alignment = taCenter
      Caption = 'PROFESSOR'
      Font.Charset = MAC_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'NSimSun'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 170
    end
    object ProfessorNomeHolder: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 191
      Width = 281
      Height = 56
      Margins.Top = 0
      Align = alTop
      Caption = 'ProfessorNomeHolder'
      ShowCaption = False
      TabOrder = 0
      object ProfessorNameLabel: TLabel
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
        StyleName = 'ProfessorNameLabel'
        ExplicitWidth = 36
      end
      object ProfessorNomeEdit: TEdit
        AlignWithMargins = True
        Left = 4
        Top = 19
        Width = 273
        Height = 23
        Align = alTop
        TabOrder = 0
        TextHint = 'Nome do professor'
      end
    end
    object ProfessorCodHolder: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 73
      Width = 281
      Height = 56
      Margins.Top = 40
      Align = alTop
      Caption = 'Panel2'
      ShowCaption = False
      TabOrder = 1
      object ProfessorCodLabel: TLabel
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
      object ProfessorCodEdit: TEdit
        AlignWithMargins = True
        Left = 4
        Top = 19
        Width = 273
        Height = 23
        Align = alTop
        TabOrder = 0
        TextHint = 'C'#243'digo do Professor'
      end
    end
    object EnviarProfessor: TButton
      AlignWithMargins = True
      Left = 4
      Top = 300
      Width = 281
      Height = 25
      Margins.Top = 50
      Align = alTop
      Caption = 'Enviar'
      TabOrder = 2
      OnClick = EnviarProfessorClick
    end
    object CancelarProfessor: TButton
      AlignWithMargins = True
      Left = 4
      Top = 331
      Width = 281
      Height = 25
      Align = alTop
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 3
    end
    object ProfessorCPFHolder: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 132
      Width = 281
      Height = 56
      Margins.Top = 0
      Align = alTop
      Caption = 'ProfessorNomeHolder'
      ShowCaption = False
      TabOrder = 4
      object ProfessorCPFLabel: TLabel
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
        Caption = 'CPF:'
        ExplicitWidth = 24
      end
      object ProfessorCPFEdit: TEdit
        AlignWithMargins = True
        Left = 4
        Top = 19
        Width = 273
        Height = 23
        Align = alTop
        MaxLength = 11
        TabOrder = 0
        TextHint = 'CPF do professor'
      end
    end
  end
end
