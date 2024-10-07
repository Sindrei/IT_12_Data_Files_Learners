object frmQuestion2: TfrmQuestion2
  Left = 0
  Top = 0
  Caption = 'Question 2'
  ClientHeight = 643
  ClientWidth = 888
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 13
  object pcQuestion2: TPageControl
    AlignWithMargins = True
    Left = 5
    Top = 67
    Width = 878
    Height = 571
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ActivePage = tsQ2_2
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 874
    ExplicitHeight = 570
    object tsQ2_1: TTabSheet
      Caption = 'Question 2.1 SQL'
      object gbQ2_1: TGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 860
        Height = 276
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Result'
        TabOrder = 0
        object dbgQ2_1: TDBGrid
          AlignWithMargins = True
          Left = 7
          Top = 25
          Width = 846
          Height = 244
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          DataSource = DataModule1.dsQry
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
        end
      end
      object btnQ2_1_1: TButton
        Left = 12
        Top = 298
        Width = 237
        Height = 40
        Caption = 'Q2.1.1 All Users'
        TabOrder = 1
        OnClick = btnQ2_1_1Click
      end
      object btnQ2_1_2: TButton
        Left = 12
        Top = 368
        Width = 237
        Height = 40
        Caption = 'Q2.1.2 Orders'
        TabOrder = 2
        OnClick = btnQ2_1_2Click
      end
      object btnQ2_1_3: TButton
        Left = 12
        Top = 438
        Width = 237
        Height = 40
        Caption = 'Q2.1.3 Average orders'
        TabOrder = 3
        OnClick = btnQ2_1_3Click
      end
      object btnQ2_1_4: TButton
        Left = 284
        Top = 298
        Width = 237
        Height = 40
        Caption = 'Q2.1.4 Orders not completed'
        TabOrder = 4
        OnClick = btnQ2_1_4Click
      end
      object btnQ2_1_5: TButton
        Left = 284
        Top = 368
        Width = 237
        Height = 40
        Caption = 'Q2.1.5 Remove orders'
        TabOrder = 5
        OnClick = btnQ2_1_5Click
      end
    end
    object tsQ2_2: TTabSheet
      Caption = 'Question 2.2 Delphi Code'
      ImageIndex = 1
      object gbQ2_Users: TGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 860
        Height = 130
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Users'
        TabOrder = 0
        ExplicitWidth = 856
        object dbgClients: TDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 23
          Width = 850
          Height = 102
          Align = alClient
          DataSource = DataModule1.dsUsers
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          OnCellClick = dbgClientsCellClick
        end
      end
      object gbQ2_Orders: TGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 145
        Width = 860
        Height = 130
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Caption = 'Orders'
        TabOrder = 1
        ExplicitWidth = 856
        object dbgOrders: TDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 23
          Width = 850
          Height = 102
          Align = alClient
          DataSource = DataModule1.dsOrders
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
        end
      end
      object btnQ2_2_1: TButton
        Left = 10
        Top = 283
        Width = 237
        Height = 40
        Caption = 'Q2.2.1 Display clients with orders'
        TabOrder = 2
        OnClick = btnQ2_2_1Click
      end
      object redQ2_2: TRichEdit
        Left = 253
        Top = 283
        Width = 609
        Height = 260
        ScrollBars = ssVertical
        TabOrder = 3
      end
    end
  end
  object pnlQuestion2: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 878
    Height = 52
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alTop
    Caption = 'Innovate Web Solutions'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -31
    Font.Name = 'Consolas'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 874
    object btn_RestoreDB: TButton
      Left = 759
      Top = 5
      Width = 116
      Height = 40
      Caption = 'Restore DB'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btn_RestoreDBClick
    end
  end
end
