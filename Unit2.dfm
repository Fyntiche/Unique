object Form2: TForm2
  Left = 355
  Top = 373
  Width = 932
  Height = 481
  BorderIcons = []
  Caption = #1044#1080#1072#1075#1088#1072#1084#1084#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    Left = 48
    Top = 72
    Width = 921
    Height = 449
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      '')
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 824
      Top = 8
      Width = 75
      Height = 25
      Caption = #1042#1099#1093#1086#1076
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object Series1: TGanttSeries
      ColorEachPoint = True
      Marks.ArrowLength = 0
      Marks.Visible = False
      SeriesColor = clRed
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = True
      XValues.DateTime = True
      XValues.Name = 'Start'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      StartValues.DateTime = True
      StartValues.Name = 'Start'
      StartValues.Multiplier = 1.000000000000000000
      StartValues.Order = loAscending
      EndValues.DateTime = True
      EndValues.Name = 'End'
      EndValues.Multiplier = 1.000000000000000000
      EndValues.Order = loNone
      NextTask.DateTime = False
      NextTask.Name = 'NextTask'
      NextTask.Multiplier = 1.000000000000000000
      NextTask.Order = loNone
    end
  end
end
