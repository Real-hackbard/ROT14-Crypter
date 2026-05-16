object Form1: TForm1
  Left = 334
  Top = 156
  Width = 524
  Height = 629
  Caption = 'ROT14 Encryption'
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 508
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label13: TLabel
      Left = 16
      Top = 8
      Width = 223
      Height = 39
      Caption = 'ROT14 Encryption'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Impact'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 246
      Top = 30
      Width = 82
      Height = 13
      Caption = 'Textfile Encrypter'
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 568
    Width = 508
    Height = 22
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      508
      22)
    object Label12: TLabel
      Left = 441
      Top = 4
      Width = 25
      Height = 13
      Anchors = [akTop, akRight]
      Caption = '0 bits'
    end
    object Label14: TLabel
      Left = 136
      Top = 3
      Width = 28
      Height = 13
      Caption = 'ready.'
    end
    object Label16: TLabel
      Left = 312
      Top = 3
      Width = 39
      Height = 13
      Caption = 'Label16'
    end
    object Label17: TLabel
      Left = 8
      Top = 3
      Width = 33
      Height = 13
      Caption = '0 bytes'
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 57
    Width = 508
    Height = 511
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    ScrollOpposite = True
    TabOrder = 2
    TabStop = False
    object TabSheet1: TTabSheet
      Caption = 'Encrypt'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      DesignSize = (
        500
        482)
      object Label1: TLabel
        Left = 39
        Top = 11
        Width = 28
        Height = 13
        Caption = 'File :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 30
        Top = 45
        Width = 38
        Height = 13
        Caption = 'Save :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 0
        Top = 579
        Width = 120
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = '&Encodage en cours...'
      end
      object Label7: TLabel
        Left = 4
        Top = 79
        Width = 63
        Height = 13
        Caption = 'Password :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 8
        Top = 136
        Width = 59
        Height = 13
        Caption = 'Progress :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Edit3: TEdit
        Left = 72
        Top = 7
        Width = 346
        Height = 21
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object Button8: TButton
        Left = 429
        Top = 7
        Width = 61
        Height = 20
        Anchors = [akTop, akRight]
        Caption = 'Open'
        TabOrder = 1
        TabStop = False
        OnClick = Button8Click
      end
      object Edit4: TEdit
        Left = 72
        Top = 41
        Width = 346
        Height = 21
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object Button1: TButton
        Left = 429
        Top = 41
        Width = 61
        Height = 20
        Anchors = [akTop, akRight]
        Caption = 'Save'
        TabOrder = 3
        TabStop = False
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 429
        Top = 75
        Width = 61
        Height = 20
        Anchors = [akTop, akRight]
        Caption = 'Encrypt'
        TabOrder = 4
        TabStop = False
        OnClick = Button2Click
      end
      object PageControl4: TPageControl
        Left = 0
        Top = 208
        Width = 500
        Height = 274
        ActivePage = TabSheet7
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 5
        TabStop = False
        object TabSheet7: TTabSheet
          Caption = 'Original'
          object Memo3: TMemo
            Left = 0
            Top = 0
            Width = 492
            Height = 246
            TabStop = False
            Align = alClient
            BevelInner = bvNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Small Fonts'
            Font.Style = []
            Lines.Strings = (
              '')
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'Encrypt'
          ImageIndex = 1
          object Memo4: TMemo
            Left = 0
            Top = 0
            Width = 492
            Height = 246
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -9
            Font.Name = 'Small Fonts'
            Font.Style = []
            Lines.Strings = (
              '')
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
      end
      object Edit1: TEdit
        Left = 72
        Top = 75
        Width = 346
        Height = 21
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        Text = '12345'
      end
      object Button7: TButton
        Left = 425
        Top = 131
        Width = 64
        Height = 20
        Caption = 'break'
        TabOrder = 7
        TabStop = False
        OnClick = Button7Click
      end
      object ProgressBar1: TProgressBar
        Left = 71
        Top = 132
        Width = 347
        Height = 20
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 8
      end
      object CheckBox1: TCheckBox
        Left = 72
        Top = 168
        Width = 105
        Height = 17
        TabStop = False
        Caption = 'Fast Encryption'
        TabOrder = 9
        OnClick = CheckBox1Click
      end
      object CheckBox2: TCheckBox
        Left = 200
        Top = 168
        Width = 109
        Height = 17
        TabStop = False
        Caption = 'Compare bytes'
        Checked = True
        State = cbChecked
        TabOrder = 10
        OnClick = CheckBox2Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Decrypt'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      DesignSize = (
        500
        482)
      object Label5: TLabel
        Left = 29
        Top = 45
        Width = 38
        Height = 13
        Caption = 'Save :'
      end
      object Label6: TLabel
        Left = 0
        Top = 580
        Width = 122
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = '&Decodage en cours...'
      end
      object Label4: TLabel
        Left = 39
        Top = 11
        Width = 28
        Height = 13
        Caption = 'File :'
      end
      object Label8: TLabel
        Left = 4
        Top = 79
        Width = 63
        Height = 13
        Caption = 'Password :'
      end
      object Label9: TLabel
        Left = 8
        Top = 136
        Width = 59
        Height = 13
        Caption = 'Progress :'
      end
      object Edit5: TEdit
        Left = 72
        Top = 7
        Width = 346
        Height = 21
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
      end
      object Button3: TButton
        Left = 429
        Top = 7
        Width = 61
        Height = 20
        Anchors = [akTop, akRight]
        Caption = 'Open'
        TabOrder = 1
        TabStop = False
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 429
        Top = 75
        Width = 61
        Height = 20
        Anchors = [akTop, akRight]
        Caption = 'Decrypt'
        TabOrder = 2
        TabStop = False
        OnClick = Button4Click
      end
      object Edit6: TEdit
        Left = 72
        Top = 41
        Width = 346
        Height = 21
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 3
      end
      object Button5: TButton
        Left = 429
        Top = 41
        Width = 61
        Height = 20
        Anchors = [akTop, akRight]
        Caption = 'Save'
        TabOrder = 4
        TabStop = False
        OnClick = Button5Click
      end
      object ProgressBar2: TProgressBar
        Left = 72
        Top = 132
        Width = 346
        Height = 20
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 5
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 208
        Width = 500
        Height = 274
        ActivePage = TabSheet3
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 6
        TabStop = False
        object TabSheet3: TTabSheet
          Caption = 'Encrypt'
          object Memo1: TMemo
            Left = 0
            Top = 0
            Width = 492
            Height = 246
            TabStop = False
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Small Fonts'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Original'
          ImageIndex = 1
          object Memo2: TMemo
            Left = 0
            Top = 0
            Width = 492
            Height = 246
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -9
            Font.Name = 'Small Fonts'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
      end
      object Edit2: TEdit
        Left = 72
        Top = 75
        Width = 346
        Height = 21
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 7
      end
      object Button6: TButton
        Left = 425
        Top = 131
        Width = 64
        Height = 20
        Caption = 'break'
        TabOrder = 8
        TabStop = False
        OnClick = Button6Click
      end
      object CheckBox3: TCheckBox
        Left = 72
        Top = 168
        Width = 108
        Height = 17
        TabStop = False
        Caption = 'Fast Decryption'
        TabOrder = 9
        OnClick = CheckBox3Click
      end
      object CheckBox4: TCheckBox
        Left = 200
        Top = 168
        Width = 110
        Height = 17
        TabStop = False
        Caption = 'Compare bytes'
        TabOrder = 10
        OnClick = CheckBox4Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    FilterIndex = 0
    Left = 24
    Top = 336
  end
  object SaveDialog1: TSaveDialog
    FilterIndex = 0
    OptionsEx = [ofExNoPlacesBar]
    Left = 56
    Top = 336
  end
end
