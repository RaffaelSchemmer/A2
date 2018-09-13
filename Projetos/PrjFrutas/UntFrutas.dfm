object Form18: TForm18
  Left = 0
  Top = 0
  Caption = 'Fruteira'
  ClientHeight = 343
  ClientWidth = 640
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 24
    Top = 16
    Width = 289
    Height = 105
    Caption = 'Fruteira'
    Color = clInactiveBorder
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object Label2: TLabel
      Left = 102
      Top = 21
      Width = 97
      Height = 13
      Caption = 'Selecione uma Fruta'
    end
    object ComboBox1: TComboBox
      Left = 80
      Top = 40
      Width = 145
      Height = 21
      DropDownCount = 10
      ItemIndex = 0
      TabOrder = 0
      Text = 'Uva'
      OnSelect = ComboBox1Select
      Items.Strings = (
        'Uva')
    end
  end
  object GroupBox2: TGroupBox
    Left = 24
    Top = 144
    Width = 289
    Height = 153
    Caption = 'Cadastrar Fruta'
    Color = clCream
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 88
      Width = 48
      Height = 13
      Caption = 'Valor (R$)'
    end
    object LabeledEdit1: TLabeledEdit
      Left = 16
      Top = 48
      Width = 115
      Height = 21
      EditLabel.Width = 71
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome da Fruta'
      TabOrder = 0
    end
    object MaskEdit1: TMaskEdit
      Left = 16
      Top = 104
      Width = 115
      Height = 21
      TabOrder = 1
      Text = ''
    end
    object BitBtn1: TBitBtn
      Left = 176
      Top = 74
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object ListBox1: TListBox
    Left = 319
    Top = 20
    Width = 306
    Height = 281
    ItemHeight = 13
    TabOrder = 2
  end
  object BitTotal: TBitBtn
    Left = 24
    Top = 303
    Width = 601
    Height = 25
    Caption = 'Total a Pagar'
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555500000
      55555555000BB3B30555555030BB3303305555030BB0B3B3330555033BBBB333
      330550B3B3BB3BB3B33050B3B33BBBBB333050B3B33BBBBB3B3050B3B333BB0B
      33B050B33333BBB3B3B050BB33333333BB05550B33B3333BB305550BB33330BB
      B0555550BB33B3BB0555555500B3333055555555550000055555}
    TabOrder = 3
    OnMouseEnter = BitTotalMouseEnter
  end
end
