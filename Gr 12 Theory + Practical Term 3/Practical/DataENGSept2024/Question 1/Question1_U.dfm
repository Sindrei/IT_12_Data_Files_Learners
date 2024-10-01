object frmQuestion1: TfrmQuestion1
  Left = 0
  Top = 0
  Caption = 'Question1 - General programming skills'
  ClientHeight = 497
  ClientWidth = 742
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 18
  object grpQ1_1: TGroupBox
    Left = 8
    Top = 8
    Width = 729
    Height = 129
    Caption = 'Question 1.1'
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object btnQ1_1: TButton
      Left = 184
      Top = 78
      Width = 353
      Height = 34
      Caption = '            1.1 - Format and display          '
      TabOrder = 0
      OnClick = btnQ1_1Click
    end
    object pnlQ1_1: TPanel
      Left = 184
      Top = 25
      Width = 353
      Height = 41
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
    end
  end
  object grpQ1_4: TGroupBox
    Left = 8
    Top = 351
    Width = 353
    Height = 138
    Caption = 'Question 1.4'
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    object btnQ1_4: TButton
      Left = 56
      Top = 58
      Width = 230
      Height = 34
      Caption = '1.4 - Guessing game'
      TabOrder = 0
      OnClick = btnQ1_4Click
    end
  end
  object grpQ1_2: TGroupBox
    Left = 8
    Top = 207
    Width = 353
    Height = 146
    Caption = 'Question 1.3'
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    object btnQ1_3: TButton
      Left = 40
      Top = 42
      Width = 281
      Height = 34
      Caption = '1.3 - Display sum of even numbers'
      TabOrder = 0
      OnClick = btnQ1_3Click
    end
    object edtQ1_3: TEdit
      Left = 120
      Top = 98
      Width = 121
      Height = 26
      TabOrder = 1
    end
  end
  object grpQ1_3: TGroupBox
    Left = 367
    Top = 207
    Width = 370
    Height = 282
    Caption = 'Question 1.5'
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 3
    object btnQ1_5: TButton
      Left = 64
      Top = 234
      Width = 249
      Height = 34
      Caption = '1.5 - Fibonacci sequence'
      TabOrder = 0
      OnClick = btnQ1_5Click
    end
    object lstQ1_5: TListBox
      Left = 64
      Top = 30
      Width = 249
      Height = 190
      ItemHeight = 18
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 138
    Width = 729
    Height = 71
    Caption = 'Question 1.2'
    TabOrder = 4
    object Label1: TLabel
      Left = 40
      Top = 30
      Width = 94
      Height = 18
      Caption = 'Pick an option:'
    end
    object cmbQ1_2: TComboBox
      Left = 160
      Top = 27
      Width = 145
      Height = 26
      TabOrder = 0
      Text = 'Loops'
      Items.Strings = (
        'Conditional'
        'Unconditional')
    end
    object btnQ1_2: TButton
      Left = 328
      Top = 24
      Width = 361
      Height = 33
      Caption = '1.2 - Loop types'
      TabOrder = 1
      OnClick = btnQ1_2Click
    end
  end
end
