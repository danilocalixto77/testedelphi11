object FTeste: TFTeste
  Left = 633
  Top = 270
  Caption = 'Testando  Delphi 11 CE'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poDesigned
  OnKeyPress = FormKeyPress
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 145
    Height = 28
    Caption = 'Testes Aleat'#243'rios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 99
    Width = 35
    Height = 15
    Caption = 'Valor 1'
  end
  object Label3: TLabel
    Left = 142
    Top = 99
    Width = 35
    Height = 15
    Caption = 'Valor 2'
  end
  object Label4: TLabel
    Left = 268
    Top = 99
    Width = 52
    Height = 15
    Caption = 'Resultado'
    OnClick = Button1Click
  end
  object Label5: TLabel
    Left = 35
    Top = 320
    Width = 52
    Height = 15
    Caption = 'Resultado'
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 16
    Top = 120
    Width = 120
    Height = 25
    NumbersOnly = True
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 142
    Top = 120
    Width = 120
    Height = 25
    NumbersOnly = True
    TabOrder = 1
  end
  object Button1: TButton
    Left = 16
    Top = 151
    Width = 246
    Height = 25
    Caption = '&Calcular'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit3: TEdit
    Left = 268
    Top = 120
    Width = 120
    Height = 25
    NumbersOnly = True
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 35
    Top = 341
    Width = 169
    Height = 25
    NumbersOnly = True
    TabOrder = 4
  end
  object RdGrpOpArit: TRadioGroup
    Left = 16
    Top = 42
    Width = 372
    Height = 51
    Caption = ' Opera'#231#245'es Aritim'#233'ticas '
    Columns = 4
    ItemIndex = 0
    Items.Strings = (
      'Somar'
      'Diminuir'
      'Multiplicar'
      'Dividir')
    TabOrder = 5
  end
end
