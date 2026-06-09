unit UFileName;

interface

uses
  System.Classes,
  System.SysUtils,

  Vcl.Controls,
  Vcl.Forms,
  Vcl.StdCtrls;

type
  TFormFileName = class(TForm)
    teFileName: TEdit;
    Label1: TLabel;

    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFileName: TFormFileName;

implementation

uses
  UMain;

{$R *.dfm}

procedure TFormFileName.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    // Enter
    13 : begin
      try
        slBookmarks.SaveToFile( System.SysUtils.ExtractFileDir( frmMain.teTlkPath1.Text ) + '\' + teFileName.Text + '.txt' );
      except

      end;

      self.Close;
    end;
    // Esc
    27 : self.Close;
  end;
end;

procedure TFormFileName.FormShow(Sender: TObject);
begin
  teFileName.Text := System.SysUtils.ExtractFileName( frmMain.teTlkPath1.Text ).Replace( '.tlk', '_Bookmarks' );
end;

end.
