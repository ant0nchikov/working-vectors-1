object Form1: TForm1
  Left = 449
  Top = 217
  Width = 527
  Height = 376
  Caption = 'ant0nchikov.pro'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MM1
  OldCreateOrder = False
  OnClick = FormClick
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 360
    Top = 8
    Width = 132
    Height = 24
    Caption = #1056#1072#1079#1084#1077#1088#1085#1086#1089#1090#1100
    Color = clHighlightText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object Label2: TLabel
    Left = 96
    Top = 8
    Width = 175
    Height = 24
    Caption = #1048#1089#1093#1086#1076#1085#1099#1081' '#1074#1077#1090#1082#1086#1088
    Color = clHighlightText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object Label3: TLabel
    Left = 120
    Top = 280
    Width = 302
    Height = 25
    Caption = 'ant0nchikov.pro/student-works '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object E1: TEdit
    Left = 352
    Top = 32
    Width = 137
    Height = 21
    TabOrder = 0
    Visible = False
    OnKeyPress = E1KeyPress
  end
  object UD1: TUpDown
    Left = 488
    Top = 32
    Width = 17
    Height = 25
    TabOrder = 1
    Visible = False
    OnClick = UD1Click
  end
  object BB1: TBitBtn
    Left = 8
    Top = 208
    Width = 153
    Height = 49
    TabOrder = 2
    Kind = bkClose
  end
  object SG1: TStringGrid
    Left = 8
    Top = 32
    Width = 337
    Height = 169
    ColCount = 1
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 3
    Visible = False
    OnKeyPress = SG1KeyPress
  end
  object B1: TButton
    Left = 352
    Top = 56
    Width = 153
    Height = 49
    Caption = #1042#1074#1086#1076
    TabOrder = 4
    OnClick = B1Click
  end
  object B2: TButton
    Left = 352
    Top = 104
    Width = 153
    Height = 49
    Caption = #1047#1072#1087#1080#1089#1100' '#1092#1072#1081#1083#1072
    TabOrder = 5
    OnClick = B2Click
  end
  object B3: TButton
    Left = 352
    Top = 152
    Width = 153
    Height = 49
    Caption = #1063#1090#1077#1085#1080#1077' '#1080#1079' '#1092#1072#1081#1083#1072
    TabOrder = 6
    OnClick = B3Click
  end
  object Button1: TButton
    Left = 168
    Top = 208
    Width = 153
    Height = 49
    Caption = 'Clear'
    TabOrder = 7
    OnClick = Button1Click
  end
  object MM1: TMainMenu
    Left = 8
    object N1: TMenuItem
      Caption = #1057#1091#1084#1084#1072
      object N2: TMenuItem
        Caption = #1042#1089#1077#1093' '#1101#1083'-'#1086#1074
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1054#1090#1088#1080#1094#1072#1090#1077#1083#1100#1085#1099#1093
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1055#1086#1083#1086#1078#1080#1090#1077#1083#1100#1085#1099#1093
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = #1063#1077#1090#1085#1099#1093
        OnClick = N5Click
      end
      object N6: TMenuItem
        Caption = #1053#1077#1095#1077#1090#1085#1099#1093
        OnClick = N6Click
      end
      object N101: TMenuItem
        Caption = '>10'
        OnClick = N101Click
      end
      object N102: TMenuItem
        Caption = '<10'
        OnClick = N102Click
      end
      object N7: TMenuItem
        Caption = '>'#1089#1088'. '#1072#1088#1080#1092#1084'.'
        OnClick = N7Click
      end
      object N8: TMenuItem
        Caption = '<'#1089#1088'. '#1072#1088#1080#1092#1084'.'
        OnClick = N8Click
      end
    end
    object minmax1: TMenuItem
      Caption = 'min/max'
      object min1: TMenuItem
        Caption = 'min'#39
        OnClick = min1Click
      end
      object max1: TMenuItem
        Caption = 'max'
        OnClick = max1Click
      end
    end
    object N9: TMenuItem
      Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072
      object N10: TMenuItem
        Caption = #1055#1086' '#1074#1086#1079#1088'.'
        OnClick = N10Click
      end
      object N11: TMenuItem
        Caption = #1055#1086' '#1091#1073#1099#1074'.'
        OnClick = N11Click
      end
    end
    object N12: TMenuItem
      Caption = #1057#1074#1086#1077' '#1079#1072#1076#1072#1085#1080#1077
      object N14: TMenuItem
        Caption = #1047#1072#1076#1072#1085#1080#1077' '#8470'1'
        OnClick = N14Click
      end
      object N21: TMenuItem
        Caption = #1047#1072#1076#1072#1085#1080#1077' '#8470'2'
        OnClick = N21Click
      end
    end
    object N13: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N13Click
    end
  end
  object OD1: TOpenDialog
    Left = 40
  end
  object SD1: TSaveDialog
    Left = 72
  end
end
