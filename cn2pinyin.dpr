program cn2pinyin;

uses
  Forms,
  uFrmMain in 'uFrmMain.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
