object frmMain: TfrmMain
  Left = 0
  Top = 0
  Margins.Left = 2
  Margins.Top = 2
  Margins.Right = 2
  Margins.Bottom = 2
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 
    'Talk Table Editor, '#1074#1077#1088#1089#1080#1103' <VER>, '#1088#1072#1079#1084#1077#1088' <SIZE> '#1082#1073#1072#1081#1090', '#1089#1086#1079#1076#1072#1085' <DA' +
    'TE>'
  ClientHeight = 540
  ClientWidth = 960
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Default'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 17
  object Label1: TLabel
    Left = 562
    Top = 188
    Width = 275
    Height = 24
    AutoSize = False
    Caption = '[ '#1089#1090#1088#1086#1082#1072' ] '#1082#1088#1072#1090#1082#1086#1077' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1079#1072#1082#1083#1072#1076#1082#1080
    Constraints.MaxWidth = 275
    Constraints.MinWidth = 275
  end
  object Label2: TLabel
    Left = 842
    Top = 89
    Width = 115
    Height = 24
    AutoSize = False
    Caption = '[ '#1089#1090#1088#1086#1082#1072' ] '#8470' '#1080#1079#1084'.'
    Constraints.MaxWidth = 115
    Constraints.MinWidth = 115
  end
  object sbScrollStrings: TScrollBar
    Left = 172
    Top = 59
    Width = 322
    Height = 25
    Hint = #1057#1083#1072#1081#1076#1077#1088' '#1073#1099#1089#1090#1088#1086#1075#1086' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1103' '#1087#1086' '#1089#1090#1088#1086#1082#1072#1084
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Constraints.MaxHeight = 25
    Constraints.MaxWidth = 322
    Constraints.MinHeight = 25
    Constraints.MinWidth = 322
    Enabled = False
    PageSize = 0
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnChange = sbScrollStringsChange
  end
  object btSelectTlk1: TButton
    Tag = 1
    Left = 3
    Top = 31
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Hint = #1054#1090#1082#1088#1099#1090#1100' '#1086#1089#1085#1086#1074#1085#1086#1081' '#1092#1072#1081#1083'. '#1055#1050#1052' - '#1086#1090#1082#1088#1099#1090#1100' '#1087#1072#1087#1082#1091' '#1092#1072#1081#1083#1072
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1054#1090#1082#1088#1099#1090#1100' '#1082#1072#1082' ...'
    Constraints.MaxHeight = 25
    Constraints.MaxWidth = 100
    Constraints.MinHeight = 25
    Constraints.MinWidth = 100
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = btSelectTlkClick
    OnContextPopup = btSelectTlkContextPopup
  end
  object teStatusBar: TEdit
    Left = 31
    Top = 3
    Width = 806
    Height = 25
    Hint = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086#1073' '#1086#1089#1085#1086#1074#1085#1086#1084' '#1092#1072#1081#1083#1077
    Margins.Left = 2
    Margins.Right = 2
    AutoSize = False
    Color = clMenu
    Constraints.MaxHeight = 25
    Constraints.MinHeight = 25
    HideSelection = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 2
  end
  object btSelectTlk2: TButton
    Tag = 2
    Left = 3
    Top = 318
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Hint = #1054#1090#1082#1088#1099#1090#1100' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1081' '#1092#1072#1081#1083'. '#1055#1050#1052' - '#1086#1090#1082#1088#1099#1090#1100' '#1087#1072#1087#1082#1091' '#1092#1072#1081#1083#1072
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1054#1090#1082#1088#1099#1090#1100' '#1082#1072#1082' ...'
    Constraints.MaxHeight = 25
    Constraints.MaxWidth = 100
    Constraints.MinHeight = 25
    Constraints.MinWidth = 100
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = btSelectTlkClick
    OnContextPopup = btSelectTlkContextPopup
  end
  object teTlkPath1: TEdit
    Left = 172
    Top = 31
    Width = 386
    Height = 25
    Cursor = crIBeam
    Hint = #1055#1091#1090#1100' '#1086#1089#1085#1086#1074#1085#1086#1075#1086' '#1092#1072#1081#1083#1072
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Alignment = taRightJustify
    AutoSize = False
    Constraints.MaxHeight = 25
    Constraints.MaxWidth = 386
    Constraints.MinHeight = 25
    Constraints.MinWidth = 386
    Enabled = False
    HideSelection = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 4
    OnChange = teTlkPath1Change
  end
  object teTlkPath2: TEdit
    Left = 172
    Top = 318
    Width = 386
    Height = 25
    Cursor = crIBeam
    Hint = #1055#1091#1090#1100' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086#1075#1086' '#1092#1072#1081#1083#1072
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Alignment = taRightJustify
    AutoSize = False
    Constraints.MaxHeight = 25
    Constraints.MaxWidth = 386
    Constraints.MinHeight = 25
    Constraints.MinWidth = 386
    Enabled = False
    HideSelection = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 5
    OnChange = teTlkPath2Change
  end
  object btSaveTLK: TButton
    Tag = 1
    Left = 841
    Top = 3
    Width = 115
    Height = 25
    Cursor = crHandPoint
    Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1074' '#1086#1089#1085#1086#1074#1085#1086#1081' '#1092#1072#1081#1083
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Constraints.MaxHeight = 25
    Constraints.MinHeight = 25
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = btSaveTLKClick
  end
  object teTLKSearch: TEdit
    Left = 666
    Top = 31
    Width = 171
    Height = 25
    Cursor = crIBeam
    Hint = #1055#1086#1080#1089#1082' '#1074' '#1089#1090#1088#1086#1082#1072#1093
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    AutoSize = False
    Constraints.MaxHeight = 25
    Constraints.MinHeight = 25
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    Text = #1090#1077#1082#1089#1090' '#1080#1083#1080' {'#1096#1072#1073#1083#1086#1085'} ...'
    OnChange = teTLKSearchChange
    OnEnter = teTLKSearchEnter
    OnExit = teTLKSearchExit
    OnKeyPress = teTLKSearchKeyPress
  end
  object cbSingleSearch: TCheckBox
    Left = 632
    Top = 86
    Width = 102
    Height = 24
    Cursor = crHandPoint
    Hint = 
      #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1078#1072#1090#1080#1102' "Enter" '#1076#1086' '#1087#1077#1088#1074#1086#1075#1086' '#1089#1086#1074#1087#1072#1076#1077#1085#1080#1103', '#1080#1085#1072#1095#1077' '#1074#1089#1077' '#1089#1086#1074#1087#1072#1076 +
      #1077#1085#1080#1103' '#1073#1091#1076#1091#1090' '#1076#1086#1073#1072#1074#1083#1077#1085#1099' '#1074' '#1089#1087#1080#1089#1086#1082' '#1079#1072#1082#1083#1072#1076#1086#1082
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = '1 '#1089#1086#1074#1087#1072#1076#1077#1085#1080#1077
    Checked = True
    ParentShowHint = False
    ShowHint = True
    State = cbChecked
    TabOrder = 8
    OnClick = cbSingleSearchPropertiesChange
  end
  object cbRegistry: TCheckBox
    Left = 735
    Top = 109
    Width = 102
    Height = 24
    Cursor = crHandPoint
    Hint = #1048#1089#1082#1072#1090#1100' '#1089#1090#1088#1086#1082#1080' '#1089' '#1091#1095#1105#1090#1086#1084' '#1088#1077#1075#1080#1089#1090#1088#1072' '#1090#1077#1082#1089#1090#1072
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1073#1077#1079' '#1088#1077#1075#1080#1089#1090#1088#1072
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
  end
  object cbExactlySearch: TCheckBox
    Left = 562
    Top = 109
    Width = 55
    Height = 24
    Cursor = crHandPoint
    Hint = #1048#1089#1082#1072#1090#1100' '#1089#1090#1088#1086#1082#1080' '#1089' '#1090#1086#1095#1085#1099#1084' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077#1084' '#1074#1074#1077#1076#1105#1085#1085#1086#1084#1091' '#1090#1077#1082#1089#1090#1091
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1090#1086#1095#1085#1086
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnClick = cbExactlySearchChange
  end
  object cbExceptInput: TCheckBox
    Left = 632
    Top = 109
    Width = 94
    Height = 24
    Cursor = crHandPoint
    Hint = #1048#1089#1082#1072#1090#1100' '#1089#1090#1088#1086#1082#1080', '#1085#1077' '#1089#1086#1076#1077#1088#1078#1072#1097#1080#1077' '#1074#1074#1077#1076#1105#1085#1085#1099#1081' '#1090#1077#1082#1089#1090
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1080#1089#1082#1083#1102#1095#1077#1085#1080#1077
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    OnClick = cbExceptInputChange
  end
  object cbReplaceText: TCheckBox
    Left = 562
    Top = 60
    Width = 94
    Height = 24
    Cursor = crHandPoint
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1079#1072#1084#1077#1085#1080#1090#1100' '#1085#1072
    TabOrder = 12
    OnClick = cbReplaceTextPropertiesChange
  end
  object teTextForReplace: TEdit
    Left = 666
    Top = 60
    Width = 171
    Height = 25
    Cursor = crIBeam
    Hint = #1058#1077#1082#1089#1090' '#1076#1083#1103' '#1079#1072#1084#1077#1085#1099' '#1085#1072#1081#1076#1077#1085#1085#1086#1075#1086
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    AutoSize = False
    Constraints.MaxHeight = 25
    Constraints.MinHeight = 25
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
    OnKeyPress = teTLKSearchKeyPress
  end
  object cbAddToBookmarks: TCheckBox
    Left = 735
    Top = 86
    Width = 102
    Height = 24
    Cursor = crHandPoint
    Hint = #1044#1086#1073#1072#1074#1083#1103#1090#1100' '#1089#1090#1088#1086#1082#1091' '#1089' '#1085#1072#1081#1076#1077#1085#1085#1099#1084'/'#1079#1072#1084#1077#1085#1105#1085#1085#1099#1084' '#1090#1077#1082#1089#1090#1086#1084' '#1074' '#1079#1072#1082#1083#1072#1076#1082#1080
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1079#1072#1082#1083#1072#1076#1082#1072
    ParentShowHint = False
    ShowHint = True
    TabOrder = 14
  end
  object teTlkPosition: TEdit
    Left = 108
    Top = 59
    Width = 60
    Height = 25
    Cursor = crIBeam
    Hint = #1042#1074#1077#1076#1080#1090#1077' '#1085#1086#1084#1077#1088' '#1085#1091#1078#1085#1086#1081' '#1089#1090#1088#1086#1082#1080' '#1080' '#1085#1072#1078#1084#1080#1090#1077' "Enter"'
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Alignment = taCenter
    AutoSize = False
    Constraints.MaxHeight = 25
    Constraints.MaxWidth = 60
    Constraints.MinHeight = 25
    Constraints.MinWidth = 60
    Enabled = False
    NumbersOnly = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 15
    OnChange = teTlkPositionChange
    OnKeyPress = teTlkPositionKeyPress
  end
  object teTLKLast: TEdit
    Left = 498
    Top = 59
    Width = 60
    Height = 25
    Cursor = crIBeam
    Hint = #1042#1089#1077#1075#1086' '#1089#1090#1088#1086#1082
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Alignment = taCenter
    AutoSize = False
    Constraints.MaxHeight = 25
    Constraints.MaxWidth = 60
    Constraints.MinHeight = 25
    Constraints.MinWidth = 60
    Enabled = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 16
    OnChange = teTLKLastChange
  end
  object teStringInfo: TEdit
    Left = 3
    Top = 290
    Width = 555
    Height = 25
    Hint = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1089#1090#1088#1086#1082#1077' '#1086#1089#1085#1086#1074#1085#1086#1075#1086' '#1092#1072#1081#1083#1072
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    AutoSize = False
    Color = clMenu
    Constraints.MaxHeight = 25
    Constraints.MaxWidth = 555
    Constraints.MinHeight = 25
    Constraints.MinWidth = 555
    HideSelection = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 17
  end
  object lvBookmars: TListView
    Left = 562
    Top = 207
    Width = 275
    Height = 302
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Columns = <
      item
        Caption = '[ '#1089#1090#1088'. ] '#1085#1072#1079#1074#1072#1085#1080#1077' '#1079#1072#1082#1083#1072#1076#1082#1080' '#1076#1086' 64 '#1089#1080#1084#1074'.'
        Width = 450
      end>
    ColumnClick = False
    Constraints.MaxWidth = 275
    Constraints.MinWidth = 275
    GridLines = True
    HideSelection = False
    OwnerData = True
    ReadOnly = True
    RowSelect = True
    ParentShowHint = False
    ShowColumnHeaders = False
    ShowHint = False
    TabOrder = 18
    ViewStyle = vsReport
    OnData = lvBookmarsData
    OnDblClick = lvBookmarsDblClick
    OnEnter = lvBookmarsEnter
    OnSelectItem = lvBookmarsSelectItem
  end
  object lvChanges: TListView
    Left = 841
    Top = 108
    Width = 115
    Height = 401
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Columns = <
      item
        Caption = '[ '#1089#1090#1088'. ] '#1085#1086#1084'. '#1080#1079#1084'.'
        Width = 90
      end>
    ColumnClick = False
    Constraints.MaxWidth = 115
    Constraints.MinWidth = 115
    GridLines = True
    HideSelection = False
    ReadOnly = True
    RowSelect = True
    ShowColumnHeaders = False
    SortType = stText
    TabOrder = 19
    ViewStyle = vsReport
    OnChange = lvChangesChange
    OnContextPopup = lvChangesContextPopup
    OnDblClick = lvChangesDblClick
    OnSelectItem = lvChangesSelectItem
  end
  object btTLKSearch: TButton
    Left = 562
    Top = 31
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Hint = #1056#1072#1079#1083#1080#1095#1085#1099#1077' '#1074#1086#1079#1084#1086#1078#1085#1086#1089#1090#1080' '#1087#1086#1080#1089#1082#1072' '#1089#1090#1088#1086#1082
    Caption = #1053#1072#1081#1090#1080' ...'
    Constraints.MaxHeight = 25
    Constraints.MaxWidth = 100
    Constraints.MinHeight = 25
    Constraints.MinWidth = 100
    DropDownMenu = PopupSearch
    Enabled = False
    ParentShowHint = False
    PressedImageIndex = 0
    ShowHint = True
    Style = bsSplitButton
    TabOrder = 20
    OnClick = btTLKSearchClick
  end
  object teSecondInfo: TEdit
    Left = 3
    Top = 512
    Width = 555
    Height = 25
    Hint = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1089#1090#1088#1086#1082#1077' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086#1075#1086' '#1092#1072#1081#1083#1072
    AutoSize = False
    Color = clMenu
    Constraints.MaxHeight = 25
    Constraints.MaxWidth = 555
    Constraints.MinHeight = 25
    Constraints.MinWidth = 555
    HideSelection = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 21
  end
  object btText: TButton
    Left = 562
    Top = 157
    Width = 137
    Height = 25
    Cursor = crHandPoint
    Hint = #1054#1073#1088#1072#1073#1086#1090#1082#1072' '#1090#1077#1082#1089#1090#1072
    Caption = #1058#1077#1082#1089#1090' '#1089#1090#1088#1086#1082#1080' ...'
    Constraints.MaxHeight = 25
    Constraints.MaxWidth = 137
    Constraints.MinHeight = 25
    Constraints.MinWidth = 137
    DropDownMenu = PopupText
    Enabled = False
    ParentShowHint = False
    PopupMenu = PopupText
    ShowHint = True
    Style = bsSplitButton
    TabOrder = 22
    OnClick = btTextClick
  end
  object cbTlk1Encoding: TComboBox
    Left = 108
    Top = 31
    Width = 60
    Height = 25
    Cursor = crDrag
    Hint = #1050#1086#1076#1080#1088#1086#1074#1082#1072' '#1090#1077#1082#1089#1090#1072', '#1087#1088#1080#1085#1080#1084#1072#1077#1084#1072#1103' '#1087#1088#1080' '#1079#1072#1075#1088#1091#1079#1082#1077' '#1092#1072#1081#1083#1072
    Margins.Top = 0
    Margins.Bottom = 0
    Style = csOwnerDrawFixed
    Constraints.MaxHeight = 25
    Constraints.MaxWidth = 60
    Constraints.MinHeight = 25
    Constraints.MinWidth = 60
    ItemHeight = 18
    ItemIndex = 0
    ParentShowHint = False
    ShowHint = True
    TabOrder = 23
    Text = 'UTF8'
    Items.Strings = (
      'UTF8'
      'ANSI'
      'ASCII')
  end
  object cbTlk2Encoding: TComboBox
    Left = 108
    Top = 318
    Width = 60
    Height = 25
    Cursor = crDrag
    Hint = #1050#1086#1076#1080#1088#1086#1074#1082#1072' '#1090#1077#1082#1089#1090#1072', '#1087#1088#1080#1085#1080#1084#1072#1077#1084#1072#1103' '#1087#1088#1080' '#1079#1072#1075#1088#1091#1079#1082#1077' '#1092#1072#1081#1083#1072
    Margins.Top = 0
    Margins.Bottom = 0
    Style = csOwnerDrawFixed
    Constraints.MaxHeight = 25
    Constraints.MaxWidth = 60
    Constraints.MinHeight = 25
    Constraints.MinWidth = 60
    ItemHeight = 18
    ItemIndex = 0
    ParentShowHint = False
    ShowHint = True
    TabOrder = 24
    Text = 'UTF8'
    Items.Strings = (
      'UTF8'
      'ANSI'
      'ASCII')
  end
  object cbBackupCopy: TCheckBox
    Left = 842
    Top = 31
    Width = 115
    Height = 24
    Cursor = crHandPoint
    Hint = #1057#1086#1079#1076#1072#1074#1072#1090#1100' '#1088#1077#1079#1077#1088#1074#1085#1091#1102' '#1082#1086#1087#1080#1102' '#1092#1072#1081#1083#1072' '#1087#1077#1088#1077#1076' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077#1084
    Caption = #1056#1077#1079#1077#1088#1074'. '#1082#1086#1087#1080#1103
    Checked = True
    ParentShowHint = False
    ShowHint = True
    State = cbChecked
    TabOrder = 25
  end
  object teBookmarksStatus: TEdit
    Left = 562
    Top = 512
    Width = 275
    Height = 25
    AutoSize = False
    Color = clMenu
    Constraints.MaxHeight = 25
    Constraints.MaxWidth = 275
    Constraints.MinHeight = 25
    Constraints.MinWidth = 275
    ReadOnly = True
    TabOrder = 26
    Text = #1047#1072#1082#1083#1072#1076#1086#1082': '
  end
  object cbQuickSearch: TCheckBox
    Left = 562
    Top = 86
    Width = 67
    Height = 24
    Cursor = crHandPoint
    Hint = #1055#1086#1080#1089#1082' '#1087#1086' '#1084#1077#1088#1077' '#1074#1074#1086#1076#1072' '#1090#1077#1082#1089#1090#1072
    Caption = #1073#1099#1089#1090#1088#1086
    ParentShowHint = False
    ShowHint = True
    TabOrder = 27
  end
  object teChangesStatus: TEdit
    Left = 841
    Top = 512
    Width = 115
    Height = 25
    AutoSize = False
    Color = clMenu
    Constraints.MaxHeight = 25
    Constraints.MaxWidth = 115
    Constraints.MinHeight = 25
    Constraints.MinWidth = 115
    ReadOnly = True
    TabOrder = 28
    Text = #1048#1079#1084#1077#1085#1077#1085#1080#1081': '
  end
  object tmTlk1String: TMemo
    Left = 3
    Top = 87
    Width = 555
    Height = 200
    Hint = #1058#1077#1082#1089#1090' '#1089#1090#1088#1086#1082#1080' '#1086#1089#1085#1086#1074#1085#1086#1075#1086' '#1092#1072#1081#1083#1072
    Constraints.MaxHeight = 200
    Constraints.MaxWidth = 555
    Constraints.MinHeight = 200
    Constraints.MinWidth = 555
    HideSelection = False
    ParentShowHint = False
    ScrollBars = ssVertical
    ShowHint = True
    TabOrder = 29
    OnExit = tmTlk1StringExit
  end
  object tmTlk2String: TMemo
    Left = 3
    Top = 374
    Width = 555
    Height = 135
    Hint = #1058#1077#1082#1089#1090' '#1089#1090#1088#1086#1082#1080' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086#1075#1086' '#1092#1072#1081#1083#1072
    Constraints.MaxWidth = 555
    Constraints.MinWidth = 555
    HideSelection = False
    ParentShowHint = False
    ReadOnly = True
    ScrollBars = ssVertical
    ShowHint = True
    TabOrder = 30
  end
  object teTlkPosition_2: TEdit
    Left = 108
    Top = 346
    Width = 60
    Height = 25
    Cursor = crIBeam
    Alignment = taCenter
    AutoSize = False
    Constraints.MaxHeight = 25
    Constraints.MaxWidth = 60
    Constraints.MinHeight = 25
    Constraints.MinWidth = 60
    Enabled = False
    NumbersOnly = True
    TabOrder = 31
    OnChange = teTlkPosition_2Change
    OnKeyPress = teTlkPosition_2KeyPress
  end
  object teTlkLast_2: TEdit
    Left = 498
    Top = 346
    Width = 60
    Height = 25
    Cursor = crIBeam
    Hint = #1042#1089#1077#1075#1086' '#1089#1090#1088#1086#1082' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086#1075#1086' '#1092#1072#1081#1083#1072
    Alignment = taCenter
    AutoSize = False
    Constraints.MaxHeight = 25
    Constraints.MaxWidth = 60
    Constraints.MinHeight = 25
    Constraints.MinWidth = 60
    Enabled = False
    NumbersOnly = True
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 32
    OnChange = teTlkLast_2Change
  end
  object sbScrollStrings_2: TScrollBar
    Left = 172
    Top = 346
    Width = 322
    Height = 25
    Hint = #1057#1083#1072#1081#1076#1077#1088' '#1073#1099#1089#1090#1088#1086#1075#1086' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1103' '#1087#1086' '#1089#1090#1088#1086#1082#1072#1084
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Constraints.MaxHeight = 25
    Constraints.MaxWidth = 322
    Constraints.MinHeight = 25
    Constraints.MinWidth = 322
    Enabled = False
    PageSize = 0
    ParentShowHint = False
    ShowHint = True
    TabOrder = 33
    OnChange = sbScrollStrings_2Change
  end
  object cbTlkPosition_2_Sync: TCheckBox
    Left = 3
    Top = 349
    Width = 100
    Height = 17
    Cursor = crHandPoint
    Hint = 
      #1055#1086#1079#1080#1094#1080#1103' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086#1075#1086' '#1092#1072#1081#1083#1072' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1077#1090' '#1090#1072#1082#1086#1074#1086#1081' '#1074' '#1086#1089#1085#1086#1074#1085#1086#1084' '#1092 +
      #1072#1081#1083#1077
    Caption = #1089#1080#1085#1093#1088#1086#1085#1085#1086
    Checked = True
    ParentShowHint = False
    ShowHint = True
    State = cbChecked
    TabOrder = 34
    OnClick = cbTlkPosition_2_SyncClick
  end
  object bt500Strings: TButton
    Left = 31
    Top = 59
    Width = 72
    Height = 25
    Cursor = crHandPoint
    Hint = #1054#1090#1082#1088#1099#1090#1100' '#1086#1082#1086#1096#1082#1086', '#1089#1086#1076#1077#1088#1078#1072#1097#1077#1077' '#1076#1086' 500 '#1089#1090#1088#1086#1082', '#1085#1072#1095#1080#1085#1072#1103' '#1089' '#1090#1077#1082#1091#1097#1077#1081
    Caption = '500 '#1089#1090#1088#1086#1082
    Constraints.MaxHeight = 25
    Constraints.MinHeight = 25
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 35
    OnClick = bt500StringsClick
  end
  object btBookmarks: TButton
    Left = 702
    Top = 157
    Width = 135
    Height = 25
    Cursor = crHandPoint
    Hint = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1079#1072#1082#1083#1072#1076#1082#1072#1084#1080
    Caption = #1047#1072#1082#1083#1072#1076#1082#1080' ...'
    Constraints.MaxHeight = 25
    Constraints.MinHeight = 25
    DropDownMenu = PopupBookmarks
    Enabled = False
    ParentShowHint = False
    PopupMenu = PopupBookmarks
    ShowHint = True
    Style = bsSplitButton
    TabOrder = 36
  end
  object btShortHelp: TButton
    Left = 3
    Top = 3
    Width = 25
    Height = 25
    Cursor = crHandPoint
    Hint = #1050#1088#1072#1090#1082#1072#1103' '#1087#1086#1084#1086#1097#1100
    Caption = '?'
    Constraints.MaxHeight = 25
    Constraints.MaxWidth = 25
    Constraints.MinHeight = 25
    Constraints.MinWidth = 25
    ParentShowHint = False
    ShowHint = True
    TabOrder = 37
    OnClick = btShortHelpClick
  end
  object btZoom: TButton
    Left = 3
    Top = 59
    Width = 25
    Height = 25
    Cursor = crHandPoint
    Hint = #1054#1090#1082#1088#1099#1090#1100' '#1089#1090#1088#1086#1082#1091' '#1074' '#1086#1090#1076#1077#1083#1100#1085#1086#1084' '#1086#1082#1086#1096#1082#1077
    Caption = '#'
    Constraints.MaxHeight = 25
    Constraints.MaxWidth = 25
    Constraints.MinHeight = 25
    Constraints.MinWidth = 25
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 38
    OnClick = btZoomClick
  end
  object btChanges: TButton
    Left = 842
    Top = 59
    Width = 115
    Height = 25
    Cursor = crHandPoint
    Hint = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1103#1084#1080' '#1089#1090#1088#1086#1082
    Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1103' ...'
    Constraints.MaxHeight = 25
    Constraints.MaxWidth = 115
    Constraints.MinHeight = 25
    Constraints.MinWidth = 115
    DropDownMenu = PopupChanges
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    Style = bsSplitButton
    TabOrder = 39
  end
  object cbBookmarkSearch: TCheckBox
    Left = 562
    Top = 134
    Width = 275
    Height = 17
    Cursor = crHandPoint
    Hint = 
      #1055#1086#1080#1089#1082' '#1073#1091#1076#1077#1090' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1100#1089#1103' '#1074' '#1089#1090#1088#1086#1082#1072#1093' '#1089' '#1085#1086#1084#1077#1088#1072#1084#1080', '#1087#1088#1080#1089#1091#1090#1089#1090#1074#1091#1102#1097#1080#1084#1080' ' +
      #1074' '#1089#1087#1080#1089#1082#1077' '#1079#1072#1082#1083#1072#1076#1086#1082
    Caption = #1074' '#1089#1090#1088#1086#1082#1072#1093' '#1089' '#1085#1086#1084#1077#1088#1072#1084#1080' '#1080#1079' '#1079#1072#1082#1083#1072#1076#1086#1082
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 40
    OnClick = cbBookmarkSearchClick
  end
  object OpenDialogMain: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'TLK dialog file'
        FileMask = '*.tlk'
      end>
    Options = [fdoFileMustExist]
    Left = 47
    Top = 93
  end
  object PopupSearch: TPopupMenu
    OnPopup = PopupSearchPopup
    Left = 471
    Top = 93
    object miTextSearch: TMenuItem
      Caption = #1090#1077#1082#1089#1090' '#1080#1083#1080' {'#1096#1072#1073#1083#1086#1085'} ...'
      OnClick = miTextSearchClick
    end
    object N16: TMenuItem
      Caption = '-'
    end
    object miFlagSearch: TMenuItem
      Caption = #1089' Flags= ...'
      OnClick = miFlagSearchClick
    end
    object miSizeSearch: TMenuItem
      Caption = #1089' StringSize= ...'
      OnClick = miSizeSearchClick
    end
    object miSoundSearch: TMenuItem
      Caption = #1089' SoundResRef= ...'
      OnClick = miSoundSearchClick
    end
    object N15: TMenuItem
      Caption = '-'
    end
    object miExtFileDiffSearch: TMenuItem
      Caption = #1089' '#1086#1090#1083#1080#1095#1080#1103#1084#1080' '#1086#1090' '#1074#1090#1086#1088#1086#1075#1086' '#1092#1072#1081#1083#1072
      OnClick = miExtFileDiffSearchClick
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object miRusOlnySearch: TMenuItem
      Caption = #1089' '#1088#1091#1089#1089#1082#1080#1084#1080' '#1073#1091#1082#1074#1072#1084#1080
      OnClick = miRusOlnySearchClick
    end
    object miEngOnlySearch: TMenuItem
      Caption = #1089' '#1072#1085#1075#1083#1080#1081#1089#1082#1080#1084#1080' '#1073#1091#1082#1074#1072#1084#1080
      OnClick = miEngOnlySearchClick
    end
    object miRusEngSearch: TMenuItem
      Caption = #1089' '#1088#1091#1089#1089#1082#1080#1084#1080' '#1080' '#1072#1085#1075#1083#1080#1081#1089#1082#1080#1084#1080' '#1073#1091#1082#1074#1072#1084#1080
      OnClick = miRusEngSearchClick
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object miErrorsSearch: TMenuItem
      Caption = #1089' '#1086#1096#1080#1073#1082#1072#1084#1080' '#1074' '#1082#1083#1102#1095#1072#1093' '#1080#1083#1080' '#1090#1086#1082#1077#1085#1072#1093
      Enabled = False
      OnClick = miErrorsSearchClick
    end
    object miIncorrectFlags: TMenuItem
      Caption = #1089' '#1085#1077#1082#1086#1088#1088#1077#1082#1090#1085#1099#1084#1080' '#1092#1083#1072#1075#1072#1084#1080
      Enabled = False
      OnClick = miIncorrectFlagsClick
    end
  end
  object PopupText: TPopupMenu
    Left = 605
    Top = 212
    object miTextRound: TMenuItem
      Tag = 4
      Caption = #1074' '#1082#1088#1091#1075#1083#1099#1077' '#1089#1082#1086#1073#1082#1080
      Hint = #1055#1086#1084#1077#1089#1090#1080#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1081' '#1090#1077#1082#1089#1090' '#1074' '#1082#1088#1091#1075#1083#1099#1077' '#1089#1082#1086#1073#1082#1080
      OnClick = btSelectedChange
    end
    object miTextFigure: TMenuItem
      Tag = 5
      Caption = #1074' '#1092#1080#1075#1091#1088#1085#1099#1077' '#1089#1082#1086#1073#1082#1080
      Hint = #1055#1086#1084#1077#1089#1090#1080#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1081' '#1090#1077#1082#1089#1090' '#1074' '#1092#1080#1075#1091#1088#1085#1099#1077' '#1089#1082#1086#1073#1082#1080
      OnClick = btSelectedChange
    end
    object miTextSquare: TMenuItem
      Tag = 6
      Caption = #1074' '#1082#1074#1072#1076#1088#1072#1090#1085#1099#1077' '#1089#1082#1086#1073#1082#1080
      Hint = #1055#1086#1084#1077#1089#1090#1080#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1081' '#1090#1077#1082#1089#1090' '#1074' '#1082#1074#1072#1076#1088#1072#1090#1085#1099#1077' '#1089#1082#1086#1073#1082#1080
      OnClick = btSelectedChange
    end
    object miTextTriangle: TMenuItem
      Tag = 7
      Caption = #1074' '#1090#1088#1077#1091#1075#1086#1083#1100#1085#1099#1077' '#1089#1082#1086#1073#1082#1080
      Hint = #1055#1086#1084#1077#1089#1090#1080#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1081' '#1090#1077#1082#1089#1090' '#1074' '#1090#1088#1077#1091#1075#1086#1083#1100#1085#1099#1077' '#1089#1082#1086#1073#1082#1080
      OnClick = btSelectedChange
    end
    object N13: TMenuItem
      Caption = '-'
    end
    object miTextSmallFromLarge: TMenuItem
      Tag = 9
      Caption = #1057#1090#1088#1086#1095#1085#1099#1077' '#1089' '#1087#1088#1086#1087#1080#1089#1085#1086#1081
      Hint = #1055#1088#1077#1086#1073#1088#1072#1079#1086#1074#1072#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1081' '#1090#1077#1082#1089#1090' '#1074' '#1085#1080#1078#1085#1080#1081' '#1088#1077#1075#1080#1089#1090#1088' '#1089' '#1073#1086#1083#1100#1096#1086#1081' '#1073#1091#1082#1074#1099
      OnClick = btSelectedChange
    end
    object miTextLarge: TMenuItem
      Tag = 8
      Caption = #1042#1057#1045' '#1055#1056#1054#1055#1048#1057#1053#1067#1045
      Hint = #1055#1088#1077#1086#1073#1088#1072#1079#1086#1074#1072#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1081' '#1090#1077#1082#1089#1090' '#1074' '#1074#1077#1088#1093#1085#1080#1081' '#1088#1077#1075#1080#1089#1090#1088
      OnClick = btSelectedChange
    end
    object miTextSmall: TMenuItem
      Tag = 10
      Caption = #1074#1089#1077' '#1089#1090#1088#1086#1095#1085#1099#1077
      Hint = #1055#1086#1084#1077#1089#1090#1080#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1081' '#1090#1077#1082#1089#1090' '#1074' '#1082#1074#1072#1076#1088#1072#1090#1085#1099#1077' '#1089#1082#1086#1073#1082#1080
      OnClick = btSelectedChange
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object miTextGreen: TMenuItem
      Tag = 3
      Caption = #1079#1077#1083#1105#1085#1099#1081' (TLK V3.0)'
      Hint = #1054#1092#1086#1088#1084#1083#1077#1085#1080#1077' '#1087#1088#1080#1084#1077#1085#1080#1084#1086' '#1076#1083#1103' TLK V3.0'
      OnClick = btSelectedChange
    end
    object miTextBlue: TMenuItem
      Tag = 2
      Caption = #1089#1080#1085#1080#1081' (TLK V3.0)'
      Hint = #1054#1092#1086#1088#1084#1083#1077#1085#1080#1077' '#1087#1088#1080#1084#1077#1085#1080#1084#1086' '#1076#1083#1103' TLK V3.0'
      OnClick = btSelectedChange
    end
    object miTextRed: TMenuItem
      Tag = 1
      Caption = #1082#1088#1072#1089#1085#1099#1081' (TLK V3.0)'
      Hint = #1054#1092#1086#1088#1084#1083#1077#1085#1080#1077' '#1087#1088#1080#1084#1077#1085#1080#1084#1086' '#1076#1083#1103' TLK V3.0'
      OnClick = btSelectedChange
    end
  end
  object OpenDialogBookmarks: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = #1058#1077#1082#1089#1090#1086#1074#1099#1077' '#1090#1080#1087#1099
        FileMask = '*.txt;*.tra;*.d'
      end>
    Options = [fdoFileMustExist]
    Left = 751
    Top = 278
  end
  object PopupBookmarks: TPopupMenu
    OnPopup = PopupBookmarksPopup
    Left = 748
    Top = 213
    object miAddBookmark: TMenuItem
      Caption = #1076#1086#1073#1072#1074#1080#1090#1100
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1082#1083#1072#1076#1082#1091
      OnClick = btAddBookmarkClick
    end
    object miDeleteBookmark: TMenuItem
      Caption = #1091#1076#1072#1083#1080#1090#1100
      Enabled = False
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1082#1083#1072#1076#1082#1091
      OnClick = btDelBookmarkClick
    end
    object N17: TMenuItem
      Caption = '-'
    end
    object miSaveBookmarksList: TMenuItem
      Caption = #1089#1086#1093#1088#1072#1085#1080#1090#1100
      Enabled = False
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1089#1087#1080#1089#1086#1082
      OnClick = btSaveBookmarksClick
    end
    object miLoadBookmarksList: TMenuItem
      Caption = #1079#1072#1075#1088#1091#1079#1080#1090#1100
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1089#1087#1080#1089#1086#1082
      OnClick = btLoadBookmarksClick
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object miClearBookmarksList: TMenuItem
      Caption = #1086#1095#1080#1089#1090#1080#1090#1100
      Enabled = False
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1089#1087#1080#1089#1086#1082
      OnClick = btClearBookmarksClick
    end
  end
  object PopupChanges: TPopupMenu
    OnPopup = PopupChangesPopup
    Left = 876
    Top = 118
    object miDeleteChanges: TMenuItem
      Caption = #1091#1076#1072#1083#1080#1090#1100
      OnClick = btDelChangeClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Caption = #1089#1086#1093#1088#1072#1085#1080#1090#1100
      Enabled = False
    end
    object N4: TMenuItem
      Caption = #1079#1072#1075#1088#1091#1079#1080#1090#1100
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object miClearChanges: TMenuItem
      Caption = #1086#1095#1080#1089#1090#1080#1090#1100
      OnClick = miClearChangesClick
    end
  end
end
