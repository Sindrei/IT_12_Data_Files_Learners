object frmPetersonGroup: TfrmPetersonGroup
  Left = 0
  Top = 0
  Caption = 'Peterson Group'
  ClientHeight = 426
  ClientWidth = 819
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 686
    Height = 409
    DataSource = dmoBandB.sorQuery
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnList: TButton
    Left = 700
    Top = 8
    Width = 111
    Height = 41
    Caption = 'List'
    TabOrder = 1
    OnClick = btnListClick
  end
  object btnMrFerreira: TButton
    Left = 700
    Top = 55
    Width = 111
    Height = 41
    Caption = 'Mr Ferreira'
    TabOrder = 2
  end
  object btnEnglish: TButton
    Left = 700
    Top = 102
    Width = 111
    Height = 41
    Caption = 'English'
    TabOrder = 3
  end
  object btnCost: TButton
    Left = 700
    Top = 149
    Width = 111
    Height = 41
    Caption = 'Cost'
    TabOrder = 4
  end
  object btnDiscount: TButton
    Left = 700
    Top = 196
    Width = 111
    Height = 41
    Caption = 'Discount'
    TabOrder = 5
  end
  object btnFaltemeyer: TButton
    Left = 700
    Top = 243
    Width = 111
    Height = 41
    Caption = 'Faltemeyer'
    TabOrder = 6
  end
end
