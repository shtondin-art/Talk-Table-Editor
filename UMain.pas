unit UMain;

interface

uses
  System.Classes,
  System.Diagnostics,
  System.SysUtils,
  System.Types,
  System.Variants,

  Vcl.Controls,

  Vcl.Dialogs,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  Vcl.Menus,


  Winapi.Windows,

//  HashMap,

  UDataFunc,
  UFileFunc,
  UConfigFile,
  UString,
  U500Strings,
  UShortHelp,
  UFileName;

type
  TfrmMain = class(TForm)
    OpenDialogMain: TFileOpenDialog;
    sbScrollStrings: TScrollBar;
    btSelectTlk1: TButton;
    teStatusBar: TEdit;
    btSelectTlk2: TButton;
    teTlkPath1: TEdit;
    teTlkPath2: TEdit;
    btSaveTLK: TButton;
    teTLKSearch: TEdit;
    cbSingleSearch: TCheckBox;
    cbRegistry: TCheckBox;
    cbExactlySearch: TCheckBox;
    cbExceptInput: TCheckBox;
    cbReplaceText: TCheckBox;
    teTextForReplace: TEdit;
    cbAddToBookmarks: TCheckBox;
    teTlkPosition: TEdit;
    teTLKLast: TEdit;
    teStringInfo: TEdit;
    lvBookmars: TListView;
    lvChanges: TListView;
    btTLKSearch: TButton;
    PopupSearch: TPopupMenu;
    miErrorsSearch: TMenuItem;
    miIncorrectFlags: TMenuItem;
    miFlagSearch: TMenuItem;
    miSizeSearch: TMenuItem;
    N10: TMenuItem;
    miSoundSearch: TMenuItem;
    miRusOlnySearch: TMenuItem;
    miEngOnlySearch: TMenuItem;
    miRusEngSearch: TMenuItem;
    miExtFileDiffSearch: TMenuItem;
    N15: TMenuItem;
    teSecondInfo: TEdit;
    btText: TButton;
    PopupText: TPopupMenu;
    miTextRed: TMenuItem;
    miTextBlue: TMenuItem;
    miTextGreen: TMenuItem;
    miTextRound: TMenuItem;
    miTextFigure: TMenuItem;
    miTextSquare: TMenuItem;
    miTextLarge: TMenuItem;
    miTextSmallFromLarge: TMenuItem;
    miTextSmall: TMenuItem;
    miTextTriangle: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N16: TMenuItem;
    miTextSearch: TMenuItem;
    cbTlk1Encoding: TComboBox;
    cbTlk2Encoding: TComboBox;
    cbBackupCopy: TCheckBox;
    teBookmarksStatus: TEdit;
    OpenDialogBookmarks: TFileOpenDialog;
    cbQuickSearch: TCheckBox;
    teChangesStatus: TEdit;
    tmTlk1String: TMemo;
    tmTlk2String: TMemo;
    teTlkPosition_2: TEdit;
    teTlkLast_2: TEdit;
    sbScrollStrings_2: TScrollBar;
    cbTlkPosition_2_Sync: TCheckBox;
    bt500Strings: TButton;
    btBookmarks: TButton;
    PopupBookmarks: TPopupMenu;
    miAddBookmark: TMenuItem;
    miDeleteBookmark: TMenuItem;
    N17: TMenuItem;
    miSaveBookmarksList: TMenuItem;
    miLoadBookmarksList: TMenuItem;
    miClearBookmarksList: TMenuItem;
    N1: TMenuItem;
    btShortHelp: TButton;
    Label1: TLabel;
    Label2: TLabel;
    btZoom: TButton;
    btChanges: TButton;
    PopupChanges: TPopupMenu;
    miDeleteChanges: TMenuItem;
    N3: TMenuItem;
    miClearChanges: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    cbBookmarkSearch: TCheckBox;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);

    procedure btSelectTlkClick(Sender: TObject);
    procedure btSelectTlkContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure btAddBookmarkClick(Sender: TObject);
    procedure btDelBookmarkClick(Sender: TObject);
    procedure btDelChangeClick(Sender: TObject);
    procedure btSaveTLKClick(Sender: TObject);
    procedure btSelectedChange(Sender: TObject);
    procedure btZoomClick(Sender: TObject);
    procedure btTextClick(Sender: TObject);
    procedure btTLKSearchClick(Sender: TObject);
    procedure btClearBookmarksClick(Sender: TObject);
    procedure btSaveBookmarksClick(Sender: TObject);
    procedure btLoadBookmarksClick(Sender: TObject);
    procedure bt500StringsClick(Sender: TObject);
    procedure btShortHelpClick(Sender: TObject);

    procedure teTlkPath1Change(Sender: TObject);
    procedure teTlkPath2Change(Sender: TObject);
    procedure teTlkPositionChange(Sender: TObject);
    procedure teTLKLastChange(Sender: TObject);
    procedure teTLKSearchKeyPress(Sender: TObject; var Key: Char);
    procedure teTlkPositionKeyPress(Sender: TObject; var Key: Char);
    procedure teTLKSearchExit(Sender: TObject);
    procedure teTLKSearchEnter(Sender: TObject);
    procedure teTLKSearchChange(Sender: TObject);
    procedure teTlkLast_2Change(Sender: TObject);
    procedure teTlkPosition_2Change(Sender: TObject);
    procedure teTlkPosition_2KeyPress(Sender: TObject; var Key: Char);

    procedure tmTlk1StringExit(Sender: TObject);

    procedure sbScrollStringsChange(Sender: TObject);
    procedure sbScrollStrings_2Change(Sender: TObject);

    procedure cbExactlySearchChange(Sender: TObject);
    procedure cbExceptInputChange(Sender: TObject);
    procedure cbReplaceTextPropertiesChange(Sender: TObject);
    procedure cbSingleSearchPropertiesChange(Sender: TObject);
    procedure cbTlkPosition_2_SyncClick(Sender: TObject);
    procedure cbBookmarkSearchClick(Sender: TObject);

    procedure lvBookmarsDblClick(Sender: TObject);
    procedure lvChangesDblClick(Sender: TObject);
    procedure lvChangesSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
    procedure lvChangesContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure lvBookmarsData(Sender: TObject; Item: TListItem);
    procedure lvBookmarsSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
    procedure lvBookmarsEnter(Sender: TObject);
    procedure lvChangesChange(Sender: TObject; Item: TListItem; Change: TItemChange);

    procedure miErrorsSearchClick(Sender: TObject);
    procedure miIncorrectFlagsClick(Sender: TObject);
    procedure miSoundSearchClick(Sender: TObject);
    procedure miFlagSearchClick(Sender: TObject);
    procedure miSizeSearchClick(Sender: TObject);
    procedure miRusOlnySearchClick(Sender: TObject);
    procedure miEngOnlySearchClick(Sender: TObject);
    procedure miRusEngSearchClick(Sender: TObject);
    procedure miExtFileDiffSearchClick(Sender: TObject);
    procedure miTextSearchClick(Sender: TObject);
    procedure miClearChangesClick(Sender: TObject);

    procedure PopupSearchPopup(Sender: TObject);
    procedure PopupChangesPopup(Sender: TObject);
    procedure PopupBookmarksPopup(Sender: TObject);

    procedure AcceptStringChange(Sender: TObject);

    procedure FindNextString(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    slConfigKey: TStringList;
    slConfigValue: TStringList;
  end;

const
  ExtSymbols = '!@#$%^()._-+`~{}[]<>' + #39;
  EngSymbols = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';  // 52
  RusSymbols = 'АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдеёжзийклмнопрстуфхцчшщъыьэюя';  // 66

var
  frmMain: TfrmMain;

  swTiming: TStopWatch;

  blCheck: Boolean;

  inLoading: Integer;
  inBreak: Integer;
  inCtrl: Integer;

  inHeaderSize: Integer;
  inStringDataSize: Integer;
  inStringsDataSize: Integer;
  inStringsEntryOffset: Integer;
  inStringsEntrySize: Integer;
  inFileSize: Integer;

  stDefaultSearch: String;
  stDefault500StringsCaption: String;
  stBookmarksStatus: String;
  stBookmarkFileName: String;

  stStatus: String;
  stFilePath: String;
  stFileVersion: String;
  stHashValue: String;

  fsFile: TFileStream;

  asbFile: TArray<System.Byte>;
  asbHeader: TArray<System.Byte>;
  asbStringsData: TArray<System.Byte>;
  asbStringsEntry: TArray<System.Byte>;

  slFlags: TStringList;
  slSoundResRef: TStringList;
  slVolumeVariance: TStringList;
  slPitchVariance: TStringList;
  slOffsetToString: TStringList;
  slStringSize: TStringList;
  slSoundLength: TStringList;

  slString: TStringList;

  slTlk1Flags: TStringList;
  slTlk1SoundResRef: TStringList;
  slTlk1VolumeVariance: TStringList;
  slTlk1PitchVariance: TStringList;
  slTlk1OffsetToString: TStringList;
  slTlk1StringSize: TStringList;
  slTlk1SoundLength: TStringList;

  slTlk1String: TStringList;

  slTlk2Flags: TStringList;
  slTlk2SoundResRef: TStringList;
  slTlk2VolumeVariance: TStringList;
  slTlk2PitchVariance: TStringList;
  slTlk2OffsetToString: TStringList;
  slTlk2StringSize: TStringList;
  slTlk2SoundLength: TStringList;

  slTlk2String: TStringList;

  slBookmarks: TStringList;
  slBookmarksNum: TStringList;

//  hmTlk1ChangeIndex: THashMap;
//  hmTlk1ChangeValue: THashMap;

type
  TStringHistory = record
    Index  : Integer;           // Индекс последнего изменения
    Values : array of string;  // Массив всех изменений для данной позиции
  end;
var
  // Глобальный массив вместо старых HashMap-переменных
  Tlk1Changes : array of TStringHistory;

implementation

//function getFileBytes(const stFilePath: String; var asbFileBlock: TArray<System.Byte>; const inBlockPosition: Integer; const inBlockSize: Integer): Boolean;
//begin
//  Result := True;
//
//  try
//    fsFile := TFileStream.Create( stFilePath, fmOpenRead );
//  except
//    Result := False;
//  end;
//
//  if not Result then begin
//    Vcl.Forms.Application.MessageBox(
//      System.PWideChar( stFilePath ),
//      System.PWideChar( 'ОШИБКА: Не удалось создать объект' ),
//      MB_OK + MB_ICONERROR );
//
//    Exit;
//  end;
//
//  try
//    fsFile.Seek(inBlockPosition, soFromBeginning);
//  except
//    Result := False;
//  end;
//
//  if not Result then begin
//    Vcl.Forms.Application.MessageBox(
//      System.PWideChar( stFilePath ),
//      System.PWideChar( 'ОШИБКА: Не удалось получить позицию ' + inBlockPosition.ToString ),
//      MB_OK + MB_ICONERROR );
//
//    Exit;
//  end;
//
//  try
//    fsFile.Read( asbFileBlock, inBlockSize );
//  except
//    Result:=False;
//  end;
//
//  if not Result then begin
//    Vcl.Forms.Application.MessageBox(
//      System.PWideChar( stFilePath ),
//      System.PWideChar( 'ОШИБКА: Не удалось получить блок размером ' + inBlockSize.ToString + ' с позиции ' + inBlockPosition.ToString ),
//      MB_OK + MB_ICONERROR );
//
//    Exit;
//  end;
//
//  fsFile.Free;
//end;

//function getInverted(const stValue: String): String;
//begin
//  case stValue.Length of
//    4 : Result := System.Copy( stValue, 3, 2 ) + System.Copy( stValue, 1, 2 );
//    8 : Result := System.Copy( stValue, 7, 2 ) + System.Copy( stValue, 5, 2 ) + System.Copy( stValue, 3, 2 ) + System.Copy( stValue, 1, 2 );
//  end;
//end;

//function BinToHexString(const BinArray: TArray<System.Byte>): String;
//const
//  HexSymbols = '0123456789ABCDEF';
//var
//  i,
//  iz: Integer;
//
//begin
//  Result := '0';
//
//  System.SetLength( Result, 2*System.Length( BinArray ) );
//
//  iz := System.Length( BinArray )-1;
//  for i := 0 to iz do begin
//    case inBreak of
//      1 : System.Break; end;
//
//    Result[ 1 + 2*i +0 ] := HexSymbols[ 1 + BinArray[ i ] shr 4 ];
//    Result[ 1 + 2*i +1 ] := HexSymbols[ 1 + BinArray[ i ] and $0F ];
//  end;
//end;

//function IntegerToWordBin(const inValue: Integer): TArray<System.Byte>;
//var
//  stValue: String;
//
//  i: Integer;
//
//begin
//  System.SetLength( Result, 2 );
//
//  stValue := System.SysUtils.IntToHex( inValue, 2 );
//
//  i := stValue.Length;
//  case i of
//    2 : stValue := '00' + stValue;
//    3 : stValue := '0'  + stValue;
//  end;
//
//  stValue := System.Copy( stValue, 3, 2 ) + System.Copy( stValue, 1, 2 );
//
//  for i := 0 to 1 do
//      Result[ i ] := hexToIntInline( System.Copy( stValue, i*2 +1, 2 ) );
//end;

//function IntegerToDWordBin(const inValue: Integer): TArray<System.Byte>;
//var
//  stValue: String;
//
//  i: Integer;
//
//begin
//  System.SetLength( Result, 4 );
//
//  stValue := System.SysUtils.IntToHex( inValue, 2 );
//
//  i := stValue.Length;
//  case i of
//    2 : stValue := '000000' + stValue;
//    3 : stValue := '00000'  + stValue;
//    4 : stValue := '0000'   + stValue;
//    5 : stValue := '000'    + stValue;
//    6 : stValue := '00'     + stValue;
//    7 : stValue := '0'      + stValue;
//  end;
//
//  stValue := System.Copy( stValue, 7, 2 ) + System.Copy( stValue, 5, 2 ) + System.Copy( stValue, 3, 2 ) + System.Copy( stValue, 1, 2 );
//
//  for i := 0 to 3 do
//      Result[ i ] := hexToIntInline( System.Copy( stValue, i*2 +1, 2 ) );
//end;

//function BinToString(const BinArray: TArray<System.Byte>; var inEnc: Integer): String;
//begin
//  case inEnc of
//    0 : begin
//      try
//        Result := TEncoding.UTF8.getStringInline( BinArray );
//      except
//        Vcl.Forms.Application.MessageBox(
//          System.PWideChar( 'Не удалось конвертировать текстовый массив размером ' + System.Length(BinArray).ToString + ' байт в UTF8 строку.' +#13+
//          #13+
//          'Обработка будет продолжена с кодировкой ANSI.' ),
//          System.PWideChar( 'ВНИМАНИЕ: Невозможно конвертировать входящий текст' ),
//          MB_OK + MB_ICONWARNING );
//
//        inEnc  := 1;
//        Result := BinToString( BinArray, inEnc );
//      end;
//    end;
//    1 : Result := TEncoding.ANSI.getStringInline( BinArray );
//    2 : Result := TEncoding.ASCII.getStringInline( BinArray );
//  end;
//end;

function getLanguage( const inID: Integer ): string; inline;
begin
  Result := 'N/A';

  case inID of
    0   : Result := 'Английский';
    1   : Result := 'Французский';
    2   : Result := 'Немецкий';
    3   : Result := 'Итальянский';
    4   : Result := 'Испанский';
    5   : Result := 'Польский';
    128 : Result := 'Корейский';
    129 : Result := 'Китайский Традиционный';
    130 : Result := 'Китайский Упрощенный';
    131 : Result := 'Японский';
  end;
end;

//function getFlagsName(inID:Integer):String;
//begin
//  Result := 'N/A';
//
//  case inID of
//    1 : Result := 'TEXT_PRESENT';
//    2 : Result := 'SND_PRESENT';
//    4 : Result := 'SNDLENGTH_PRESENT';
//    5 : Result := 'TAG_PRESENT';
//  end;
//end;

//function getChangeOfString(const inPos: Integer): String;
//var
//  inLastChange: Integer;
//
//begin
//  Result := '<EMPTY>';
//
//  if ( hmTlk1ChangeIndex = nil )
//     or ( hmTlk1ChangeValue = nil )
//     or ( hmTlk1ChangeIndex.Count = 0 )
//     or ( hmTlk1ChangeValue.Count = 0 )
//     or System.Variants.VarIsNull( hmTlk1ChangeIndex[ inPos ].Value ) then
//     Exit;
//
//  inLastChange := getIntegerInline( hmTlk1ChangeIndex[ inPos ].Value );
//
//  Result       := getStringInline( hmTlk1ChangeValue[ inPos ][ inLastChange ].Value );
//
//  while ( inLastChange > 0 )
//        and ( Result = '<EMPTY>' ) do begin
//    case inBreak of
//      1 : System.Break; end;
//
//    inLastChange := inLastChange -1;
//    Result       := getStringInline( hmTlk1ChangeValue[ inPos ][ inLastChange ].Value );
//  end;
//
//  if inLastChange = 0 then
//     Result := '<EMPTY>';
//end;
//function getChangeOfString( const inPos: Integer ): string; inline;
//var
//  inLast: Integer;
//  pNode: Pointer;
//
//begin
//  Result := '<EMPTY>';
//
//  if ( hmTlk1ChangeIndex = nil )
//     or ( hmTlk1ChangeValue = nil ) then
//     Exit;
//
//  // 1. Получаем указатель на узел один раз (самый быстрый поиск в THashMap)
//  pNode := hmTlk1ChangeIndex[ inPos ];
//  // Вместо медленного VarIsNull проверяем указатель
//  if pNode = nil then
//     Exit;
//
//  // 2. Извлекаем индекс последнего изменения из Value
//  inLast := getIntegerInline( THashMap( pNode ).Value );
//  if inLast <= 0 then
//     Exit;
//
//  // 3. Цикл поиска валидной строки (двигаемся назад по истории изменений)
//  Result := getStringInline( THashMap( hmTlk1ChangeValue[ inPos ][ inLast ] ).Value );
//
//  while ( inLast > 0 )
//        and ( Result = '<EMPTY>' ) do begin
//    if inBreak = 1 then
//       Break;
//
//    Dec( inLast );
//    Result := getStringInline( THashMap( hmTlk1ChangeValue[ inPos ][ inLast ] ).Value );
//  end;
//
//  if ( inLast = 0 )
//     and ( Result = '<EMPTY>' ) then
//     Result := '<EMPTY>';
//end;
function getChangeOfString(const inPos: Integer): string; inline;
var
  inLast: Integer;
begin
  Result := '<EMPTY>';

  // 1. Проверяем инициализацию массива и попадание в его границы
  if (Tlk1Changes = nil) or (inPos < 0) or (inPos >= Length(Tlk1Changes)) then
     Exit;

  // 2. Извлекаем индекс последнего изменения
  inLast := Tlk1Changes[inPos].Index;

  // Проверяем валидность индекса изменений и наличие элементов в массиве значений
  if (inLast <= 0) or (Tlk1Changes[inPos].Values = nil) then
     Exit;

  // Страховка от выхода за границы вложенного массива
  if inLast >= Length(Tlk1Changes[inPos].Values) then
     inLast := Length(Tlk1Changes[inPos].Values) - 1;

  // 3. Цикл поиска валидной строки (двигаемся назад по истории)
  Result := Tlk1Changes[inPos].Values[inLast];

  while (inLast > 0) and (Result = '<EMPTY>') do
  begin
    if inBreak = 1 then
       Break;

    Dec(inLast);
    Result := Tlk1Changes[inPos].Values[inLast];
  end;
end;

//function getValueOfString(const inPos: Integer): String;
//begin
//  Result := getChangeOfString( inPos );
//
//  if not ( Result = '<EMPTY>' ) then
//     Exit;
//
//  if not ( slTlk1String = nil )
//     and not ( inPos > slTlk1String.Count ) then
//     Result := slTlk1String[ inPos ];
//end;

procedure setDefaultState();
begin
  if not ( asbFile = nil )         then asbFile := nil;
  if not ( asbHeader = nil )       then asbHeader := nil;
  if not ( asbStringsData = nil )  then asbStringsData := nil;
  if not ( asbStringsEntry = nil ) then asbStringsEntry := nil;

  slFlags.Free;
  slSoundResRef.Free;
  slVolumeVariance.Free;
  slPitchVariance.Free;
  slOffsetToString.Free;
  slStringSize.Free;
  slSoundLength.Free;
  slString.Free;

  slTlk1Flags.Free;
  slTlk1SoundResRef.Free;
  slTlk1VolumeVariance.Free;
  slTlk1PitchVariance.Free;
  slTlk1OffsetToString.Free;
  slTlk1StringSize.Free;
  slTlk1SoundLength.Free;
  slTlk1String.Free;

  slTlk2Flags.Free;
  slTlk2SoundResRef.Free;
  slTlk2VolumeVariance.Free;
  slTlk2PitchVariance.Free;
  slTlk2OffsetToString.Free;
  slTlk2StringSize.Free;
  slTlk2SoundLength.Free;
  slTlk2String.Free;

//  hmTlk1ChangeIndex.Free;
//  hmTlk1ChangeValue.Free;

  slBookmarks.Free;
  slBookmarksNum.Free;

//  slConfigKey.Free;
//  slConfigValue.Free;
end;

//function checkBookmark(stValue: String): Boolean;
//var
//  inFind: Integer;
//
//begin
//  Result := False;
//
////  if slBookmarksNum.IndexOf( stValue ) > 0 then
//  if slBookmarksNum.Find( stValue, inFind ) then
//     Result := True;
//end;
function checkBookmark( const stValue: string ): Boolean;
var
  inIdx: Integer;

begin
  // Метод Find требует, чтобы slBookmarksNum.Sorted был равен True
  // Это в разы быстрее, чем IndexOf
  Result := slBookmarksNum.Find( stValue, inIdx );
end;


//procedure addBookmark(const inPos: Integer; const stSearch: String);
//var
//  stNum,
//  stRec,
//  stBmk: String;
//
//  inLength: Integer;
//
//begin
//  stNum := '[' + inPos.ToString + '] ';
//
//  stHashValue := getChangeOfString( inPos );
//
//  if stHashValue = '<EMPTY>' then
//       stRec := slTlk1String[ inPos ].Replace( #10, ' ' )
//  else stRec := stHashValue;
//
//  if ( System.Pos( '{SoundResRef=', stSearch ) > 0 )
//     and not ( stSearch = '{SoundResRef=}' )
//     and frmMain.cbExceptInput.Checked then
//       stBmk := stNum + stSearch + ' ' + stRec
//  else stBmk := stNum + stRec;
//
//  inLength := 64;
//
//  if System.Length( stBmk ) > inLength then
//     stBmk := System.Copy( stBmk, 1, inLength ) + ' ...';
//
//  if checkBookmark( inPos.ToString ) then
//     Exit;
//
//  slBookmarks.Append( stBmk );
//  slBookmarksNum.Append( inPos.ToString );
//end;
procedure addBookmark( const inPos: Integer; const stSearch: string );
var
  stNum: string;
  stRec: string;
  stBmk: string;
  inMaxLen: Integer;

begin
  // 1. Быстрая проверка на дубликат (в начале, чтобы не делать лишнюю работу)
  if checkBookmark( System.SysUtils.IntToStr( inPos ) ) then
     Exit;

  // 2. Формируем номер [ID]
  stNum := '[' + System.SysUtils.IntToStr( inPos ) + '] ';

  // 3. Получаем текст записи
  stHashValue := getChangeOfString( inPos );

  if stHashValue = '<EMPTY>' then
  begin
    stRec := slTlk1String[ inPos ];
    // Быстрая замена переноса строки на пробел без .Replace
    UniqueString( stRec );

    for inMaxLen := 1 to Length( stRec ) do
      if stRec[ inMaxLen ] = #10 then
         stRec[ inMaxLen ] := ' ';
  end
  else stRec := stHashValue;

  // 4. Логика формирования строки закладки
  if ( System.Pos( '{SoundResRef=', stSearch ) > 0 )
     and ( stSearch <> '{SoundResRef=}' )
     and frmMain.cbExceptInput.Checked then
       stBmk := stNum + stSearch + ' ' + stRec
  else stBmk := stNum + stRec;

  // 5. Обрезка длинного текста (Fast Copy)
  inMaxLen := 64;
  if Length( stBmk ) > inMaxLen then
     stBmk := Copy( stBmk, 1, inMaxLen ) + ' ...';

  // 6. Добавление в списки (Append в TStringList вызывает лишние события, используем Add)
  slBookmarks.Add( stBmk );
  slBookmarksNum.Add( System.SysUtils.IntToStr( inPos ) );
end;


{$R *.dfm}

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  setDefaultState();
end;

procedure TfrmMain.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
//  Vcl.Forms.Application.MessageBox(System.PWideChar(
//    'Sender.UnitName: '+Sender.UnitName+#13+'Key: '+Key.ToString),
//    'Информация о клавише',MB_OK+MB_ICONINFORMATION);
  case Key of
    // Ctrl
    17 : inCtrl  := 1;

    // Esc
    27 : inBreak := 1;

    // Ctrl+Влево
    37 : if ( ssCtrl in Shift )
            and ( getIntegerInline( teTlkPosition.Text ) > 0 ) then begin
           teTlkPosition.Text := getStringInline( getIntegerInline( teTlkPosition.Text ) -1 );

           sbScrollStringsChange( self );
         end;

    // Ctrl+Вправо
    39 : if ( ssCtrl in Shift )
            and ( getIntegerInline( teTlkPosition.Text ) < getIntegerInline( teTLKLast.Text ) ) then begin
           teTlkPosition.Text := getStringInline( getIntegerInline( teTlkPosition.Text ) +1 );

           sbScrollStringsChange( self );
         end;

    // Ctrl+B - закладка
    66 : if ( ssCtrl in Shift )
            and btBookmarks.Enabled then
            btAddBookmarkClick( miAddBookmark );

    // Ctrl+E - переключение режима поиска "исключение"
    69 : if ( ssCtrl in Shift ) then
            cbExceptInput.Checked := not cbExceptInput.Checked;

    // Ctrl+F - поиск
    70 : if ( ssCtrl in Shift )
            and teTLKSearch.Enabled then
            if teTLKSearch.Focused then
               PopupSearch.Popup( self.left + btTLKSearch.Left +8, self.Top + btTLKSearch.Top +55 )
            else teTLKSearch.SetFocus;

    // Ctrl+L - развернуть строку
    76 : if ( ssCtrl in Shift )
            and ( getIntegerInline( teTLKLast.Text ) > 0 ) then
            btZoom.Click;

    // Ctrl+N - строка
    78 : if ( ssCtrl in Shift )
            and teTlkPosition.Enabled then
            teTlkPosition.SetFocus;

    // Ctrl+O - выбрать
    79 : if ( ssCtrl in Shift )
            and btSelectTlk1.Enabled then
            btSelectTlk1.Click;

    // Ctrl+Q - переключение режима поиска "1 совпадение"
    81 : if ( ssCtrl in Shift ) then
            cbSingleSearch.Checked := not cbSingleSearch.Checked;

    // Ctrl+S - сохранить
    83 : if ( ssCtrl in Shift ) then
            btSaveTLK.Click;

    // Ctrl+T - Меню обработки текста
    84 : if ( ssCtrl in Shift )
            and tmTlk1String.Focused then
            btText.Click;

    // Ctrl+Z - отменить
    90 : if ( ssCtrl in Shift )
            and btChanges.Enabled then
            btDelChangeClick( miDeleteChanges );

    // F1 - помощь
    112 : btShortHelp.Click;
  end;
end;

procedure TfrmMain.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    17 : inCtrl  := 0;
    27 : inBreak := 0;
  end;
end;

procedure TfrmMain.FormShow(Sender: TObject);
var
  stConfigFile: String;
  stAppVer: String;
  stAppSize: String;
  stAppDate: String;

  inPos: Integer;
  inEnd: Integer;

//  inFT: Int64;
//  ftLocal: Winapi.Windows.TFileTime;
//  stSys: Winapi.Windows.TSystemTime;
  ftValue:   TFileTimes;

begin
  // убирает мерцание при прокрутке списка
  lvBookmars.DoubleBuffered := True;
  lvChanges.DoubleBuffered  := True;

  stAppVer  := getFileProductVersion( Application.ExeName );
  stAppSize := getStringInline( getFileSize( Application.ExeName )  shr 10 );
//  inFT := getFileDate( Application.ExeName );
//  if inFT > 0 then
//  begin
//    // Конвертируем сырой Int64 обратно в структуру FileTime
//    Winapi.Windows.FileTimeToLocalFileTime( Winapi.Windows.TFileTime( inFT ), ftLocal );
//    Winapi.Windows.FileTimeToSystemTime( ftLocal, stSys );
//
//    // Теперь выводим через getString
//    stAppDate := getStringInline( System.SysUtils.SystemTimeToDateTime( stSys ) );
//  end;
  if getFileDateTimes( Application.ExeName, ftValue ) then
     stAppDate := System.SysUtils.DateTimeToStr( ftValue.Creation );

  slBookmarks := TStringList.Create;
//  slBookmarks.Sorted := True;
  slBookmarksNum := TStringList.Create;
//  slBookmarksNum.Sorted := True;

  inBreak := 0;

  stConfigFile := System.SysUtils.ExtractFileDir( Application.ExeName ) + '\TlkEditor.cfg';

  if System.SysUtils.FileExists( stConfigFile ) then begin
    loadConfig( stConfigFile, slConfigKey, slConfigValue );

    // загрузка параметров интерфейса основной формы
    applyConfigToForm( slConfigKey, slConfigValue, frmMain );
  end
  else saveConfig( stConfigFile, slConfigKey, slConfigValue );

  inEnd := slConfigKey.Count -1;
  for inPos := 0 to inEnd do begin
    if inBreak = 1 then
       Break;

    if slConfigKey[ inPos ] = 'Form500Strings.Caption' then
       stDefault500StringsCaption := slConfigValue[ inPos ];
  end;

  Self.Caption := getStringInline( self.Caption ).Replace( '<VER>', stAppVer ).Replace( '<SIZE>', stAppSize ).Replace( '<DATE>', stAppDate )
                  + ', ' + System.SysUtils.IntToStr( Self.ClientWidth ) + 'x' + System.SysUtils.IntToStr( Self.ClientHeight );

  stDefaultSearch   := teTLKSearch.Text;
  stBookmarksStatus := teBookmarksStatus.Text;
end;

procedure TfrmMain.lvChangesChange(Sender: TObject; Item: TListItem; Change: TItemChange);
begin
  teChangesStatus.Text    := 'Изменений: ' + System.SysUtils.IntToStr( lvChanges.Items.Count );
end;

//procedure TfrmMain.lvChangesContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
//var
//  a,
//  b,
//  stCaption,
//  stRecord: String;
//
//begin
//  if lvChanges.ItemFocused = nil then
//     Exit;
//
//  stCaption := lvChanges.ItemFocused.Caption;
//
//  a := System.Copy( stCaption, System.Pos( '[', stCaption ) +1, System.Pos( ']', stCaption ) -2 ).Trim; // getNumber( stCaption ).ToString;
//  b := System.Copy( stCaption, System.Pos(']', stCaption ) +1, System.Length( stCaption ) ).Trim;
//
//  stRecord := getStringInline( hmTlk1ChangeValue[ getIntegerInline( a ) ][ getIntegerInline( b ) ].Value );
//
//  Vcl.Forms.Application.MessageBox(
//    System.PWideChar( stRecord ),
//    System.PWideChar( 'Строка ' + a + ', изменение ' + b + ', ' + System.Length( stRecord ).ToString + ' байт' ),
//    MB_OK + MB_ICONINFORMATION );
//end;
//procedure TfrmMain.lvChangesContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
//var
//  liItem: TListItem;
//  stCap: string;
//  stID: string;
//  stChg: string;
//  stRec: string;
//  inID: Integer;
//  inChg: Integer;
//
//begin
//  liItem := lvChanges.ItemFocused;
//
//  if not Assigned( liItem ) then
//     Exit;
//
//  stCap := liItem.Caption;
//
//  // 1. Быстро извлекаем ID и номер изменения через getTextBetween или Pos
//  // Предположим формат "[123] 5"
//  stID  := System.SysUtils.Trim( getTextBetween( stCap, '[', ']' ) );
//  stChg := System.SysUtils.Trim( Copy( stCap, Pos( ']', stCap ) + 1, MaxInt ) );
//
//  inID  := getIntegerInline( stID );
//  inChg := getIntegerInline( stChg );
//
//  // 2. Получаем текст напрямую из HashMap
//  stRec := getStringInline( hmTlk1ChangeValue[ inID ][ inChg ].Value );
//
//  Application.MessageBox(
//    PChar( stRec ),
//    PChar( 'Строка ' + stID + ', изменение ' + stChg + ', ' +
//           System.SysUtils.IntToStr( Length( stRec ) ) + ' байт' ),
//    MB_OK + MB_ICONINFORMATION );
//end;
procedure TfrmMain.lvChangesContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
var
  liItem: TListItem;
  stCap: string;
  stID: string;
  stChg: string;
  stRec: string;
  inID: Integer;
  inChg: Integer;

begin
  liItem := lvChanges.ItemFocused;

  if not Assigned( liItem ) then
     Exit;

  stCap := liItem.Caption;

  // 1. Быстро извлекаем ID и номер изменения через getTextBetween или Pos
  stID  := System.SysUtils.Trim( getTextBetween( stCap, '[', ']' ) );
  stChg := System.SysUtils.Trim( Copy( stCap, Pos( ']', stCap ) + 1, MaxInt ) );

  inID  := getIntegerInline( stID );
  inChg := getIntegerInline( stChg );

  // 2. Получаем текст напрямую из нового массива структур с проверкой границ
  stRec := '<EMPTY>';
  if (Tlk1Changes <> nil) and (inID >= 0) and (inID < Length(Tlk1Changes)) then
  begin
    if (inChg >= 0) and (inChg < Length(Tlk1Changes[inID].Values)) then
      stRec := Tlk1Changes[inID].Values[inChg];
  end;

  Application.MessageBox(
    PChar( stRec ),
    PChar( 'Строка ' + stID + ', изменение ' + stChg + ', ' +
           System.SysUtils.IntToStr( Length( stRec ) ) + ' байт' ),
    MB_OK + MB_ICONINFORMATION );
end;

//procedure TfrmMain.lvChangesDblClick(Sender: TObject);
//var
//  stCaption: String;
//
//begin
//  if lvChanges.ItemFocused = nil then
//     Exit;
//
//  stCaption := lvChanges.ItemFocused.Caption;
//
//  teTlkPosition.Text := System.Copy( stCaption, System.Pos( '[', stCaption ) +1, System.Pos( ']', stCaption ) -2 ).Trim; // getNumber( stCaption ).ToString;
//
//  sbScrollStringsChange( self );
//end;
procedure TfrmMain.lvChangesDblClick(Sender: TObject);
var
  liItem: TListItem;
  stCap: string;
  stID: string;

begin
  liItem := lvChanges.ItemFocused;

  if not Assigned( liItem ) then
     Exit;

  stCap := liItem.Caption;

  // Извлекаем число внутри скобок [ ]
  // Используем getTextBetween для исключения ошибок с индексами
  stID := System.SysUtils.Trim( getTextBetween( stCap, '[', ']' ) );

  if stID <> '' then
  begin
    teTlkPosition.Text := stID;

    // Вызываем процедуру прокрутки/обновления
    sbScrollStringsChange( Self );
  end;
end;

procedure TfrmMain.lvChangesSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
begin
  if inLoading = 1 then
     Exit;

  miDeleteChanges.Enabled := Selected;
end;

//procedure TfrmMain.btZoomClick(Sender: TObject);
//begin
//  with TFormStringWindow.Create( self ) do begin
//    case cbTlk1Encoding.ItemIndex of
//      0 : tmLargeString1.Lines.DefaultEncoding := TEncoding.UTF8;
//      1 : tmLargeString1.Lines.DefaultEncoding := TEncoding.ANSI;
//      2 : tmLargeString1.Lines.DefaultEncoding := TEncoding.ASCII;
//    end;
//
//    tmLargeString1.Text := tmTlk1String.Text;
//
//    case cbTlk2Encoding.ItemIndex of
//      0 : tmLargeString2.Lines.DefaultEncoding := TEncoding.UTF8;
//      1 : tmLargeString2.Lines.DefaultEncoding := TEncoding.ANSI;
//      2 : tmLargeString2.Lines.DefaultEncoding := TEncoding.ASCII;
//    end;
//
//    tmLargeString2.Text := tmTlk2String.Text;
//
//    ShowModal;
//
//    if ( ModalResult = mrOk )
//       and not ( tmTlk1String.Text = tmLargeString1.Text )
//       and ( Vcl.Forms.Application.MessageBox(
//               System.PWideChar( 'Вы хотите применить изменения текущей строки?' ),
//               System.PWideChar( 'ВНИМАНИЕ: Изменение текста строки' ),
//               MB_YESNO + MB_ICONQUESTION ) = IDYES ) then begin
//      tmTlk1String.Text := tmLargeString1.Text;
//
//      AcceptStringChange( self );
//    end;
//
//    Release;
//    Destroy;
//  end;
//end;
procedure TfrmMain.btZoomClick( Sender: TObject );
var
  frmZoom: TFormStringWindow;
  stOldText: string;

begin
  frmZoom := TFormStringWindow.Create( Self );

  try
    // 1. Копируем текст напрямую (Delphi 12 сама управляет Unicode-строками в памяти)
    frmZoom.tmLargeString1.Text := tmTlk1String.Text;
    frmZoom.tmLargeString2.Text := tmTlk2String.Text;

    // Сохраняем исходный текст для быстрого сравнения без обращения к GUI
    stOldText := tmTlk1String.Text;

    // 2. Отображение
    if frmZoom.ShowModal = mrOk then
    begin
      // 3. Проверка изменений (сначала быстрое сравнение строк в памяти, потом MessageBox)
      if stOldText <> frmZoom.tmLargeString1.Text then
      begin
        if Application.MessageBox(
             PChar( 'Вы хотите применить изменения текущей строки?' ),
             PChar( 'ВНИМАНИЕ: Изменение текста строки' ),
             MB_YESNO + MB_ICONQUESTION ) = IDYES then
        begin
          tmTlk1String.Text := frmZoom.tmLargeString1.Text;
          AcceptStringChange( Self );
        end;
      end;
    end;

  finally
    // В Delphi для форм используем либо Release, либо Free.
    // Destroy вызывается автоматически. Double-free здесь был опасен.
    frmZoom.Release;
  end;
end;

//procedure TfrmMain.bt500StringsClick(Sender: TObject);
//var
//  inStart,
//  inPos,
//  inEnd,
//  inCount: Integer;
//
//  lvItem: TListItem;
//
//  stCaption: String;
//
//begin
//  inStart := getIntegerInline( teTlkPosition.Text );
//  inEnd := inStart +499;
//
//  if inEnd > slTlk1String.Count -1 then
//     inEnd := slTlk1String.Count -1;
//
//  inCount := inEnd - inStart +1;
//
//  stCaption := stDefault500StringsCaption;
//  stCaption := stCaption.Replace( '<CNT>', getStringInline( inCount ) );
//  stCaption := stCaption.Replace( '<POS>', getStringInline( inStart ) );
//
//  Form500Strings.Caption := stCaption;
//
//  Form500Strings.lv500Strings.Clear;
//
//  for inPos := inStart to inEnd do begin
//    lvItem := Form500Strings.lv500Strings.Items.Add;
//    lvItem.Caption := inPos.ToString;
//    lvItem.SubItems.Add( slTlk1String[ inPos ] );
//  end;
//
//  Form500Strings.Show;
//end;
procedure TfrmMain.bt500StringsClick(Sender: TObject);
var
  inStart: Integer;
  inEnd: Integer;
  inPos: Integer;
  stCap: string;
  lvItem: TListItem;
  lvTarget: TListView;

begin
  inStart := getIntegerInline( teTlkPosition.Text );
  inEnd := inStart + 499;

  if inEnd > slTlk1String.Count -1 then
     inEnd := slTlk1String.Count -1;

  // 1. Формируем заголовок без медленного .Replace
  stCap := stDefault500StringsCaption;
  // Используем getTextBetween или простую склейку, если формат фиксирован
  // Но для простоты оставим логику замены, но через быструю функцию, если она есть
  stCap := System.SysUtils.StringReplace( stCap, '<CNT>', System.SysUtils.IntToStr( inEnd - inStart + 1 ), [rfReplaceAll] );
  stCap := System.SysUtils.StringReplace( stCap, '<POS>', System.SysUtils.IntToStr( inStart ), [rfReplaceAll] );

  Form500Strings.Caption := stCap;
  lvTarget := Form500Strings.lv500Strings;

  // 2. Блокируем перерисовку — КРИТИЧНО для скорости
  lvTarget.Items.BeginUpdate;
  try
    lvTarget.Clear;

    for inPos := inStart to inEnd do
    begin
      if inBreak = 1 then
         Break;

      lvItem := lvTarget.Items.Add;
      // Используем IntToStr вместо .ToString (быстрее)
      lvItem.Caption := System.SysUtils.IntToStr( inPos );
      lvItem.SubItems.Add( slTlk1String[ inPos ] );
    end;
  finally
    // 3. Разблокируем и прорисовываем всё разом
    lvTarget.Items.EndUpdate;
  end;

  Form500Strings.Show;
end;

procedure TfrmMain.btAddBookmarkClick(Sender: TObject);
begin
  lvBookmars.Items.BeginUpdate;

  addBookmark( getIntegerInline( teTlkPosition.Text), '' );

  lvBookmars.Items.Count := slBookmarks.Count;

  lvBookmars.Items.EndUpdate;

  teBookmarksStatus.Text := stBookmarksStatus + lvBookmars.Items.Count.ToString;

  cbBookmarkSearch.Enabled := lvBookmars.Items.Count > 0;
end;

procedure TfrmMain.btDelBookmarkClick(Sender: TObject);
begin
  if lvBookmars.ItemFocused = nil then
     Exit;

  lvBookmars.Items.BeginUpdate;

  slBookmarks.Delete   ( lvBookmars.ItemFocused.Index );
  slBookmarksNum.Delete( lvBookmars.ItemFocused.Index );

  lvBookmars.Items.Count := slBookmarks.Count;

  lvBookmars.Items.EndUpdate;

  teBookmarksStatus.Text := stBookmarksStatus + lvBookmars.Items.Count.ToString;

  cbBookmarkSearch.Enabled := lvBookmars.Items.Count > 0;
end;

procedure TfrmMain.btClearBookmarksClick(Sender: TObject);
begin
  case slBookmarks.Count of
    0 : Exit; end;

  if Vcl.Forms.Application.MessageBox(
       PChar( 'Вы хотите очистить весь список закладок?' ),
       PChar( 'ВНИМАНИЕ: Подтверждение действия' ),
       MB_YESNO + MB_ICONQUESTION ) = IDYES then begin
    lvBookmars.Items.BeginUpdate;

    slBookmarks.Clear;
    slBookmarksNum.Clear;

    lvBookmars.Items.Count := slBookmarks.Count;

    lvBookmars.Items.EndUpdate;

    teBookmarksStatus.Text := stBookmarksStatus + lvBookmars.Items.Count.ToString;

    cbBookmarkSearch.Enabled := lvBookmars.Items.Count > 0;
  end;
end;

procedure TfrmMain.lvBookmarsData(Sender: TObject; Item: TListItem);
begin
  if ( inLoading = 1 )
     or ( slBookmarks.Count = 0 ) then
     Exit;

  Item.Caption := getStringInline( slBookmarks[ Item.Index ] );
end;

procedure TfrmMain.lvBookmarsDblClick(Sender: TObject);
begin
  if lvBookmars.ItemFocused = nil then
     Exit;

  teTlkPosition.Text := getStringInline( slBookmarksNum[ lvBookmars.ItemFocused.Index ] );

  sbScrollStringsChange( self );
end;

procedure TfrmMain.lvBookmarsEnter(Sender: TObject);
begin
  miDeleteBookmark.Enabled := not ( lvBookmars.ItemFocused = nil );
end;

procedure TfrmMain.lvBookmarsSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
begin
  miDeleteBookmark.Enabled := Selected;

  if cbQuickSearch.Checked then
     lvBookmarsDblClick( lvBookmars );
end;

procedure TfrmMain.btSelectTlkContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
  case TButton( Sender ).Tag of
    1 : exeFile( System.SysUtils.ExtractFileDir( teTlkPath1.Text ), False );
    2 : exeFile( System.SysUtils.ExtractFileDir( teTlkPath2.Text ), False );
  end;
end;

procedure TfrmMain.btShortHelpClick(Sender: TObject);
begin
  FormShortHelp.Show;
end;

procedure TfrmMain.btTextClick(Sender: TObject);
begin
//  PopupText.Popup( self.Left +585, self.Top +122 );
end;

procedure TfrmMain.btTLKSearchClick(Sender: TObject);
begin
//  PopupSearch.Popup( self.Left +114, self.Top +116 );

  if not ( teTLKSearch.Text = 'текст или {шаблон} ...' ) then
     miTextSearchClick(self);
end;

procedure TfrmMain.cbExceptInputChange(Sender: TObject);
begin
  if cbExceptInput.Checked then
     cbExactlySearch.Checked := False;
end;

procedure TfrmMain.cbReplaceTextPropertiesChange(Sender: TObject);
begin
  teTextForReplace.Enabled := cbReplaceText.Checked;
end;

procedure TfrmMain.cbSingleSearchPropertiesChange(Sender: TObject);
begin
  cbAddToBookmarks.Checked := not cbSingleSearch.Checked;
  cbAddToBookmarks.Enabled := cbSingleSearch.Checked;
end;

procedure TfrmMain.cbTlkPosition_2_SyncClick(Sender: TObject);
begin
  teTlkPosition_2.Enabled   := not cbTlkPosition_2_Sync.Checked;
  sbScrollStrings_2.Enabled := not cbTlkPosition_2_Sync.Checked;

  if cbTlkPosition_2_Sync.Checked then
       teTlkPosition_2.Text := getStringInline( sbScrollStrings.Position )
  else sbScrollStrings_2.Position := getIntegerInline( teTlkPosition_2.Text );
end;

procedure TfrmMain.cbBookmarkSearchClick(Sender: TObject);
begin
  teTlkPosition.Text := '0';
end;

procedure TfrmMain.cbExactlySearchChange(Sender: TObject);
begin
  if cbExactlySearch.Checked then
     cbExceptInput.Checked := False;
end;

//procedure TfrmMain.AcceptStringChange(Sender: TObject);
//var
//  inA: Integer;
//  inB: Integer;
//  liChange: TListItem;
//
//begin
//  if ( inLoading = 1 )
//     or ( teTlkPath1.Text = '' ) then
//     Exit;
//
//  inA := getIntegerInline( teTlkPosition.Text );
//
//  if tmTlk1String.Text = slTlk1String[ inA ].Replace( #10, sLineBreak ) then
//     Exit;
//
//  inB := 1;
//
//  if not System.Variants.VarIsNull( hmTlk1ChangeIndex[ inA ].Value ) then
//     inB := getIntegerInline( hmTlk1ChangeIndex[ inA ].Value ) +1;
//
//  hmTlk1ChangeIndex[ inA ].Value := inB;
//  hmTlk1ChangeValue[ inA ][ inB ].Value := tmTlk1String.Text;
//
//  liChange := lvChanges.Items.Add;
//  liChange.Caption := '[ '+inA.ToString + ' ] ' + inB.ToString;
//
//  sbScrollStringsChange( self );
//end;
procedure TfrmMain.AcceptStringChange(Sender: TObject);
var
  inA: Integer;
  inB: Integer;
  liChange: TListItem;

begin
  if ( inLoading = 1 )
     or ( teTlkPath1.Text = '' ) then
     Exit;

  inA := getIntegerInline( teTlkPosition.Text );

  if tmTlk1String.Text = slTlk1String[ inA ].Replace( #10, sLineBreak ) then
     Exit;

  // 1. Проверяем и динамически расширяем внешний массив, если индекс inA выходит за его текущие границы
  if inA >= Length(Tlk1Changes) then
     SetLength(Tlk1Changes, inA + 1);

  // 2. Вычисляем следующий номер изменения (заменяет VarIsNull и старый Index)
  inB := Tlk1Changes[inA].Index + 1;

  // 3. Сохраняем новый индекс изменений
  Tlk1Changes[inA].Index := inB;

  // 4. Расширяем внутренний массив строк, чтобы в него поместился элемент с индексом inB
  if inB >= Length(Tlk1Changes[inA].Values) then
     SetLength(Tlk1Changes[inA].Values, inB + 1);

  // 5. Записываем измененный текст напрямую в массив
  Tlk1Changes[inA].Values[inB] := tmTlk1String.Text;

  liChange := lvChanges.Items.Add;
  liChange.Caption := '[ ' + inA.ToString + ' ] ' + inB.ToString;

  sbScrollStringsChange( self );
end;

//procedure TfrmMain.btDelChangeClick(Sender: TObject);
//var
//  stCaption: String;
//  stA: String;
//  stB: String;
//  inA: Integer;
//  inB: Integer;
//
//begin
//  stCaption := lvChanges.ItemFocused.Caption;
//
//  stA := System.Copy( stCaption, 3, Length( stCaption ) );
//  stA := System.Copy( stA, 1, Pos( ']', stA ) -2 );
//
//  stB := System.Copy( stCaption, Pos( ']', stCaption ) +2, Length( stCaption ) );
//
//  inA := getIntegerInline( stA );
//  inB := getIntegerInline( stB );
//
//  if Vcl.Forms.Application.MessageBox(
//       PChar( 'Вы хотите удалить изменение ' + stB + ' строки ' + stA + '?' + #13 +
//                         #13 +
//                         getStringInline( hmTlk1ChangeValue[ inA ][ inB ].Value ) ),
//       PChar( 'ВНИМАНИЕ: Отмена изменения(ий)' ),
//       MB_YESNO + MB_ICONQUESTION ) = IDNO then
//    Exit;
//
//  hmTlk1ChangeValue[ inA ][ inB ].Value := '<EMPTY>';
////  hmTlk1ChangeValue[ inA ].Value := -1;
//
//  lvChanges.ItemFocused.Delete;
//
//  sbScrollStringsChange( self );
//end;
procedure TfrmMain.btDelChangeClick(Sender: TObject);
var
  stCaption: String;
  stA: String;
  stB: String;
  inA: Integer;
  inB: Integer;
  stRec: String;

begin
  stCaption := lvChanges.ItemFocused.Caption;

  stA := System.Copy( stCaption, 3, Length( stCaption ) );
  stA := System.Copy( stA, 1, Pos( ']', stA ) -2 );

  stB := System.Copy( stCaption, Pos( ']', stCaption ) +2, Length( stCaption ) );

  inA := getIntegerInline( stA );
  inB := getIntegerInline( stB );

  // Безопасно получаем текст изменения из массива для показа в MessageBox
  stRec := '<EMPTY>';
  if (Tlk1Changes <> nil) and (inA >= 0) and (inA < Length(Tlk1Changes)) then
  begin
    if (inB >= 0) and (inB < Length(Tlk1Changes[inA].Values)) then
      stRec := Tlk1Changes[inA].Values[inB];
  end;

  if Vcl.Forms.Application.MessageBox(
       PChar( 'Вы хотите удалить изменение ' + stB + ' строки ' + stA + '?' + #13 +
                         #13 + stRec ),
       PChar( 'ВНИМАНИЕ: Отмена изменения(ий)' ),
       MB_YESNO + MB_ICONQUESTION ) = IDNO then
    Exit;

  // Присваиваем '<EMPTY>' напрямую в ячейку массива
  if (Tlk1Changes <> nil) and (inA >= 0) and (inA < Length(Tlk1Changes)) then
  begin
    if (inB >= 0) and (inB < Length(Tlk1Changes[inA].Values)) then
      Tlk1Changes[inA].Values[inB] := '<EMPTY>';
  end;

  lvChanges.ItemFocused.Delete;

  sbScrollStringsChange( self );
end;

procedure TfrmMain.btLoadBookmarksClick(Sender: TObject);
var
  slFile: TStringList;
  stFile: String;
  stRecord: String;
  inPos: Integer;
  inEnd: Integer;
//  inFindIndex: Integer;

begin
  if ( slBookmarks = nil )
     or ( slBookmarksNum = nil ) then
     Exit;

  if OpenDialogBookmarks.Execute then
       stFile := OpenDialogBookmarks.FileName
  else Exit;

  slFile := TStringList.Create;

  try
    slFile.LoadFromFile( stFile );
  except
    slFile.Free;
  end;

  if slFile = nil then
     Exit;

  lvBookmars.Items.BeginUpdate;

  inEnd := slFile.Count -1;
  for inPos := 0 to inEnd do begin
    if inBreak = 1 then
       Break;

    stRecord := slFile[ inPos ];

    if ( stRecord.Trim = '' )
       or ( Copy( stRecord, 1, 1 ) = '#' )
       or ( Copy( stRecord, 1, 2 ) = '//' ) then
       Continue;

    if ( Pos( '[', stRecord ) = 0 )
       or ( Pos( ']', stRecord ) = 0) then
       Continue;

    slBookmarks.Append( stRecord );
    slBookmarksNum.Append( Copy( stRecord, Pos( '[', stRecord ) +1, Pos( ']', stRecord ) -2 ).Trim );
  end;

  lvBookmars.Items.Count := slBookmarks.Count;

  lvBookmars.Items.EndUpdate;

  teBookmarksStatus.Text := stBookmarksStatus + System.SysUtils.IntToStr( lvBookmars.Items.Count );

  cbBookmarkSearch.Enabled := lvBookmars.Items.Count > 0;
end;

procedure TfrmMain.teTlkPositionChange(Sender: TObject);
begin
  if inLoading = 1 then
     Exit;

  sbScrollStrings.Position := getIntegerInline( teTlkPosition.Text );
  teTlkPosition.Tag        := getIntegerInline( teTlkPosition.Text );
end;

procedure TfrmMain.teTLKLastChange(Sender: TObject);
var
  blCheck: Boolean;

begin
  blCheck                 := getIntegerInline( teTLKLast.Text ) > 0;

  teTLKSearch.Enabled     := blCheck;
  sbScrollStrings.Enabled := blCheck;
  btTLKSearch.Enabled     := blCheck;
  tmTlk1String.Enabled    := blCheck;
  btText.Enabled          := blCheck;
  btSaveTLK.Enabled       := blCheck;
  bt500Strings.Enabled    := blCheck;
  btZoom.Enabled          := blCheck;
  btChanges.Enabled       := blCheck;

  miLoadBookmarksList.Enabled := blCheck;
end;

procedure TfrmMain.teTLKSearchChange(Sender: TObject);
var
  stValue: String;

begin
  stValue := teTLKSearch.Text;

  if ( Pos( '{', stValue ) > 0 )
     or ( Pos( '}', stValue ) > 0 ) then begin
    cbRegistry.Checked      := False;
    cbRegistry.Enabled      := False;
    cbExactlySearch.Checked := False;
//    cbExactlySearch.Enabled := False;
    cbReplaceText.Enabled   := False;
  end
  else begin
    cbRegistry.Enabled      := True;
//    cbExactlySearch.Enabled := True;
    cbReplaceText.Enabled   := True;
  end;

  if ( stValue = '{StringRussian}' )
     or ( stValue = '{StringEnglish}' )
     or ( stValue = '{StringRusAndEng}' ) then begin
    cbExceptInput.Checked := False;
    cbExceptInput.Enabled := False;
  end
  else cbExceptInput.Enabled := True;

  if cbQuickSearch.Checked then
     FindNextString( Sender );
end;

procedure TfrmMain.teTLKSearchEnter(Sender: TObject);
begin
  if teTLKSearch.Text = stDefaultSearch then
     teTLKSearch.Text := '';
end;

procedure TfrmMain.teTLKSearchExit(Sender: TObject);
begin
  if teTLKSearch.Text = '' then
     teTLKSearch.Text := stDefaultSearch;
end;

procedure TfrmMain.teTLKSearchKeyPress(Sender: TObject; var Key: Char);
begin
  case Ord( Key ) of
    // Enter
    13 : FindNextString( Sender );
    // Esc
    27 : TEdit( Sender ).Clear;
  end;
end;

procedure TfrmMain.teTlkPositionKeyPress(Sender: TObject; var Key: Char);
begin
  case System.Ord( Key ) of
    13 : begin
      teTlkPositionChange( Sender );

      sbScrollStringsChange( Sender );
    end;
    48, 49, 50, 51, 52, 53, 54, 55, 56, 57 : Null
    else teTlkPosition.Text := teTlkPosition.Tag.ToString;
  end;
end;

procedure TfrmMain.teTlkPosition_2Change(Sender: TObject);
begin
  if inLoading = 1 then
     Exit;

  sbScrollStrings_2.Position := getIntegerInline( teTlkPosition_2.Text );
  teTlkPosition_2.Tag        := getIntegerInline( teTlkPosition_2.Text );
end;

procedure TfrmMain.teTlkPosition_2KeyPress(Sender: TObject; var Key: Char);
begin
  case System.Ord( Key ) of
    13 : begin
      teTlkPosition_2Change( Sender );

      sbScrollStrings_2Change( Sender );
    end;
    48, 49, 50, 51, 52, 53, 54, 55, 56, 57 : Null
    else teTlkPosition_2.Text := teTlkPosition_2.Tag.ToString;
  end;
end;

procedure TfrmMain.sbScrollStringsChange(Sender: TObject);
var
  inPos: Integer;
//  stInfo: string;
  stSnd: string;

begin
  if inLoading = 1 then
     Exit;

  inLoading := 1;
  inPos := sbScrollStrings.Position;

  // 1. Быстрый вывод индекса
  teTlkPosition.Text := IntToStrInline( inPos );

  // 2. Получение основного текста
  stHashValue := getChangeOfString( inPos );

  if stHashValue = '<EMPTY>' then
  begin
    // Заменяем #10 на системный перенос без .Replace (медленно)
    tmTlk1String.Text       := System.SysUtils.StringReplace( slTlk1String[ inPos ], #10, sLineBreak, [rfReplaceAll] );
    teTlkPosition.Color     := clWindow;
    tmTlk1String.Font.Color := clWindowText;
  end
  else
  begin
    tmTlk1String.Text       := stHashValue;
    teTlkPosition.Color     := clMoneyGreen;
    tmTlk1String.Font.Color := clGreen;
  end;

  // 3. Формирование строки инфо (убираем .ToString и лишние конвертации)
  if Assigned( slTlk1SoundLength )
     and ( slTlk1SoundLength.Count > inPos ) then
       stSnd := ', SndLen=' + System.SysUtils.Trim( slTlk1SoundLength[ inPos ] )
  else stSnd := '';

  // Склейка через Format или последовательно — это быстрее, чем 10 плюсов
  teStringInfo.Text := System.SysUtils.Format(
    'Flags=%d, SndRes=%s, VolVar=%d, PitchVar=%d, Offset=%d, Size=%d%s',
    [ hexToIntInline( slTlk1Flags[ inPos ] ),
      System.SysUtils.Trim( slTlk1SoundResRef[ inPos ] ),
      hexToIntInline( slTlk1VolumeVariance[ inPos ] ),
      hexToIntInline( slTlk1PitchVariance[ inPos ] ),
      hexToIntInline( slTlk1OffsetToString[ inPos ] ),
      hexToIntInline( slTlk1StringSize[ inPos ] ),
      stSnd ] );

  // 4. Синхронизация со вторым файлом
  if not cbTlkPosition_2_Sync.Checked
     or ( slTlk2String = nil )
     or ( inPos >= slTlk2String.Count ) then
  begin
    inLoading := 0;
    Exit;
  end;

  teTlkPosition_2.Text := teTlkPosition.Text;
  tmTlk2String.Text := System.SysUtils.StringReplace( slTlk2String[ inPos ], #10, sLineBreak, [rfReplaceAll] );

  if Assigned( slTlk2SoundLength )
     and ( slTlk2SoundLength.Count > inPos ) then
       stSnd := ', SndLen=' + System.SysUtils.Trim( slTlk2SoundLength[ inPos ] )
  else stSnd := '';

  teSecondInfo.Text := System.SysUtils.Format(
    'Flags=%d, SndRes=%s, VolVar=%d, PitchVar=%d, Offset=%d, Size=%d%s',
    [ hexToIntInline( slTlk2Flags[ inPos ] ),
      System.SysUtils.Trim( slTlk2SoundResRef[ inPos ] ),
      hexToIntInline( slTlk2VolumeVariance[ inPos ] ),
      hexToIntInline( slTlk2PitchVariance[ inPos ] ),
      hexToIntInline( slTlk2OffsetToString[ inPos ] ),
      hexToIntInline( slTlk2StringSize[ inPos ] ),
      stSnd ] );

  inLoading := 0;
end;

procedure TfrmMain.sbScrollStrings_2Change(Sender: TObject);
var
  inPos: Integer;
  stSnd: string;

begin
  if inLoading = 1 then
     Exit;

  inLoading := 1;
  inPos := sbScrollStrings_2.Position;

  // 1. Быстрый вывод позиции
  teTlkPosition_2.Text := System.SysUtils.IntToStr( inPos );

  // 2. Проверка валидности данных (индекс начинается с 0, поэтому >= Count)
  if ( slTlk2String = nil )
     or ( inPos >= slTlk2String.Count ) then
  begin
    inLoading := 0;
    Exit;
  end;

  // 3. Вывод текста (замена переноса без создания лишних объектов)
  tmTlk2String.Text := System.SysUtils.StringReplace( slTlk2String[ inPos ], #10, sLineBreak, [ rfReplaceAll ] );

  // 4. Формирование строки инфо через один вызов Format (Fast)
  if Assigned( slTlk2SoundLength )
     and ( slTlk2SoundLength.Count > inPos ) then
       stSnd := ', SndLen=' + System.SysUtils.Trim( slTlk2SoundLength[ inPos ] )
  else stSnd := '';

  teSecondInfo.Text := System.SysUtils.Format(
    'Flags=%d, SndRes=%s, VolVar=%d, PitchVar=%d, Offset=%d, Size=%d%s',
    [ hexToIntInline( slTlk2Flags[ inPos ] ),
      System.SysUtils.Trim( slTlk2SoundResRef[ inPos ] ),
      hexToIntInline( slTlk2VolumeVariance[ inPos ] ),
      hexToIntInline( slTlk2PitchVariance[ inPos ] ),
      hexToIntInline( slTlk2OffsetToString[ inPos ] ),
      hexToIntInline( slTlk2StringSize[ inPos ] ),
      stSnd ] );

  inLoading := 0;
end;

//procedure TfrmMain.btSelectTlkClick(Sender: TObject);
//label
//  start_procedure,
//  end_procedure;
//var
//  stTlk1Status: String;
//  stSignature: String;
//  stLanguageID: String;
//  stStreff: String;
//  stShift: String;
//  inLoadEncoding,
//  inStreff: Integer;
//  inPos: Integer;
//  inEnd: Integer;
//  inExt: Integer;
//  inFileNum: Integer;
//
//begin
//  if TButton( Sender ).Name = 'btSaveTLK' then
//     goto start_procedure;
//
//  btSelectTlk1.Enabled := False;
//
//  if OpenDialogMain.Execute then begin
//    inFileSize := 0;
//    stFilePath := OpenDialogMain.FileName;
//  end
//  else goto end_procedure;
//
//  start_procedure:;
//
//  swTiming.Start;
//
//  inFileNum := TButton( Sender ).Tag;
//
//  case inFileNum of
//    1 : begin
//      inLoadEncoding := cbTlk1Encoding.ItemIndex;
//    end;
//    2 : begin
//      inLoadEncoding := cbTlk2Encoding.ItemIndex;
//      stTlk1Status   := teStatusBar.Text;
//    end;
//  end;
//
//  stStatus := 'Обработка tlk-файла "' + System.SysUtils.ExtractFileName( stFilePath ) + '" ... ';
//
//  inFileSize := getFileSize( stFilePath );
//
//  case inFileSize of
//    0 : begin
//      teStatusBar.Text := stStatus+'сбой при получении размера';
//
//      goto end_procedure;
//    end;
//  end;
//
//  teStatusBar.Text := stStatus + 'подготовка рабочих массивов';
//  Application.ProcessMessages;
//
//  case slFlags = nil of False : slFlags.Free; end;
//  slFlags := TStringList.Create;
//
//  case slSoundResRef = nil of False : slSoundResRef.Free; end;
//  slSoundResRef := TStringList.Create;
//
//  case slVolumeVariance = nil of False : slVolumeVariance.Free; end;
//  slVolumeVariance := TStringList.Create;
//
//  case slPitchVariance = nil of False : slPitchVariance.Free; end;
//  slPitchVariance := TStringList.Create;
//
//  case slOffsetToString = nil of False : slOffsetToString.Free; end;
//  slOffsetToString := TStringList.Create;
//
//  case slStringSize = nil of False : slStringSize.Free; end;
//  slStringSize := TStringList.Create;
//
//  case slSoundLength = nil of False : slSoundLength.Free; end;
//  slSoundLength := TStringList.Create;
//
//  case slString = nil of False : slString.Free; end;
//  slString := TStringList.Create;
//
//  case inLoadEncoding of
//    0 : slString.DefaultEncoding := TEncoding.UTF8;
//    1 : slString.DefaultEncoding := TEncoding.ANSI;
//    2 : slString.DefaultEncoding := TEncoding.ASCII;
//  end;
//
//  teStatusBar.Text := stStatus + 'буфферизация файла';
//  Application.ProcessMessages;
//
//  SetLength( asbFile, inFileSize );
//
//  case getFileBytesInline( stFilePath, asbFile, 0, inFileSize ) of
//    False : begin
//      teStatusBar.Text := stStatus + 'сбой при буфферизации файла';
//
//      goto end_procedure;
//    end;
//  end;
//
//  teStatusBar.Text := stStatus + 'получение данных заголовка';
//  Application.ProcessMessages;
//
//  // FileType
//  stSignature :=          BinToString( Copy( asbFile, 0, 3 ), inLoadEncoding );
//  // FileVersion
//  stFileVersion :=        System.SysUtils.Trim( BinToString( Copy( asbFile, 4, 4 ), inLoadEncoding ) );
//  case stFileVersion = 'V1' of
//    True : begin
//      inHeaderSize :=     18;
//      inStringDataSize := 26;
//      // LanguageID
//      stLanguageID :=     getInverted( BinToHexString( Copy( asbFile, 8,  2 ) ) );
//      // StringCount
//      stStreff :=         getInverted( BinToHexString( Copy( asbFile, 10, 4 ) ) );
//      // StringEntriesOffset
//      stShift :=          getInverted( BinToHexString( Copy( asbFile, 14, 4 ) ) );
//    end;
//  end;
//  case stFileVersion = 'V3.0' of
//    True : begin
//      inHeaderSize :=     20;
//      inStringDataSize := 40;
//      stLanguageID :=     getInverted( BinToHexString( Copy( asbFile, 8,  4 ) ) );
//      stStreff :=         getInverted( BinToHexString( Copy( asbFile, 10, 4 ) ) );
//      stShift :=          getInverted( BinToHexString( Copy( asbFile, 14, 4 ) ) );
//    end;
//  end;
//
//  inStreff :=             hexToIntInline( stStreff );
//  inStringsDataSize :=    inStringDataSize * inStreff;
//  inStringsEntryOffset := hexToIntInline( stShift );
//  inStringsEntrySize :=   inFileSize - inStringsEntryOffset;
//
//  teStatusBar.Text := stStatus+'создание рабочих буферов';
//  Application.ProcessMessages;
//
//  asbHeader :=            Copy( asbFile, 0,                                inHeaderSize );
//  asbStringsData :=       Copy( asbFile, inHeaderSize,                     inStringsDataSize );
//  asbStringsEntry :=      Copy( asbFile, inHeaderSize + inStringsDataSize, inFileSize - inHeaderSize - inStringsDataSize );
//
//  case ( asbHeader = nil )
//       or ( asbStringsData = nil )
//       or ( asbStringsEntry = nil ) of
//    True : begin
//      teStatusBar.Text := stStatus + 'сбой при создании рабочих буферов';
//
//      goto end_procedure;
//    end;
//  end;
//
//  teStatusBar.Text := stStatus + 'заполнение массивов строк';
//  Application.ProcessMessages;
//
//  inEnd := inStreff - 1;
//
//  case stFileVersion = 'V1' of
//    True : begin
//      for inPos := 0 to inEnd do begin
//        case inBreak of
//          1 : Break; end;
//
//        inExt := inHeaderSize + ( inPos * inStringDataSize );
//
//        slFlags.Append(          getInverted( BinToHexString( Copy( asbFile, inExt,     2 ) ) ) );
//        slSoundResRef.Append(    BinToString( Copy(asbFile,                  inExt +2,  8 ), inLoadEncoding ) );
//        slVolumeVariance.Append( getInverted( BinToHexString( Copy( asbFile, inExt +10, 4 ) ) ) );
//        slPitchVariance.Append(  getInverted( BinToHexString( Copy( asbFile, inExt +14, 4 ) ) ) );
//        slOffsetToString.Append( getInverted( BinToHexString( Copy( asbFile, inExt +18, 4 ) ) ) );
//        slStringSize.Append(     getInverted( BinToHexString( Copy( asbFile, inExt +22, 4 ) ) ) );
//
//        slString.Append(         BinToString( Copy( asbFile, inStringsEntryOffset + hexToIntInline( slOffsetToString[ inPos ] ), hexToIntInline( slStringSize[ inPos ] ) ), inLoadEncoding ) );
//      end;
//    end;
//  end;
//
//  case stFileVersion = 'V3.0' of
//    True : begin
//      for inPos := 0 to inEnd do begin
//        case inBreak of
//          1 : Break; end;
//
//        inExt := inHeaderSize + (inPos * inStringDataSize);
//
//        slFlags.Append(          getInverted( BinToHexString( Copy( asbFile, inExt,     4 ) ) ) );
//        slSoundResRef.Append(    BinToString( System.Copy( asbFile,                 inExt +4,  16 ), inLoadEncoding ) );
//        slVolumeVariance.Append( getInverted( BinToHexString( Copy( asbFile, inExt +20, 4 ) ) ) );
//        slPitchVariance.Append(  getInverted( BinToHexString( Copy( asbFile, inExt +24, 4 ) ) ) );
//        slOffsetToString.Append( getInverted( BinToHexString( Copy( asbFile, inExt +28, 4 ) ) ) );
//        slStringSize.Append(     getInverted( BinToHexString( Copy( asbFile, inExt +32, 4 ) ) ) );
//        slSoundLength.Append(    getInverted( BinToHexString( Copy( asbFile, inExt +36, 4 ) ) ) );
//
//        slString.Append(         BinToString( Copy(asbFile, inStringsEntryOffset + hexToIntInline( slOffsetToString[ inPos ] ), hexToIntInline( slStringSize[ inPos ] ) ), inLoadEncoding ) );
//      end;
//    end;
//  end;
//
//  case ( slFlags = nil )
//       or ( inStreff > slFlags.Count )
//       or ( slSoundResRef = nil )
//       or ( inStreff > slSoundResRef.Count )
//       or ( slVolumeVariance = nil )
//       or ( inStreff > slVolumeVariance.Count )
//       or ( slPitchVariance = nil )
//       or ( inStreff > slPitchVariance.Count )
//       or ( slOffsetToString = nil )
//       or ( inStreff > slOffsetToString.Count )
//       or ( slStringSize = nil )
//       or ( inStreff > slStringSize.Count )
//       or ( ( slSoundLength = nil ) and ( stFileVersion = 'V3.0' ) )
//       or ( ( inStreff > slSoundLength.Count ) and ( stFileVersion = 'V3.0' ) )
//       or ( slString = nil )
//       or ( inStreff > slString.Count ) of
//    True : begin
//      teStatusBar.Text := stStatus + 'сбой при заполнении массивов строк';
//
//      goto end_procedure;
//    end;
//  end;
//
//  teStatusBar.Text := stStatus + 'подготовка к работе';
//  Application.ProcessMessages;
//
//  case inFileNum of
//    1 : begin
//      teTlkPath1.Text       := stFilePath;
//      teTlkPath1.Tag        := getIntegerInline( stLanguageID );
//
//      teTLKSearch.Text      := stDefaultSearch;
//      teTLKSearch.Enabled   := False;
//
//      sbScrollStrings.Min   := 0;
//      sbScrollStrings.Max   := hexToIntInline( stStreff ) -1;
//
//      teTlkPosition.Text    := '0';
//      teTlkPosition.Enabled := True;
//
//      teTLKLast.Text        := '0';
//      teTLKLast.Text        := IntToStrInline( sbScrollStrings.Max );
//      teTLKLast.Enabled     := True;
//
//      miAddBookmark.Enabled := True;
//      btBookmarks.Enabled   := True;
//
//      lvBookmars.Clear;
//
//      lvChanges.Clear;
//
//      tmTlk1String.Clear;
//
//      case inLoadEncoding of
//        0 : tmTlk1String.Lines.DefaultEncoding := TEncoding.UTF8;
//        1 : tmTlk1String.Lines.DefaultEncoding := TEncoding.ANSI;
//        2 : tmTlk1String.Lines.DefaultEncoding := TEncoding.ASCII;
//      end;
//
//      case hmTlk1ChangeIndex = nil of
//        True : hmTlk1ChangeIndex := THashMap.Create
//        else begin
//          hmTlk1ChangeIndex.Free;
//          hmTlk1ChangeIndex := THashMap.Create;
//        end;
//      end;
//
//      case hmTlk1ChangeValue = nil of
//        True : hmTlk1ChangeValue := THashMap.Create
//        else begin
//          hmTlk1ChangeValue.Free;
//          hmTlk1ChangeValue := THashMap.Create;
//        end;
//      end;
//
//      case slTlk1Flags = nil of False : slTlk1Flags.Free; end;
//      slTlk1Flags := TStringList.Create;
//      inEnd := slFlags.Count -1;
//      for inPos := 0 to inEnd do
//          slTlk1Flags.Append( slFlags[ inPos ] );
//
//      case slTlk1SoundResRef = nil of False : slTlk1SoundResRef.Free; end;
//      slTlk1SoundResRef := TStringList.Create;
//      inEnd := slSoundResRef.Count -1;
//      for inPos := 0 to inEnd do
//          slTlk1SoundResRef.Append( slSoundResRef[ inPos ] );
//
//      case slTlk1VolumeVariance = nil of False : slTlk1VolumeVariance.Free; end;
//      slTlk1VolumeVariance := TStringList.Create;
//      inEnd := slVolumeVariance.Count -1;
//      for inPos := 0 to inEnd do
//          slTlk1VolumeVariance.Append( slVolumeVariance[ inPos ] );
//
//      case slTlk1PitchVariance = nil of False : slTlk1PitchVariance.Free; end;
//      slTlk1PitchVariance := TStringList.Create;
//      inEnd := slPitchVariance.Count -1;
//      for inPos := 0 to inEnd do
//          slTlk1PitchVariance.Append( slPitchVariance[ inPos ] );
//
//      case slTlk1OffsetToString = nil of False : slTlk1OffsetToString.Free; end;
//      slTlk1OffsetToString := TStringList.Create;
//      inEnd := slOffsetToString.Count -1;
//      for inPos := 0 to inEnd do
//          slTlk1OffsetToString.Append( slOffsetToString[ inPos ] );
//
//      case slTlk1StringSize = nil of False : slTlk1StringSize.Free; end;
//      slTlk1StringSize := TStringList.Create;
//      inEnd := slStringSize.Count -1;
//      for inPos := 0 to inEnd do
//          slTlk1StringSize.Append( slStringSize[ inPos ] );
//
//      case slTlk1SoundLength = nil of False : slTlk1SoundLength.Free; end;
//      slTlk1SoundLength := TStringList.Create;
//      inEnd := slSoundLength.Count -1;
//      for inPos := 0 to inEnd do
//          slTlk1SoundLength.Append( slSoundLength[ inPos ] );
//
//      case slTlk1String = nil of False : slTlk1String.Free; end;
//      slTlk1String := TStringList.Create;
//      case inLoadEncoding of
//        0 : slTlk1String.DefaultEncoding := TEncoding.UTF8;
//        1 : slTlk1String.DefaultEncoding := TEncoding.ANSI;
//        2 : slTlk1String.DefaultEncoding := TEncoding.ASCII;
//      end;
//      inEnd := slString.Count - 1;
//      for inPos := 0 to inEnd do
//          slTlk1String.Append( slString[ inPos ] );
//
//      teStatusBar.Text :=
//        'Signature: ' + stSignature.Trim +
//        ', FileVersion: ' + stFileVersion.Trim +
//        ', Language (ID): ' + getLanguage( hexToIntInline( stLanguageID ) ) + ' (' + hexToIntInline( stLanguageID ).ToString + ')' +
//        ', Streff: ' + hexToIntInline( stStreff ).ToString +
//        ', StringEntriesOffset: ' + hexToIntInline( stShift ).ToString +
//        ', Размер файла: ' + inFileSize.ToString + ' байт';
//
//      cbTlk1Encoding.ItemIndex := inLoadEncoding;
//    end;
//    2 : begin
//      teTlkPath2.Text       := stFilePath;
//      teTlkPath2.Tag        := getIntegerInline( stLanguageID );
//
//      teTlkPosition_2.Text  := '0';
//
//      teTLKLast_2.Text      := '0';
//      teTLKLast_2.Text      := sbScrollStrings.Max.ToString;
//
//      sbScrollStrings_2.Enabled := True;
//      sbScrollStrings_2.Min := 0;
//      sbScrollStrings_2.Max := hexToIntInline( stStreff ) -1;
//
//      tmTlk2String.Clear;
//
//      case inLoadEncoding of
//        0 : tmTlk2String.Lines.DefaultEncoding := TEncoding.UTF8;
//        1 : tmTlk2String.Lines.DefaultEncoding := TEncoding.ANSI;
//        2 : tmTlk2String.Lines.DefaultEncoding := TEncoding.ASCII;
//      end;
//
//      case slTlk2Flags = nil of False : slTlk2Flags.Free; end;
//      slTlk2Flags := TStringList.Create;
//      inEnd := slFlags.Count -1;
//      for inPos := 0 to inEnd do
//          slTlk2Flags.Append( slFlags[ inPos ] );
//
//      case slTlk2SoundResRef = nil of False : slTlk2SoundResRef.Free; end;
//      slTlk2SoundResRef := TStringList.Create;
//      inEnd := slSoundResRef.Count -1;
//      for inPos := 0 to inEnd do
//          slTlk2SoundResRef.Append( slSoundResRef[ inPos ] );
//
//      case slTlk2VolumeVariance = nil of False : slTlk2VolumeVariance.Free; end;
//      slTlk2VolumeVariance := TStringList.Create;
//      inEnd := slVolumeVariance.Count -1;
//      for inPos := 0 to inEnd do
//          slTlk2VolumeVariance.Append( slVolumeVariance[ inPos ] );
//
//      case slTlk2PitchVariance = nil of False : slTlk2PitchVariance.Free; end;
//      slTlk2PitchVariance := TStringList.Create;
//      inEnd := slPitchVariance.Count -1;
//      for inPos := 0 to inEnd do
//          slTlk2PitchVariance.Append( slPitchVariance[ inPos ] );
//
//      case slTlk2OffsetToString = nil of False : slTlk2OffsetToString.Free; end;
//      slTlk2OffsetToString := TStringList.Create;
//      inEnd := slOffsetToString.Count -1;
//      for inPos := 0 to inEnd do
//          slTlk2OffsetToString.Append( slOffsetToString[ inPos ] );
//
//      case slTlk2StringSize = nil of False : slTlk2StringSize.Free; end;
//      slTlk2StringSize := TStringList.Create;
//      inEnd := slStringSize.Count -1;
//      for inPos := 0 to inEnd do
//          slTlk2StringSize.Append( slStringSize[ inPos ] );
//
//      case slTlk2SoundLength = nil of False : slTlk2SoundLength.Free; end;
//      slTlk2SoundLength := TStringList.Create;
//      inEnd := slSoundLength.Count -1;
//      for inPos := 0 to inEnd do
//          slTlk2SoundLength.Append( slSoundLength[ inPos ] );
//
//      case slTlk2String = nil of False : slTlk2String.Free; end;
//      slTlk2String := TStringList.Create;
//      case inLoadEncoding of
//        0 : slTlk2String.DefaultEncoding := TEncoding.UTF8;
//        1 : slTlk2String.DefaultEncoding := TEncoding.ANSI;
//        2 : slTlk2String.DefaultEncoding := TEncoding.ASCII;
//      end;
//      inEnd := slString.Count-1;
//      for inPos := 0 to inEnd do
//          slTlk2String.Append( slString[inPos] );
//
//      cbTlk2Encoding.ItemIndex  := inLoadEncoding;
//
//      teStatusBar.Text := stTlk1Status;
//      Application.ProcessMessages;
//    end;
//  end;
//
//  sbScrollStringsChange( self );
//
//  end_procedure:;
//
//  Application.ProcessMessages;
//
//  btSelectTlk1.Enabled := True;
//
//  swTiming.Stop;
//
//  case inFileNum of
//    1 : teTlkPath1.Hint := 'Путь основного файла, время загрузки: '       + getStringInline( swTiming.ElapsedMilliseconds/1000 ) + ' сек';
//    2 : teTlkPath2.Hint := 'Путь дополнительного файла, время загрузки: ' + getStringInline( swTiming.ElapsedMilliseconds/1000 ) + ' сек';
//  end;
//
//  swTiming.Reset;
//
//  sbScrollStrings_2.Enabled := not cbTlkPosition_2_Sync.Checked;
//end;
procedure TfrmMain.btSelectTlkClick( Sender : TObject );
var
  stTlk1Status   : String;
  stSignature    : String;
  stLanguageID   : String;
  stStreff       : String;
  stShift        : String;
  inLoadEncoding : Integer;
  inStreff       : Integer;
  inPos          : Integer;
  inEnd          : Integer;
  inExt          : Integer;
  inFileNum      : Integer;
  inTmpEnc       : Integer;

begin
  // Если вызвано не кнопкой сохранения, открываем диалог выбора файла
  if TButton( Sender ).Name <> 'btSaveTLK' then
  begin
    btSelectTlk1.Enabled := False;
    if OpenDialogMain.Execute then
    begin
      inFileSize := 0;
      stFilePath := OpenDialogMain.FileName;
    end
    else
    begin
      btSelectTlk1.Enabled := True;
      Exit; // Заменяет "goto end_procedure" при отмене диалога
    end;
  end;

  // Основная логика обработки файла
  swTiming.Start;
  inFileNum := TButton( Sender ).Tag;

  case inFileNum of
    1 : begin
          inLoadEncoding := cbTlk1Encoding.ItemIndex;
        end;
    2 : begin
          inLoadEncoding := cbTlk2Encoding.ItemIndex;
          stTlk1Status := teStatusBar.Text;
        end;
  end;

  stStatus := 'Обработка tlk-файла "' + System.SysUtils.ExtractFileName( stFilePath ) + '" ... ';
  inFileSize := getFileSize( stFilePath );

  if inFileSize = 0 then
  begin
    teStatusBar.Text := stStatus + 'сбой при получении размера';
    btSelectTlk1.Enabled := True;
    swTiming.Stop;
    swTiming.Reset;
    Exit; // Заменяет "goto end_procedure" при ошибке размера
  end;

  // Шаг 2 (подготовка массивов и буферизация)
  teStatusBar.Text := stStatus + 'подготовка рабочих массивов';
  Application.ProcessMessages;

  // Безопасное освобождение памяти и создание новых списков строк
  FreeAndNil( slFlags );
  slFlags := TStringList.Create;

  FreeAndNil( slSoundResRef );
  slSoundResRef := TStringList.Create;

  FreeAndNil( slVolumeVariance );
  slVolumeVariance := TStringList.Create;

  FreeAndNil( slPitchVariance );
  slPitchVariance := TStringList.Create;

  FreeAndNil( slOffsetToString );
  slOffsetToString := TStringList.Create;

  FreeAndNil( slStringSize );
  slStringSize := TStringList.Create;

  FreeAndNil( slSoundLength );
  slSoundLength := TStringList.Create;

  FreeAndNil( slString );
  slString := TStringList.Create;

  // Настройка кодировки по умолчанию для списка строк
  case inLoadEncoding of
    0 : slString.DefaultEncoding := TEncoding.UTF8;
    1 : slString.DefaultEncoding := TEncoding.ANSI;
    2 : slString.DefaultEncoding := TEncoding.ASCII;
  end;

  teStatusBar.Text := stStatus + 'буфферизация файла';
  Application.ProcessMessages;

  // Выделение памяти под байты файла и чтение
  SetLength( asbFile, inFileSize );
  if not getFileBytesInline( stFilePath, asbFile, 0, inFileSize ) then
  begin
    teStatusBar.Text     := stStatus + 'сбой при буфферизации файла';
    btSelectTlk1.Enabled := True;

    swTiming.Stop;
    swTiming.Reset;

    Exit; // Безопасный выход без использования goto
  end;

  teStatusBar.Text := stStatus + 'получение данных заголовка';
  Application.ProcessMessages;

  // Шаг 3 (Чтение данных заголовка)
  // Чтение сигнатуры и версии файла
//  inTmpEnc := inLoadEncoding;
//  stSignature   := BinToString( Copy(  ), inTmpEnc );
  stSignature   := binToStringDirect( asbFile, 0, 3, inLoadEncoding );
//  inTmpEnc := inLoadEncoding;
//  stFileVersion := System.SysUtils.Trim( BinToString( Copy( asbFile, 4, 4 ), inTmpEnc ) );
  stFileVersion := System.SysUtils.Trim( binToStringDirect( asbFile, 4, 4, inLoadEncoding ) );

  // Разбор параметров в зависимости от версии формата TLK
  if stFileVersion = 'V1' then
  begin
    inHeaderSize     := 18;
    inStringDataSize := 26;
    stLanguageID     := getInverted( BinToHexString( Copy( asbFile, 8, 2 ) ) );
    stStreff         := getInverted( BinToHexString( Copy( asbFile, 10, 4 ) ) );
    stShift          := getInverted( BinToHexString( Copy( asbFile, 14, 4 ) ) );
  end
  else if stFileVersion = 'V3.0' then
  begin
    inHeaderSize     := 20;
    inStringDataSize := 40;
    stLanguageID     := getInverted( BinToHexString( Copy( asbFile, 8, 4 ) ) );
    stStreff         := getInverted( BinToHexString( Copy( asbFile, 10, 4 ) ) );
    stShift          := getInverted( BinToHexString( Copy( asbFile, 14, 4 ) ) );
  end;

  // Расчет смещений и размеров блоков данных
  inStreff             := hexToIntInline( stStreff );
  inStringsDataSize    := inStringDataSize * inStreff;
  inStringsEntryOffset := hexToIntInline( stShift );
  inStringsEntrySize   := inFileSize - inStringsEntryOffset;

  teStatusBar.Text := stStatus + 'создание рабочих буферов';
  Application.ProcessMessages;

  // Копирование данных в глобальные рабочие массивы
  asbHeader       := Copy( asbFile, 0, inHeaderSize );
  asbStringsData  := Copy( asbFile, inHeaderSize, inStringsDataSize );
  asbStringsEntry := Copy( asbFile, inHeaderSize + inStringsDataSize, inFileSize - inHeaderSize - inStringsDataSize );

  // Проверка успешности создания буферов
  if ( asbHeader = nil )
     or ( asbStringsData = nil )
     or ( asbStringsEntry = nil ) then
  begin
    teStatusBar.Text := stStatus + 'сбой при создании рабочих буферов';
    btSelectTlk1.Enabled := True;

    swTiming.Stop;
    swTiming.Reset;

    Exit; // Безопасный выход без использования goto
  end;

  // Шаг 4 (Заполнение массивов строк)
  teStatusBar.Text := stStatus + 'заполнение массивов строк';
  Application.ProcessMessages;

  inEnd := inStreff - 1;

  // Парсинг данных для формата V1
  if stFileVersion = 'V1' then
  begin
    for inPos := 0 to inEnd do
    begin
      if inBreak = 1 then
         Break;

      inExt := inHeaderSize + ( inPos * inStringDataSize );

      slFlags.Append(          getInverted( BinToHexString( Copy( asbFile, inExt, 2 ) ) ) );
//      inTmpEnc := inLoadEncoding;
//      slSoundResRef.Append(    BinToString( Copy( asbFile, inExt + 2, 8 ), inTmpEnc ) );
      slSoundResRef.Append(    binToStringDirect( asbFile, inExt + 2, 8, inLoadEncoding ) );
      slVolumeVariance.Append( getInverted( BinToHexString( Copy( asbFile, inExt + 10, 4 ) ) ) );
      slPitchVariance.Append(  getInverted( BinToHexString( Copy( asbFile, inExt + 14, 4 ) ) ) );
      slOffsetToString.Append( getInverted( BinToHexString( Copy( asbFile, inExt + 18, 4 ) ) ) );
      slStringSize.Append(     getInverted( BinToHexString( Copy( asbFile, inExt + 22, 4 ) ) ) );

//      inTmpEnc := inLoadEncoding;
//      slString.Append( BinToString( Copy( asbFile, inStringsEntryOffset +
//        hexToIntInline( slOffsetToString[ inPos ] ), hexToIntInline( slStringSize[ inPos ] ) ), inTmpEnc ) );
      slString.Append( binToStringDirect( asbFile, inStringsEntryOffset +
        hexToIntInline( slOffsetToString[ inPos ] ), hexToIntInline( slStringSize[ inPos ] ), inLoadEncoding ) );
    end;
  end;

  // Парсинг данных для формата V3.0
  if stFileVersion = 'V3.0' then
  begin
    for inPos := 0 to inEnd do
    begin
      if inBreak = 1 then
         Break;

      inExt := inHeaderSize + ( inPos * inStringDataSize );

      slFlags.Append(          getInverted( BinToHexString( Copy( asbFile, inExt, 4 ) ) ) );
//      inTmpEnc := inLoadEncoding;
//      slSoundResRef.Append(    BinToString( Copy( asbFile, inExt + 4, 16 ), inTmpEnc ) );
      slSoundResRef.Append(    binToStringDirect( asbFile, inExt + 4, 16, inLoadEncoding ) );
      slVolumeVariance.Append( getInverted( BinToHexString( Copy( asbFile, inExt + 20, 4 ) ) ) );
      slPitchVariance.Append(  getInverted( BinToHexString( Copy( asbFile, inExt + 24, 4 ) ) ) );
      slOffsetToString.Append( getInverted( BinToHexString( Copy( asbFile, inExt + 28, 4 ) ) ) );
      slStringSize.Append(     getInverted( BinToHexString( Copy( asbFile, inExt + 32, 4 ) ) ) );
      slSoundLength.Append(    getInverted( BinToHexString( Copy( asbFile, inExt + 36, 4 ) ) ) );

//      inTmpEnc := inLoadEncoding;
//      slString.Append( BinToString( Copy( asbFile, inStringsEntryOffset +
//        hexToIntInline( slOffsetToString[ inPos ] ), hexToIntInline( slStringSize[ inPos ] ) ), inTmpEnc ) );
      slString.Append( binToStringDirect( asbFile, inStringsEntryOffset +
        hexToIntInline( slOffsetToString[ inPos ] ), hexToIntInline( slStringSize[ inPos ] ), inLoadEncoding ) );
    end;
  end;

  // Шаг 5 (Валидация массивов и финальное копирование данных)
  // 5. Валидация результатов заполнения
  if ( slFlags = nil )
     or ( inStreff > slFlags.Count )
     or ( slSoundResRef = nil )
     or ( inStreff > slSoundResRef.Count )
     or ( slVolumeVariance = nil )
     or ( inStreff > slVolumeVariance.Count )
     or ( slPitchVariance = nil )
     or ( inStreff > slPitchVariance.Count )
     or ( slOffsetToString = nil )
     or ( inStreff > slOffsetToString.Count )
     or ( slStringSize = nil )
     or ( inStreff > slStringSize.Count )
     or ( ( slSoundLength = nil ) and ( stFileVersion = 'V3.0' ) )
     or ( ( inStreff > slSoundLength.Count ) and ( stFileVersion = 'V3.0' ) )
     or ( slString = nil )
     or ( inStreff > slString.Count ) then
  begin
    teStatusBar.Text := stStatus + 'сбой при заполнении массивов строк';
    Exit; // Автоматически перейдет в блок finally в самом конце метода
  end;

  teStatusBar.Text := stStatus + 'подготовка к работе';
  Application.ProcessMessages;

  // 6. Распределение данных в зависимости от обрабатываемого файла (Страницы 5-9 из PDF)
  if inFileNum = 1 then
  begin
    teTlkPath1.Text     := stFilePath;
    teTlkPath1.Tag      := getIntegerInline( stLanguageID );
    teTLKSearch.Text    := stDefaultSearch;
    teTLKSearch.Enabled := False;

    sbScrollStrings.Min := 0;
    sbScrollStrings.Max := hexToIntInline( stStreff ) - 1;

    teTlkPosition.Text    := '0';
    teTlkPosition.Enabled := True;
    teTLKLast.Text        := '0';
    teTLKLast.Text        := IntToStrInline( sbScrollStrings.Max );
    teTLKLast.Enabled     := True;

    miAddBookmark.Enabled := True;
    btBookmarks.Enabled   := True;
    lvBookmars.Clear;
    lvChanges.Clear;
    tmTlk1String.Clear;

    case inLoadEncoding of
      0 : tmTlk1String.Lines.DefaultEncoding := TEncoding.UTF8;
      1 : tmTlk1String.Lines.DefaultEncoding := TEncoding.ANSI;
      2 : tmTlk1String.Lines.DefaultEncoding := TEncoding.ASCII;
    end;

//    // Пересоздание хеш-мап изменений
//    FreeAndNil( hmTlk1ChangeIndex );
//    hmTlk1ChangeIndex := THashMap.Create;
//    FreeAndNil( hmTlk1ChangeValue );
//    hmTlk1ChangeValue := THashMap.Create;
    // Полная очистка и освобождение памяти динамического массива изменений
    Tlk1Changes := nil;

    // Копирование флагов
    FreeAndNil( slTlk1Flags );
    slTlk1Flags := TStringList.Create;
    inEnd := slFlags.Count - 1;
    for inPos := 0 to inEnd do
        slTlk1Flags.Append( slFlags[ inPos ] );

    // Копирование SoundResRef
    FreeAndNil( slTlk1SoundResRef );
    slTlk1SoundResRef := TStringList.Create;
    inEnd := slSoundResRef.Count - 1;
    for inPos := 0 to inEnd do
        slTlk1SoundResRef.Append( slSoundResRef[ inPos ] );

    // Копирование VolumeVariance
    FreeAndNil( slTlk1VolumeVariance );
    slTlk1VolumeVariance := TStringList.Create;
    inEnd := slVolumeVariance.Count - 1;
    for inPos := 0 to inEnd do
        slTlk1VolumeVariance.Append( slVolumeVariance[ inPos ] );

    // Копирование PitchVariance
    FreeAndNil( slTlk1PitchVariance );
    slTlk1PitchVariance := TStringList.Create;
    inEnd := slPitchVariance.Count - 1;
    for inPos := 0 to inEnd do
        slTlk1PitchVariance.Append( slPitchVariance[ inPos ] );

    // Копирование OffsetToString
    FreeAndNil( slTlk1OffsetToString );
    slTlk1OffsetToString := TStringList.Create;
    inEnd := slOffsetToString.Count - 1;
    for inPos := 0 to inEnd do
        slTlk1OffsetToString.Append( slOffsetToString[ inPos ] );

    // Копирование StringSize
    FreeAndNil( slTlk1StringSize );
    slTlk1StringSize := TStringList.Create;
    inEnd := slStringSize.Count - 1;
    for inPos := 0 to inEnd do
        slTlk1StringSize.Append( slStringSize[ inPos ] );

    // Копирование SoundLength
    FreeAndNil( slTlk1SoundLength );
    slTlk1SoundLength := TStringList.Create;
    inEnd := slSoundLength.Count - 1;
    for inPos := 0 to inEnd do
        slTlk1SoundLength.Append( slSoundLength[ inPos ] );

    // Копирование основного массива строк
    FreeAndNil( slTlk1String );
    slTlk1String := TStringList.Create;
    case inLoadEncoding of
      0 : slTlk1String.DefaultEncoding := TEncoding.UTF8;
      1 : slTlk1String.DefaultEncoding := TEncoding.ANSI;
      2 : slTlk1String.DefaultEncoding := TEncoding.ASCII;
    end;
    inEnd := slString.Count - 1;
    for inPos := 0 to inEnd do
      slTlk1String.Append( slString[ inPos ] );

    teStatusBar.Text :=
      'Signature: ' + stSignature.Trim +
      ', FileVersion: ' + stFileVersion.Trim +
      ', Language (ID): ' + getLanguage( hexToIntInline( stLanguageID ) ) + ' (' + hexToIntInline( stLanguageID ).ToString + ')' +
      ', Streff: ' + hexToIntInline( stStreff ).ToString +
      ', StringEntriesOffset: ' + hexToIntInline( stShift ).ToString +
      ', Размер файла: ' + inFileSize.ToString + ' байт';

    cbTlk1Encoding.ItemIndex := inLoadEncoding;
  end
  else if inFileNum = 2 then
  begin
    teTlkPath2.Text      := stFilePath;
    teTlkPath2.Tag       := getIntegerInline( stLanguageID );
    teTlkPosition_2.Text := '0';
    teTLKLast_2.Text     := '0';
    teTLKLast_2.Text     := sbScrollStrings.Max.ToString;

    sbScrollStrings_2.Enabled := True;
    sbScrollStrings_2.Min     := 0;
    sbScrollStrings_2.Max     := hexToIntInline( stStreff ) - 1;
    tmTlk2String.Clear;

    case inLoadEncoding of
      0 : tmTlk2String.Lines.DefaultEncoding := TEncoding.UTF8;
      1 : tmTlk2String.Lines.DefaultEncoding := TEncoding.ANSI;
      2 : tmTlk2String.Lines.DefaultEncoding := TEncoding.ASCII;
    end;

    FreeAndNil( slTlk2Flags );
    slTlk2Flags := TStringList.Create;
    inEnd := slFlags.Count - 1;
    for inPos := 0 to inEnd do
        slTlk2Flags.Append( slFlags[ inPos ] );

    FreeAndNil( slTlk2SoundResRef );
    slTlk2SoundResRef := TStringList.Create;
    inEnd := slSoundResRef.Count - 1;
    for inPos := 0 to inEnd do
        slTlk2SoundResRef.Append( slSoundResRef[ inPos ] );

    FreeAndNil( slTlk2VolumeVariance );
    slTlk2VolumeVariance := TStringList.Create;
    inEnd := slVolumeVariance.Count - 1;
    for inPos := 0 to inEnd do
        slTlk2VolumeVariance.Append( slVolumeVariance[ inPos ] );

    FreeAndNil( slTlk2PitchVariance );
    slTlk2PitchVariance := TStringList.Create;
    inEnd := slPitchVariance.Count - 1;
    for inPos := 0 to inEnd do
        slTlk2PitchVariance.Append( slPitchVariance[ inPos ] );

    FreeAndNil( slTlk2OffsetToString );
    slTlk2OffsetToString := TStringList.Create;
    inEnd := slOffsetToString.Count - 1;
    for inPos := 0 to inEnd do
        slTlk2OffsetToString.Append( slOffsetToString[ inPos ] );

    FreeAndNil( slTlk2StringSize );
    slTlk2StringSize := TStringList.Create;
    inEnd := slStringSize.Count - 1;
    for inPos := 0 to inEnd do
        slTlk2StringSize.Append( slStringSize[ inPos ] );

    FreeAndNil( slTlk2SoundLength );
    slTlk2SoundLength := TStringList.Create;
    inEnd := slSoundLength.Count - 1;
    for inPos := 0 to inEnd do
        slTlk2SoundLength.Append( slSoundLength[ inPos ] );

    FreeAndNil( slTlk2String );
    slTlk2String := TStringList.Create;
    case inLoadEncoding of
      0 : slTlk2String.DefaultEncoding := TEncoding.UTF8;
      1 : slTlk2String.DefaultEncoding := TEncoding.ANSI;
      2 : slTlk2String.DefaultEncoding := TEncoding.ASCII;
    end;
    inEnd := slString.Count - 1;
    for inPos := 0 to inEnd do
      slTlk2String.Append( slString[ inPos ] );

    cbTlk2Encoding.ItemIndex := inLoadEncoding;
    teStatusBar.Text := stTlk1Status;
    Application.ProcessMessages;
  end;

  sbScrollStringsChange( self );

  // 8. Восстановление элементов интерфейса и вывод таймингов
  btSelectTlk1.Enabled := True;
  swTiming.Stop;

  case inFileNum of
    1 : teTlkPath1.Hint := 'Путь основного файла, время загрузки: '       + getStringInline( swTiming.ElapsedMilliseconds / 1000 ) + ' сек';
    2 : teTlkPath2.Hint := 'Путь дополнительного файла, время загрузки: ' + getStringInline( swTiming.ElapsedMilliseconds / 1000 ) + ' сек';
  end;

  swTiming.Reset;
  sbScrollStrings_2.Enabled := not cbTlkPosition_2_Sync.Checked;
end;

procedure TfrmMain.teTlkLast_2Change(Sender: TObject);
begin
  cbTlkPosition_2_Sync.Enabled := getIntegerInline( teTLKLast_2.Text ) > 0;
end;

procedure TfrmMain.teTlkPath1Change(Sender: TObject);
begin
  teTlkPath1.Enabled   := System.SysUtils.FileExists( teTlkPath1.Text );
  btSelectTlk2.Enabled := teTlkPath1.Enabled;
end;

procedure TfrmMain.teTlkPath2Change(Sender: TObject);
begin
  teTlkPath2.Enabled := System.SysUtils.FileExists( teTlkPath2.Text );
end;

procedure TfrmMain.btSelectedChange( Sender : TObject );
var
  stValue : string;
  inTag   : Integer;

begin
  stValue := tmTlk1String.SelText;

  // 1. Если ничего не выделено — выделяем всё (уходим от case True)
  if stValue = '' then
  begin
    tmTlk1String.SelectAll;
    stValue := tmTlk1String.SelText;
    if stValue = '' then
       Exit;
  end;

  inTag := TButton( Sender ).Tag;

  // 2. Обработка тегов и регистров
  case inTag of
    1 : tmTlk1String.SelText := '<StartCheck>' + stValue + '</Start>';
    2 : tmTlk1String.SelText := '<StartHighlight>' + stValue + '</Start>';
    3 : tmTlk1String.SelText := '<StartAction>' + stValue + '</Start>';
    4 : tmTlk1String.SelText := '(' + stValue + ')';
    5 : tmTlk1String.SelText := '{' + stValue + '}';
    6 : tmTlk1String.SelText := '[' + stValue + ']';
    7 : tmTlk1String.SelText := '<' + stValue + '>';

    // Использование системных функций вместо методов объектов (быстрее в Delphi 12)
    8 : tmTlk1String.SelText := System.SysUtils.UpperCase( stValue );

    // Пункт 9: твоя логика "Предложение" через быструю функцию
    9 : tmTlk1String.SelText := setLowerWithUpperStart( stValue );

    10: tmTlk1String.SelText := System.SysUtils.LowerCase( stValue );
  end;
end;

procedure TfrmMain.btSaveBookmarksClick(Sender: TObject);
begin
  FormFileName.Show;
end;

//procedure TfrmMain.btSaveTLKClick( Sender : TObject );
//label
//  end_V1,
//  end_V3;
//var
//  stBackupName        : String;
//  inStringSize        : Integer;
//  inStringDataOffset  : Integer;
//  inStringEntryOffset : Integer;
//  inSaveEncoding      : Integer;
//  inStringsCount      : Integer;
//  inPos               : Integer;
//  inEnd               : Integer;
//  asbString           : TArray<System.Byte>;
//  fsOutput            : TFileStream;
//
//begin
//  if ( hmTlk1ChangeIndex.Count = 0 )
//     or ( hmTlk1ChangeValue.Count = 0 ) then
//     if Vcl.Forms.Application.MessageBox(
//          PChar( teTlkPath1.Text + #13#10 + 'Нет изменений в строках!' + #13#10 + 'Остановить сохранение файла?' ),
//          PChar( 'ВНИМАНИЕ: Изменения отсутствуют' ),
//          MB_YESNO + MB_ICONQUESTION ) = IDYES then
//        Exit;
//
//
//  if cbBackupCopy.Checked then
//  begin
//    stBackupName := System.SysUtils.StringReplace( teTlkPath1.Text, '.tlk',
//      ' - копия ' + getStringInline( System.SysUtils.Date ) + ' ' + getStringInline( System.SysUtils.Time ).Replace( ':', '_' ) + '.tlk', [rfReplaceAll] );
//
//    if not isFileExistsLong( stBackupName ) then
//       if not Winapi.Windows.CopyFile( PWideChar( teTlkPath1.Text ), PWideChar( stBackupName ), True ) then
//       begin
//         Vcl.Forms.Application.MessageBox(
//           PChar( stBackupName ),
//           PChar( 'ОШИБКА: Не удалось сохранить резервную копию' ),
//           MB_OK + MB_ICONERROR );
//
//         Exit;
//       end;
//  end;
//
//  swTiming.Start;
//
//  btSaveTLK.Enabled   := False;
//
//  inSaveEncoding      := cbTlk1Encoding.ItemIndex;
//
//  inEnd               := getIntegerInline( teTLKLast.Text );
//  inStringsCount      := inEnd + 1;
//  inStringDataOffset  := 0;
//  inStringEntryOffset := 0;
//
//  if not ( System.Pos( 'V1', teStatusBar.Text ) > 0 )  then
//     goto end_V1;
//
//  // FileType
//  Move( TEncoding.ANSI.GetBytes( 'TLK ' )[0], asbHeader[0], 4);
//  // FileVersion
//  Move( TEncoding.ANSI.GetBytes( 'V1  ' )[0], asbHeader[4], 4);
//  // LanguageID
//  Move( IntegerToWordBin( teTlkPath1.Tag )[0], asbHeader[8], 2);
//  // StringCount
//  Move( IntegerToDWordBin( inStringsCount )[0], asbHeader[10], 4);
//  // StringsEntryOffset
//  Move( IntegerToDWordBin( inStringsEntryOffset )[0], asbHeader[14], 4);
//
//  inBreak := 0;
//
//  for inPos := 0 to inEnd do begin
//    if inBreak = 1 then
//       Break;
//
//    // StringText
//    stHashValue := getChangeOfString( inPos );
//
//    if stHashValue = '<EMPTY>' then
//    begin
//      case inSaveEncoding of
//        0 : asbString := TEncoding.UTF8.GetBytes(  slTlk1String[ inPos ] );
//        1 : asbString := TEncoding.ANSI.GetBytes(  slTlk1String[ inPos ] );
//        2 : asbString := TEncoding.ASCII.GetBytes( slTlk1String[ inPos ] );
//      end;
//    end
//    else
//    begin
//      case inSaveEncoding of
//        0 : asbString := TEncoding.UTF8.GetBytes(  stHashValue.Replace( sLineBreak, #10 ) );
//        1 : asbString := TEncoding.ANSI.GetBytes(  stHashValue.Replace( sLineBreak, #10 ) );
//        2 : asbString := TEncoding.ASCII.GetBytes( stHashValue.Replace( sLineBreak, #10 ) );
//      end;
//    end;
//
//    inStringSize := Length( asbString );
//    Move( asbString[0], asbStringsEntry[ inStringEntryOffset ], inStringSize );
//
//    // Flags
//    Move( IntegerToWordBin( hexToIntInline( slTlk1Flags[ inPos ]) )[0], asbStringsData[ inStringDataOffset ], 2 );
//    inStringDataOffset  := inStringDataOffset +2;
//    // SoundResRef
//    Move( TEncoding.ANSI.GetBytes( slTlk1SoundResRef[ inPos ] )[0], asbStringsData[ inStringDataOffset ], 8 );
//    inStringDataOffset  := inStringDataOffset +8;
//    // VolumeVariance
//    Move( IntegerToDWordBin( System.SysUtils.StrToInt( '$'+slTlk1VolumeVariance[ inPos ] ))[0], asbStringsData[ inStringDataOffset ], 4 );
//    inStringDataOffset  := inStringDataOffset +4;
//    // PitchVariance
//    Move( IntegerToDWordBin( System.SysUtils.StrToInt( '$'+slTlk1PitchVariance[ inPos ] ))[0], asbStringsData[ inStringDataOffset ], 4 );
//    inStringDataOffset  := inStringDataOffset +4;
//    // OffsetToString
//    Move( IntegerToDWordBin( inStringEntryOffset )[0], asbStringsData[ inStringDataOffset ], 4 );
//    inStringEntryOffset := inStringEntryOffset + inStringSize;
//    inStringDataOffset  := inStringDataOffset +4;
//    // StringSize
//    Move( IntegerToDWordBin( inStringSize )[0], asbStringsData[ inStringDataOffset ], 4 );
//    inStringDataOffset  := inStringDataOffset +4;
//  end;
//
//  goto end_V3;
//
//  end_V1:;
//
//  if not ( Pos( 'V3', teStatusBar.Text ) > 0 ) then
//     goto end_V3;
//
//  Move( TEncoding.ANSI.GetBytes( 'TLK ' )[0], asbHeader[0], 4);
//  Move( TEncoding.ANSI.GetBytes( 'V3.0' )[0], asbHeader[4], 4);
//  Move( IntegerToWordBin( teTlkPath1.Tag )[0], asbHeader[8], 4);
//  Move( IntegerToDWordBin( inStringsCount )[0], asbHeader[12], 4);
//  Move( IntegerToDWordBin( inStringsEntryOffset )[0], asbHeader[16], 4);
//
//  inBreak := 0;
//
//  for inPos := 0 to inEnd do begin
//    if inBreak = 1 then
//       Break;
//
//    stHashValue := getChangeOfString( inPos );
//
//    if stHashValue = '<EMPTY>' then
//    begin
//      case inSaveEncoding of
//        0 : asbString := TEncoding.UTF8.GetBytes(  slTlk1String[inPos] );
//        1 : asbString := TEncoding.ANSI.GetBytes(  slTlk1String[inPos] );
//        2 : asbString := TEncoding.ASCII.GetBytes( slTlk1String[inPos] );
//      end;
//    end
//    else
//    begin
//      case inSaveEncoding of
//        0 : asbString := TEncoding.UTF8.GetBytes(  stHashValue.Replace( sLineBreak, #10 ) );
//        1 : asbString := TEncoding.ANSI.GetBytes(  stHashValue.Replace( sLineBreak, #10 ) );
//        2 : asbString := TEncoding.ASCII.GetBytes( stHashValue.Replace( sLineBreak, #10 ) );
//      end;
//    end;
//
//    inStringSize := Length( asbString );
//    Move( asbString[0], asbStringsEntry[ inStringEntryOffset ], inStringSize );
//
//    Move( IntegerToWordBin( hexToIntInline( slTlk1Flags[ inPos ] ) )[0], asbStringsData[ inStringDataOffset ], 4 );
//    inStringDataOffset  := inStringDataOffset +4;
//    Move( TEncoding.ANSI.GetBytes( slTlk1SoundResRef[inPos] )[0], asbStringsData[ inStringDataOffset ], 16 );
//    inStringDataOffset  := inStringDataOffset +16;
//    Move( IntegerToDWordBin( hexToIntInline( slTlk1VolumeVariance[ inPos ] ) )[0], asbStringsData[ inStringDataOffset ], 4 );
//    inStringDataOffset  := inStringDataOffset +4;
//    Move( IntegerToDWordBin( hexToIntInline( slTlk1PitchVariance[ inPos ] ) )[0],  asbStringsData[ inStringDataOffset ], 4 );
//    inStringDataOffset  := inStringDataOffset +4;
//    Move( IntegerToDWordBin( inStringEntryOffset )[0], asbStringsData[ inStringDataOffset ], 4 );
//    inStringEntryOffset := inStringEntryOffset + inStringSize;
//    inStringDataOffset  := inStringDataOffset +4;
//    Move( IntegerToDWordBin( inStringSize)[0], asbStringsData[ inStringDataOffset ], 4 );
//    inStringDataOffset  := inStringDataOffset +4;
//    // SoundLength
//    Move( IntegerToWordBin( hexToIntInline( slTlk1SoundLength[ inPos ] ) )[0], asbStringsData[ inStringDataOffset ], 4 );
//    inStringDataOffset  := inStringDataOffset +4;
//  end;
//
//  end_V3:;
//
//  if inBreak = 0 then
//  begin
//    inStringsEntrySize := inStringEntryOffset;
//
//    SetLength( asbFile, inHeaderSize + inStringsDataSize + inStringsEntrySize );
//
//    Move( asbHeader[0], asbFile[ 0 ], inHeaderSize );
//    Move( asbStringsData[0], asbFile[ inHeaderSize ], inStringsDataSize );
//    Move( asbStringsEntry[0], asbFile[ inHeaderSize + inStringsDataSize ], inStringsEntrySize );
//
//    fsOutput:=TFileStream.Create( teTlkPath1.Text, fmCreate );
//    fsOutput.Write( asbFile, Length( asbFile ) );
//
//    btSaveTLK.Enabled := True;
//    fsOutput.Free;
//  end;
//
//  swTiming.Stop;
//
//  teTlkPath1.Hint := 'Путь основного файла, время сохранения: ' + getStringInline( swTiming.ElapsedMilliseconds/1000 ) + ' сек';
//
//  swTiming.Reset;
//
//  btSelectTlkClick( Sender );
//end;
procedure TfrmMain.btSaveTLKClick( Sender : TObject );
var
  stBackupName        : String;
  inStringSize        : Integer;
  inStringDataOffset  : Integer;
  inStringEntryOffset : Integer;
  inSaveEncoding      : Integer;
  inStringsCount      : Integer;
  inPos               : Integer;
  inEnd               : Integer;
  asbString           : TArray<System.Byte>;
  fsOutput            : TFileStream;
  isV1                : Boolean;
  isV3                : Boolean;
  inCopyLen           : Integer;

begin
  // 1. Проверка изменений (проверяем, пуст ли массив)
//  if ( hmTlk1ChangeIndex.Count = 0 )
//     or ( hmTlk1ChangeValue.Count = 0 ) then
  if Length(Tlk1Changes) = 0 then
  begin
    if Vcl.Forms.Application.MessageBox(
         PChar( teTlkPath1.Text + #13#10 + 'Нет изменений в строках!' + #13#10 + 'Остановить сохранение файла?' ),
         PChar( 'ВНИМАНИЕ: Изменения отсутствуют' ),
         MB_YESNO + MB_ICONQUESTION ) = IDYES then
       Exit;
  end;

  // 2. Создание резервной копии
  if cbBackupCopy.Checked then
  begin
    stBackupName := System.SysUtils.StringReplace(teTlkPath1.Text, '.tlk',
      ' - копия ' + getStringInline( System.SysUtils.Date ) + ' ' + getStringInline( System.SysUtils.Time ).Replace( ':', '_' ) + '.tlk', [ rfReplaceAll ] );

    if not isFileExistsLong(stBackupName) then
    begin
       if not Winapi.Windows.CopyFile( PWideChar( teTlkPath1.Text ), PWideChar( stBackupName ), True ) then
       begin
         Vcl.Forms.Application.MessageBox(
           PChar( stBackupName ),
           PChar( 'ОШИБКА: Не удалось сохранить резервную копию' ),
           MB_OK + MB_ICONERROR );
         Exit;
       end;
    end;
  end;

  swTiming.Start;
  btSaveTLK.Enabled := False;

  try
    inSaveEncoding      := cbTlk1Encoding.ItemIndex;
    inEnd               := getIntegerInline( teTLKLast.Text );
    inStringsCount      := inEnd + 1;
    inStringDataOffset  := 0;
    inStringEntryOffset := 0;
    inBreak             := 0;

    isV1 := System.Pos( 'V1', teStatusBar.Text ) > 0;
    isV3 := System.Pos( 'V3', teStatusBar.Text ) > 0;

    if not ( isV1 or isV3 ) then
       Exit; // Неизвестный формат

    // Предварительно выделяем память под данные строк (чтобы избежать Buffer Overflow)
    if isV1 then
         SetLength( asbStringsData, inStringsCount * 40 )
    else SetLength( asbStringsData, inStringsCount * 44 );

    // Под текст выделяем с запасом (динамически расширится при необходимости)
    SetLength( asbStringsEntry, inStringsCount * 256 );

    // 3. Цикл обработки строк (Общий для V1 и V3)
    for inPos := 0 to inEnd do
    begin
      if inBreak = 1 then
         Break;

      stHashValue := getChangeOfString( inPos );
      if stHashValue = '<EMPTY>' then
           stHashValue := slTlk1String[ inPos ]
      else stHashValue := stHashValue.Replace( sLineBreak, #10 );

      case inSaveEncoding of
        0: asbString := TEncoding.UTF8.GetBytes( stHashValue );
        1: asbString := TEncoding.ANSI.GetBytes( stHashValue );
        2: asbString := TEncoding.ASCII.GetBytes( stHashValue );
      else
        asbString := TEncoding.UTF8.GetBytes( stHashValue );
      end;

      inStringSize := Length( asbString );

      // Проверка и расширение буфера строк при необходимости
      if inStringEntryOffset + inStringSize > Length( asbStringsEntry ) then
         SetLength( asbStringsEntry, Length( asbStringsEntry ) * 2 + inStringSize );

      // Безопасное копирование текста (только если строка не пустая)
      if inStringSize > 0 then
         Move( asbString[ 0 ], asbStringsEntry[ inStringEntryOffset ], inStringSize );

      if isV1 then
      begin
        // Запись структуры V1 (Размер: 40 байт) напрямую в буфер без функций-посредников
        PWord( @asbStringsData[ inStringDataOffset ] )^ := Word( hexToIntInline( slTlk1Flags[ inPos ] ) );
        inStringDataOffset := inStringDataOffset + 2;

        asbString := TEncoding.ANSI.GetBytes( slTlk1SoundResRef[ inPos ] );
        inCopyLen := Length( asbString );
        if inCopyLen > 0 then
        begin
           if inCopyLen > 8 then
              inCopyLen := 8;
           Move( asbString[ 0 ], asbStringsData[ inStringDataOffset ], inCopyLen );
        end;
        inStringDataOffset := inStringDataOffset + 8;

        PInteger( @asbStringsData[ inStringDataOffset ] )^ := getIntegerInline( '$' + slTlk1VolumeVariance[ inPos ] );
        inStringDataOffset := inStringDataOffset + 4;

        PInteger( @asbStringsData[ inStringDataOffset ] )^ := System.SysUtils.StrToInt( '$' + slTlk1PitchVariance[ inPos ] );
        inStringDataOffset := inStringDataOffset + 4;

        PInteger( @asbStringsData[ inStringDataOffset ] )^ := inStringEntryOffset;
        inStringDataOffset := inStringDataOffset + 4;

        PInteger( @asbStringsData[ inStringDataOffset ] )^ := inStringSize;
        inStringDataOffset := inStringDataOffset + 4;
      end
      else
      if isV3 then
      begin
        // Запись структуры V3 (Размер: 44 байта) напрямую в буфер без функций-посредников
        PInteger( @asbStringsData[ inStringDataOffset ] )^ := hexToIntInline( slTlk1Flags[ inPos ] );
        inStringDataOffset := inStringDataOffset + 4;

        asbString := TEncoding.ANSI.GetBytes( slTlk1SoundResRef[ inPos ] );
        inCopyLen := Length( asbString );
        if inCopyLen > 0 then
        begin
           if inCopyLen > 16 then
              inCopyLen := 16;
           Move( asbString[ 0 ], asbStringsData[ inStringDataOffset ], inCopyLen );
        end;
        inStringDataOffset := inStringDataOffset + 16;

        PInteger( @asbStringsData[ inStringDataOffset ] )^ := hexToIntInline( slTlk1VolumeVariance[ inPos ] );
        inStringDataOffset := inStringDataOffset + 4;

        PInteger( @asbStringsData[ inStringDataOffset ] )^ := hexToIntInline( slTlk1PitchVariance[ inPos ] );
        inStringDataOffset := inStringDataOffset + 4;

        PInteger( @asbStringsData[ inStringDataOffset ] )^ := inStringEntryOffset;
        inStringDataOffset := inStringDataOffset + 4;

        PInteger( @asbStringsData[ inStringDataOffset ] )^ := inStringSize;
        inStringDataOffset := inStringDataOffset + 4;

        PInteger( @asbStringsData[ inStringDataOffset ] )^ := hexToIntInline( slTlk1SoundLength[ inPos ] );
        inStringDataOffset := inStringDataOffset + 4;
      end;

      inStringEntryOffset := inStringEntryOffset + inStringSize;
    end;

    // 4. Формирование корректного заголовка и финальная сборка
    if inBreak = 0 then
    begin
      inStringsEntrySize := inStringEntryOffset;
      inStringsDataSize  := inStringDataOffset;

      if isV1 then
      begin
        inHeaderSize := 18;
        SetLength( asbHeader, inHeaderSize );

        // Запись констант 'TLK ' и 'V1  '
        PInteger( @asbHeader[ 0 ] )^ := $204B4C54;
        PInteger( @asbHeader[ 4 ] )^ := $20203156;

        PWord( @asbHeader[ 8 ] )^ := Word( teTlkPath1.Tag );
        PInteger( @asbHeader[ 10 ] )^ := inStringsCount;
        PInteger( @asbHeader[ 14 ] )^ := inHeaderSize + inStringsDataSize;
      end
      else // isV3
      begin
        inHeaderSize := 20;
        SetLength( asbHeader, inHeaderSize );

        // Запись констант 'TLK ' и 'V3.0'
        PInteger( @asbHeader[ 0 ] )^ := $204B4C54;
        PInteger( @asbHeader[ 4 ] )^ := $302E3356;

        PInteger( @asbHeader[ 8 ] )^ := teTlkPath1.Tag;
        PInteger( @asbHeader[ 12 ] )^ := inStringsCount;
        PInteger( @asbHeader[ 16 ] )^ := inHeaderSize + inStringsDataSize;
      end;

      SetLength( asbFile, inHeaderSize + inStringsDataSize + inStringsEntrySize );

      if inHeaderSize > 0 then
         Move( asbHeader[ 0 ], asbFile[ 0 ], inHeaderSize );

      if inStringsDataSize > 0 then
         Move( asbStringsData[ 0 ], asbFile[ inHeaderSize ], inStringsDataSize );

      if inStringsEntrySize > 0 then
         Move( asbStringsEntry[ 0 ], asbFile[ inHeaderSize + inStringsDataSize ], inStringsEntrySize );

      // Безопасная запись в файл
      fsOutput := TFileStream.Create( teTlkPath1.Text, fmCreate );
      try
        if Length( asbFile ) > 0 then
           fsOutput.Write( asbFile[ 0 ], Length( asbFile ) );
      finally
        fsOutput.Free;
      end;
    end;

  finally
    btSaveTLK.Enabled := True;
    swTiming.Stop;
    teTlkPath1.Hint := 'Путь основного файла, время сохранения: ' + getStringInline( swTiming.ElapsedMilliseconds / 1000 ) + ' сек';
    swTiming.Reset;
  end;

  btSelectTlkClick( Sender );
end;

procedure TfrmMain.tmTlk1StringExit( Sender : TObject );
begin
  AcceptStringChange( tmTlk1String );
end;

procedure TfrmMain.PopupBookmarksPopup( Sender : TObject );
var
  blCheck : Boolean;

begin
  blCheck                      := lvBookmars.Items.Count > 0;

  miSaveBookmarksList.Enabled  := blCheck;
  miDeleteBookmark.Enabled     := blCheck;
  miClearBookmarksList.Enabled := blCheck;
end;

procedure TfrmMain.PopupChangesPopup(Sender: TObject);
begin
  miDeleteChanges.Enabled := not ( lvChanges.ItemFocused = nil );
  miClearChanges.Enabled  := lvChanges.Items.Count > 0;
end;

procedure TfrmMain.PopupSearchPopup(Sender: TObject);
begin
  blCheck := not ( teTLKSearch.Text = '' );

  miTextSearch.Visible := blCheck;
  N16.Visible := blCheck;

  if blCheck then
     miTextSearch.Caption := teTLKSearch.Text;

  miTextSearch.Enabled := not ( teTLKSearch.Text = stDefaultSearch );

  miExtFileDiffSearch.Enabled := not ( teTlkPath2.Text = '' );
end;

procedure TfrmMain.miTextSearchClick(Sender: TObject);
begin
  FindNextString( self );
end;

procedure TfrmMain.miFlagSearchClick(Sender: TObject);
begin
  teTLKSearch.Text := '{Flags=0}';

  teTLKSearch.SetFocus;
end;

procedure TfrmMain.miSizeSearchClick(Sender: TObject);
begin
  teTLKSearch.Text := '{StringSize=0}';

  teTLKSearch.SetFocus;
end;

procedure TfrmMain.miSoundSearchClick(Sender: TObject);
begin
  teTLKSearch.Text := '{SoundResRef=}';

  teTLKSearch.SetFocus;
end;

procedure TfrmMain.miExtFileDiffSearchClick(Sender: TObject);
begin
  teTLKSearch.Text := '{ExtFileDiff}';

  FindNextString( teTLKSearch );
end;

procedure TfrmMain.miRusOlnySearchClick(Sender: TObject);
begin
  teTLKSearch.Text := '{StringRussian}';

  teTLKSearch.SetFocus;
end;

procedure TfrmMain.miClearChangesClick(Sender: TObject);
begin
  case lvChanges.Items.Count of
    0 : Exit; end;

  if Application.MessageBox(
       PChar( 'Вы хотите очистить весь список изменений?' ),
       PChar( 'ВНИМАНИЕ: Подтверждение действия' ),
       MB_YESNO + MB_ICONQUESTION ) = IDYES then begin
    lvChanges.Items.BeginUpdate;

    lvChanges.Clear;
//    hmTlk1ChangeIndex.Clear;
//    hmTlk1ChangeValue.Clear;
    Tlk1Changes := nil;

    lvChanges.Items.EndUpdate;

    sbScrollStringsChange( self );
  end;
end;

procedure TfrmMain.miEngOnlySearchClick(Sender: TObject);
begin
  teTLKSearch.Text := '{StringEnglish}';

  teTLKSearch.SetFocus;
end;

procedure TfrmMain.miRusEngSearchClick(Sender: TObject);
begin
  teTLKSearch.Text := '{StringRusAndEng}';

  teTLKSearch.SetFocus;
end;

procedure TfrmMain.miErrorsSearchClick(Sender: TObject);
begin
  teTLKSearch.Text := '{StringErrors}';

  teTLKSearch.SetFocus;
end;

procedure TfrmMain.miIncorrectFlagsClick(Sender: TObject);
begin
  teTLKSearch.Text := '{StringIncorrectFlags}';

  teTLKSearch.SetFocus;
end;

procedure TfrmMain.FindNextString(Sender: TObject);
label
  Flags_End,
  StringSize_End,
  SoundResRef_End,
  ExtFileDiff_End,
  StringRussian_End,
  StringEnglish_End,
  StringRusAndEng_End,
  StringErrors_end,
  StringIncorrectFlags_End,
  Procedure_End;
var
  i,
  ia,
  iz,
  j,
  inMatchOne,
  inB,
  inIndexOf: Integer;

  blMatch,
  blMatchOne,
  blSingleSearch,
  blRegistry,
  blAddToBookmarks,
  blExceptInput,
  blExactlySearch: Boolean;

  stPattern,
  stRecord: String;

  liChange: TListItem;

  procedure BookmarkUp(const stText: String);
  begin
    blMatchOne := True;
    inMatchOne := i;

    if blSingleSearch then begin
      if blAddToBookmarks then
         addBookmark( i, stText );

      inBreak := 1;
    end
    else addBookmark( i, stText );
  end;

begin
  if slTlk1String = nil then
     goto Procedure_End;

  inLoading        := 1;

  inBreak          := 0;
  blMatch          := False;
  blSingleSearch   := cbSingleSearch.Checked;
  blRegistry       := cbRegistry.Checked;
  blAddToBookmarks := cbAddToBookmarks.Checked;
  blExceptInput    := cbExceptInput.Checked;
  blExactlySearch  := cbExactlySearch.Checked;

  if cbAddToBookmarks.Checked then
     lvBookmars.Items.BeginUpdate;

  stPattern := teTLKSearch.Text;

  if stPattern = '' then
     goto Procedure_End;

  case Pos( '{', stPattern ) of
    0 : if not blRegistry then
           stPattern := stPattern.ToLower;
  end;

  ia := getIntegerInline( teTlkPosition.Text ) +1;
  iz := slTlk1String.Count -1;

  if ia >= iz then
     goto Procedure_End;

  case Pos( '{Flags=', stPattern ) of
    0 : goto Flags_End; end;

  if not blExceptInput then begin
    for i := ia to iz do begin
      case inBreak of
        1 : Break; end;

      if cbBookmarkSearch.Checked
         and not checkBookmark( i.ToString ) then
         Continue;

      blMatch := stPattern = '{Flags=' + hexToIntInline( slTlk1Flags[ i ] ).ToString.Trim + '}';

      if blMatch then
         BookmarkUp( stPattern );
    end;

    goto Procedure_End;
  end;

  if blExceptInput then begin
    for i := ia to iz do begin
      case inBreak of
        1 : Break; end;

      if cbBookmarkSearch.Checked
         and not checkBookmark( i.ToString ) then
         Continue;

      blMatch := not ( stPattern = '{Flags=' + hexToIntInline( slTlk1Flags[ i ] ).ToString.Trim + '}');

      if blMatch then
         BookmarkUp( '{Flags=' + hexToIntInline( slTlk1Flags[ i ] ).ToString.Trim + '}' );
    end;

    goto Procedure_End;
  end;

  Flags_End:;

  case Pos( '{StringSize=', stPattern ) of
    0 : goto StringSize_End; end;

  if not blExceptInput then begin
    for i := ia to iz do begin
      case inBreak of
        1 : Break; end;

      if cbBookmarkSearch.Checked
         and not checkBookmark( i.ToString ) then
         Continue;

      blMatch := stPattern = '{StringSize=' + hexToIntInline( slTlk1StringSize[ i ] ).ToString.Trim + '}';

      if blMatch then
         BookmarkUp( stPattern );
    end;

    goto Procedure_End;
  end;

  if blExceptInput then begin
    for i := ia to iz do begin
      case inBreak of
        1 : Break; end;

      if cbBookmarkSearch.Checked
         and not checkBookmark( i.ToString ) then
         Continue;

      blMatch := not ( stPattern = '{StringSize=' + hexToIntInline( slTlk1StringSize[ i ] ).ToString.Trim + '}');

      if blMatch then
         BookmarkUp( '{StringSize=' + hexToIntInline( slTlk1StringSize[ i ] ).ToString.Trim + '}' );
    end;

    goto Procedure_End;
  end;

  StringSize_End:;

  case System.Pos( '{SoundResRef=', stPattern ) of
    0 : goto SoundResRef_End; end;

  if not blExceptInput then begin
    for i := ia to iz do begin
      case inBreak of
        1 : Break; end;

      if cbBookmarkSearch.Checked
         and not checkBookmark( i.ToString ) then
         Continue;

      blMatch := stPattern = '{SoundResRef=' + System.SysUtils.Trim( slTlk1SoundResRef[ i ] ) + '}';

      if blMatch then
         BookmarkUp( stPattern );
    end;

    goto Procedure_End;
  end;

  if blExceptInput then begin
    for i := ia to iz do begin
      case inBreak of
        1 : Break; end;

      if cbBookmarkSearch.Checked
         and not checkBookmark( i.ToString ) then
         Continue;

      blMatch := not ( stPattern = '{SoundResRef=' + System.SysUtils.Trim( slTlk1SoundResRef[ i ] ) + '}');

      if blMatch then
         BookmarkUp( '{SoundResRef=' + System.SysUtils.Trim( slTlk1SoundResRef[ i ] ) + '}' );
    end;

    goto Procedure_End;
  end;

  SoundResRef_End:;

  if not ( stPattern = '{StringRussian}' ) then
     goto StringRussian_End;

  for i := ia to iz do begin
    case inBreak of
      1 : Break; end;

    if cbBookmarkSearch.Checked
       and not checkBookmark( i.ToString ) then
       Continue;

    for j := 0 to 52 do begin
      case inBreak of
        1 : Break; end;

      blMatch := Pos( EngSymbols[ j ], slTlk1String[ i ] ) = 0;

      if not blMatch then
         Break;
    end;

    if not blMatch then
       Continue;

    for j := 0 to 66 do begin
      case inBreak of
        1 : Break; end;

      blMatch := Pos( RusSymbols[ j ], slTlk1String[ i ] ) > 0;

      if blMatch then
         Break;
    end;

    if blMatch then
       BookmarkUp( stPattern );
  end;

  goto Procedure_End;

  StringRussian_End:;

  if not ( stPattern = '{StringEnglish}' ) then
     goto StringEnglish_End;

  for i := ia to iz do begin
    case inBreak of
      1 : Break; end;

    if cbBookmarkSearch.Checked
       and not checkBookmark( i.ToString ) then
       Continue;

    for j := 0 to 66 do begin
      case inBreak of
        1 : Break; end;

      blMatch := Pos( RusSymbols[ j ], slTlk1String[ i ] ) = 0;

      if not blMatch then
         Break;
    end;

    if not blMatch then
       Continue;

    for j := 0 to 52 do begin
      case inBreak of
        1 : Break; end;

      blMatch := Pos( EngSymbols[ j ], slTlk1String[ i ] ) > 0;

      if blMatch then
         Break;
    end;

    if blMatch then
       BookmarkUp( stPattern );
  end;

  goto Procedure_End;

  StringEnglish_End:;

  if not ( stPattern = '{StringRusAndEng}' ) then
     goto StringRusAndEng_End;

  for i := ia to iz do begin
    case inBreak of
      1 : Break; end;

    if cbBookmarkSearch.Checked
       and not checkBookmark( i.ToString ) then
       Continue;

    for j := 0 to 66 do begin
      case inBreak of
        1 : Break; end;

      blMatch := Pos( RusSymbols[ j ], slTlk1String[ i ] ) > 0;

      if blMatch then
         Break;
    end;

    if blMatch then begin
      for j := 0 to 52 do begin
        case inBreak of
          1 : Break; end;

        blMatch := Pos( EngSymbols[ j ], slTlk1String[ i ] ) > 0;

        if blMatch then
           Break;
      end;
    end;

    if blMatch then
       BookmarkUp( stPattern );
  end;

  goto Procedure_End;

  StringRusAndEng_End:;

  if not ( stPattern = '{ExtFileDiff}' ) then
     goto ExtFileDiff_End;

  for i := ia to iz do begin
    case inBreak of
      1 : Break; end;

    if cbBookmarkSearch.Checked
       and not checkBookmark( i.ToString ) then
       Continue;

    blMatch := not (    slTlk1Flags[ i ]          = slTlk2Flags[ i ] )
               or not ( slTlk1SoundResRef[ i ]    = slTlk2SoundResRef[ i ] )
               or not ( slTlk1VolumeVariance[ i ] = slTlk2VolumeVariance[ i ] )
               or not ( slTlk1PitchVariance[ i ]  = slTlk2PitchVariance[ i ] )
               or not ( slTlk1OffsetToString[ i ] = slTlk2OffsetToString[ i ] )
               or not ( slTlk1StringSize[ i ]     = slTlk2StringSize[ i ] )
               or not ( slTlk1String[ i ]         = slTlk2String[ i ] );
    
    if blMatch then
       BookmarkUp( stPattern );
  end;

  goto Procedure_End;

  ExtFileDiff_End:;

  for i := ia to iz do begin
    case inBreak of
      1 : Break; end;

    if cbBookmarkSearch.Checked
       and not checkBookmark( i.ToString ) then
       Continue;

    stRecord := slTlk1String[ i ];

    if not blRegistry then
       stRecord := stRecord.ToLower;

    blMatch := ( not blExceptInput   and ( Pos(stPattern, stRecord ) > 0) )
               or (  blExceptInput   and ( Pos(stPattern, stRecord ) = 0) )
               or (  blExactlySearch and ( stPattern = stRecord ) );

    if blMatch then begin
      BookmarkUp( stPattern );

      if cbReplaceText.Checked then begin
        inB:=1;

//        if not System.Variants.VarIsNull( hmTlk1ChangeIndex[ i ].Value ) then
//           inB := getIntegerInline( hmTlk1ChangeIndex[ i ].Value ) +1;

//        hmTlk1ChangeIndex[ i ].Value := inB;
//        hmTlk1ChangeValue[ i ][ inB ].Value := getStringInline( slTlk1String[ i ].Replace( #10, sLineBreak) ).Replace( stPattern, teTextForReplace.Text );

        if (i >= 0) and (i < Length(Tlk1Changes)) and (Tlk1Changes[i].Index > 0) then
           inB := Tlk1Changes[i].Index + 1;

        // 1. Проверяем и расширяем внешний массив, если индекс i выходит за его границы
        if i >= Length(Tlk1Changes) then
          SetLength(Tlk1Changes, i + 1);

        // 2. Записываем новый индекс изменений
        Tlk1Changes[i].Index := inB;

        // 3. Расширяем внутренний массив строк, чтобы в него поместился элемент с индексом inB
        if inB >= Length(Tlk1Changes[i].Values) then
          SetLength(Tlk1Changes[i].Values, inB + 1);

        // 4. Записываем измененный текст напрямую в массив
        Tlk1Changes[i].Values[inB] := slTlk1String[i].Replace(#10, sLineBreak).Replace(stPattern, teTextForReplace.Text);

        liChange := lvChanges.Items.Add;
        liChange.Caption := '[ '+i.ToString + ' ] ' + inB.ToString;
      end;
    end;
  end;

  Procedure_End:;

  if cbAddToBookmarks.Checked then begin
    lvBookmars.Items.Count := slBookmarks.Count;

    lvBookmars.Items.EndUpdate;

    teBookmarksStatus.Text := stBookmarksStatus + lvBookmars.Items.Count.ToString;

    cbBookmarkSearch.Enabled := lvBookmars.Items.Count > 0;
  end;

  inLoading := 0;

  if blMatchOne then begin
    inIndexOf := slBookmarksNum.IndexOf( inMatchOne.ToString );

    if inIndexOf > 0 then begin
      lvBookmars.Items[ inIndexOf ].Selected := True;
      lvBookmars.Items[ inIndexOf ].MakeVisible( False );
    end;

    teTlkPosition.Text := inMatchOne.ToString;

    sbScrollStringsChange( Self );

    case System.Pos( '{', stPattern ) of
      0 : begin
        tmTlk1String.SelStart  := Pos( stPattern, stRecord ) -1;
        tmTlk1String.SelLength := Length( stPattern );

        if cbReplaceText.Checked then begin
          stPattern            := teTextForReplace.Text;
          tmTlk1String.SelText := stPattern;
        end;
      end;
    end;
  end
  else if not cbQuickSearch.Checked then
          Application.MessageBox(
            PChar(
              'Искомый текст или {шаблон}: "' + teTLKSearch.Text + '"' +#13+
              #13+
              'Начальная строка: ' + getStringInline( getIntegerInline( teTlkPosition.Text ) +1 ) +#13+
              'Всего строк: ' + teTLKLast.Text +#13+
              #13+
              'Имя файла: "' + System.SysUtils.ExtractFileName( teTlkPath1.Text ) + '"' +#13+
              'Размер файла: ' + inFileSize.ToString + ' байт' ),
            PChar( 'Результатов не найдено' ),
            MB_OK + MB_ICONINFORMATION );

  teTLKSearch.SetFocus;

  inBreak := 0;
end;

end.
