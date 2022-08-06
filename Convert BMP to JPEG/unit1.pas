unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  ExtDlgs;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
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
  jpg:TjpegImage;
begin
   try
   jpg:=TjpegImage.Create;
   jpg.Assign(image1.Picture.Bitmap);
   jpg.CompressionQuality:=70;
   jpg.SaveToFile('C:\Users\abdo\Desktop\part2\1.jpeg');
   finally
   jpg.Free;
   end;
end;

end.

