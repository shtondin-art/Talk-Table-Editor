object FormFileName: TFormFileName
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'FileName'
  ClientHeight = 38
  ClientWidth = 382
  Color = clBtnFace
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
    Left = 352
    Top = 8
    Width = 22
    Height = 23
    AutoSize = False
    Caption = '.txt'
  end
  object teFileName: TEdit
    Left = 8
    Top = 6
    Width = 338
    Height = 25
    TabOrder = 0
  end
end
