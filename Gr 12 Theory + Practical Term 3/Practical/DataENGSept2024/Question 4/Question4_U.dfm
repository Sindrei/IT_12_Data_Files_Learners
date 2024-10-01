object frmQuestion4: TfrmQuestion4
  Left = 0
  Top = 0
  Caption = 'Question 4 - Problem-solving programming'
  ClientHeight = 454
  ClientWidth = 720
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Arial'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 17
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 705
    Height = 49
    BevelInner = bvRaised
    BorderStyle = bsSingle
    Caption = 'Storm Monitoring Application'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 7
    Top = 55
    Width = 706
    Height = 394
    BevelInner = bvSpace
    BorderStyle = bsSingle
    TabOrder = 1
    object redQ4: TRichEdit
      Left = 361
      Top = 267
      Width = 328
      Height = 107
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 14
      Width = 313
      Height = 131
      Caption = 'Question 4.1'
      TabOrder = 1
      object btnQ4_1: TButton
        Left = 56
        Top = 77
        Width = 185
        Height = 25
        Caption = 'Question 4.1 - Level'
        TabOrder = 0
        OnClick = btnQ4_1Click
      end
      object cmbQ4_1: TComboBox
        Left = 56
        Top = 32
        Width = 185
        Height = 25
        TabOrder = 1
        Text = 'Select map'
        Items.Strings = (
          'Storm1'
          'Storm2'
          'Storm3'
          'Storm4'
          'Storm5')
      end
    end
    object GroupBox3: TGroupBox
      Left = 16
      Top = 277
      Width = 313
      Height = 97
      Caption = 'Question 4.2'
      TabOrder = 2
      object btnQ4_2: TButton
        Left = 56
        Top = 36
        Width = 185
        Height = 25
        Caption = 'Question 4.2 - Wind'
        TabOrder = 0
        OnClick = btnQ4_2Click
      end
    end
    object memStorm: TMemo
      Left = 361
      Top = 14
      Width = 328
      Height = 247
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object gbxQ4: TGroupBox
      Left = 16
      Top = 146
      Width = 313
      Height = 129
      Caption = 'Hurricane category'
      TabOrder = 4
      object spnQ4_1: TSpinEdit
        Left = 56
        Top = 48
        Width = 121
        Height = 27
        MaxValue = 0
        MinValue = 0
        TabOrder = 0
        Value = 0
      end
    end
  end
end
