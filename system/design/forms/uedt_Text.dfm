object edt_Text: Tedt_Text
  Left = 470
  Top = 230
  BorderStyle = bsSizeToolWin
  Caption = '{text_editor}'
  ClientHeight = 168
  ClientWidth = 384
  Color = clWhite
  Constraints.MinHeight = 155
  Constraints.MinWidth = 350
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Quality = fqClearTypeNatural
  Font.Name = 'Segoe UI'
  Font.Size = 9
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  Visible = False
  DesignSize = (
    384
    168)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 384
    Height = 132
    Anchors = [akLeft, akTop, akRight, akBottom]
    Shape = bsSpacer
    Style = bsRaised
    ExplicitWidth = 352
    ExplicitHeight = 124
  end
  object shape1: TShape
    Left = 0
    Top = 124
    Width = 384
    Height = 5
    Anchors = [akLeft, akRight, akBottom]
    Brush.Color = 16250613
    Pen.Color = 16250613
    Pen.Width = 0
    ExplicitWidth = 352
  end
  object BitBtn1: TBitBtn
    Left = 294
    Top = 136
    Width = 83
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '{ok}'
    Default = True
    ModalResult = 1
    TabOrder = 0
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00918A7C00A9A39800FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00968F8200E3E1DE00968F8200A9A39800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00968F8200E2E1DD00FFFFFF00E2E0DC00968F8200A9A3
      9800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E2E0DC00FFFFFF00FFFFFF00FFFFFF00E2E0DC00968F
      8200A9A39800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2E0
      DC00968F8200A9A39800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E2E0DC00968F8200CBC7C100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E2E0DC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    Layout = blGlyphRight
    ExplicitLeft = 262
  end
  object BitBtn2: TBitBtn
    Left = 196
    Top = 136
    Width = 91
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = '{cancel}'
    ModalResult = 2
    TabOrder = 1
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7E6E300F2F1EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F0EFED00E7E5E200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EEECEA00938C7D00F2F1EF00FFFFFF00FFFFFF00F0EF
      ED00928A7D00F0EEEC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EEECEA00938C7D00F2F1EF00F0EFED00938A
      7D00F0EEEC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEECEA00938C7D00938A7D00F0EF
      ED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0EFED00938A7D00938A7D00F2F1
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F0EFED00938A7D00F0EFED00EEECEA00928A
      7D00F2F1EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F0EFED00928A7D00F0EEEC00FFFFFF00FFFFFF00EDEC
      EA00918A7C00F1F0EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E4E3DF00EFEEEC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00ECEBE900E4E2DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    Layout = blGlyphRight
    ExplicitLeft = 164
  end
  object memo: TMemo
    Left = 0
    Top = 0
    Width = 384
    Height = 124
    Anchors = [akLeft, akTop, akRight, akBottom]
    BorderStyle = bsNone
    Color = 16579836
    Ctl3D = False
    PopupMenu = Popup
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 2
    WantTabs = True
    WantReturns = True
    WordWrap = False
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    ExplicitWidth = 352
  end
  object BitBtn3: TBitBtn
    Left = 100
    Top = 136
    Width = 91
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '{copy}'
    TabOrder = 3
    Glyph.Data = {
      B6040000424DB604000000000000360000002800000010000000120000000100
      2000000000008004000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A099
      9400918A8500918A8500918A8500918A8500918A8500918A8500918A8500918A
      85007A706800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00918A
      8500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00958D8800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00918A
      8500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00958D8800B2ADA900B4AEAA00B4AEAA00D0CDCA00FFFFFF00FFFFFF00918A
      8500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00958D8800DEDCDA00E0DEDC00E0DEDC00948C8600FFFFFF00FFFFFF00918A
      8500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00958D8800FFFFFF00FFFFFF00FFFFFF00958D8800FFFFFF00FFFFFF00918A
      8500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00958D8800FFFFFF00FFFFFF00FFFFFF00958D8800FFFFFF00FFFFFF00918A
      8500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00958D8800FFFFFF00FFFFFF00FFFFFF00958D8800FFFFFF00FFFFFF00918A
      8500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00958D8800FFFFFF00FFFFFF00FFFFFF00958D8800FFFFFF00FFFFFF00918A
      8500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00958D8800FFFFFF00FFFFFF00FFFFFF00958D8800FFFFFF00FFFFFF00918A
      8500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBE9E800DDDBD900DDDB
      D900887F7900FFFFFF00FFFFFF00FFFFFF00958D8800FFFFFF00FFFFFF00918A
      8500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00918A8500B4AEAA00A49E
      9900695F5900FEFEFE00FFFFFF00FFFFFF00958D8800FFFFFF00FFFFFF00918A
      8500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00918A8500F0EFEE00877D
      7700EEEDEC00FFFFFF00FFFFFF00FFFFFF00958D8800FFFFFF00FFFFFF009189
      8400E0DEDC00E0DEDC00E0DEDC00E0DEDC00E0DEDC00867D7700877D7700EEED
      EC00FFFFFF00857C7600958D88008C837E00948C8600FFFFFF00FFFFFF00CDCA
      C700B1ABA700B1ABA700AFAAA600776D6500B1ABA700B1ABA700EEEDEC00FFFF
      FF00FFFFFF00958D8800F2F1F00088807A00EDECEB00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0098908B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00887F790088807A00EDECEB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007A716B00958D8800958D8800958D8800958D
      8800958D8800776D6500EDECEB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    Layout = blGlyphRight
    ExplicitLeft = 68
  end
  object bitbtn4: TBitBtn
    Left = 4
    Top = 136
    Width = 91
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '{paste}'
    TabOrder = 4
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECBC800CECBC800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C4C0BD00C4C0BD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C4C0BD00C4C0BD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C7C3
      C00098908B0098908B0098908B0098908B00DAD7D500C4C0BD00C4C0BD00D9D6
      D40098908B0098908B0098908B0098908B00C9C5C200FFFFFF00FFFFFF009D96
      9100E0DDDC00F1F0EF00F1F0EF00F1F0EF00FAFAFA00C4C0BD00C4C0BD00FAFA
      FA00F1F0EF00F1F0EF00F1F0EF00E0DDDC00A0999400FFFFFF00FFFFFF009D96
      9100EBEAE900FFFFFF00FFFFFF00FFFFFF00FFFFFF00C4C0BD00C4C0BD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EBEAE900A0999400FFFFFF00FFFFFF009D96
      9100EBEAE900FFFFFF00FFFFFF00FFFFFF00FFFFFF00C4C0BD00C4C0BD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EBEAE900A0999400FFFFFF00FFFFFF009D96
      9100EBEAE900FFFFFF00FFFFFF00FFFFFF00FFFFFF00C4C0BD00C4C0BD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EBEAE900A0999400FFFFFF00FFFFFF009D96
      9100EBEAE900FFFFFF00ECEBEA0091898200FDFDFD00C4C0BD00C4C0BD00FDFD
      FD0091898200EEECEB00FFFFFF00EBEAE900A0999400FFFFFF00FFFFFF009D96
      9100EBEAE900FFFFFF00FFFFFF00CBC7C40091898200C2BEBB00C2BEBB009189
      8200CDC9C700FFFFFF00FFFFFF00EBEAE900A0999400FFFFFF00FFFFFF009D96
      9100EBEAE900FFFFFF00FFFFFF00FFFFFF00CBC7C4006A5F55006A5F5500CCC8
      C600FFFFFF00FFFFFF00FFFFFF00EBEAE900A0999400FFFFFF00FFFFFF009D96
      9100EBEAE900FFFFFF00FFFFFF00FFFFFF00FFFFFF00CBC7C400CBC8C500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EBEAE900A0999400FFFFFF00FFFFFF009D96
      9100EBEAE900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EBEAE900A0999400FFFFFF00FFFFFF009D96
      9100EBEAE900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EBEAE900A0999400FFFFFF00FFFFFF009D96
      9100EBEAE900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EBEAE900A0999400FFFFFF00FFFFFF00ABA5
      A100867D77008A817B008A817B008A817B008A817B008A817B008A817B008A81
      7B008A817B008A817B008A817B00867D7700AEA8A400FFFFFF00}
    Layout = blGlyphRight
  end
  object Popup: TPopupMenu
    Left = 432
    Top = 192
    object it_cut: TMenuItem
      Caption = '{cut}'
      ShortCut = 16472
    end
    object it_copy: TMenuItem
      Caption = '{copy}'
      ShortCut = 16451
    end
    object it_paste: TMenuItem
      Caption = '{paste}'
      ShortCut = 16470
    end
    object it_selectall: TMenuItem
      Caption = '{Select all}'
      ShortCut = 16449
    end
  end
end