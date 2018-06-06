unit uFrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ToolWin, ExtCtrls;

type
  TForm1 = class(TForm)
    StatusBar1: TStatusBar;
    pnlClient: TPanel;
    Splitter2: TSplitter;
    memoRaw: TMemo;
    MemoClass: TMemo;
    ToolBar2: TToolBar;
    btnClear: TButton;
    ToolButton6: TToolButton;
    btnDo: TButton;
    ToolButton4: TToolButton;
    RadioButton1: TRadioButton;
    ToolButton1: TToolButton;
    RadioButton2: TRadioButton;
    procedure btnDoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function HZtoPY(HZStr: WideString): String;
Var
  s, c: AnsiString;
  i: Integer;
begin
  Result := '';
  for i := 1 To Length(HZStr) do
  begin
    s := HZStr[I];
    if ByteType(s, 1) = mbSingleByte Then
      c := S
    else
      case word(s[1]) shl 8 + word(s[2]) of
        $B0A1 .. $B0C4: C := 'A';    $B0C5 .. $B2C0: C := 'B';
        $B2C1 .. $B4ED: C := 'C';    $B4EE .. $B6E9: C := 'D';
        $B6EA .. $B7A1: C := 'E';    $B7A2 .. $B8C0: C := 'F';
        $B8C1 .. $B9FD: C := 'G';    $B9FE .. $BBF6: C := 'H';
        $BBF7 .. $BFA5: C := 'J';    $BFA6 .. $C0AB: C := 'K';
        $C0AC .. $C2E7: C := 'L';    $C2E8 .. $C4C2: C := 'M';
        $C4C3 .. $C5B5: C := 'N';    $C5B6 .. $C5BD: C := 'O';
        $C5BE .. $C6D9: C := 'P';    $C6DA .. $C8BA: C := 'Q';
        $C8BB .. $C8F5: C := 'R';    $C8F6 .. $CBF9: C := 'S';
        $CBFA .. $CDD9: C := 'T';    $CDDA .. $CEF3: C := 'W';
        $CEF4 .. $D1B8: C := 'X';    $D1B9 .. $D4D0: C := 'Y';
        $D4D1 .. $D7F9: C := 'Z';
      else
        c := s;
      end;
    Result := Result + C;
  end;
end;

procedure TForm1.btnDoClick(Sender: TObject);

  function tocn(const S: string): string;
  begin
    //Result := MakeSpellCode(S, 2, S.Length);
  end;

  procedure doIt(strs: TStrings; strsDst: TStrings);
    //doListPk
//    procedure doListPk(const ctx: string);
//    var ss: TStrings;
//      i: integer;
//    begin
//      ss := TStringList.Create;
//      try
//        TCharSplit.SplitChar(ctx, #9, ss);
//        for I := 0 to ss.Count - 1 do begin
//          //pkMap.Add(ss[i], ss[i]);
//        end;
//      finally
//        ss.Free;
//      end;
//    end;

  var I: integer;
    S, py: string;
  begin
    for I := 0 to strs.Count - 1 do begin
      S := trim(strs[I]);
      py := HZtoPY(S);
      strsDst.Add(py);
    end;
  end;
//var pkMap: TDictionary<string, string>;
begin
  //setMsg('prepare do it...');
  //pkMap := TDictionary<string, string>.Create;
  try
    MemoClass.Clear;
    //setMsg('doing it...');
    doIt(MemoRaw.Lines, MemoClass.Lines);
    //setMsg('done it...');
  finally
    //pkMap.Free;
  end;
  //setMsg('done.');
end;

end.
