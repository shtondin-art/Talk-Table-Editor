object Form500Strings: TForm500Strings
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '<CNT> '#1089#1090#1088#1086#1082', '#1085#1072#1095#1080#1085#1072#1103' '#1089' <POS>'
  ClientHeight = 525
  ClientWidth = 750
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Default'
  Font.Style = []
  KeyPreview = True
  Position = poMainFormCenter
  Scaled = False
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 17
  object Label1: TLabel
    Left = 7
    Top = 6
    Width = 735
    Height = 24
    AutoSize = False
    Caption = '  '#1057#1090#1088#1086#1082#1072'        '#1058#1077#1082#1089#1090
  end
  object lv500Strings: TListView
    Left = 8
    Top = 24
    Width = 734
    Height = 493
    Columns = <
      item
        Caption = #1057#1090#1088#1086#1082#1072
        Width = 75
      end
      item
        Caption = #1058#1077#1082#1089#1090
        Width = 630
      end>
    GridLines = True
    RowSelect = True
    ShowColumnHeaders = False
    TabOrder = 0
    ViewStyle = vsReport
    OnDblClick = lv500StringsDblClick
    OnSelectItem = lv500StringsSelectItem
  end
end
