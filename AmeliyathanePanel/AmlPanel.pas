unit AmlPanel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, OraCall, DBAccess, Ora, MemDS,
  System.ImageList, Vcl.ImgList, Vcl.Buttons, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxCore,
  dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  dxColorEdit, cxButtonEdit, cxLabel, cxDBLabel, cxDBEdit, Vcl.Menus, cxButtons,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.ColorGrd, Vcl.ExtCtrls, cxGroupBox;

type
  TPanelAml = class(TForm)
    OraDataSource1: TOraDataSource;
    OraQuery2: TOraQuery;
    OraQuery2SAAT: TStringField;
    OraQuery2HASTA_ADI_SOYADI: TStringField;
    OraQuery2DOKTOR_ADI_SOYADI: TStringField;
    OraQuery2AMELIYAT_TURU: TStringField;
    OraQuery2HASTA_GELDIMI: TStringField;
    OraQuery1: TOraQuery;
    OraQuery1SAAT: TStringField;
    OraQuery1HASTA_ADI_SOYADI: TStringField;
    OraQuery1DOKTOR_ADI_SOYADI: TStringField;
    OraQuery1AMELIYAT_TURU: TStringField;
    OraQuery1HASTA_GELDIMI: TStringField;
    OraQuery1ANESTEZI: TStringField;
    OraQuery1HASTA_GELME_TARIH: TDateTimeField;
    OraQuery1AML_BASLAMA_TARIHI: TDateTimeField;
    OraQuery1ANESTEZI_ZAMANI: TDateTimeField;
    OraQuery1DR_GIRIS_ZAMANI: TDateTimeField;
    OraQuery1HASTA_OZEL_DURUMU: TStringField;
    OraSession1: TOraSession;
    OraDataSource2: TOraDataSource;
    OraQuery3: TOraQuery;
    OraQuery4: TOraQuery;
    OraQuery5: TOraQuery;
    OraQuery6: TOraQuery;
    OraQuery7: TOraQuery;
    OraQuery8: TOraQuery;
    OraQuery9: TOraQuery;
    TabloList: TOraQuery;
    TabloListSAAT: TStringField;
    TabloListHASTA_ADI_SOYADI: TStringField;
    TabloListDOKTOR_ADI_SOYADI: TStringField;
    TabloListAMELIYAT_TURU: TStringField;
    TabloListHASTA_GELDIMI: TStringField;
    TabloListHASTA_GELME_TARIH: TDateTimeField;
    TabloListAML_BASLAMA_TARIHI: TDateTimeField;
    TabloListANESTEZI_ZAMANI: TDateTimeField;
    TabloListDR_GIRIS_ZAMANI: TDateTimeField;
    TabloListHASTA_OZEL_DURUMU: TStringField;
    TabloListAML_BASLADIMI: TStringField;
    TabloListAML_BITTIMI: TStringField;
    TabloListAML_BITIS_TARIHI: TDateTimeField;
    TabloListSALON_HAZIRMI: TStringField;
    TabloListDS: TOraDataSource;
    Tablo: TOraQuery;
    TabloDS: TOraDataSource;
    cxGroupBox1: TcxGroupBox;
    cxButton1: TcxButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1SAAT: TcxGridDBColumn;
    cxGrid1DBTableView1HASTA_ADI_SOYADI: TcxGridDBColumn;
    cxGrid1DBTableView1DOKTOR_ADI_SOYADI: TcxGridDBColumn;
    cxGrid1DBTableView1AMELIYAT_TURU: TcxGridDBColumn;
    cxGrid1DBTableView1HASTA_GELDIMI: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxButton9: TcxButton;
    cxButton8: TcxButton;
    cxButton7: TcxButton;
    cxButton6: TcxButton;
    cxButton5: TcxButton;
    cxButton4: TcxButton;
    cxButton3: TcxButton;
    cxButton2: TcxButton;
    cxDBLabel9: TcxDBLabel;
    cxDBLabel8: TcxDBLabel;
    cxDBLabel7: TcxDBLabel;
    cxDBLabel6: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    cxGrid1DBTableView1ANESTEZI: TcxGridDBColumn;
    cxGrid1DBTableView1HASTA_GELME_TARIH: TcxGridDBColumn;
    cxGrid1DBTableView1AML_BASLAMA_TARIHI: TcxGridDBColumn;
    cxGrid1DBTableView1ANESTEZI_ZAMANI: TcxGridDBColumn;
    cxGrid1DBTableView1DR_GIRIS_ZAMANI: TcxGridDBColumn;
    cxGrid1DBTableView1HASTA_OZEL_DURUMU: TcxGridDBColumn;
    cxGrid1DBTableView1AML_BASLADIMI: TcxGridDBColumn;
    cxGrid1DBTableView1AML_BITTIMI: TcxGridDBColumn;
    cxGrid1DBTableView1AML_BITIS_TARIHI: TcxGridDBColumn;
    cxGrid1DBTableView1SALON_HAZIRMI: TcxGridDBColumn;
    TabloListSALON_STERILE_ALINDIMI: TStringField;
    TabloListANESTEZI_YAPILDIMI: TStringField;

    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PanelAml: TPanelAml;
  Date: TDateTime;
  HastaG : string;  var
  R:TRect;


implementation

{$R *.dfm}

uses labist, istekmal;

procedure TPanelAml.cxButton1Click(Sender: TObject);
begin

  TabloList.Edit;
  TabloListHASTA_GELDIMI.value:='T';
  cxButton1.Enabled:=False;
  TabloList.Post;
  TabloList.Refresh;

  {OraQuery2.First;
  OraQuery1.First;
  OraQuery3.Close;
  OraQuery3.SQL.Clear;
  OraQuery3.SQL.Text:= 'MERGE INTO HASTANE.AML_RANDEVU A USING (SELECT DOSYA_NO,SAAT FROM AMELIYATHANE_PANO) B ON (A.DOSYA_NO = B.DOSYA_NO AND B.SAAT='+QUOTEDSTR(OraQuery2SAAT.AsString)+') WHEN MATCHED THEN UPDATE SET HASTA_GELDIMI=''T''';
  OraQuery3.ExecSQL;
  OraQuery1.Close;
  OraQuery1.Open;
  OraQuery2.Close;
  OraQuery2.Open;
  Form3.OraQuery1.First;
  Form3.OraQuery1.Close;
  Form3.OraQuery1.Open;
  Form6.OraQuery1.First;
  Form6.OraQuery1.Close;
  Form6.OraQuery1.Open;
  Form7.OraQuery1.First;
  Form7.OraQuery1.Close;
  Form7.OraQuery1.Open;
  Form8.OraQuery1.First;
  Form8.OraQuery1.Close;
  Form8.OraQuery1.Open;  }
end;

procedure TPanelAml.cxButton2Click(Sender: TObject);
begin
  Date := Now;
  TabloList.Edit;
  TabloListANESTEZI_ZAMANI.Value:=Date;
  TabloListANESTEZI_YAPILDIMI.Value:='T';
  cxButton2.Enabled:=False;
  TabloList.Post;
  TabloList.Refresh;

  {OraQuery1.First;
  OraQuery7.Close;
  OraQuery4.Close;
  OraQuery4.SQL.Clear;
  OraQuery7.SQL.Text:= 'MERGE INTO HASTANE.AML_RANDEVU A USING (SELECT DOSYA_NO,SAAT FROM AMELIYATHANE_PANO) B ON (A.DOSYA_NO = B.DOSYA_NO AND B.SAAT='+QUOTEDSTR(OraQuery1SAAT.AsString)+') WHEN MATCHED THEN UPDATE SET ANESTEZI_ZAMANI=SYSDATE';
  OraQuery4.SQL.Text:= 'UPDATE HASTANE.AMELIYATHANE_PANO SET ANESTEZI=''UYGULANDI'' WHERE SAAT='+QUOTEDSTR(OraQuery1SAAT.AsString)+' ';
  OraQuery4.ExecSQL;
  OraQuery7.ExecSQL;
  OraQuery1.Close;
  OraQuery1.Open;}
end;

procedure TPanelAml.cxButton3Click(Sender: TObject);
begin

  Date := Now;
  TabloList.Edit;
  TabloListAML_BASLAMA_TARIHI.Value:=Date;
  TabloListAML_BASLADIMI.Value:='T';
  cxButton3.Enabled:=False;
  TabloList.Post;
  TabloList.Refresh;

  {OraQuery2.First;
  OraQuery1.First;
  OraQuery8.Close;
  OraQuery8.SQL.Clear;
  OraQuery5.Close;
  OraQuery5.SQL.Clear;
  OraQuery8.SQL.Text:= 'MERGE INTO HASTANE.AML_RANDEVU A USING (SELECT DOSYA_NO,SAAT FROM AMELIYATHANE_PANO) B ON (A.DOSYA_NO = B.DOSYA_NO AND B.SAAT='+QUOTEDSTR(OraQuery1SAAT.AsString)+') WHEN MATCHED THEN UPDATE SET AML_BASLAMA_TARIHI=SYSDATE';
  OraQuery5.SQL.Text:='MERGE INTO HASTANE.AML_RANDEVU A USING (SELECT DOSYA_NO,SAAT FROM AMELIYATHANE_PANO) B ON (A.DOSYA_NO = B.DOSYA_NO AND B.SAAT='+QUOTEDSTR(OraQuery1SAAT.AsString)+') WHEN MATCHED THEN UPDATE SET AML_BASLADIMI=''T''';
  OraQuery5.ExecSQL;
  OraQuery8.ExecSQL;
  OraQuery1.Close;
  OraQuery1.Open;
  OraQuery2.Close;
  OraQuery2.Open;}
end;

procedure TPanelAml.cxButton4Click(Sender: TObject);
begin

  Date := Now;
  TabloList.Edit;
  TabloListAML_BITIS_TARIHI.Value:=Date;
  TabloListAML_BITTIMI.Value:='T';
  cxButton4.Enabled:=False;
  TabloList.Post;
  TabloList.Refresh;

  {OraQuery2.First;
  OraQuery1.First;
  OraQuery6.Close;
  OraQuery6.SQL.Clear;
  OraQuery9.Close;
  OraQuery9.SQL.Clear;
  OraQuery9.SQL.Text:= 'MERGE INTO HASTANE.AML_RANDEVU A USING (SELECT DOSYA_NO,SAAT FROM AMELIYATHANE_PANO) B ON (A.DOSYA_NO = B.DOSYA_NO AND B.SAAT='+QUOTEDSTR(OraQuery1SAAT.AsString)+') WHEN MATCHED THEN UPDATE SET AML_BITIS_TARIHI=SYSDATE';
  OraQuery6.SQL.Text:='MERGE INTO HASTANE.AML_RANDEVU A USING (SELECT DOSYA_NO,SAAT FROM AMELIYATHANE_PANO) B ON (A.DOSYA_NO = B.DOSYA_NO AND B.SAAT='+QUOTEDSTR(OraQuery1SAAT.AsString)+') WHEN MATCHED THEN UPDATE SET AML_BITTIMI=''T''';
  OraQuery6.ExecSQL;
  OraQuery9.ExecSQL;
  OraQuery1.Close;
  OraQuery1.Open;
  OraQuery2.Close;
  OraQuery2.Open;  }
end;

procedure TPanelAml.cxButton5Click(Sender: TObject);
begin
FrmIstek.Show;
end;

procedure TPanelAml.cxButton6Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TPanelAml.cxButton7Click(Sender: TObject);
begin
FrmMal.Show;
end;

procedure TPanelAml.cxButton8Click(Sender: TObject);
begin

  TabloList.Edit;
  TabloListSALON_STERILE_ALINDIMI.Value:='T';
  cxButton8.Enabled:=False;
  TabloList.Post;
  TabloList.Refresh;

  {OraQuery1.First;
  OraQuery4.Close;
  OraQuery4.SQL.Clear;
  OraQuery4.SQL.Text:='MERGE INTO HASTANE.AML_RANDEVU A USING (SELECT DOSYA_NO,SAAT FROM AMELIYATHANE_PANO) B ON (A.DOSYA_NO = B.DOSYA_NO AND B.SAAT='+QUOTEDSTR(OraQuery1SAAT.AsString)+') WHEN MATCHED THEN UPDATE SET SALON_HAZIRMI=''F''';
  OraQuery4.ExecSQL;
  OraQuery1.Close;
  OraQuery1.Open; }
end;

procedure TPanelAml.cxButton9Click(Sender: TObject);
begin

  cxButton9.Enabled:=False;
  TabloList.Edit;
  TabloListSALON_HAZIRMI.Value:='T';
  TabloList.Post;
  TabloList.Refresh;

  {OraQuery1.First;
  OraQuery4.Close;
  OraQuery4.SQL.Clear;
  OraQuery4.SQL.Text:='MERGE INTO HASTANE.AML_RANDEVU A USING (SELECT DOSYA_NO,SAAT FROM AMELIYATHANE_PANO) B ON (A.DOSYA_NO = B.DOSYA_NO AND B.SAAT='+QUOTEDSTR(OraQuery1SAAT.AsString)+') WHEN MATCHED THEN UPDATE SET SALON_HAZIRMI=''T''';
  OraQuery4.ExecSQL;
  OraQuery1.Close;
  OraQuery1.Open; }
end;

procedure TPanelAml.cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin

 if TabloListHASTA_GELDIMI.value='T'
  then cxButton1.Enabled:=False
    else cxButton1.Enabled:=True;

   if TabloListANESTEZI_YAPILDIMI.value='T'
  then cxButton2.Enabled:=False
    else cxButton2.Enabled:=True;

    if TabloListAML_BASLADIMI.value='T'
  then cxButton3.Enabled:=False
    else cxButton3.Enabled:=True;

     if TabloListAML_BITTIMI.value='T'
  then cxButton4.Enabled:=False
    else cxButton4.Enabled:=True;

     if TabloListSALON_STERILE_ALINDIMI.value='T'
  then cxButton8.Enabled:=False
    else cxButton8.Enabled:=True;

    if TabloListSALON_HAZIRMI.value='T'
  then cxButton9.Enabled:=False
    else cxButton9.Enabled:=True;

    end;
end.

