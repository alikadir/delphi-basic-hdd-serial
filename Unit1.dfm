object Form1: TForm1
  Left = 366
  Top = 185
  AlphaBlend = True
  AlphaBlendValue = 200
  AutoSize = True
  BorderStyle = bsNone
  Caption = 'By alikadir'#174
  ClientHeight = 145
  ClientWidth = 185
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 185
    Height = 121
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 48
    Top = 120
    Width = 89
    Height = 25
    Caption = 'HDD Seri No'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 0
    Top = 128
    Width = 19
    Height = 17
    Caption = #231#305'k'
    TabOrder = 2
    OnClick = Button2Click
  end
  object XPManifest1: TXPManifest
    Left = 144
    Top = 128
  end
end
