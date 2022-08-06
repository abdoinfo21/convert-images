unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  jpg:Tjpegimage;
  bmp:Tbitmap;
  filename:string;
begin
    if opendialog1.Execute then
     filename:=opendialog1.FileName;

    jpg:=Tjpegimage.Create;
    bmp:=Tbitmap.Create;
    try
      jpg.CompressionQuality:=100;
      jpg.LoadFromFile(filename);
      bmp.Assign(jpg);
      bmp.SaveToFile(ChangeFileExt(filename,'.bmp'));
    finally
      jpg.Free;
      bmp.Free;
    end;
end;

end.

