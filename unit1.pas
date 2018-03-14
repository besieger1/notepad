unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, simpleipc, FileUtil, SynHighlighterSQL, Forms, Controls,
  Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Notizblock: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  saveopen:string;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
saveopen:=edit1.text;
 Notizblock.Lines.SaveToFile(ExtractFilePath(ParamStr( 0 )) + saveopen +'.txt');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 saveopen:=edit1.text;
 Notizblock.Lines.LoadFromFile(ExtractFilePath(ParamStr( 0 )) + saveopen +'.txt');
end;



end.

