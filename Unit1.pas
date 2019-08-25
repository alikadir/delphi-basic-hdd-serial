unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    XPManifest1: TXPManifest;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  deneme:boolean;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  VolumeSerialNumber : DWORD;
  MaximumComponentLength : DWORD;
  FileSystemFlags : DWORD;
  SerialNumber : string;
  ali:string;
  kadir:string;
  numara:string;
  begin

    ali:='Beyin taran�yor ....';
    kadir:='Beyin Bulunamad� !!  Ama HDD seri numaras�n� Yaz�y�m Sana (:';
    numara:='seri no :';
    Memo1.Lines.Add(ali);
      Memo1.Lines.Add(kadir);
        Memo1.Lines.Add(numara);
  GetVolumeInformation('C:\',
                                     nil,
                                     0,
                                     @VolumeSerialNumber,
                                     MaximumComponentLength,
                                     FileSystemFlags,
                                     nil,
                                     0);
  SerialNumber := IntToHex(HiWord(VolumeSerialNumber), 4) + '-' +
                           IntToHex(LoWord(VolumeSerialNumber), 4);
  Memo1.Lines.Add(SerialNumber);
  if deneme=true then begin showmessage('Mal M�s�n Karde�im ??'+#13+'Bu�una Demedim Beyin Bulunamad� Diye Harbi Beyin Yok Sende Yaw (: '+#13+'Neden Bas�yon ? Yaz�yo Ya Ekaranda Seri Numara'+#13+'Neyse Ben Gene Vereyim SeriNo yu :'#13+SerialNumber+'    Al Numara Bu Ne Bokuna Yar�yacaksa :)');
 end;
  deneme:=true;
  end;

procedure TForm1.FormCreate(Sender: TObject);
begin
deneme:=false;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Showmessage('La Beyinsiz Nas�l G�rebildin ��k Butonunu Demekki Az da Olsa Beyin Var Sende .. Gelecek Vadediyon Yani :) ');
form1.Close;
end;

end.
