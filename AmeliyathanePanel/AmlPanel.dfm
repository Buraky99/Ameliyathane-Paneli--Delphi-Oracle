object PanelAml: TPanelAml
  AlignWithMargins = True
  Left = 0
  Top = 0
  Align = alCustom
  Caption = 'Ameliyathane'
  ClientHeight = 723
  ClientWidth = 1370
  Color = 15724752
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = 'Panel'
    TabOrder = 0
    Height = 723
    Width = 1370
    object Label11: TLabel
      Left = -4
      Top = 325
      Width = 331
      Height = 19
      Align = alCustom
      Caption = '   SALON 3 AMELIYAT RANDEVU LISTESI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 72
      Top = 275
      Width = 114
      Height = 13
      Align = alCustom
      Caption = 'Hasta '#214'zel Durumu :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 23
      Top = 248
      Width = 163
      Height = 13
      Align = alCustom
      Caption = 'Operasyon Ba'#351'lama Zaman'#305' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 94
      Top = 221
      Width = 92
      Height = 13
      Align = alCustom
      Caption = 'Dr Giri'#351' Zaman'#305' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 192
      Top = 22
      Width = 70
      Height = 19
      Align = alCustom
      Caption = 'SALON 3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 86
      Top = 194
      Width = 100
      Height = 13
      Align = alCustom
      Caption = 'Anestezi Zaman'#305' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 72
      Top = 167
      Width = 114
      Height = 13
      Align = alCustom
      Caption = 'Hasta Geli'#351' Zaman'#305' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 98
      Top = 140
      Width = 88
      Height = 13
      Align = alCustom
      Caption = 'Operasyon Ad'#305' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 79
      Top = 113
      Width = 107
      Height = 13
      Align = alCustom
      Caption = 'Doktor Ad'#305' Soyad'#305' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 83
      Top = 86
      Width = 103
      Height = 13
      Align = alCustom
      Caption = 'Planlama Zaman'#305' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 85
      Top = 59
      Width = 101
      Height = 13
      Align = alCustom
      Caption = 'Hasta Ad'#305' Soyad'#305' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButton1: TcxButton
      Left = 367
      Top = 27
      Width = 225
      Height = 60
      Align = alCustom
      Caption = 'HASTA SALONA ALINDI'
      Colors.Default = clNavy
      Colors.DefaultText = clWhite
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = ''
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton1Click
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 360
      Width = 1366
      Height = 280
      Align = alCustom
      BevelInner = bvNone
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmDefault
      LookAndFeel.ScrollMode = scmDefault
      LookAndFeel.SkinName = 'Blue'
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        ScrollbarAnnotations.Active = True
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellClick = cxGrid1DBTableView1CellClick
        DataController.DataModeController.GridMode = True
        DataController.DataSource = TabloListDS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.RowSeparatorColor = 15724752
        OptionsView.RowSeparatorWidth = 15
        Preview.AutoHeight = False
        object cxGrid1DBTableView1SAAT: TcxGridDBColumn
          DataBinding.FieldName = 'SAAT'
          Styles.Header = cxStyle1
        end
        object cxGrid1DBTableView1HASTA_ADI_SOYADI: TcxGridDBColumn
          DataBinding.FieldName = 'HASTA_ADI_SOYADI'
          Styles.Header = cxStyle1
          Width = 460
        end
        object cxGrid1DBTableView1DOKTOR_ADI_SOYADI: TcxGridDBColumn
          DataBinding.FieldName = 'DOKTOR_ADI_SOYADI'
          Styles.Header = cxStyle1
          Width = 386
        end
        object cxGrid1DBTableView1AMELIYAT_TURU: TcxGridDBColumn
          DataBinding.FieldName = 'AMELIYAT_TURU'
          Styles.Header = cxStyle1
        end
        object cxGrid1DBTableView1HASTA_GELDIMI: TcxGridDBColumn
          DataBinding.FieldName = 'HASTA_GELDIMI'
        end
        object cxGrid1DBTableView1ANESTEZI: TcxGridDBColumn
          DataBinding.FieldName = 'ANESTEZI'
        end
        object cxGrid1DBTableView1HASTA_GELME_TARIH: TcxGridDBColumn
          DataBinding.FieldName = 'HASTA_GELME_TARIH'
        end
        object cxGrid1DBTableView1AML_BASLAMA_TARIHI: TcxGridDBColumn
          DataBinding.FieldName = 'AML_BASLAMA_TARIHI'
        end
        object cxGrid1DBTableView1ANESTEZI_ZAMANI: TcxGridDBColumn
          DataBinding.FieldName = 'ANESTEZI_ZAMANI'
        end
        object cxGrid1DBTableView1DR_GIRIS_ZAMANI: TcxGridDBColumn
          DataBinding.FieldName = 'DR_GIRIS_ZAMANI'
        end
        object cxGrid1DBTableView1HASTA_OZEL_DURUMU: TcxGridDBColumn
          DataBinding.FieldName = 'HASTA_OZEL_DURUMU'
        end
        object cxGrid1DBTableView1AML_BASLADIMI: TcxGridDBColumn
          DataBinding.FieldName = 'AML_BASLADIMI'
        end
        object cxGrid1DBTableView1AML_BITTIMI: TcxGridDBColumn
          DataBinding.FieldName = 'AML_BITTIMI'
        end
        object cxGrid1DBTableView1AML_BITIS_TARIHI: TcxGridDBColumn
          DataBinding.FieldName = 'AML_BITIS_TARIHI'
        end
        object cxGrid1DBTableView1SALON_HAZIRMI: TcxGridDBColumn
          DataBinding.FieldName = 'SALON_HAZIRMI'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxButton9: TcxButton
      Left = 943
      Top = 179
      Width = 305
      Height = 132
      Align = alCustom
      Caption = 'SALON HAZIR'
      Colors.Default = clGreen
      Colors.DefaultText = clWindow
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = ''
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton9Click
    end
    object cxButton8: TcxButton
      Left = 943
      Top = 27
      Width = 305
      Height = 134
      Align = alCustom
      Caption = 'SALON STERILE ALINDI'
      Colors.Default = 192
      Colors.DefaultText = clWindow
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = ''
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton8Click
    end
    object cxButton7: TcxButton
      Left = 639
      Top = 231
      Width = 257
      Height = 80
      Align = alCustom
      Caption = 'MALZEME VE ILA'#199' SARFIYAT'
      Colors.Default = 192
      Colors.DefaultText = clWindow
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = ''
      TabOrder = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton7Click
    end
    object cxButton6: TcxButton
      Left = 639
      Top = 127
      Width = 257
      Height = 80
      Align = alCustom
      Caption = 'RADYOLOJI SONU'#199'LARI'
      Colors.Default = clGray
      Colors.DefaultText = clWindow
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = ''
      TabOrder = 5
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton6Click
    end
    object cxButton5: TcxButton
      Left = 639
      Top = 26
      Width = 257
      Height = 80
      Align = alCustom
      Caption = 'LABORATUVAR SONU'#199'LARI'
      Colors.Default = 1987308
      Colors.DefaultText = clWhite
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = ''
      TabOrder = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton5Click
    end
    object cxButton4: TcxButton
      Left = 367
      Top = 255
      Width = 225
      Height = 56
      Align = alCustom
      Caption = 'OPERASYON BITTI'
      Colors.Default = clGreen
      Colors.DefaultText = clWhite
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmDefault
      LookAndFeel.ScrollMode = scmDefault
      LookAndFeel.SkinName = ''
      TabOrder = 7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton4Click
    end
    object cxButton3: TcxButton
      Left = 367
      Top = 184
      Width = 225
      Height = 56
      Align = alCustom
      Caption = 'OPERASYON BASLADI'
      Colors.Default = 192
      Colors.DefaultText = clWindow
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = ''
      TabOrder = 8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton3Click
    end
    object cxButton2: TcxButton
      Left = 367
      Top = 103
      Width = 225
      Height = 56
      Align = alCustom
      Caption = 'ANESTEZI UYGULANDI'
      Colors.Default = clNavy
      Colors.DefaultText = clWindow
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = ''
      TabOrder = 9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton2Click
    end
    object cxDBLabel9: TcxDBLabel
      Left = 192
      Top = 273
      Align = alCustom
      DataBinding.DataField = 'HASTA_OZEL_DURUMU'
      DataBinding.DataSource = TabloListDS
      Style.TextColor = 192
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 121
    end
    object cxDBLabel8: TcxDBLabel
      Left = 192
      Top = 246
      Align = alCustom
      DataBinding.DataField = 'AML_BASLAMA_TARIHI'
      DataBinding.DataSource = TabloListDS
      Style.TextColor = 192
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 121
    end
    object cxDBLabel7: TcxDBLabel
      Left = 192
      Top = 219
      Align = alCustom
      DataBinding.DataField = 'DR_GIRIS_ZAMANI'
      DataBinding.DataSource = TabloListDS
      Style.TextColor = 192
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 121
    end
    object cxDBLabel6: TcxDBLabel
      Left = 192
      Top = 192
      Align = alCustom
      DataBinding.DataField = 'ANESTEZI_ZAMANI'
      DataBinding.DataSource = TabloListDS
      Style.TextColor = 192
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 121
    end
    object cxDBLabel5: TcxDBLabel
      Left = 192
      Top = 165
      Align = alCustom
      DataBinding.DataField = 'HASTA_GELME_TARIH'
      DataBinding.DataSource = TabloListDS
      Style.TextColor = 192
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 121
    end
    object cxDBLabel4: TcxDBLabel
      Left = 192
      Top = 138
      Align = alCustom
      DataBinding.DataField = 'AMELIYAT_TURU'
      DataBinding.DataSource = TabloListDS
      Style.TextColor = 192
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 121
    end
    object cxDBLabel3: TcxDBLabel
      Left = 192
      Top = 111
      Align = alCustom
      DataBinding.DataField = 'DOKTOR_ADI_SOYADI'
      DataBinding.DataSource = TabloListDS
      Style.TextColor = 192
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 121
    end
    object cxDBLabel1: TcxDBLabel
      Left = 192
      Top = 84
      Align = alCustom
      DataBinding.DataField = 'SAAT'
      DataBinding.DataSource = TabloListDS
      Style.TextColor = 192
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 121
    end
    object cxDBLabel2: TcxDBLabel
      Left = 192
      Top = 57
      Align = alCustom
      DataBinding.DataField = 'HASTA_ADI_SOYADI'
      DataBinding.DataSource = TabloListDS
      Style.TextColor = 192
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 121
    end
  end
  object OraDataSource1: TOraDataSource
    DataSet = OraQuery1
    Left = 640
    Top = 664
  end
  object OraQuery2: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO AML_RANDEVU'
      '  (HASTA_GELDIMI)'
      'VALUES'
      '  (:HASTA_GELDIMI)')
    SQLDelete.Strings = (
      'DELETE FROM AML_RANDEVU'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE AML_RANDEVU'
      'SET'
      '  HASTA_GELDIMI = :HASTA_GELDIMI'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT HASTA_GELDIMI FROM AML_RANDEVU'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT HASTA_GELDIMI FROM AML_RANDEVU'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT Count(*) FROM ('
      'SELECT * FROM AML_RANDEVU'
      ''
      ')')
    Session = OraSession1
    SQL.Strings = (
      ''
      ''
      ''
      
        '    SELECT SAAT,HASTA_ADI_SOYADI,DOKTOR_ADI_SOYADI,AMELIYAT_TURU' +
        ', HASTA_GELDIMI'
      ''
      '    FROM AMELIYATHANE_PANO, AML_RANDEVU'
      '    '
      '    WHERE AMELIYATHANE_PANO.DOSYA_NO = AML_RANDEVU.DOSYA_NO'
      ''
      '    AND HASTA_GELDIMI='#39'F'#39
      ''
      '    ORDER BY SAAT ')
    Left = 592
    Top = 624
    object OraQuery2SAAT: TStringField
      FieldName = 'SAAT'
      Size = 10
    end
    object OraQuery2HASTA_ADI_SOYADI: TStringField
      FieldName = 'HASTA_ADI_SOYADI'
      Size = 80
    end
    object OraQuery2DOKTOR_ADI_SOYADI: TStringField
      FieldName = 'DOKTOR_ADI_SOYADI'
      Size = 80
    end
    object OraQuery2AMELIYAT_TURU: TStringField
      FieldName = 'AMELIYAT_TURU'
      Size = 150
    end
    object OraQuery2HASTA_GELDIMI: TStringField
      FieldName = 'HASTA_GELDIMI'
      Size = 1
    end
  end
  object OraQuery1: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO HASTANE.AMELIYATHANE_PANO'
      '  (AMELIYAT_TURU, HASTA_ADI_SOYADI, DOKTOR_ADI_SOYADI, SAAT)'
      'VALUES'
      '  (:AMELIYAT_TURU, :HASTA_ADI_SOYADI, :DOKTOR_ADI_SOYADI, :SAAT)')
    SQLDelete.Strings = (
      'DELETE FROM HASTANE.AMELIYATHANE_PANO'
      'WHERE'
      '  HASTA_ADI_SOYADI = :Old_HASTA_ADI_SOYADI')
    SQLUpdate.Strings = (
      'UPDATE HASTANE.AMELIYATHANE_PANO'
      'SET'
      
        '  AMELIYAT_TURU = :AMELIYAT_TURU, HASTA_ADI_SOYADI = :HASTA_ADI_' +
        'SOYADI, DOKTOR_ADI_SOYADI = :DOKTOR_ADI_SOYADI, SAAT = :SAAT'
      'WHERE'
      '  HASTA_ADI_SOYADI = :Old_HASTA_ADI_SOYADI')
    SQLLock.Strings = (
      
        'SELECT AMELIYAT_TURU, HASTA_ADI_SOYADI, DOKTOR_ADI_SOYADI, SAAT ' +
        'FROM HASTANE.AMELIYATHANE_PANO'
      'WHERE'
      '  HASTA_ADI_SOYADI = :Old_HASTA_ADI_SOYADI'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT AMELIYAT_TURU, HASTA_ADI_SOYADI, DOKTOR_ADI_SOYADI, SAAT ' +
        'FROM HASTANE.AMELIYATHANE_PANO'
      'WHERE'
      '  HASTA_ADI_SOYADI = :HASTA_ADI_SOYADI')
    SQLRecCount.Strings = (
      'SELECT Count(*) FROM ('
      'SELECT * FROM HASTANE.AMELIYATHANE_PANO'
      ''
      ')')
    Session = OraSession1
    SQL.Strings = (
      ''
      ''
      ''
      '    SELECT '
      ''
      
        ' SAAT, HASTA_ADI_SOYADI, DOKTOR_ADI_SOYADI, AMELIYAT_TURU, HASTA' +
        '_GELDIMI, ANESTEZI,'
      
        ' HASTA_GELME_TARIH, AML_BASLAMA_TARIHI, ANESTEZI_ZAMANI, DR_GIRI' +
        'S_ZAMANI, HASTA_OZEL_DURUMU'
      ''
      '    FROM AMELIYATHANE_PANO, AML_RANDEVU'
      '    '
      '    WHERE AMELIYATHANE_PANO.DOSYA_NO = AML_RANDEVU.DOSYA_NO'
      ''
      '    AND HASTA_GELDIMI='#39'T'#39
      ''
      '    ORDER BY SAAT DESC'
      ''
      '')
    Left = 632
    Top = 624
    object OraQuery1SAAT: TStringField
      FieldName = 'SAAT'
      Size = 10
    end
    object OraQuery1HASTA_ADI_SOYADI: TStringField
      FieldName = 'HASTA_ADI_SOYADI'
      Size = 80
    end
    object OraQuery1DOKTOR_ADI_SOYADI: TStringField
      FieldName = 'DOKTOR_ADI_SOYADI'
      Size = 80
    end
    object OraQuery1AMELIYAT_TURU: TStringField
      FieldName = 'AMELIYAT_TURU'
      Size = 150
    end
    object OraQuery1HASTA_GELDIMI: TStringField
      FieldName = 'HASTA_GELDIMI'
      Size = 1
    end
    object OraQuery1ANESTEZI: TStringField
      FieldName = 'ANESTEZI'
      Size = 80
    end
    object OraQuery1HASTA_GELME_TARIH: TDateTimeField
      FieldName = 'HASTA_GELME_TARIH'
    end
    object OraQuery1AML_BASLAMA_TARIHI: TDateTimeField
      FieldName = 'AML_BASLAMA_TARIHI'
    end
    object OraQuery1ANESTEZI_ZAMANI: TDateTimeField
      FieldName = 'ANESTEZI_ZAMANI'
    end
    object OraQuery1DR_GIRIS_ZAMANI: TDateTimeField
      FieldName = 'DR_GIRIS_ZAMANI'
    end
    object OraQuery1HASTA_OZEL_DURUMU: TStringField
      FieldName = 'HASTA_OZEL_DURUMU'
      Size = 100
    end
  end
  object OraSession1: TOraSession
    Options.Direct = True
    Username = 'HASTANE'
    Server = 'DESKTOP-047A100:1521/orcl'
    Connected = True
    Left = 680
    Top = 624
    EncryptedPassword = '97FF9EFF8CFF8BFF9EFF91FF9AFF'
  end
  object OraDataSource2: TOraDataSource
    DataSet = OraQuery2
    Left = 680
    Top = 664
  end
  object OraQuery3: TOraQuery
    Session = OraSession1
    Left = 544
    Top = 624
  end
  object OraQuery4: TOraQuery
    Session = OraSession1
    Left = 504
    Top = 624
  end
  object OraQuery5: TOraQuery
    Session = OraSession1
    Left = 464
    Top = 624
  end
  object OraQuery6: TOraQuery
    Session = OraSession1
    Left = 464
    Top = 664
  end
  object OraQuery7: TOraQuery
    Session = OraSession1
    Left = 504
    Top = 664
  end
  object OraQuery8: TOraQuery
    Session = OraSession1
    Left = 544
    Top = 664
  end
  object OraQuery9: TOraQuery
    Session = OraSession1
    Left = 592
    Top = 664
  end
  object TabloList: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO AML_RANDEVU'
      
        '  (HASTA_GELDIMI, HASTA_GELME_TARIH, AML_BASLAMA_TARIHI, AML_BAS' +
        'LADIMI, AML_BITTIMI, DOSYA_NO, ANESTEZI_ZAMANI, DR_GIRIS_ZAMANI,' +
        ' HASTA_OZEL_DURUMU, AML_BITIS_TARIHI, SALON_HAZIRMI, SALON_STERI' +
        'LE_ALINDIMI, ANESTEZI_YAPILDIMI)'
      'VALUES'
      
        '  (:HASTA_GELDIMI, :HASTA_GELME_TARIH, :AML_BASLAMA_TARIHI, :AML' +
        '_BASLADIMI, :AML_BITTIMI, :DOSYA_NO, :ANESTEZI_ZAMANI, :DR_GIRIS' +
        '_ZAMANI, :HASTA_OZEL_DURUMU, :AML_BITIS_TARIHI, :SALON_HAZIRMI, ' +
        ':SALON_STERILE_ALINDIMI, :ANESTEZI_YAPILDIMI)')
    SQLDelete.Strings = (
      'DELETE FROM AML_RANDEVU'
      'WHERE'
      '  DOSYA_NO = :Old_DOSYA_NO')
    SQLUpdate.Strings = (
      'UPDATE AML_RANDEVU'
      'SET'
      
        '  HASTA_GELDIMI = :HASTA_GELDIMI, HASTA_GELME_TARIH = :HASTA_GEL' +
        'ME_TARIH, AML_BASLAMA_TARIHI = :AML_BASLAMA_TARIHI, AML_BASLADIM' +
        'I = :AML_BASLADIMI, AML_BITTIMI = :AML_BITTIMI, DOSYA_NO = :DOSY' +
        'A_NO, ANESTEZI_ZAMANI = :ANESTEZI_ZAMANI, DR_GIRIS_ZAMANI = :DR_' +
        'GIRIS_ZAMANI, HASTA_OZEL_DURUMU = :HASTA_OZEL_DURUMU, AML_BITIS_' +
        'TARIHI = :AML_BITIS_TARIHI, SALON_HAZIRMI = :SALON_HAZIRMI, SALO' +
        'N_STERILE_ALINDIMI = :SALON_STERILE_ALINDIMI, ANESTEZI_YAPILDIMI' +
        ' = :ANESTEZI_YAPILDIMI'
      'WHERE'
      '  DOSYA_NO = :Old_DOSYA_NO')
    SQLLock.Strings = (
      
        'SELECT HASTA_GELDIMI, HASTA_GELME_TARIH, AML_BASLAMA_TARIHI, AML' +
        '_BASLADIMI, AML_BITTIMI, DOSYA_NO, ANESTEZI_ZAMANI, DR_GIRIS_ZAM' +
        'ANI, HASTA_OZEL_DURUMU, AML_BITIS_TARIHI, SALON_HAZIRMI, SALON_S' +
        'TERILE_ALINDIMI, ANESTEZI_YAPILDIMI FROM AML_RANDEVU'
      'WHERE'
      '  DOSYA_NO = :Old_DOSYA_NO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT HASTA_GELDIMI, HASTA_GELME_TARIH, AML_BASLAMA_TARIHI, AML' +
        '_BASLADIMI, AML_BITTIMI, DOSYA_NO, ANESTEZI_ZAMANI, DR_GIRIS_ZAM' +
        'ANI, HASTA_OZEL_DURUMU, AML_BITIS_TARIHI, SALON_HAZIRMI, SALON_S' +
        'TERILE_ALINDIMI, ANESTEZI_YAPILDIMI FROM AML_RANDEVU'
      'WHERE'
      '  DOSYA_NO = :DOSYA_NO')
    SQLRecCount.Strings = (
      'SELECT Count(*) FROM ('
      'SELECT * FROM AML_RANDEVU'
      ''
      ')')
    Session = OraSession1
    SQL.Strings = (
      ''
      ''
      ''
      '    SELECT '
      ''
      
        ' AMELIYATHANE_PANO.SAAT, AMELIYATHANE_PANO.HASTA_ADI_SOYADI, AME' +
        'LIYATHANE_PANO.DOKTOR_ADI_SOYADI, AMELIYATHANE_PANO.AMELIYAT_TUR' +
        'U, HASTA_GELDIMI, '
      
        ' HASTA_GELME_TARIH, AML_BASLAMA_TARIHI, ANESTEZI_ZAMANI, DR_GIRI' +
        'S_ZAMANI, HASTA_OZEL_DURUMU, AML_BASLADIMI, AML_BITTIMI, AML_BIT' +
        'IS_TARIHI, SALON_HAZIRMI,'
      
        ' ANESTEZI_YAPILDIMI, AML_RANDEVU.DOSYA_NO, SALON_STERILE_ALINDIM' +
        'I'
      ''
      '    FROM AML_RANDEVU, AMELIYATHANE_PANO'
      '    '
      '    WHERE AMELIYATHANE_PANO.DOSYA_NO = AML_RANDEVU.DOSYA_NO'
      ''
      '    ORDER BY SAAT '
      '')
    Active = True
    Left = 352
    Top = 624
    object TabloListSAAT: TStringField
      FieldName = 'SAAT'
      Size = 10
    end
    object TabloListHASTA_ADI_SOYADI: TStringField
      FieldName = 'HASTA_ADI_SOYADI'
      Size = 80
    end
    object TabloListDOKTOR_ADI_SOYADI: TStringField
      FieldName = 'DOKTOR_ADI_SOYADI'
      Size = 80
    end
    object TabloListAMELIYAT_TURU: TStringField
      FieldName = 'AMELIYAT_TURU'
      Size = 150
    end
    object TabloListHASTA_GELDIMI: TStringField
      FieldName = 'HASTA_GELDIMI'
      Size = 1
    end
    object TabloListHASTA_GELME_TARIH: TDateTimeField
      FieldName = 'HASTA_GELME_TARIH'
    end
    object TabloListAML_BASLAMA_TARIHI: TDateTimeField
      FieldName = 'AML_BASLAMA_TARIHI'
    end
    object TabloListANESTEZI_ZAMANI: TDateTimeField
      FieldName = 'ANESTEZI_ZAMANI'
    end
    object TabloListDR_GIRIS_ZAMANI: TDateTimeField
      FieldName = 'DR_GIRIS_ZAMANI'
    end
    object TabloListHASTA_OZEL_DURUMU: TStringField
      FieldName = 'HASTA_OZEL_DURUMU'
      Size = 100
    end
    object TabloListAML_BASLADIMI: TStringField
      FieldName = 'AML_BASLADIMI'
      Size = 1
    end
    object TabloListAML_BITTIMI: TStringField
      FieldName = 'AML_BITTIMI'
      Size = 1
    end
    object TabloListAML_BITIS_TARIHI: TDateTimeField
      FieldName = 'AML_BITIS_TARIHI'
    end
    object TabloListSALON_HAZIRMI: TStringField
      FieldName = 'SALON_HAZIRMI'
      Size = 1
    end
    object TabloListSALON_STERILE_ALINDIMI: TStringField
      FieldName = 'SALON_STERILE_ALINDIMI'
      Size = 1
    end
    object TabloListANESTEZI_YAPILDIMI: TStringField
      FieldName = 'ANESTEZI_YAPILDIMI'
      Size = 1
    end
  end
  object TabloListDS: TOraDataSource
    DataSet = TabloList
    Left = 352
    Top = 672
  end
  object Tablo: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      ''
      ''
      ''
      '    SELECT '
      ''
      
        ' SAAT, HASTA_ADI_SOYADI, DOKTOR_ADI_SOYADI, AMELIYAT_TURU, HASTA' +
        '_GELDIMI, ANESTEZI,'
      
        ' HASTA_GELME_TARIH, AML_BASLAMA_TARIHI, ANESTEZI_ZAMANI, DR_GIRI' +
        'S_ZAMANI, HASTA_OZEL_DURUMU'
      ''
      '    FROM AMELIYATHANE_PANO, AML_RANDEVU'
      '    '
      '    WHERE AMELIYATHANE_PANO.DOSYA_NO = AML_RANDEVU.DOSYA_NO'
      ''
      '    ORDER BY SAAT DESC'
      '')
    Left = 400
    Top = 624
  end
  object TabloDS: TOraDataSource
    DataSet = Tablo
    Left = 400
    Top = 672
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 16
    Top = 24
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 192
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
end
