unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, StrUtils, XPMan, ExtCtrls;

type
  TForm1 = class(TForm)
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Panel1: TPanel;
    Label13: TLabel;
    Panel3: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Edit3: TEdit;
    Button8: TButton;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    PageControl4: TPageControl;
    TabSheet7: TTabSheet;
    Memo3: TMemo;
    TabSheet8: TTabSheet;
    Memo4: TMemo;
    Edit1: TEdit;
    Button7: TButton;
    ProgressBar1: TProgressBar;
    TabSheet2: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit5: TEdit;
    Button3: TButton;
    Button4: TButton;
    Edit6: TEdit;
    Button5: TButton;
    ProgressBar2: TProgressBar;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    Memo1: TMemo;
    TabSheet4: TTabSheet;
    Memo2: TMemo;
    Edit2: TEdit;
    Button6: TButton;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    CheckBox1: TCheckBox;
    Label16: TLabel;
    Label17: TLabel;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    procedure Button7Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
  private
    { Declarations privates }
  public
    { Declarations public }
  end;

var
  Form1: TForm1;
  quitcode, quitdecode: boolean;
  size, encrypt, decrypt : integer;

implementation

{$R *.dfm}
function GetFileSize(FName: string): Int64;
var
  ch: File;
  OldMode: Integer;
begin
  OldMode := FileMode;
  Result := -1;
  if not FileExists(FName) then Exit;
  try
    AssignFile(ch, FName);
    FileMode := 0;
    Reset(ch,1);
    Result := FileSize(ch);
  finally
    CloseFile(ch);
    FileMode := OldMode;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  OpenDialog1.Filter := 'ROT14 Transcript File (*.r14)';
  if OpenDialog1.Execute then
  begin
    Edit5.Text:=OpenDialog1.FileName;
    Edit6.Text:=OpenDialog1.FileName + '.txt';
    Label17.Caption :=  IntToStr(GetFileSize(OpenDialog1.FileName)) + ' bytes';
    size :=  GetFileSize(OpenDialog1.FileName);
  end;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
    OpenDialog1.Filter := 'Textfile (*.*)';
    if OpenDialog1.Execute then
    begin
      Edit3.Text := OpenDialog1.FileName;
      Edit4.Text := OpenDialog1.FileName + '.r14';
      Label17.Caption :=  IntToStr(GetFileSize(OpenDialog1.FileName)) + ' bytes';
      size :=  GetFileSize(OpenDialog1.FileName);
    end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 SaveDialog1.DefaultExt:='.r14';
 SaveDialog1.FilterIndex:=0;
 OpenDialog1.Filter := 'ROT14 Transcript (*.R14)|*.r14';

 if SaveDialog1.Execute then
 begin
  Edit4.Text := SaveDialog1.FileName;
 end;

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 SaveDialog1.DefaultExt:='.r14';
 SaveDialog1.FilterIndex:=2;
 SaveDialog1.Execute;
 Edit6.Text:=SaveDialog1.FileName;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  S: file;
  ch: char;
  T: file of char;
  strbuff, labo: string;
  Buf: array [1..1000] of char;
  truc,passpos,passlength,txtlength,e,lus,ecrits: integer;
begin
  Panel1.SetFocus;
  Screen.Cursor := crHourGlass;
  quitcode := true;
  Label16.Font.Color := clBlack;
  Label16.Caption := '...';

  if Edit3.Text = '' then begin ShowMessage('No File'); Exit; end;
  if Edit4.Text = '' then begin ShowMessage('No Destination'); Exit; end;
  if Edit1.Text = '' then begin ShowMessage('No Password'); Exit; end;

  Label14.Caption := 'Crypting please wait..';

  AssignFile(S,Edit3.Text);
  AssignFile(T,Edit4.Text);
  Reset(S,1);
  Rewrite(T);
  repeat
    BlockRead(S,Buf,SizeOf(buf),Lus);
    if(Lus < 1000) then
    begin
      if(Lus > 0) then
      begin
        labo := string(Buf);
        labo := LeftStr(labo,Lus);
        Strbuff := Strbuff + labo;
      end;
  end
  else
    Strbuff := Strbuff + string(Buf);

   //  Memo3.Lines.Add(Buf);
   Memo3.Lines.Add(IntToStr(Lus));
   until (Lus=0) or (Lus<0);

   Memo3.Lines.Add(IntToStr(Length(StrBuff)));
   Memo3.Lines.Add(StrBuff);

   passlength := Length(Edit1.Text);
   ProgressBar1.Max := Length(strbuff);
   ProgressBar1.Position := 0;
   Memo3.Text := Strbuff;

 for e := 1 to Length(StrBuff) do
  begin
   ch := StrBuff[e];
   // Memo3.Text := IntToStr(Integer(ch)) + #13;
   txtlength := txtlength + 1;
   passpos := txtlength mod passlength;
   truc := (Integer(ch) - 50) + integer(Edit1.Text[passpos]);
   //Memo3.Text := ch;
   ch := Char(truc);
   //Memo4.Text := ch;
   Write(T,ch);

   if CheckBox1.Checked = false then
   begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    Label12.Caption := IntToStr(ProgressBar1.Position) + ' bytes';
    encrypt := Length(strbuff);
    Application.ProcessMessages;
   end else begin
    Label12.Caption := IntToStr(Length(strbuff)) + ' bytes';
    encrypt := Length(strbuff);
   end;

   if quitcode = false then
   begin
    break;
    CloseFile(S);
    CloseFile(T);
    Label16.Font.Color := clBlack;
    Label16.Caption := 'Fail.';
    Application.ProcessMessages;
    Exit;
   end;

  end;
  CloseFile(S);
  CloseFile(T);
  Label14.Caption := 'Crypting done';
  Memo4.Lines.LoadFromFile(Edit4.Text);

  if CheckBox2.Checked = true then
  begin
    if size = encrypt then
    begin
      Label16.Font.Color := clGreen;
      Label16.Caption := 'Success.';
    end else begin
      Label16.Font.Color := clMaroon;
      Label16.Caption := 'Fail.';
    end;
  end;

  if quitcode = false then
   begin
    Label16.Font.Color := clBlack;
    Label16.Caption := 'Fail.';
    Application.ProcessMessages;
   end;

  Screen.Cursor := crDefault;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
 S: file;
 ch: char;
 T: file of char;
 strbuff, labo: string;
 Buf: array [1..1000] of char;
 truc,passpos,passlength,txtlength,e,lus,ecrits: integer;
begin
  Panel1.SetFocus;
  Screen.Cursor := crHourGlass;
  quitcode := true;
  Label16.Font.Color := clBlack;
  Label16.Caption := '...';

  if Edit5.Text = '' then begin ShowMessage('No File'); Exit; end;
  if Edit6.Text = '' then begin ShowMessage('No Destination'); Exit; end;
  if Edit2.Text = '' then begin ShowMessage('No Password'); Exit; end;

  Label14.Caption := 'Decrypting please wait..';

 AssignFile(S,Edit5.Text);
 AssignFile(T,Edit6.Text);
 Reset(S,1);
 Rewrite(T);
 repeat
  BlockRead(S,Buf,SizeOf(buf),Lus);
  if(Lus < 1000) then
  begin
    if(Lus > 0) then
    begin
      labo := string(Buf);
      labo := LeftStr(labo,Lus);
      Strbuff := Strbuff + labo;
    end;
  end
  else
    Strbuff := Strbuff + string(Buf);

 //  Memo1.Lines.Add(Buf);
 Memo1.Lines.Add(IntToStr(Lus));

 until (Lus=0) or (Lus<0);
 Memo1.Lines.Add(IntToStr(Length(StrBuff)));
 Memo1.Lines.Add(StrBuff);
 //Ici,on code
 passlength := Length(Edit2.Text);
 ProgressBar2.Max := Length(strbuff);
 ProgressBar2.Position := 0;
 Memo1.Text := Strbuff;
 for e := 1 to Length(StrBuff) do
 begin
  ch := StrBuff[e];
  //Memo1.Text := Memo1.Text + IntToStr(Integer(ch)) + ' ';
  txtlength := txtlength + 1;
  passpos := txtlength mod passlength;
  truc := (Integer(ch) + 50) - integer(Edit2.Text[passpos]);
  ProgressBar2.Position := ProgressBar2.Position + 1;

  //Memo1.Text := Memo1.Text + ch;
  ch := Char(truc);
  //Memo2.Text := Memo2.Text + ch;
  Write(T,ch);

  if quitcode = false then
   begin
    break;
    CloseFile(S);
    CloseFile(T);
    Label16.Font.Color := clBlack;
    Label16.Caption := 'Fail.';
    Application.ProcessMessages;
    Exit;
   end;

  if CheckBox3.Checked = false then
  begin
    ProgressBar2.Position := ProgressBar2.Position + 1;
    Label12.Caption := IntToStr(ProgressBar2.Position) + ' bytes';
    decrypt := Length(strbuff);
  end;

  Application.ProcessMessages;
 end;

 if CheckBox4.Checked = true then
  begin
    if size = decrypt then
    begin
      Label16.Font.Color := clGreen;
      Label16.Caption := 'Success.';
    end else begin
      Label16.Font.Color := clMaroon;
      Label16.Caption := 'Fail.';
    end;
  end;


 CloseFile(S);
 CloseFile(T);
 Memo2.Lines.LoadFromFile(Edit6.Text);
 Screen.Cursor := crDefault;
 Application.ProcessMessages;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  quitcode:=false;
  Label16.Font.Color := clBlack;
  Label16.Caption := 'Fail.';
  Application.ProcessMessages;
  Panel1.SetFocus;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Panel3.DoubleBuffered := true;
  Memo1.MaxLength := $7FFFFFF0;
  Memo2.MaxLength := $7FFFFFF0;
  Memo3.MaxLength := $7FFFFFF0;
  Memo4.MaxLength := $7FFFFFF0;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Screen.Cursor := crDefault;
  quitdecode:=false;
  Label16.Font.Color := clBlack;
  Label16.Caption := 'Fail.';
  Application.ProcessMessages;
  Panel1.SetFocus;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked = true then
  begin
    Label11.Enabled := false;
    ProgressBar1.Enabled := false;
  end else begin
    Label11.Enabled := true;
    ProgressBar1.Enabled := true;
  end;
  Panel1.SetFocus;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  Panel1.SetFocus;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
  if CheckBox3.Checked = true then
  begin
    Label9.Enabled := true;
    ProgressBar2.Enabled := true;
  end else begin
    Label9.Enabled := false;
    ProgressBar2.Enabled := false;
  end;
  Panel1.SetFocus;
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
  Panel1.SetFocus;
end;

end.
