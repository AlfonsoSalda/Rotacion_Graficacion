object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 420
  ClientWidth = 652
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 8
    Width = 400
    Height = 400
  end
  object Label1: TLabel
    Left = 432
    Top = 99
    Width = 32
    Height = 13
    Caption = 'ALPHA'
  end
  object Button1: TButton
    Left = 432
    Top = 24
    Width = 201
    Height = 25
    Caption = 'Inicializar Puntos'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 432
    Top = 55
    Width = 201
    Height = 25
    Caption = 'Dibuja'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 464
    Top = 96
    Width = 169
    Height = 21
    TabOrder = 2
  end
  object Button3: TButton
    Left = 432
    Top = 135
    Width = 201
    Height = 25
    Caption = 'Rotacion Respecto al Origen'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 432
    Top = 166
    Width = 201
    Height = 25
    Caption = 'Rotacion Respecto al Centro de la FIgura'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 432
    Top = 230
    Width = 201
    Height = 25
    Caption = 'Rota y Dibuja'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 432
    Top = 261
    Width = 201
    Height = 25
    Caption = 'Limpia'
    TabOrder = 6
    OnClick = Button6Click
  end
end
