object Form2: TForm2
  Left = 490
  Top = 143
  Width = 354
  Height = 558
  Caption = 'Form2'
  Color = clWhite
  TransparentColorValue = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 91
    Top = 216
    Width = 53
    Height = 13
  end
  object Label2: TLabel
    Left = 91
    Top = 272
    Width = 54
    Height = 13
  end
  object Label3: TLabel
    Left = 88
    Top = 24
    Width = 3
    Height = 13
  end
  object Label4: TLabel
    Left = 120
    Top = 16
    Width = 89
    Height = 13
    Caption = #1048#1089#1093#1086#1076#1085#1099#1081' '#1074#1077#1082#1090#1086#1088
  end
  object Label5: TLabel
    Left = 120
    Top = 112
    Width = 100
    Height = 13
    Caption = #1055#1086#1083#1091#1095#1077#1085#1085#1099#1081' '#1074#1077#1082#1090#1086#1088
  end
  object GroupBox1: TGroupBox
    Left = 48
    Top = 328
    Width = 225
    Height = 185
    TabOrder = 0
    object Button2: TButton
      Left = 32
      Top = 24
      Width = 153
      Height = 49
      Caption = 'Back'
      TabOrder = 0
      OnClick = Button2Click
    end
    object BitBtn2: TBitBtn
      Left = 32
      Top = 104
      Width = 153
      Height = 49
      TabOrder = 1
      Kind = bkClose
    end
  end
  object E2: TEdit
    Left = 88
    Top = 240
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object SGF1: TStringGrid
    Left = 40
    Top = 136
    Width = 257
    Height = 65
    ColCount = 1
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 2
    Visible = False
  end
  object E1: TEdit
    Left = 88
    Top = 296
    Width = 145
    Height = 21
    TabOrder = 3
    Visible = False
  end
  object SGF2: TStringGrid
    Left = 40
    Top = 40
    Width = 257
    Height = 65
    ColCount = 1
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 4
    Visible = False
  end
end
