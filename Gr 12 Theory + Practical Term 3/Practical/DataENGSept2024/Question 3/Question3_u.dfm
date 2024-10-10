object frmQuestion3: TfrmQuestion3
  Left = 0
  Top = 0
  Caption = 'Question 3'
  ClientHeight = 493
  ClientWidth = 717
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial'
  Font.Style = []
  TextHeight = 18
  object gbQ3_2_1: TGroupBox
    Left = 8
    Top = 8
    Width = 345
    Height = 177
    Caption = 'Question 3.2.1'
    TabOrder = 0
    object lblIP: TLabel
      Left = 10
      Top = 38
      Width = 80
      Height = 18
      Caption = 'IP Address:'
    end
    object edtQ3_2_1: TEdit
      Left = 104
      Top = 35
      Width = 226
      Height = 26
      TabOrder = 0
      Text = '192.168.6.122'
    end
    object cmbQ3_2_1: TComboBox
      Left = 104
      Top = 80
      Width = 226
      Height = 26
      TabOrder = 1
      Text = 'South Africa'
      TextHint = 'Select Country of Origin'
      Items.Strings = (
        'Afghanistan'
        'Albania'
        'Algeria'
        'Andorra'
        'Angola'
        'Antigua and Barbuda'
        'Argentina'
        'Armenia'
        'Australia'
        'Austria'
        'Azerbaijan'
        'Bahamas'
        'Bahrain'
        'Bangladesh'
        'Barbados'
        'Belarus'
        'Belgium'
        'Belize'
        'Benin'
        'Bhutan'
        'Bolivia'
        'Bosnia'
        'Botswana'
        'Brazil'
        'Brunei'
        'Bulgaria'
        'Burkina Faso'
        'Burundi'
        'Cabo Verde'
        'Cambodia'
        'Cameroon'
        'Canada'
        'Central African Republic'
        'Chad'
        'Chile'
        'China'
        'Colombia'
        'Comoros'
        'Congo, Democratic Republic of the'
        'Congo, Republic of the'
        'Costa Rica'
        'C'#244'te d'#8217'Ivoire'
        'Croatia'
        'Cuba'
        'Cyprus'
        'Czech Republic'
        'Denmark'
        'Djibouti'
        'Dominica'
        'Dominican Republic'
        'East Timor (Timor-Leste)'
        'Ecuador'
        'Egypt'
        'El Salvador'
        'Equatorial Guinea'
        'Eritrea'
        'Estonia'
        'Eswatini'
        'Ethiopia'
        'Fiji'
        'Finland'
        'France'
        'Gabon'
        'The Gambia'
        'Georgia'
        'Germany'
        'Ghana'
        'Greece'
        'Grenada'
        'Guatemala'
        'Guinea'
        'Guinea-Bissau'
        'Guyana'
        'Haiti'
        'Honduras'
        'Hungary'
        'Iceland'
        'India'
        'Indonesia'
        'Iran'
        'Iraq'
        'Ireland'
        'Israel'
        'Italy'
        'Jamaica'
        'Japan'
        'Jordan'
        'Kazakhstan'
        'Kenya'
        'Kiribati'
        'Korea, North'
        'Korea, South'
        'Kosovo'
        'Kuwait'
        'Kyrgyzstan'
        'Laos'
        'Latvia'
        'Lebanon'
        'Lesotho'
        'Liberia'
        'Libya'
        'Liechtenstein'
        'Lithuania'
        'Luxembourg'
        'Madagascar'
        'Malawi'
        'Malaysia'
        'Maldives'
        'Mali'
        'Malta'
        'Marshall Islands'
        'Mauritania'
        'Mauritius'
        'Mexico'
        'Micronesia, Federated States of'
        'Moldova'
        'Monaco'
        'Mongolia'
        'Montenegro'
        'Morocco'
        'Mozambique'
        'Myanmar (Burma)'
        'Namibia'
        'Nauru'
        'Nepal'
        'Netherlands'
        'New Zealand'
        'Nicaragua'
        'Niger'
        'Nigeria'
        'North Macedonia'
        'Norway'
        'Oman'
        'Pakistan'
        'Palau'
        'Panama'
        'Papua New Guinea'
        'Paraguay'
        'Peru'
        'Philippines'
        'Poland'
        'Portugal'
        'Qatar'
        'Romania'
        'Russia'
        'Rwanda'
        'Saint Kitts and Nevis'
        'Saint Lucia'
        'Saint Vincent and the Grenadines'
        'Samoa'
        'San Marino'
        'Sao Tome and Principe'
        'Saudi Arabia'
        'Senegal'
        'Serbia'
        'Seychelles'
        'Sierra Leone'
        'Singapore'
        'Slovakia'
        'Slovenia'
        'Solomon Islands'
        'Somalia'
        'South Africa'
        'Spain'
        'Sri Lanka'
        'Sudan'
        'Sudan, South'
        'Suriname'
        'Sweden'
        'Switzerland'
        'Syria'
        'Taiwan'
        'Tajikistan'
        'Tanzania'
        'Thailand'
        'Togo'
        'Tonga'
        'Trinidad and Tobago'
        'Tunisia'
        'Turkey'
        'Turkmenistan'
        'Tuvalu'
        'Uganda'
        'Ukraine'
        'United Arab Emirates'
        'United Kingdom'
        'United States'
        'Uruguay'
        'Uzbekistan'
        'Vanuatu'
        'Vatican City'
        'Venezuela'
        'Vietnam'
        'Yemen'
        'Zambia'
        'Zimbabwe')
    end
    object btnQ3_2_1: TButton
      Left = 124
      Top = 112
      Width = 178
      Height = 41
      Caption = '3.2.1 Instantiate Object'
      TabOrder = 2
      OnClick = btnQ3_2_1Click
    end
  end
  object gbQ3_2_2: TGroupBox
    Left = 359
    Top = 8
    Width = 345
    Height = 177
    Caption = 'Question 3.2.2'
    TabOrder = 1
    object shpQ3_2_2: TShape
      Left = 17
      Top = 42
      Width = 65
      Height = 65
      Shape = stCircle
    end
    object btnQ3_2_2: TButton
      Left = 104
      Top = 112
      Width = 226
      Height = 41
      Caption = '3.2.2 Change website state'
      TabOrder = 0
      OnClick = btnQ3_2_2Click
    end
  end
  object gbQ3_2_4: TGroupBox
    Left = 8
    Top = 383
    Width = 345
    Height = 106
    Caption = 'Question 3.2.4'
    TabOrder = 2
    object btnQ3_2_4: TButton
      Left = 80
      Top = 23
      Width = 187
      Height = 51
      Caption = '3.2.4 Add Visit'
      TabOrder = 0
      OnClick = btnQ3_2_4Click
    end
    object cbxQ3_2_4: TCheckBox
      Left = 136
      Top = 80
      Width = 97
      Height = 17
      Caption = 'Direct?'
      TabOrder = 1
    end
  end
  object redQ3: TRichEdit
    Left = 359
    Top = 191
    Width = 345
    Height = 298
    HideScrollBars = False
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 191
    Width = 345
    Height = 186
    Caption = 'Question 3.2.3'
    TabOrder = 4
    object btnQ3_2_3: TButton
      Left = 80
      Top = 40
      Width = 178
      Height = 41
      Caption = '3.2.3 Valid IP'
      TabOrder = 0
      OnClick = btnQ3_2_3Click
    end
    object pnlQ3_2_3: TPanel
      Left = 27
      Top = 112
      Width = 286
      Height = 41
      TabOrder = 1
    end
  end
end
