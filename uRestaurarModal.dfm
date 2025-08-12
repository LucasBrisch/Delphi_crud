object frmRestaurarModal: TfrmRestaurarModal
  Left = 0
  Top = 0
  Caption = 'frmRestaurarModal'
  ClientHeight = 379
  ClientWidth = 278
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 278
    Height = 379
    Align = alClient
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    ExplicitTop = 3
    ExplicitWidth = 185
    ExplicitHeight = 297
    object ListaItensInativos: TListBox
      Left = 1
      Top = 1
      Width = 276
      Height = 346
      Align = alClient
      ItemHeight = 15
      TabOrder = 0
      ExplicitLeft = -55
      ExplicitTop = -39
      ExplicitWidth = 183
      ExplicitHeight = 264
    end
    object Restaurar: TButton
      AlignWithMargins = True
      Left = 4
      Top = 350
      Width = 270
      Height = 25
      Align = alBottom
      Caption = 'Restaurar'
      TabOrder = 1
      OnClick = RestaurarClick
      ExplicitTop = 268
      ExplicitWidth = 157
    end
  end
end
