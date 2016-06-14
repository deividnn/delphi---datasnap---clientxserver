object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'cliente datasnap'
  ClientHeight = 193
  ClientWidth = 160
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object resultado: TLabel
    Left = 8
    Top = 160
    Width = 6
    Height = 13
    Caption = '0'
  end
  object x: TEdit
    Left = 8
    Top = 8
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 0
  end
  object y: TEdit
    Left = 8
    Top = 48
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 1
  end
  object somar: TButton
    Left = 8
    Top = 96
    Width = 121
    Height = 25
    Caption = 'somar'
    TabOrder = 2
    OnClick = somarClick
  end
end
