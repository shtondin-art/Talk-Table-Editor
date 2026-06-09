unit U500Strings;

interface

uses
//  Winapi.Windows,

  System.Classes,

  Vcl.Controls,
  Vcl.Forms,
  Vcl.ComCtrls,
  Vcl.StdCtrls;

type
  TForm500Strings = class(TForm)
    lv500Strings: TListView;
    Label1: TLabel;

    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);

    procedure lv500StringsDblClick(Sender: TObject);
    procedure lv500StringsSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form500Strings: TForm500Strings;

  blQuick: Boolean;

implementation

uses
  UMain;

{$R *.dfm}

procedure TForm500Strings.FormKeyDown( Sender: TObject; var Key: Word; Shift: TShiftState );
begin
  case Key of
    // Esc (Winapi.Windows.VK_ESCAPE)
    27 : Self.Close;
  end;
end;

procedure TForm500Strings.FormShow(Sender: TObject);
begin
  blQuick := frmMain.cbQuickSearch.Checked;
end;

procedure TForm500Strings.lv500StringsDblClick(Sender: TObject);
var
  liItem: TListItem;

begin
  // Используем Sender, чтобы код был универсальным
  if not (Sender is TListView) then
     Exit;

  liItem := TListView( Sender ).ItemFocused;

  // Обязательная проверка, чтобы не поймать Access Violation
  if Assigned( liItem ) then
  begin
    frmMain.teTlkPosition.Text := liItem.Caption;

    // Вызываем событие изменения
    if Assigned( frmMain.teTlkPosition.OnChange ) then
       frmMain.teTlkPosition.OnChange( frmMain.teTlkPosition );
  end;
end;

procedure TForm500Strings.lv500StringsSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
begin
  // Проверяем флаг и то, что элемент именно выделен, а не сброшен
  if blQuick
     and Selected
     and Assigned( Item ) then
  begin
    frmMain.teTlkPosition.Text := Item.Caption;

    // Вызываем событие изменения
    if Assigned( frmMain.teTlkPosition.OnChange ) then
       frmMain.teTlkPosition.OnChange( frmMain.teTlkPosition );
  end;
end;

end.
