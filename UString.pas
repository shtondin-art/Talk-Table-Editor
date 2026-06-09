unit UString;

interface

uses
  Vcl.Controls,
  Vcl.StdCtrls,
  Vcl.Forms,

  System.Classes;

type
  TFormStringWindow = class(TForm)
    btContinueStringWindow: TButton;
    tmLargeString1: TMemo;
    tmLargeString2: TMemo;

    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormStringWindow: TFormStringWindow;

implementation

{$R *.dfm}

procedure TFormStringWindow.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    // Esc (Winapi.Windows.VK_ESCAPE)
    27 : Self.Close;
  end;
end;

end.
