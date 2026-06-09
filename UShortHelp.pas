unit UShortHelp;

interface

uses
  System.Classes,
  System.Types,

  Vcl.ComCtrls,
  Vcl.Controls,
  Vcl.Forms,


  Winapi.Windows, Vcl.StdCtrls;

type
  TFormShortHelp = class(TForm)
    reShortHelp: TRichEdit;

    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormShortHelp: TFormShortHelp;

implementation

{$R *.dfm}

procedure TFormShortHelp.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    // Esc
    27 : self.Close;
  end;
end;

procedure TFormShortHelp.FormShow(Sender: TObject);
begin
  reShortHelp.CaretPos := TPoint.Zero;
end;

end.
