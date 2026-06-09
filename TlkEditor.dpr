program TlkEditor;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {frmMain},
  UString in 'UString.pas' {FormStringWindow},
  UShortHelp in 'UShortHelp.pas' {FormShortHelp},
  UFileName in 'UFileName.pas' {FormFileName},
  U500Strings in 'U500Strings.pas' {Form500Strings},
  UConfigFile in '..\Modules.Pas\UConfigFile.pas',
  UDataFunc in '..\Modules.Pas\UDataFunc.pas',
  UFileFunc in '..\Modules.Pas\UFileFunc.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TFormShortHelp, FormShortHelp);
  Application.CreateForm(TFormStringWindow, FormStringWindow);
  Application.CreateForm(TFormFileName, FormFileName);
  Application.CreateForm(TForm500Strings, Form500Strings);
  Application.Run;
end.
