object Form1: TForm1
  Left = 192
  Top = 107
  Width = 1305
  Height = 675
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 629
    Width = 1297
    Height = 19
    Panels = <
      item
        Width = 500
      end>
  end
  object pnlClient: TPanel
    Left = 0
    Top = 29
    Width = 1297
    Height = 600
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pnlClient'
    TabOrder = 1
    object Splitter2: TSplitter
      Left = 0
      Top = 319
      Width = 1297
      Height = 4
      Cursor = crVSplit
      Align = alTop
    end
    object memoRaw: TMemo
      Left = 0
      Top = 0
      Width = 1297
      Height = 319
      Align = alTop
      Lines.Strings = (
        '<class package="" name="transRec" table="t_trans_rec">'
        '<id name="id" column="id" length="50" generator="identity" />'
        
          '<property name="oper" column="oper" length="10" not-null="true" ' +
          '/>'
        
          '<property name="tblname" column="tblname" length="50" not-null="' +
          'true" />'
        
          '<property name="data" column="data" length="1000" not-null="true' +
          '" />'
        
          '<property name="tmCreate" column="tmCreate" length="8" not-null=' +
          '"true" />'
        
          '<property name="state" column="state" length="4" not-null="true"' +
          ' />'
        '</class>'
        ''
        '----------------------------------------------------'
        '1.'#21033#29992'navicate,'#23558#34920#32467#26500','#29983#25104','#31896#36148#21040#24038#20391','#26684#24335#20005#26684#21442#29031','#24038#20391#24050#26377#30340
        #26679#24335'.'
        '2.'#28982#21518#28857#20987#36716#25442','#21491#20391#23558#26174#31034#36716#25442#23436#25104#30340#20869#23481'.'
        '3.'#23558#21491#20391#36716#25442#23436#25104#30340#20869#23481','#31896#36148#21040'Java'#30340'xml'#37197#32622#25991#20214#20013'.'
        '4.'#25163#24037#20462#25913'id'#23646#24615)
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object MemoClass: TMemo
      Left = 0
      Top = 323
      Width = 1297
      Height = 277
      Align = alClient
      ScrollBars = ssVertical
      TabOrder = 1
    end
  end
  object ToolBar2: TToolBar
    Left = 0
    Top = 0
    Width = 1297
    Height = 29
    ButtonHeight = 25
    ButtonWidth = 84
    Caption = 'ToolBar2'
    List = True
    TabOrder = 2
    object btnClear: TButton
      Left = 0
      Top = 2
      Width = 75
      Height = 25
      Caption = #28165#31354
      TabOrder = 0
    end
    object ToolButton6: TToolButton
      Left = 75
      Top = 2
      Width = 8
      Caption = 'ToolButton6'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object btnDo: TButton
      Left = 83
      Top = 2
      Width = 75
      Height = 25
      Caption = #36716#25442
      TabOrder = 1
      OnClick = btnDoClick
    end
    object ToolButton4: TToolButton
      Left = 158
      Top = 2
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object RadioButton1: TRadioButton
      Left = 166
      Top = 2
      Width = 59
      Height = 25
      Caption = #22823#20889
      Checked = True
      TabOrder = 2
      TabStop = True
    end
    object ToolButton1: TToolButton
      Left = 225
      Top = 2
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object RadioButton2: TRadioButton
      Left = 233
      Top = 2
      Width = 64
      Height = 25
      Caption = #23567#20889
      TabOrder = 3
    end
  end
end
