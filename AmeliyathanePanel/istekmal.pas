unit istekmal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,datamod,
  Grids, DBGrids, ComCtrls, StdCtrls, DBCtrls, Db,  Buttons, Menus,
  ExtCtrls, Ora, MemDS, DBAccess, Mask, RzEdit, RzTabs, RzPanel, RzRadGrp,
  RzDBCmbo, ImgList, RzDBGrid, RzButton, RzRadChk, RzLabel, QRCtrls,
  QuickRpt, RzCmboBx, RzDBLbl, CRGrid,Registry, ActnList, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, System.Actions, System.ImageList, dxSkinOffice2019Colorful,CxGridExportLink,
  dxSkinTheBezier, dxDateRanges, cxContainer, cxCheckBox, frxClass, frxDBSet,
  cxImageComboBox, cxImageList,system.variants, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations;
                                                                
type
  TFrmMal = class(TForm)
    PageControl1: TRzPageControl;
    TabSheet2: TRzTabSheet;
    DSIstek: TOraDataSource;
    DsGrup: TOraDataSource;
    BitBtn4: TBitBtn;
    QrIstek: TOraQuery;
    DsMalDet: TOraDataSource;
    QrGrup: TOraQuery;
    QrGrupGRUP_ADI: TStringField;
    QrMalD: TOraQuery;
    PopupMenu1: TPopupMenu;
    Yazdr1: TMenuItem;
    onizleme1: TMenuItem;
    SARFIYAT: TOraStoredProc;
    QrIstekADI: TStringField;
    QrIstekGRUP_ADI: TStringField;
    EditGrup: TRzEdit;
    Label4: TLabel;
    DBLookGRP: TRzDBLookupComboBox;
    BtnAra: TBitBtn;
    QrIstekKUTU_FIYAT: TFloatField;
    QrIstekADET_FIYAT: TFloatField;
    HAREKET_QR: TOraQuery;
    HAREKET_QRADI: TStringField;
    HAREKET_QRISLEM_TARIHI: TDateTimeField;
    HAREKET_QRSON_KULLANMA: TDateTimeField;
    HAREKET_SR: TOraDataSource;
    QrMalDPROTOKOL_NO: TFloatField;
    QrMalDTARIH: TDateTimeField;
    QrMalDMALZEME_ADI: TStringField;
    DBLookdepo: TRzDBLookupComboBox;
    EditDepo: TRzEdit;
    QrDepo: TOraQuery;
    DsDepo: TOraDataSource;
    QrDepoDEPO_ADI: TStringField;
    Label2: TLabel;
    EditMal: TRzEdit;
    Label3: TLabel;
    QrMalDBIRIM_ADI: TStringField;
    HAREKET_QRkttb: TStringField;
    HAREKET_QRROWNUM: TFloatField;
    QrMalDFIS_NO: TStringField;
    btnpreview: TBitBtn;
    btnPrint: TBitBtn;
    BitBtn2: TBitBtn;
    QrMalDISTEK_NO: TFloatField;
    QrIstekREUSE: TStringField;
    QrIstekCIKISTIPI: TStringField;
    QrDepoDEPO_NO: TIntegerField;
    QrGrupGRUP_KODU: TIntegerField;
    QrIstekDEPO_NO: TIntegerField;
    QrIstekMALZEME_NO: TIntegerField;
    QrIstekKUTU_MIKTARI: TIntegerField;
    QrIstekADET_MIKTARI: TIntegerField;
    QrIstekGRUBU: TIntegerField;
    QrIstekTB_MIKTARI: TIntegerField;
    QrIstekKT_BIRIMI: TIntegerField;
    QrIstekTB_BIRIMI: TIntegerField;
    QrMalDADETT: TStringField;
    QrMalDADET: TIntegerField;
    QrMalDODEME: TIntegerField;
    QrMalDBIRIMI: TIntegerField;
    QrMalDGRUP_KODU: TIntegerField;
    QrMalDMALZEME_KODU: TIntegerField;
    HAREKET_QRKUTU_MIKTARI: TIntegerField;
    HAREKET_QRADET_MIKTARI: TIntegerField;
    HAREKET_QRISLEM_NO: TFloatField;
    QrIstekMINIMUM_STOK: TFloatField;
    QrIstekMAXIMUM_STOK: TFloatField;
    QrIstekreuse_s: TStringField;
    QrIstekCIKISTIPI_S: TStringField;
    QrIstekDURUM: TStringField;
    lbsimge1: TLabel;
    Label15: TLabel;
    lbSimge2: TLabel;
    Label16: TLabel;
    lbSimge3: TLabel;
    Label17: TLabel;
    ImageList1: TImageList;
    QrIstekROWID: TStringField;
    QrIstekBARKOD: TStringField;
    N1: TMenuItem;
    DepodurumBarkodl1: TMenuItem;
    EditBarkod: TRzEdit;
    Label8: TLabel;
    QrIstekBUTCE_KODU: TStringField;
    QrIstekFARK: TFloatField;
    QrIstekTOPLAM_ADET: TFloatField;
    HAREKET_QRFSIRA_NO: TFloatField;
    QrMalDISLEM_NO: TFloatField;
    QrMalDROWID: TStringField;
    QrAltGrup: TOraQuery;
    DsAltGrup: TOraDataSource;
    EditAltGrup: TRzEdit;
    LookAltGrup: TRzDBLookupComboBox;
    Label9: TLabel;
    QrIstekBUTCE_INDIRIM_ORANI: TFloatField;
    QrIstekRECETE_TIPI: TStringField;
    QrMalDKT_BIRIMI: TIntegerField;
    QrMalDTB_BIRIMI: TIntegerField;
    QrSablonM: TOraQuery;
    QrSablonMSIRA_NO: TFloatField;
    QrSablonMDEPO_NO: TIntegerField;
    QrSablonMACIKLAMA: TStringField;
    DsSablon: TOraDataSource;
    QrSablonD: TOraQuery;
    QrSablonDSIRA_NO: TFloatField;
    QrSablonDMALZEME_NO: TIntegerField;
    QrSablonDKUTU_MIKTARI: TIntegerField;
    QrSablonDADET_MIKTARI: TIntegerField;
    DsSablonD: TOraDataSource;
    TabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    DBLookupSablon: TRzDBLookupComboBox;
    RzDBGrid2: TCRDBGrid;
    EditSablon: TRzEdit;
    QrIstekSKUTU: TFloatField;
    QrIstekSADET: TFloatField;
    QrIstekDOVIZ_ADI: TStringField;
    PanelOtel: TRzGroupBox;
    DBLookupOtel: TRzDBLookupComboBox;
    QrIstekBUTCE_INDIRIM_ORANI2: TFloatField;
    QrSablonDMLZ_ADI: TStringField;
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabelkurum: TQRLabel;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    QRLabel11: TQRLabel;
    Editozel: TRzEdit;
    PanelAktar: TRzPanel;
    Label1: TLabel;
    labTop: TLabel;
    Lbkutu: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    BtnAktar: TBitBtn;
    DBGrid1: TCRDBGrid;
    kutu_miktari: TRzEdit;
    Adet_miktari: TRzEdit;
    DBGrid2: TCRDBGrid;
    editFis: TRzEdit;
    Btniptal: TBitBtn;
    RadioCikis: TRzRadioGroup;
    BtnSablon: TBitBtn;
    Checkkurum: TRzCheckBox;
    GrMedulapaket: TRzGroupBox;
    Combopaket: TRzComboBox;
    TbPrtkl: TOraQuery;
    TbPrtklADI: TStringField;
    TbPrtklSOYADI: TStringField;
    TbPrtklPROTOKOL_NO: TFloatField;
    TbPrtklDOSYA_NO: TFloatField;
    TbPrtklKURUM_NO: TIntegerField;
    TbPrtklBOLUM: TFloatField;
    TbPrtklDURUM: TStringField;
    TbPrtklPAKET: TStringField;
    TbPrtklHASTA_A_Y: TIntegerField;
    TbPrtklSEVK_ZINCIRI_ATLANMIS: TStringField;
    TbPrtklKURUM_ADI: TStringField;
    TbPrtklTIP_MERKEZI_INDIRIMI: TIntegerField;
    TbPrtklACIKLAMA: TStringField;
    TbPrtklOTEL_NO: TIntegerField;
    TbPrtklISTISNA: TStringField;
    TbPrtklDR_KODU: TFloatField;
    TbPrtklSIGORTA_N0: TStringField;
    TbPrtklGTARIH: TDateTimeField;
    TbPrtklKLINIK_KODU: TStringField;
    DsLprtkl: TOraDataSource;
    RzDBLabel2: TRzDBLabel;
    QrIstekKUTU_FARK: TFloatField;
    QrIstekADET_FARK: TFloatField;
    QrMalDFATURA_TIPI: TFloatField;
    QrMalDFTIPI: TStringField;
    QrMalDLOGIN: TStringField;
    TbPrtklGSSMI: TStringField;
    DsDr: TOraDataSource;
    QrDr: TOraQuery;
    QrDrDR_KODU: TFloatField;
    QrDrADI_SOYADI: TStringField;
    QrDrBOLUM: TFloatField;
    QrDrBAZ_ALINACAK_DR: TFloatField;
    QrDrBRANS: TStringField;
    QrDrTC_KIMLIK_NO: TFloatField;
    LabelDr: TLabel;
    DBLookDr: TRzDBLookupComboBox;
    Radiodr: TRzRadioGroup;
    Label10: TLabel;
    editButceKodu: TRzEdit;
    editUBBKodu: TRzEdit;
    Label11: TLabel;
    TbPrtklMEDULA_TAKIP_TURU: TStringField;
    QrIstekKRITIK_STOK: TFloatField;
    EditDr: TRzEdit;
    LblUyari: TRzLabel;
    QrIstekTEMIN_DURUMU: TStringField;
    QrEhuInsert: TOraQuery;
    PopupMenu2: TPopupMenu;
    GriddekiKolonlarnSrasnSakla1: TMenuItem;
    TbPrtklTAMAMLAYACI_SIGORTA: TFloatField;
    QrDestekKrFiyat: TOraQuery;
    TbPrtklKULLANILACAK_MALZEME: TIntegerField;
    QrDestekKrFiyatKUTU_FIYAT: TFloatField;
    QrDestekKrFiyatADET_FIYAT: TFloatField;
    HAREKET_QRGIRIS_ADET_FIYATI: TFloatField;
    HAREKET_QRMALIYET_KATSAYISI: TFloatField;
    Label97: TLabel;
    EditKareKod: TRzEdit;
    Label5: TLabel;
    EditKareSkt: TRzEdit;
    LblAyrac: TLabel;
    MemoChar: TRzMemo;
    QrIstekPAKETMI: TStringField;
    Label12: TLabel;
    EditBarkodIade: TRzEdit;
    QrMalDOZEL_KOD: TStringField;
    QrIstekISTENMEYECEK_GUN: TIntegerField;
    Label13: TLabel;
    Label14: TLabel;
    QrIstekACIKLAMA: TStringField;
    Label108: TLabel;
    EditEtkenMadde2: TRzEdit;
    DblookupEtkenMadde2: TRzDBLookupComboBox;
    QrIstekUBBKODU: TStringField;
    QrIlkUcretBul: TOraQuery;
    QrMalDBARKOD: TStringField;
    QrMalDUCRETI: TFloatField;
    HAREKET_QRFATURASATIRACK: TStringField;
    RzGroupBox3: TRzGroupBox;
    LookupIsleminYapYer: TRzDBLookupComboBox;
    QrDepoISLEM_YAPILAN_YER: TFloatField;
    GrMedulaOzelDurum: TRzGroupBox;
    ComboOzelDurum: TRzComboBox;
    PageListe: TRzPageControl;
    TabSheet3: TRzTabSheet;
    dbGridListe: TCRDBGrid;
    QrSk: TOraQuery;
    DsSK: TOraDataSource;
    QrSkADI: TStringField;
    QrSkBARKOD: TStringField;
    QrSkUBBKODU: TStringField;
    QrSkBUTCE_KODU: TStringField;
    QrSkSIRA_NO: TFloatField;
    QrSkDEPO_NO: TFloatField;
    QrSkKULLANICI: TStringField;
    QrSkMALZEME_NO: TFloatField;
    BtnSkEkle: TRzBitBtn;
    SkKullanlanlaraEkle1: TMenuItem;
    RadioListe: TRzRadioGroup;
    qrmua: TOraQuery;
    qrmuaMUADIL_MALZEME_NO: TFloatField;
    qrmuaADI: TStringField;
    dsmua: TOraDataSource;
    GridMuadil: TCRDBGrid;
    LblMuadil: TRzLabel;
    qrmuaDEPODAKI_ADET: TFloatField;
    qrmuaDEPODAKI_KUTU: TFloatField;
    QrIstekHASTAYA_CIKILAMASIN: TStringField;
    HAREKET_QRFATURA_NO: TStringField;
    HAREKET_QRTARIH_F: TDateTimeField;
    QrIstekKDV_ORANI_SATIS: TIntegerField;
    TbPrtklBOLUMDE_FARK_ALINMASIN: TStringField;
    TbPrtklMEDULA_DEVREDEN_KURUM: TStringField;
    TbPrtklGSS_YDOGAN_SIRA: TStringField;
    TbPrtklMEDULA_TAKIP_TIPI: TStringField;
    TbPrtklHASTA_C_E: TStringField;
    QrIstekMALZEME_NO_S: TStringField;
    QrDepoSTERILIZASYON_DEPOSU_MU: TStringField;
    QrDepoTALI_DEPO_MU: TStringField;
    QrDepoKONSINYE_DEPOSU_MU: TStringField;
    HAREKET_QRFIRMA_ADI: TStringField;
    HAREKET_QRKDV: TFloatField;
    QrMalDILAC_ORDER_NO: TFloatField;
    Label18: TLabel;
    EditStokKodu: TRzEdit;
    qrdep: TOraQuery;
    qrdepSTERILIZASYON_DEPOSU_MU: TStringField;
    QrIstekSTERILIZASYON_VARMI: TStringField;
    RzGroupBox1: TRzGroupBox;
    lookupsteril: TRzDBLookupComboBox;
    qrsteril: TOraQuery;
    dssteril: TOraDataSource;
    qrsterilDEPO_NO: TIntegerField;
    qrsterilDEPO_ADI: TStringField;
    qrtemp: TOraQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    qrdepSTERIL_DEPO_NO: TFloatField;
    QrIstekMALZEME_CIKILMASIN: TStringField;
    QrDusulecekstok: TOraQuery;
    QrDusulecekstokKODU: TFloatField;
    QrDusulecekstokSTOK_KODU: TFloatField;
    QrDusulecekstokADET: TFloatField;
    QrDusulecekstokBIRIMI: TFloatField;
    QrDusulecekstokACIKLAMA: TStringField;
    QrDusulecekstokBOLUMLER: TStringField;
    QrDusulecekstokADI: TStringField;
    QrBolum: TOraQuery;
    QrBolumISLEM: TStringField;
    QrBolumPESIN: TFloatField;
    QrBolumKURUM_UCRETI: TCurrencyField;
    QrBolumDRY0: TIntegerField;
    QrBolumDRY1: TFloatField;
    QrBolumDRY2: TFloatField;
    QrBolumGRUP_KODU: TIntegerField;
    QrBolumKR_OZEL_KOD: TStringField;
    QrBolumTTBBIRIMI: TFloatField;
    QrBolumKRTTBBIRIMI: TFloatField;
    QrBolumFARK: TFloatField;
    QrBolumDRPAYI1: TFloatField;
    QrBolumDRPAYI2: TFloatField;
    QrBolumDRPAYI3: TFloatField;
    QrBolumFARKYUZDE1: TFloatField;
    QrBolumFARKYUZDE2: TFloatField;
    QrBolumFARKYUZDE3: TFloatField;
    QrBolumUCRETI_YEDEK: TCurrencyField;
    QrBolumKODU: TFloatField;
    QrBolumKR_DOVIZ_KODU: TFloatField;
    QrBolumFARKPAYI2: TFloatField;
    QrBolumFARKPAYI3: TFloatField;
    QrBolumEXTRA_FARK: TFloatField;
    QrBolumEXTRA_FARK_ISLEM_KODU: TFloatField;
    QrBolumILKUCRET: TFloatField;
    QrBolumKDV_ORANI_SATIS: TIntegerField;
    QrDepoKILIT: TStringField;
    QrIstekOZEL_PAKET_MI: TStringField;
    qrOtoBarkod: TOraQuery;
    qrOtoBarkodFSIRA_NO: TFloatField;
    qrOtoBarkodMALZEME_NO: TFloatField;
    qrOtoBarkodBARKOD: TFloatField;
    qrOtoBarkodBIRIMI: TFloatField;
    qrOtoBarkodKULLANILDI: TStringField;
    qrOtoBarkodISLEM_NO: TFloatField;
    QrIstekTIPI: TStringField;
    QrIstekMEDULA_ADETI: TFloatField;
    QrMalDROWID1: TStringField;
    QrMalDADET_MIKTARI: TIntegerField;
    MALZEME_SARFIYAT_V2: TOraStoredProc;
    editkare: TRzEdit;
    Label19: TLabel;
    MALZEME_SEVK_V2: TOraStoredProc;
    IS_GIRIS: TOraStoredProc;
    ActionList1: TActionList;
    edtaciklama: TRzEdit;
    CheckMuadil: TRzCheckBox;
    QrDepoSTERIL_DEPO_NO: TFloatField;
    QrIsteksonkullanmatarihi: TStringField;
    EskiGrideGe1: TMenuItem;
    cxGridliste: TcxGrid;
    cxGridlisteDBTableView1: TcxGridDBTableView;
    cxGridlisteLevel1: TcxGridLevel;
    cxGridlisteDBTableView1ADI: TcxGridDBColumn;
    cxGridlisteDBTableView1KUTU_FIYAT: TcxGridDBColumn;
    cxGridlisteDBTableView1ADET_FIYAT: TcxGridDBColumn;
    cxGridlisteDBTableView1KUTU_MIKTARI: TcxGridDBColumn;
    cxGridlisteDBTableView1ADET_MIKTARI: TcxGridDBColumn;
    cxGridlisteDBTableView1GRUBU: TcxGridDBColumn;
    cxGridlisteDBTableView1TB_MIKTARI: TcxGridDBColumn;
    cxGridlisteDBTableView1MINIMUM_STOK: TcxGridDBColumn;
    cxGridlisteDBTableView1MAXIMUM_STOK: TcxGridDBColumn;
    cxGridlisteDBTableView1CIKISTIPI_S: TcxGridDBColumn;
    cxGridlisteDBTableView1BARKOD: TcxGridDBColumn;
    cxGridlisteDBTableView1BUTCE_KODU: TcxGridDBColumn;
    cxGridlisteDBTableView1FARK: TcxGridDBColumn;
    cxGridlisteDBTableView1TOPLAM_ADET: TcxGridDBColumn;
    cxGridlisteDBTableView1SKUTU: TcxGridDBColumn;
    cxGridlisteDBTableView1SADET: TcxGridDBColumn;
    cxGridlisteDBTableView1DOVIZ_ADI: TcxGridDBColumn;
    cxGridlisteDBTableView1KUTU_FARK: TcxGridDBColumn;
    cxGridlisteDBTableView1ADET_FARK: TcxGridDBColumn;
    cxGridlisteDBTableView1KRITIK_STOK: TcxGridDBColumn;
    cxGridlisteDBTableView1UBBKODU: TcxGridDBColumn;
    cxGridlisteDBTableView1HASTAYA_CIKILAMASIN: TcxGridDBColumn;
    cxGridlisteDBTableView1MALZEME_NO_S: TcxGridDBColumn;
    cxGridlisteDBTableView1sonkullanmatarihi: TcxGridDBColumn;
    TbPrtklTRIAJ_DEGERI: TStringField;
    PopupMenu3: TPopupMenu;
    brnSonkullanma: TMenuItem;
    QrIstekBIRIM_ADI: TStringField;
    chkFatura: TRzCheckBox;
    qrBagliislem: TOraQuery;
    qrBagliislemHASTANE_NO: TFloatField;
    qrBagliislemISLEM_KODU: TFloatField;
    qrBagliislemMIKTAR: TFloatField;
    qrBagliislemBOLUM: TFloatField;
    qrBagliislemKURUM_NO: TFloatField;
    qrBagliislemHASTA_A_Y: TFloatField;
    qrBagliislemAKTIF_PASIF: TStringField;
    qrBagliislemROWID: TStringField;
    cxGridlisteDBTableView1RECETE_TIPI: TcxGridDBColumn;
    HAREKET_QRLOT_NO: TStringField;
    HAREKET_QRSERI_NO: TStringField;
    chorderfilter: TcxCheckBox;
    QrMalDKAREKOD_TIPI: TStringField;
    checkiade: TRzCheckBox;
    BitBtn1: TBitBtn;
    QrMalDFATURA_NO: TStringField;
    ExceleAktar1: TMenuItem;
    SaveDialog1: TSaveDialog;
    chTum: TcxCheckBox;
    QrDestekKrFiyatKUTU_FARK2: TFloatField;
    QrIstekFARK_AKTAR: TStringField;
    qrmuaMALZEME_NO: TFloatField;
    qrBagliislemMALZEME_NO: TFloatField;
    QrMalDKAREKOD: TStringField;
    cxImageList1: TcxImageList;
    cxGridlisteDBTableView1DURUM: TcxGridDBColumn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1TARIH: TcxGridDBColumn;
    cxGrid1DBTableView1MALZEME_ADI: TcxGridDBColumn;
    cxGrid1DBTableView1FIS_NO: TcxGridDBColumn;
    cxGrid1DBTableView1ADETT: TcxGridDBColumn;
    cxGrid1DBTableView1ODEME: TcxGridDBColumn;
    cxGrid1DBTableView1FTIPI: TcxGridDBColumn;
    cxGrid1DBTableView1LOGIN: TcxGridDBColumn;
    cxGrid1DBTableView1OZEL_KOD: TcxGridDBColumn;
    cxGrid1DBTableView1BARKOD: TcxGridDBColumn;
    cxGrid1DBTableView1ILAC_ORDER_NO: TcxGridDBColumn;
    cxGrid1DBTableView1KAREKOD: TcxGridDBColumn;
    HAREKET_QRBARKOD: TStringField;
    QrMalDKAREKOD_KULLANILACAK_MI: TStringField;
    procedure NEWISTEK;
    procedure Mal_Aktar(islem_no,malzeme_adedi:Double;birimi:Double;ucret,ilkucret:currency;tipi,gonderen_tus:string);
    Function  filter_et:Boolean;
    procedure Yazdr1Click(Sender: TObject);
    procedure onizleme1Click(Sender: TObject);
    procedure btnpreviewClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnAraClick(Sender: TObject);
    procedure DBLookGRPCloseUp(Sender: TObject);
    procedure Aktar(Sender:Tobject);
    Function  Mal_iade_ok:boolean;
    procedure DSIstekDataChange(Sender: TObject; Field: TField);
    procedure kutu_miktariChange(Sender: TObject);
    procedure Adet_miktariChange(Sender: TObject);
    procedure BtnAktarClick(Sender: TObject);
    procedure DBLookdepoCloseUp(Sender: TObject);
    procedure QrMalDCalcFields(DataSet: TDataSet);
    procedure HAREKET_QRCalcFields(DataSet: TDataSet);
    procedure EditMalChange(Sender: TObject);
    procedure EditMalKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BtniptalClick(Sender: TObject);
    procedure RadioCikisClick(Sender: TObject);
    procedure QrIstekCalcFields(DataSet: TDataSet);
    procedure dbGridListeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure kutu_miktariKeyPress(Sender: TObject; var Key: Char);
    procedure Adet_miktariKeyPress(Sender: TObject; var Key: Char);
    procedure EditGrupChange(Sender: TObject);
    procedure LookAltGrupCloseUp(Sender: TObject);
    procedure DBLookupSablonCloseUp(Sender: TObject);
    procedure BtnSablonClick(Sender: TObject);
    procedure RadiodrClick(Sender: TObject);
    procedure QrIstekBeforeOpen(DataSet: TDataSet);
    procedure DBLookDrCloseUp(Sender: TObject);
    procedure TbPrtklBeforeOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure HAREKET_QRBeforeOpen(DataSet: TDataSet);
    procedure GriddekiKolonlarnSrasnSakla1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QrDestekKrFiyatBeforeOpen(DataSet: TDataSet);
    procedure EditKareKodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditBarkodIadeKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DblookupEtkenMadde2CloseUp(Sender: TObject);
    procedure QrIlkUcretBulBeforeOpen(DataSet: TDataSet);
    procedure DsDepoDataChange(Sender: TObject; Field: TField);
    procedure EditBarkodChange(Sender: TObject);
    procedure BtnSkEkleClick(Sender: TObject);
    procedure SkKullanlanlaraEkle1Click(Sender: TObject);
    procedure RadioListeClick(Sender: TObject);
    procedure GridMuadilDblClick(Sender: TObject);
    procedure editkareKeyPress(Sender: TObject; var Key: Char);
    procedure CheckMuadilClick(Sender: TObject);
    procedure EskiGrideGe1Click(Sender: TObject);
    procedure brnSonkullanmaClick(Sender: TObject);
    procedure yeni_yetki_seviyesi;
    Procedure Bagli_Islem_aktar(malzeme_no:double);
    procedure cxGridlisteDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure SkKullanlanlardanSL1Click(Sender: TObject);
    procedure chorderfilterClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ExceleAktar1Click(Sender: TObject);
    procedure DizaynEt1Click(Sender: TObject);
  private
  butce_indirimi:boolean;
  procedure grid_kolon_bilgilerini_sakla;
  procedure grid_kolon_bilgilerini_yukle;

    { Private declarations }
  public
  iadeoto,oto,parcali_iade_yapildi,oto_aktarim_sonucu:Boolean;
  hemsiremi:boolean;
  ozellikli_recete_seri,ozellikli_recete_no,adetbarkod:string;
  parcali_iade_miktari:integer;
  formun_kaynagi:string;
  procedure dosya_protokol_ayarlari_al;
  procedure init(ldosya_no,lprotokol_no,hhastane_no:double);
  function oto_malzeme_dus(ldosya_no,lprotokol_no,malzeme_kodu,gelen_dr_kodu:double;adet:String):Boolean;
  procedure mesaj_yaz(Mesaj:String);
  Function durum_update_et(dosya_no,protokol_no,bolum:Double):Boolean;

    { Public declarations }
  end;

var
  FrmMal: TFrmMal;
  kod_sayac:integer;
  bas_kodu,istek_no:double;
  aktarma_durumu:boolean;
  toplam:Extended;
  mdosya_no,mprotokol_no,hhastane_no:Extended;
  karekod_okunan_karekter_sayisi,karekod_ayrac_index_kodu:integer;
  ilkmi,gider_sistemi_aktif:Boolean;
  mal_ara_ada_gore:Boolean;
  gelen_hastane_no:double;


implementation

uses Main,utils,malfiyat, iadeunit1, istekL, ufrmfirmaana, uFrmOder;
{$R *.DFM}

function TFrmMal.oto_malzeme_dus(ldosya_no,lprotokol_no,malzeme_kodu,gelen_dr_kodu:double;adet:String):Boolean;

procedure Genel_ayarlar;
begin
if (TbPrtklhasta_a_y.value=2) or (tbPrtklMEDULA_TAKIP_TURU.value='G') then GrMedulapaket.Visible:=true;
if ( (TbPrtklhasta_a_y.value=1) OR (TbPrtklhasta_a_y.value=2) ) then GrMedulaOzelDurum.Visible:=true;
end;

procedure yabanci_ayarlari;
begin
if (DM.qrhastanehastane_tipi.value='Y') and  (DM.QrKurumyerli.Value=1) then begin
case dm.QrKurumKULLANILACAK_MALZEME_GRUBU.asinteger of
         1:doviz_kodu:=0;
         2:doviz_kodu:=0;
         3:doviz_kodu:=1;
         4:doviz_kodu:=2;
         5:doviz_kodu:=3;
         else doviz_kodu:=0;
                END;
dm.qrotel.Open;
panelotel.visible:=TRUE;
                               end
else doviz_kodu:=0; // yerli sigortalarda
end;

VAR
s_kr_son,s_kr_bas,s_fr_son,s_fr_bas:string;
KR_A_Y_STR,FR_A_Y_STR,kt_fiyat_alan_stR,kutu_str,kt_fr_fiyat_alan_str,kutu_F_str,ad_fiyat_alan_str,ADET_str,ad_fr_fiyat_alan_str,adet_f_str:STRING;
begin
oto:=true;
oto_aktarim_sonucu:=False;
tbprtkl.close;
if DM.hastanekeybilgisi_al('kapali_prot_oto_malzeme')='T' then tbprtkl.sql[6]:='';
//Eryaman hastanesi talebi üzerine kapalý protokoldeki laboratuvar iþlemlerini onaylamak için eklendi -- Uður

tbprtkl.paramByName('DOSYA_NO').AsFloat:=ldosya_no;
tbprtkl.paramByName('protokol_no').AsFloat:=lprotokol_no;
tbprtkl.open;
if ((bol_kodu>=78) and (bol_kodu<100)) or (bol_kodu=10) or (bol_kodu=15) or (bol_kodu=60) then {}
else if not (tbprtkl.recordCount>0)   then raise exception.Create('Geçerli Protokol Yok');

QrDepo.close;
QrDepo.ParamByname('lname').asString:=usern;
QrDepo.open;

if Dm.hastanekeybilgisi_al('yeni_guvenlik_sistemi')='T' then yeni_yetki_seviyesi;

lbsimge1.caption:=Chr(74);
lbsimge2.caption:=Chr(75);
lbsimge3.caption:=Chr(76);

if (QrDepoDepo_no.value>=0) and (QrDepo.Recordcount>0) then depo_no:=QrDepoDepo_no.value
else depo_no:= -1000;

dosya_protokol_ayarlari_al;
EditDepo.text:=QrDepoDepo_ADI.value;
QrSablonM.Close;
QrSablonM.ParamByName('depo_no').aSFloat:=depo_no;
QrSablonM.Open;
QrSablonD.Open;

DM.QrKurum.close;
DM.QrKurum.ParamByName('KR_KODU').AsFloat:=TbPRTKLKURUM_NO.value;
DM.QrKurum.open;

QrDr.SQL[2]:=' AND DR_KODU= '+FloatToStr(gelen_dr_kodu);
QrDr.Open;
DBLookDr.KeyValue:=QrDrDR_KODU.Value;
DBLookDrCloseUp(Self);


case TbPrtklHASTA_A_Y.asinteger of
1:begin //ayaktan
KR_A_Y_STR:='KI.KR_INDIRIM_ORANI';
FR_A_Y_STR:='KI.FARK_INDIRIM_ORANI';

s_kr_son:='*((100-NVL(KI.KR_INDIRIM_ORANI,0))/100)),2)';
s_kr_son:='CASE WHEN KI.KR_INDIRIM_ORANI>100 THEN (B.KUTU_FIYAT*B.KATSAYI)*((NVL(KI.KR_INDIRIM_ORANI,0))/100) ELSE  (B.KUTU_FIYAT*B.KATSAYI)*((100-NVL(KI.KR_INDIRIM_ORANI,0))/100)),2) END';
s_kr_bas:='ROUND((';
s_fr_son:='*((100-NVL(KI.FARK_INDIRIM_ORANI,0))/100)),2)';
s_fr_bas:='ROUND((';
  end;
2:begin //yatan
KR_A_Y_STR:='KI.KR_INDIRIM_ORANI_YATAN';
FR_A_Y_STR:='KI.FARK_INDIRIM_ORANI_YATAN';

s_kr_son:='*((100-NVL(KI.KR_INDIRIM_ORANI_YATAN,0))/100)),2)';
s_kr_bas:='ROUND((';
s_fr_son:='*((100-NVL(KI.FARK_INDIRIM_ORANI_YATAN,0))/100)),2)';
s_fr_bas:='ROUND((';

  end;
end;

case dm.QrKurumKULLANILACAK_MALZEME_GRUBU.asinteger of
        1:BEGIN
          kt_fiyat_alan_str:='(B.KUTU_FIYAT*B.KATSAYI)';
          kt_fr_fiyat_alan_str:='(B.KUTU_FARK1)';
          ad_fiyat_alan_str:='(B.ADET_FIYAT*B.KATSAYI2)';
          ad_fr_fiyat_alan_str:='(B.ADET_FARK1)';
          END;
        2:BEGIN
          kt_fiyat_alan_str:='(B.BUTCE_KT)';
          kt_fr_fiyat_alan_str:='(B.KUTU_FARK2)';
          ad_fiyat_alan_str:='(B.BUTCE_TB)';
          ad_fr_fiyat_alan_str:='(B.ADET_FARK2)';
          END;
        3:BEGIN
          kt_fiyat_alan_str:='(B.KUTU_FIYATI_3)';
          kt_fr_fiyat_alan_str:='(B.KUTU_FARK3)';
          ad_fiyat_alan_str:='(B.ADET_FIYATI_3)';
          ad_fr_fiyat_alan_str:='(B.ADET_FARK3)';
          END;
        4:BEGIN
          kt_fiyat_alan_str:='(B.KUTU_FIYATI_4)';
          kt_fr_fiyat_alan_str:='(B.KUTU_FARK4)';
          ad_fiyat_alan_str:='(B.ADET_FIYATI_4)';
          ad_fr_fiyat_alan_str:='(B.ADET_FARK4)';
          END;
        5:BEGIN
          kt_fiyat_alan_str:='(B.KUTU_FIYATI_5)';
          kt_fr_fiyat_alan_str:='(B.KUTU_FARK5)';
          ad_fiyat_alan_str:='(B.ADET_FIYATI_5)';
          ad_fr_fiyat_alan_str:='(B.ADET_FARK5)';
          END;
END;

kutu_str:='CASE WHEN '+KR_A_Y_STR+'>100 THEN round( '+kt_fiyat_alan_str+'*((NVL('+KR_A_Y_STR+',0))/100),2)  ELSE  round( '+kt_fiyat_alan_str+'*((100-NVL('+KR_A_Y_STR+',0))/100),2) END KUTU_FIYAT';
kutu_F_str:='CASE WHEN '+FR_A_Y_STR+'>100 THEN round( '+kt_fr_fiyat_alan_str+'*((NVL('+FR_A_Y_STR+',0))/100),2)  ELSE  round( '+kt_fr_fiyat_alan_str+'*((100-NVL('+FR_A_Y_STR+',0))/100),2) END KUTU_FARK';
ADET_str:='CASE WHEN '+KR_A_Y_STR+'>100 THEN round( '+ad_fiyat_alan_str+'*((NVL('+KR_A_Y_STR+',0))/100),2)  ELSE  round( '+ad_fiyat_alan_str+'*((100-NVL('+KR_A_Y_STR+',0))/100),2) END ADET_FIYAT';
adet_f_str:='CASE WHEN '+FR_A_Y_STR+'>100 THEN round( '+ad_fr_fiyat_alan_str+'*((NVL('+FR_A_Y_STR+',0))/100),2)  ELSE  round( '+ad_fr_fiyat_alan_str+'*((100-NVL('+FR_A_Y_STR+',0))/100),2) END ADET_FARK';

QrIstek.SQL[1]:=kutu_str+','+ADET_str+','+kutu_F_str+','+adet_f_str+',';

if (dm.QrKurumKULLANILACAK_MALZEME_GRUBU.asinteger=2)  and (dm.QrKurumBUTCE_IND_UYGULANACAKMI.value='T') and ((tbprtklhasta_a_y.value=2) or (tbprtklbolum.value=75))then butce_indirimi:=True
else butce_indirimi:=False;
yabanci_ayarlari;
Genel_ayarlar;
newistek;
QrAltGrup.open;
QrIstek.SQL[10]:='AND A.MALZEME_NO='+FloatToStr(malzeme_kodu);
DBLookdepoCloseUp(self);
Adet_miktari.Text:=adet;
//if qristek.recordcount=1 then
BtnAktarClick(Self);
//else messageDlg('Malzeme Yok veya ayný koddan 1 den fazla malzeme var kontrol ediniz.',mterror,[mbyes],0);
oto_malzeme_dus:=oto_aktarim_sonucu;
end;


Procedure TFrmMal.Bagli_Islem_aktar(malzeme_no:double);
var i:Integer;
    FrmIstekL:TFrmIstekL ;
Begin
qrBagliislem.close;
qrBagliislem.parambyname('MNO').value:=malzeme_no;
qrBagliislem.parambyname('BOLUM').value:=dm.TbPrtklBOLUM.Value;
qrBagliislem.parambyname('KURUM').value:=dm.TbPrtklKURUM_NO.Value;
qrBagliislem.parambyname('HASTA_A_Y').value:=dm.TbPrtklHASTA_A_Y.Value;
qrBagliislem.Open;

if qrbagliislem.RecordCount>0 then
   Begin
   qrBagliislem.First;

   while not qrBagliislem.eof do
        Begin
        qrbolum.close;
        qrbolum.paramByName('kodu').AsFloat:=qrBagliislemISLEM_KODU.value;
        qrbolum.paramByName('kr_no').AsFloat:=DM.TbPrtklKURUM_NO.value;
        qrbolum.paramByName('KRI_NO').AsFloat:=DM.TbPrtklKURUM_NO.value;
        qrbolum.paramByName('dr').AsFloat:=tbPrtklDr_kodu.value;
        qrbolum.open;



           for i := 1 to qrBagliislemMIKTAR.AsInteger do
           Begin

              try
               FrmIstekL:=TFrmIstekL.create(self);
               FrmIstekL.init(Dm.TbPrtklDOSYA_NO.Value,dm.TbPrtklPROTOKOL_NO.value,dm.TbPrtklHASTANE_NO.Value);
               if QrBolumGRUP_KODU.Value<=150 then
               FrmIstekL.RadioGrup.ItemIndex:=0 else FrmIstekL.RadioGrup.itemindex:=1;
               FrmIstekL.DBLookDr.KeyValue:=DBLookDr.KeyValue;

               FrmIstekL.Edit1.Text:=QrBolumISLEM.Text;
               FrmIstekL.BtnAra.Click;
               if dm.hastanekeybilgisi_al('islemgir_secim_cifttik')='T' then
               FrmIstekL.DBGriducretDblClick(self)
               else
               FrmIstekL.DBGriducretCellClick(DBGrid1.Columns[0]);
               FrmIstekL.BtnAktar.Click;
              finally
              FrmIstekL.BtnCikis.Click;
              FrmIstekL.free;
              end;


           End;
           qrbagliislem.next;
           End;

        end;
end;

procedure TFrmMal.init(ldosya_no,lprotokol_no,hhastane_no:double);


procedure Genel_ayarlar;
begin
if (TbPrtklhasta_a_y.value=2) then GrMedulapaket.Visible:=true;
if dm.hastanekeybilgisi_al('stk_kutuislemyasak')='T' then begin kutu_miktari.visible:=false;lbkutu.visible:=False; end;
if (dm.QrPassFIYAT_GOREMEZ.value='T') then
begin
dbGridListe.Columns[4].Visible:=false;
dbGridListe.Columns[5].Visible:=false;
dbGridListe.Columns[6].Visible:=false;
dbGridListe.Columns[7].Visible:=false;
dbGridListe.Columns[8].Visible:=false;
end;
end;


procedure yabanci_ayarlari;
begin

if (DM.qrhastanehastane_tipi.value='Y') and  (DM.QrKurumyerli.Value=1) then begin
case dm.QrKurumKULLANILACAK_MALZEME_GRUBU.asinteger of
         1:doviz_kodu:=0;
         2:doviz_kodu:=0;
         3:doviz_kodu:=1;
         4:doviz_kodu:=2;
         5:doviz_kodu:=3;
         else doviz_kodu:=0;
                END;
dm.qrotel.Open;
panelotel.visible:=TRUE;
                                 end
else doviz_kodu:=0; // yerli sigortalarda

end;
procedure yeni_yetki_seviyesi;
begin
Dm.QryeniYetki.close;
Dm.QryeniYetki.paramByname('LNAME').AsString:=usern;
Dm.QryeniYetki.open;

Btniptal.enabled:=False;
EditMal.Enabled:=True;
while not dm.QrYeniYetki.Eof do
begin
case  dm.QrYeniYetkiKODU.asinteger of
1022:Btniptal.enabled:=True;//Malzeme giriþinde iptal yapabilir
1294:EditMal.Enabled:=False;//malzeme adý ile arama pasif hale getirildi.Ýzmir Atasaðlýk istek
 end;
 dm.QrYeniYetki.next;
 end;
end;
VAR
s_kr_son,s_kr_bas,s_fr_son,s_fr_bas:string;
KR_A_Y_STR,FR_A_Y_STR,kt_fiyat_alan_stR,kutu_str,kt_fr_fiyat_alan_str,kutu_F_str,ad_fiyat_alan_str,ADET_str,ad_fr_fiyat_alan_str,adet_f_str:STRING;
depo_secimi:string[1];
begin
oto:=false;
gelen_hastane_no:=hhastane_no;
tbprtkl.close;
tbprtkl.paramByName('DOSYA_NO').AsFloat:=ldosya_no;
tbprtkl.paramByName('protokol_no').AsFloat:=lprotokol_no;
tbprtkl.open;
if ((bol_kodu>=78) and (bol_kodu<100)) or (bol_kodu=10) or (bol_kodu=15) or (bol_kodu=60) then {}
else if not (tbprtkl.recordCount>0)   then raise exception.Create('Geçerli Protokol Yok');
depo_secimi:='';
if hemsiremi then
depo_secimi:=Dm.hastanekeybilgisi_al('ilac_aktarda_depo_secme');
QrDepo.close;
QrDepo.ParamByname('lname').asString:=usern;
QrDepo.open;
if depo_secimi='T' then
begin
DBLookdepo.ClearKeyValue;
DBLookdepoCloseUp(self);
EditDepo.Text:='';
end
else
begin
DBLookdepo.KeyValue:=QrDepoDEPO_NO.Value;
DBLookdepoCloseUp(self);
end;

if Dm.hastanekeybilgisi_al('yeni_guvenlik_sistemi')='T' then yeni_yetki_seviyesi;

lbsimge1.caption:=Chr(74);
lbsimge2.caption:=Chr(75);
lbsimge3.caption:=Chr(76);

if (QrDepoDepo_no.value>=0) and (QrDepo.Recordcount>0) then depo_no:=QrDepoDepo_no.value
else depo_no:= -1000;

dosya_protokol_ayarlari_al;

if depo_secimi<>'T' then
EditDepo.text:=QrDepoDepo_ADI.value;

QrSablonM.Close;
QrSablonM.ParamByName('depo_no').aSFloat:=depo_no;
QrSablonM.Open;
QrSablonD.Open;

DM.QrKurum.close;
DM.QrKurum.ParamByName('KR_KODU').AsFloat:=TbPRTKLKURUM_NO.value;
DM.QrKurum.open;

if not dm.QrYapilanYer.Active then dm.QrYapilanYer.Active:=true;


case TbPrtklHASTA_A_Y.asinteger of
1:begin //ayaktan
KR_A_Y_STR:='KI.KR_INDIRIM_ORANI';
FR_A_Y_STR:='KI.FARK_INDIRIM_ORANI';

s_kr_son:='*((100-NVL(KI.KR_INDIRIM_ORANI,0))/100)),2)';
s_kr_son:='CASE WHEN KI.KR_INDIRIM_ORANI>100 THEN (B.KUTU_FIYAT*B.KATSAYI)*((NVL(KI.KR_INDIRIM_ORANI,0))/100) ELSE  (B.KUTU_FIYAT*B.KATSAYI)*((100-NVL(KI.KR_INDIRIM_ORANI,0))/100)),2) END';
s_kr_bas:='ROUND((';
s_fr_son:='*((100-NVL(KI.FARK_INDIRIM_ORANI,0))/100)),2)';
s_fr_bas:='ROUND((';
  end;
2:begin //yatan
KR_A_Y_STR:='KI.KR_INDIRIM_ORANI_YATAN';
FR_A_Y_STR:='KI.FARK_INDIRIM_ORANI_YATAN';

s_kr_son:='*((100-NVL(KI.KR_INDIRIM_ORANI_YATAN,0))/100)),2)';
s_kr_bas:='ROUND((';
s_fr_son:='*((100-NVL(KI.FARK_INDIRIM_ORANI_YATAN,0))/100)),2)';
s_fr_bas:='ROUND((';

  end
else
BEGIN
KR_A_Y_STR:='KI.KR_INDIRIM_ORANI';
FR_A_Y_STR:='KI.FARK_INDIRIM_ORANI';

s_kr_son:='*((100-NVL(KI.KR_INDIRIM_ORANI,0))/100)),2)';
s_kr_son:='CASE WHEN KI.KR_INDIRIM_ORANI>100 THEN (B.KUTU_FIYAT*B.KATSAYI)*((NVL(KI.KR_INDIRIM_ORANI,0))/100) ELSE  (B.KUTU_FIYAT*B.KATSAYI)*((100-NVL(KI.KR_INDIRIM_ORANI,0))/100)),2) END';
s_kr_bas:='ROUND((';
s_fr_son:='*((100-NVL(KI.FARK_INDIRIM_ORANI,0))/100)),2)';
s_fr_bas:='ROUND((';
END;

end;


case dm.QrKurumKULLANILACAK_MALZEME_GRUBU.asinteger of
        0,1:BEGIN
          kt_fiyat_alan_str:='(B.KUTU_FIYAT*B.KATSAYI)';
          kt_fr_fiyat_alan_str:='(B.KUTU_FARK1)';
          ad_fiyat_alan_str:='(B.ADET_FIYAT*B.KATSAYI2)';
          ad_fr_fiyat_alan_str:='(B.ADET_FARK1)';
          END;
        2:BEGIN
          kt_fiyat_alan_str:='(B.BUTCE_KT)';
          kt_fr_fiyat_alan_str:='(B.KUTU_FARK2)';
          ad_fiyat_alan_str:='(B.BUTCE_TB)';
          ad_fr_fiyat_alan_str:='(B.ADET_FARK2)';
          END;
        3:BEGIN
          kt_fiyat_alan_str:='(B.KUTU_FIYATI_3)';
          kt_fr_fiyat_alan_str:='(B.KUTU_FARK3)';            //burasii
          ad_fiyat_alan_str:='(B.ADET_FIYATI_3)';
          ad_fr_fiyat_alan_str:='(B.ADET_FARK3)';
          END;
        4:BEGIN
          kt_fiyat_alan_str:='(B.KUTU_FIYATI_4)';
          kt_fr_fiyat_alan_str:='(B.KUTU_FARK4)';
          ad_fiyat_alan_str:='(B.ADET_FIYATI_4)';
          ad_fr_fiyat_alan_str:='(B.ADET_FARK4)';
          END;
        5:BEGIN
          kt_fiyat_alan_str:='(B.KUTU_FIYATI_5)';
          kt_fr_fiyat_alan_str:='(B.KUTU_FARK5)';
          ad_fiyat_alan_str:='(B.ADET_FIYATI_5)';
          ad_fr_fiyat_alan_str:='(B.ADET_FARK5)';
          END;
END;

kutu_str:='CASE WHEN '+KR_A_Y_STR+'>100 THEN round( '+kt_fiyat_alan_str+'*((NVL('+KR_A_Y_STR+',0))/100),2)  ELSE  round( '+kt_fiyat_alan_str+'*((100-NVL('+KR_A_Y_STR+',0))/100),2) END KUTU_FIYAT';
kutu_F_str:='CASE WHEN '+FR_A_Y_STR+'>100 THEN round( '+kt_fr_fiyat_alan_str+'*((NVL('+FR_A_Y_STR+',0))/100),2)  ELSE  round( '+kt_fr_fiyat_alan_str+'*((100-NVL('+FR_A_Y_STR+',0))/100),2) END KUTU_FARK';
ADET_str:='CASE WHEN '+KR_A_Y_STR+'>100 THEN round( '+ad_fiyat_alan_str+'*((NVL('+KR_A_Y_STR+',0))/100),2)  ELSE  round( '+ad_fiyat_alan_str+'*((100-NVL('+KR_A_Y_STR+',0))/100),2) END ADET_FIYAT';
adet_f_str:='CASE WHEN '+FR_A_Y_STR+'>100 THEN round( '+ad_fr_fiyat_alan_str+'*((NVL('+FR_A_Y_STR+',0))/100),2)  ELSE  round( '+ad_fr_fiyat_alan_str+'*((100-NVL('+FR_A_Y_STR+',0))/100),2) END ADET_FARK';

QrIstek.SQL[1]:=kutu_str+','+ADET_str+','+kutu_F_str+','+adet_f_str+',';

if (dm.QrKurumKULLANILACAK_MALZEME_GRUBU.asinteger=2)  and (dm.QrKurumBUTCE_IND_UYGULANACAKMI.value='T') and ((tbprtklhasta_a_y.value=2) or (tbprtklbolum.value=75))then butce_indirimi:=True
else butce_indirimi:=False;
yabanci_ayarlari;
Genel_ayarlar;

if editdepo.text<>'' then
newistek;

QrAltGrup.open;

Radiodrclick(Self);

//if dm.hastanekeybilgisi_al('ilac_malzeme_dr_zorunlu')='T' then   begin
                                                                    DBLookDr.KeyValue:=TbPrtklDR_KODU.Value;
                                                                    DBLookDrCloseUp(EditDr);
//                                                                 end
//                                                                 else
//                                                                 begin
//                                                                    DBLookDr.ClearKeyValue;
//                                                                 end;

end;


procedure TFrmMal.dosya_protokol_ayarlari_al;
begin
case bol_kodu of
      10:begin  //sekreter
mdosya_no:=-10;
mprotokol_no:=-10;
         end;
      15:begin  //sekreter
mdosya_no:=-15;
mprotokol_no:=-15;
         end;
      60:begin
mdosya_no:=-60;
mprotokol_no:=-60;
         end;
      62:begin
mdosya_no:=-62;
mprotokol_no:=-62;
         end;
      80:begin
if TbPrtklPROTOKOL_NO.Value>0 then    begin
                                      mdosya_no:=TbPrtklDOSYA_NO.Value;
                                      mprotokol_no:=TbPrtklPROTOKOL_NO.Value;
                                      end
                                      else
                                      begin
if (TbPrtklPROTOKOL_NO.Value>0) and (dm.hastanekeybilgisi_al('radda_otomal_hastaya')='T') then
    begin
         mdosya_no:=TbPrtklDOSYA_NO.Value;
         mprotokol_no:=TbPrtklPROTOKOL_NO.Value;
    end
    else
    begin
                                      mdosya_no:=-2;
                                      mprotokol_no:=-2;
                                      end;
                                      end;
         end;
      82:begin
if (TbPrtklPROTOKOL_NO.Value>0) and (dm.hastanekeybilgisi_al('labda_otomal_hastaya')='T') then
    begin
         mdosya_no:=TbPrtklDOSYA_NO.Value;
         mprotokol_no:=TbPrtklPROTOKOL_NO.Value;
    end
    else
    begin
         mdosya_no:=-3;
         mprotokol_no:=-3;
    end;
         end;
    84:begin
if (TbPrtklPROTOKOL_NO.Value>0) and (dm.hastanekeybilgisi_al('labda_otomal_hastaya')='T') then
    begin
         mdosya_no:=TbPrtklDOSYA_NO.Value;
         mprotokol_no:=TbPrtklPROTOKOL_NO.Value;
    end
    else
    begin
         mdosya_no:=-4;
         mprotokol_no:=-4;
    end;
         end;
      86:begin
if (TbPrtklPROTOKOL_NO.Value>0) and (dm.hastanekeybilgisi_al('labda_otomal_hastaya')='T') then
    begin
         mdosya_no:=TbPrtklDOSYA_NO.Value;
         mprotokol_no:=TbPrtklPROTOKOL_NO.Value;
    end
    else
    begin
         mdosya_no:=-5;
         mprotokol_no:=-5;
    end;
         end;
      88:begin
if (TbPrtklPROTOKOL_NO.Value>0) and (dm.hastanekeybilgisi_al('labda_otomal_hastaya')='T') then
    begin
         mdosya_no:=TbPrtklDOSYA_NO.Value;
         mprotokol_no:=TbPrtklPROTOKOL_NO.Value;
    end
    else
    begin
         mdosya_no:=-6;
         mprotokol_no:=-6;
    end;
         end;
      90:begin
if radioCikis.itemindex=1 then begin    //Çikis tipi için dosya ve protokol_no ayarlanaýyor....
                                   mdosya_no:=-10;
                                   mprotokol_no:=-10;
                               end
else                           begin
                                  if TbPrtklPROTOKOL_NO.Value>0 then begin
                                  mdosya_no:=TbPrtkldosya_no.value;
                                  mprotokol_no:=TbPrtklProtokol_no.value;
                                                                     end
                                                                     else
                                                                     begin
                                   mdosya_no:=-10;
                                   mprotokol_no:=-10;

                                                                     end;
                               end;

         end;
        else begin
if radioCikis.itemindex=1 then begin    //Çikis tipi için dosya ve protokol_no ayarlanaýyor....
                                   mdosya_no:=-20;
                                   mprotokol_no:=-20;
                                   end
else                           begin
                                  mdosya_no:=TbPrtkldosya_no.value;
                                  mprotokol_no:=TbPrtklProtokol_no.value;
                                   end;

         end;

         end; //cASE SONU




end;

procedure TFrmMal.Newistek;
var
i:integer;
begin
toplam:=0;
labtop.caption:='OTL';
if not qrGrup.Active then qrGrup.open;
if Not QrIsTek.active then BtnAraClick(Self);
aktarma_durumu:=False;
end;



procedure TFrmMal.Mal_Aktar(islem_no,malzeme_adedi:Double;birimi:Double;ucret,ilkucret:currency;tipi,gonderen_tus:string);
function rowid1_al:string;
var
prefix:string[1];
begin
    if Dm.qrRowid.active then Dm.qrRowid.Close;
    Dm.qrRowid.open;
if (dm.QrHastanePREFIX.value='A') or (dm.QrHastanePREFIX.value='B') or (dm.QrHastanePREFIX.value='C') or (dm.QrHastanePREFIX.value='D') then prefix:=dm.QrHastanePREFIX.value
else prefix:='A';

    result:=prefix+FloatToStr(Dm.QrRowidSAYI.value);
    Dm.qrRowid.Close;
end;

function otel_no_al:double;
var
otel:double;
begin
if (DM.qrhastanehastane_tipi.value='Y') and (Dm.qrkurumyerli.value=1) then
begin
//if not (Dblookupotel.text<>'') then raise exception.Create('Ýþlemin yapýldýðý yeri seçmediniz');
otel:=Dblookupotel.keyvalue;
end
else begin
if yap_yer>0 then otel:=yap_yer else otel:=0;
     end;
result:=otel;
end;

function ozel_paket_mi:boolean;
var
sonuc:Boolean;
begin
sonuc:=false;
if ((tbPRTKLPAKET.value='A') or (tbPRTKLPAKET.value='a')) and (dm.hastanekeybilgisi_al('ozel_paket_aktif')='T')  then sonuc:=True;
ozel_paket_mi:=sonuc;
end;

function ybakim_paket_mi:boolean;
var
sonuc:Boolean;
begin
sonuc:=false;
if (tbPRTKLPAKET.value='Y') then sonuc:=True;
ybakim_paket_mi:=sonuc;
end;

//function ilac_ilkucret_al;
//begin
//QrIlkUcretBul.Close;
//QrIlkUcretBul.ParamByName('MALZEME_NO').Value:=QrIstekMALZEME_NO.Value;
//QrIlkUcretBul.OPEN;
//end;

var
maliyet_fiyati1,liste_ucreti,durum_no:double;
aktar_kontrol,kontrol:Boolean;
kdvp:extended;
adet1:double;
begin
adet1:=StrToFloatDef(adet_miktari.Text,0)+(StrToFloatDef(kutu_miktari.Text,0)*qristekTB_MIKTARI.Value);
kontrol:=False;
screen.cursor:=crHourGlass;
try
  if dm.hastanekeybilgisi_al('acilde_malzeme_farki_var')<>'T' then
  if ((tipi='F') and (TbPrtklBOLUM.Value=75)) then  ucret:=0;

  if dm.hastanekeybilgisi_al('mlz_triaj_yesil_fark_var')<>'T' then
  if ((tipi='F') and (TbPrtklBOLUM.Value=75)and (TbPrtklTRIAJ_DEGERI.Text<>'N')) then  ucret:=0;

if (tipi='F')  then
begin

if QrIstekGRUBU.Value<>250 then
if TbPrtklBOLUMDE_FARK_ALINMASIN.AsString='T' then ucret:=0;

if (dm.hastanekeybilgisi_al('gazi_hastadan_fark_alma')='T') and ((dm.TbPrtklMEDULA_DEVREDEN_KURUM.Value='7')or (dm.TbPrtklMEDULA_DEVREDEN_KURUM.Value='28')) then

ucret:=0;

if (not TbPrtklGSS_YDOGAN_SIRA.isnull) and (TbPrtklGSSMI.value='T') then
ucret:=0;

if (dm.hastanekeybilgisi_al('ybakimda_fark_atma')='T') and ((TbPrtklMEDULA_TAKIP_TIPI.Value='Y') or (TbPrtklMEDULA_TAKIP_TIPI.Value='B'))  and (TbPrtklGSSMI.Value='T')  then
begin      // sut gereði
ucret:=0;
end;

if (dm.hastanekeybilgisi_al('emekli_hastadan_fark_alma')='T') and (TbPrtklHASTA_C_E.Value='E') and (QrIstekGRUBU.value=250) and (TbPrtklBOLUM.Value<>75) then
ucret:=0;

end;


  liste_ucreti:=0;
  liste_ucreti:=ucret; // koþullara göre sýfýrlanmadan önceki listedeki ücret

  if gonderen_tus<>'S' then
  if not (ucret>0) then
  MessageDlg('Dikkat.Sýfýr ücretli ilaç/malzeme aktarýyorsunuz.',mtinformation,[mbyes],0);

  aktar_kontrol:=true;
  if (tipi='F') and not (ucret>0) then aktar_kontrol:=false;

    AnaForm.Start_trans;
    DM.QrLMax.Open;
    istek_no:=DM.QrLMaxNextVal.Value; {istek tablosuna sadece yapýlan iþlemler bölümünde görülmesi için aktarýlýyor.}
    DM.QrLMax.close;
    {yapýlan iþlem tablosuna,islemyap, update ediliyor,ekleniyor....}
    dm.SQLClear('');
    //ShowMessage(DM.UpdatePM.SQL.Text);

//if oto then
//begin
//QrDepo.close;
//QrDepo.ParamByname('lname').asString:=usern;
//QrDepo.open;
//DM.UpdatePM.ParamByName('GDEPO_NO').AsInteger:=QrDepoDEPO_NO.Value;
//    end
//    else
//    DM.UpdatePM.ParamByName('GDEPO_NO').AsInteger:=DBLookdepo.KeyValue;
//    DM.UpdatePM.ParamByName('DOSYA_NO').AsFloat:=mdosya_no;
//    DM.UpdatePM.ParamByName('P_NO').AsFloat:=mprotokol_no;
//    DM.UpdatePM.ParamByName('KURUM_NO').AsFloat:=TbPrtklKURUM_NO.VALUE;
//    DM.UpdatePM.ParamByName('TAR').AsDateTime:=now;
//    DM.UpdatePM.ParamByName('IST_NO').AsFloat:=istek_no;
//    DM.UpdatePM.ParamByName('G_KODU').AsFloat:=QrIstekGRUBU.value;
//if tipi='K' then  DM.UpdatePM.ParamByName('FATURA_TIPI').AsFloat:=0
//else if tipi='F'  then   DM.UpdatePM.ParamByName('FATURA_TIPI').AsFloat:=1
//else if tipi='2'  then   DM.UpdatePM.ParamByName('FATURA_TIPI').AsFloat:=2;
//
//    DM.UpdatePM.ParamByName('M_KODU').AsFloat:=QrIstekMALZEME_NO.value;




    if (radioCikis.itemindex=1)  then ucret:=0;
    if tipi='K' then begin

if ((ozel_paket_mi) or (ybakim_paket_mi)) and ((Combopaket.ItemIndex<>1))  then //27 mayýs 2013 buca için özel paket seçtikleri yatýþlarda iþlemin karþýsýnda paket seçili olan hizmetler fiyatlý diðerleri fiyatsýz olacak
begin
UCRET:=0;            //paket tipi þartý eklendi...15.10.2015 izzetcan
end;
if  ((tbPRTKLPAKET.value='P') or (tbPRTKLPAKET.value='p')) and (Combopaket.ItemIndex<>1) then ucret:=0;

                               end;

if (dm.hastanekeybilgisi_al('gss_haric_paket_sifir')='T') and (Combopaket.ItemIndex=0) and (TbPrtklGSSMI.value<>'T') then UCRET:=0;



if (tipi='K') and (DM.qrhastanehastane_tipi.value='Y') and  (DM.QrKurumyerli.Value=1) then
    try
    StrToFloat(editozel.Text);
    ucret:=StrToFloat(editozel.Text);
    ilkucret:=ucret;
    except
       on exception do
        end;

//ilkucret:=ilac_ilkucret_al;
//    DM.UpdatePM.ParamByName('UCRET').AsFloat:=round_ytl(ucret);
//    DM.UpdatePM.ParamByName('ODENEN').AsFloat:=0;
//    DM.UpdatePM.ParamByName('KALAN').AsFloat:=round_ytl(ucret);
//    DM.UpdatePM.ParamByName('UCRETI_PROVIZYONSUZ').AsFloat:=round_ytl(ucret);
//    DM.UpdatePM.ParamByName('ILKUCRET').AsFloat:=round_ytl(ilkucret);
//if TbPrtklHASTA_A_Y.value=2 then DM.UpdatePM.ParamByName('M_ISLEM_DURUM').Asinteger:=Combopaket.ItemIndex
//else DM.UpdatePM.ParamByName('M_ISLEM_DURUM').Asinteger:=0;
//    if ComboOzelDurum.itemindex<>16 then
//    DM.UpdatePM.ParamByName('MEDULA_OZEL_DURUM').AsString:=ComboOzelDurum.Value  // 2010
//    else
//    DM.UpdatePm.ParamByName('MEDULA_OZEL_DURUM').clear;
    kdvp:=para_yuvarla_ext(ucret*kdv_oran);
//    if tbPRTKLHASTA_A_Y.value=1 THEN kdvp:=0; //ayaktan hastada kdv sýfýrlanýyor.....
//    if (tbPRTKLPAKET.value='P') or (tbPRTKLPAKET.value='p') OR (radioCikis.itemindex=1)  then kdvp:=0;
//    DM.UpdatePM.ParamByName('KDVP').AsFloat:=kdvp;
//    DM.UpdatePM.ParamByName('ADETI').AsFloat:=MALZEME_ADEDI;
//    DM.UpdatePM.ParamByName('BIRIMI_P').AsFloat:=BIRIMI;
//if dm.QrKurumKULLANILACAK_MALZEME_GRUBU.asinteger=2 then begin
//if not (QrIstekBUTCE_KODU.isnull) then DM.UpdatePM.ParamByName('OZEL_KOD').AsString:=copy(QrIstekBUTCE_KODU.AsString,1,25)
//else DM.UpdatePM.ParamByName('OZEL_KOD').AsString:=QrIstekBARKOD.AsString;
//                                                         end
//else DM.UpdatePM.ParamByName('OZEL_KOD').AsString:=QrIstekBARKOD.AsString;
   {yapýlan iþlem tablosuna aktarýlýyor
   0:ödenmedi   5:sigorta ödeyecek   }
//    case trunc(TbPrtklKURUM_NO.value) of
//         0..19:DM.UpdatePM.ParamByName('DUR').AsFloat:=0; {Peþin,Çýkýþta Ödeyecek}
//         20..5000000:begin
//           case Trunc(TbPrtklHasta_A_Y.value) of
//                1:if DM.QrKurumPESIN.value='P' then DM.UpdatePM.ParamByName('DUR').AsFloat:=0 //sigorta peþin aktar
//                   else DM.UpdatePM.ParamByName('DUR').AsFloat:=5;{sigorta}
//                2:if DM.QrKurumPESINY.value='P' then DM.UpdatePM.ParamByName('DUR').AsFloat:=0 //sigorta peþin aktar
//                    else DM.UpdatePM.ParamByName('DUR').AsFloat:=5;{sigorta}
//           END;
//                     end;
//         end;
//if tipi='F' then DM.UpdatePM.ParamByName('DUR').AsFloat:=0;
//    DM.UpdatePM.ParamByName('L_NAME').AsString:=usern;
//    DM.UpdatePM.ParamByName('FIS').AsString:=EditFis.text;
//    DM.UpdatePM.ParamByName('ISLEM_NO').AsFloat:=islem_no;
//    DM.UpdatePM.ParamByName('rowid1').AsString:=rowid1_al;
//    DM.UpdatePM.ParamByName('SNET_TAKIP_NO').AsString:=DM.guid_al;
//    DM.UpdatePM.ParamByName('HASTANE_NO').AsFloat:=DM.hastane_no_al;
//    DM.UpdatePM.ParamByName('DOVIZ_KODU').AsFloat:=doviz_kodu;
//    DM.UpdatePM.ParamByName('otel_no').AsFloat:=otel_no_al;
//if DBLookDr.KeyValue>0 then  begin
//                              DM.UpdatePM.ParamByName('DR').AsFloat:=DBLookDr.KeyValue;
//                              DM.UpdatePM.ParamByName('DRYUZDESI').AsFloat:=0;
//                              end
//else begin
//     DM.UpdatePM.ParamByName('DR').clear;
//     DM.UpdatePM.ParamByName('DRYUZDESI').clear;
//     end;
////* (1+(HAREKET_QRkdv.value/100) )
//maliyet_fiyati1:=0;
//if dm.hastanekeybilgisi_al('maliyeti_kdvli_at')='T' then
//maliyet_fiyati1:=round_ytl(malzeme_adedi*round_ytl(HAREKET_QRGIRIS_ADET_FIYATI.Value*(1+(HAREKET_QRkdv.value/100) ))*HAREKET_QRMALIYET_KATSAYISI.Value)
//else
//maliyet_fiyati1:=round_ytl(malzeme_adedi*round_ytl(HAREKET_QRGIRIS_ADET_FIYATI.Value)*HAREKET_QRMALIYET_KATSAYISI.Value);
//     if tipi='K' then      begin // kurum satýrý ise
//     if HAREKET_QRGIRIS_ADET_FIYATI.Value>0 then
//     dm.UpdatePM.ParamByName('MALIYET1').Value:=maliyet_fiyati1
//     else
//     dm.UpdatePM.ParamByName('MALIYET1').Value:=0;
//if gider_sistemi_aktif then // key t ise ücreti var ise ücretinden yok ise ek8 ücretinden maliyet hesapla
//begin
// if (liste_ucreti>0) then
// dm.UpdatePM.ParamByName('GIDER').Value:=round_ytl(liste_ucreti); // kurumun listesindeki ücreti maliyete at
//end;
//end;
// kurum satýrý ise

//    if LookupIsleminYapYer.KeyValue>0 then
//    DM.UpdatePM.ParamByName('ISLEMIN_YAPILDIGI_YER').AsInteger:=LookupIsleminYapYer.KeyValue;

//    if QrIstekKDV_ORANI_SATIS.Value>0 then
//    DM.UpdatePM.ParamByName('KDV_ORANI_SATIS').VALUE:=QrIstekKDV_ORANI_SATIS.Value
//    else
//    DM.UpdatePm.ParamByName('KDV_ORANI_SATIS').TEXT:=kdv_oran_text;
//    if aktar_kontrol then
//    DM.UpdatePM.Execute;


    AnaForm.commit_yap;
    oto_aktarim_sonucu:=True;
screen.cursor:=crDefault;
except
     on e:exception do begin AnaForm.RollBack_yap;  showmessage(e.message); end;
end;


end;




procedure TFrmMal.Yazdr1Click(Sender: TObject);
begin
btnprintClick(Sender);
end;

procedure TFrmMal.onizleme1Click(Sender: TObject);
begin
btnpreviewClick(Sender);
end;

procedure TFrmMal.btnpreviewClick(Sender: TObject);
var
  rapor_adi: string;
begin
rapor_adi := 'ilacsarfyazdir.fr3';
begin

if Fileexists(rapor_adi) then
begin
dm.frxReportGenel.LoadFromFile(rapor_adi);
dm.frxReportGenel.ShowReport(True);
end



end;
//else
//if filter_et then    //yazdýrda aynýsý var.fr3 baðlandý burasý.
//try
//
//
//    begin
//                      QrLabLogin.Caption:=ad+' '+Soyad;
//                      quickRep1.Preview;
//              end;
//
//
//finally
//QrMalD.Filtered:=False;
//  end;

end;

procedure TFrmMal.btnPrintClick(Sender: TObject);
begin
if filter_et then
try
QrLabLogin.Caption:=ad+' '+Soyad;
quickRep1.Print;
finally
QrMalD.Filtered:=False;
  end;
end;
//filter et ve hangi fiþi print etmek istediðini sor

Function TFrmMal.filter_et:Boolean;
var
str1:string;
begin
str1:='''';
if editfis.text<>'' then
begin
qrMalD.Filter:='FIS_NO='''+EditFis.text+str1;
qrMalD.filtered:=true;
if QrMalD.Recordcount>0 then filter_et:=true
else begin
     messageDlg('Print edilecek Hehrangi bir Malzeme Listesi Yok??',MtError,[MbYes],0);
     filter_et:=False;
     end;
end
else qrMalD.filtered:=False;
if QrMalD.Recordcount>0 then filter_et:=true
else begin
     messageDlg('Print edilecek Herhangi bir Malzeme Listesi Yok??',MtError,[MbYes],0);
     filter_et:=False;
     end;
end;


procedure TFrmMal.FormClose(Sender: TObject; var Action: TCloseAction);
Procedure Reg_Kaydet;
var
Reg:TRegistry;
NewString,muatipi: string;
ClickedOK: Boolean;
begin
if CheckMuadil.Checked then muatipi:='J'
                       else muatipi:='N';

try
Reg.writestring('muadiltipi',muatipi);
except
end;

end;
begin
DM.TbDr.close;
dm.QrKurum.close;
//try
//Reg_Kaydet;
//except
//end;
end;



procedure TFrmMal.BtnAraClick(Sender: TObject);
var
strarama:string;
oto_adet:integer;
begin

if PageListe.ActivePageIndex=0 then begin //1
strArama:='';
toplam:=0;
labtop.caption:='O';
qristek.close;
if editmal.text<>'' then Qristek.SQL[7]:='AND UPPER(B.ADI) LIKE :MAL'
Else Qristek.SQL[7]:=' ' ;
if editbarkod.text<>'' then strarama:=strarama+' AND B.BARKOD=:BARKOD';

if editButceKodu.text<>'' then strarama:=strarama+' AND B.BUTCE_KODU=:BUTCE_KODU';
if editUBBKodu.text<>'' then strarama:=strarama+' AND B.UBBKODU=:UBBKODU';
if editStokKodu.text<>'' then strarama:=strarama+' AND B.MALZEME_NO_S='+#39+editstokkodu.text+#39;
if EditEtkenMadde2.Text<>'' then strarama:=strarama+' AND B.ETKEN_MADDESI='+#39+DblookupEtkenMadde2.KeyValue+#39;
if not(qrOtoBarkodMALZEME_NO.IsNull) and (DM.hastanekeybilgisi_al('oto_barkod_uret')='T') then strarama:=strarama+' AND B.MALZEME_NO='+qrOtoBarkodMALZEME_NO.AsString;
Qristek.SQL[8]:=strarama;



if editSABLON.text<>'' then begin
   Qristek.SQL[9]:='AND  A.MALZEME_NO=S.MALZEME_NO AND S.SIRA_NO='+QrSablonMSIRA_NO.AsString;
if (QrSablonMSIRA_NO.value>0) then btnsablon.Enabled:=true
else btnsablon.Enabled:=False;

                            end
else begin
Qristek.SQL[9]:='AND  A.MALZEME_NO=S.MALZEME_NO(+) AND S.SIRA_NO(+)=0' ;
btnsablon.Enabled:=False;
     end;

qristek.ParamByName('depo').AsFloat:=depo_no;
if EditGrup.text<>'' then  qristek.ParamByName('grup_no').AsFloat:=DbLookGrp.keyvalue;
if EditaltGrup.text<>'' then  qristek.ParamByName('ALT_GRUP_NO').AsFloat:=LookAltGrup.keyvalue;

if editmal.text<>'' then
if mal_ara_ada_gore then
qristek.ParamByName('mal').AsString:=editMal.text+'%' else
qristek.ParamByName('mal').AsString:='%'+editMal.text+'%';

if editBARKOD.text<>'' then qristek.ParamByName('BARKOD').AsString:=editBARKOD.text;

if editButceKodu.text<>'' then qristek.ParamByName('BUTCE_KODU').AsString:=editButceKodu.text;
if editUBBKodu.text<>'' then qristek.ParamByName('UBBKODU').AsString:=editUBBKodu.text;
qristek.ParamByName('KRI_NO').AsFloat:=TbPrtklKURUM_NO.value;

if (dm.hastanekeybilgisi_al('depoda_olmayanda_gelsin')='T') or (chtum.checked) then
QrIstek.SQL[5]:='WHERE  (A.DEPO_NO=:DEPO AND (A.ADET_MIKTARI>=0 and A.kutu_MIKTARI>=0 ) ) AND B.AKTIF_PASIF=''T''   ' else
QrIstek.SQL[5]:='WHERE  (A.DEPO_NO=:DEPO and  NVL(A.KT_ADET,0)>0 ) AND B.AKTIF_PASIF=''T'' ';
qristek.open;

if mprotokol_no<0 then
begin
qrMalD.close;
qrMald.sql[5]:='AND TO_DATE(ISL.TARIH)=:TARIH';
qrMald.ParamByName('TARIH').asdate:=date;
qrMalD.ParamByName('P_NO').AsFloat:=mprotokol_no;
qrMalD.open;
end
else
begin
qrMalD.close;
qrMalD.ParamByName('P_NO').AsFloat:=mprotokol_no;
qrMalD.open;
end;


if (DM.hastanekeybilgisi_al('oto_barkod_uret')='T') and not(qrOtoBarkodMALZEME_NO.IsNull) then
begin
  oto:=True;
  if qrOtoBarkodBIRIMI.VALUE=1 then
  kutu_miktari.text:='1'
  else if qrOtoBarkodBIRIMI.VALUE=2 then
  adet_miktari.text:='1';
  if editkare.text='' then
  BtnAktarClick(self);
end
else if ( (dm.hastanekeybilgisi_al('barkodla_oto_1adet_cik')='T') and (editbarkod.text <>'') and (QrIstek.RecordCount=1) ) then
begin
  oto:=True;
  Adet_miktari.Text:='1';
//  aktar(btnaktar);
if editkare.text='' then
  BtnAktarClick(self);
  EditBarkod.Clear;
end
else
if ( (dm.hastanekeybilgisi_al('barkodla_oto_1adet_cik')='S') and (editbarkod.text <>'') and (QrIstek.RecordCount=1) ) then
begin // normalde oto 1 adet atýyordu 29 mayis sayý yazýlý ise o sayý kadar çýksýn deðilse 1 adet çýksýn istedi 04.07.2011
  oto:=True;
  oto_adet:=1;
  editmal.enabled:=false;
   if  InputQuery('Adet Giriniz', 'Adet Giriniz'+'('+(qristekBIRIM_ADI.TEXT+')'),adetbarkod) then
   begin
  try



    oto_adet:=StrToInt(adetbarkod);
  except
    on Exception do oto_adet:=1;
  end;
  Adet_miktari.Text:=FloatToStr(oto_adet);
  if editkare.text='' then
  BtnAktarClick(self);
  end;
  EditBarkod.Clear;
end                                 end; //1 pageliste itemindex 0 ise

if (editMal.text <>'') and (QrIstek.RecordCount>=1) and not oto then Adet_miktari.SetFocus;

end;

procedure TFrmMal.DBLookGRPCloseUp(Sender: TObject);
begin
if not (sender=EditGrup) then editgrup.text:=DBLookGRP.TEXT;
qristek.Close;
qristek.SQL.Clear;
qristek.SQL.Add('SELECT A.DEPO_NO,C.GRUP_ADI,A.MALZEME_NO,B.ADI,A.KUTU_MIKTARI,A.ADET_MIKTARI,A.ROWID,b.BARKOD,B.BUTCE_KODU,B.RECETE_TIPI,NVL(S.KUTU_MIKTARI,0) SKUTU,NVL(S.ADET_MIKTARI,0) SADET,NVL(A.KUTU_MIKTARI,0)*NVL(B.ADET_MIKTARI,1)+NVL(A.ADET_MIKTARI,0) TOPLAM_ADET,');
qristek.SQL.Add('B.GRUBU,B.ADET_MIKTARI TB_MIKTARI,B.KT_BIRIMI,B.TB_BIRIMI,B.PAKETMI,NVL(B.REUSE,''F'') REUSE,NVL(B.CIKISTIPI,''H'') CIKISTIPI,nvl(B.BUTCE_INDIRIM_ORANI,0) BUTCE_INDIRIM_ORANI,nvl(B.BUTCE_INDIRIM_ORANI2,0) BUTCE_INDIRIM_ORANI2,B.TEMIN_DURUMU,B.ACIKLAMA,'+
               'B.OZEL_PAKET_MI,b.tipi,b.medula_adeti,BR.BIRIM_ADI,B.fark_aktar,');


if dm.hastanekeybilgisi_al('malzeme_ilac_formul')='T' then
begin
case dm.QrKurumKULLANILACAK_MALZEME_GRUBU.asinteger of
        1:QrIstek.SQL.add('(B.KUTU_FIYAT*B.KATSAYI) KUTU_FIYAT,(B.ADET_FIYAT*B.KATSAYI2) ADET_FIYAT,B.KUTU_FARK1 KUTU_FARK,B.ADET_FARK1 ADET_FARK');{cari fiyatlar;}
        2:QrIstek.SQL.add('(B.BUTCE_KT) KUTU_FIYAT,(B.BUTCE_TB) ADET_FIYAT,B.KUTU_FARK2 KUTU_FARK,B.ADET_FARK2 ADET_FARK');{butce fiyatý}
        3:QrIstek.SQL.add('(B.KUTU_FIYATI_3) KUTU_FIYAT,(B.ADET_FIYATI_3) ADET_FIYAT,B.KUTU_FARK3 KUTU_FARK,B.ADET_FARK3 ADET_FARK');
        4:QrIstek.SQL.add('(B.KUTU_FIYATI_4) KUTU_FIYAT,(B.ADET_FIYATI_4) ADET_FIYAT,B.KUTU_FARK4 KUTU_FARK,B.ADET_FARK4 ADET_FARK');
        5:QrIstek.SQL.add('(B.KUTU_FIYATI_5) KUTU_FIYAT,(B.ADET_FIYATI_5) ADET_FIYAT,B.KUTU_FARK5 KUTU_FARK,B.ADET_FARK5 ADET_FARK');
END;
case dm.QrKurumKULLANILACAK_ilac_GRUBU.asinteger of
        1:QrIstek.SQL.add('(B.KUTU_FIYAT*B.KATSAYI) KUTU_FIYAT,(B.ADET_FIYAT*B.KATSAYI2) ADET_FIYAT,B.KUTU_FARK1 KUTU_FARK,B.ADET_FARK1 ADET_FARK');{cari fiyatlar;}
        2:QrIstek.SQL.add('(B.BUTCE_KT) KUTU_FIYAT,(B.BUTCE_TB) ADET_FIYAT,B.KUTU_FARK2 KUTU_FARK,B.ADET_FARK2 ADET_FARK');{butce fiyatý}
        3:QrIstek.SQL.add('(B.KUTU_FIYATI_3) KUTU_FIYAT,(B.ADET_FIYATI_3) ADET_FIYAT,B.KUTU_FARK3 KUTU_FARK,B.ADET_FARK3 ADET_FARK');
        4:QrIstek.SQL.add('(B.KUTU_FIYATI_4) KUTU_FIYAT,(B.ADET_FIYATI_4) ADET_FIYAT,B.KUTU_FARK4 KUTU_FARK,B.ADET_FARK4 ADET_FARK');
        5:QrIstek.SQL.add('(B.KUTU_FIYATI_5) KUTU_FIYAT,(B.ADET_FIYATI_5) ADET_FIYAT,B.KUTU_FARK5 KUTU_FARK,B.ADET_FARK5 ADET_FARK');
END;
end
else
begin
case dm.QrKurumKULLANILACAK_MALZEME_GRUBU.asinteger of
        1:QrIstek.SQL.add('(B.KUTU_FIYAT*B.KATSAYI) KUTU_FIYAT,(B.ADET_FIYAT*B.KATSAYI2) ADET_FIYAT,B.KUTU_FARK1 KUTU_FARK,B.ADET_FARK1 ADET_FARK');{cari fiyatlar;}
        2:QrIstek.SQL.add('(B.BUTCE_KT) KUTU_FIYAT,(B.BUTCE_TB) ADET_FIYAT,B.KUTU_FARK2 KUTU_FARK,B.ADET_FARK2 ADET_FARK');{butce fiyatý}
        3:QrIstek.SQL.add('(B.KUTU_FIYATI_3) KUTU_FIYAT,(B.ADET_FIYATI_3) ADET_FIYAT,B.KUTU_FARK3 KUTU_FARK,B.ADET_FARK3 ADET_FARK');
        4:QrIstek.SQL.add('(B.KUTU_FIYATI_4) KUTU_FIYAT,(B.ADET_FIYATI_4) ADET_FIYAT,B.KUTU_FARK4 KUTU_FARK,B.ADET_FARK4 ADET_FARK');
        5:QrIstek.SQL.add('(B.KUTU_FIYATI_5) KUTU_FIYAT,(B.ADET_FIYATI_5) ADET_FIYAT,B.KUTU_FARK5 KUTU_FARK,B.ADET_FARK5 ADET_FARK');
END;
end;

qristek.SQL.Add(',NVL(A.MINIMUM_STOK,0)*NVL(B.ADET_MIKTARI,1) MINIMUM_STOK,NVL(A.MAXIMUM_STOK,0)*NVL(B.ADET_MIKTARI,1) MAXIMUM_STOK,B.ISTENMEYECEK_GUN,B.UBBKODU,C.HASTAYA_CIKILAMASIN,B.HASTAYA_CIKILAMASIN malzeme_cikilmasin'+
                  'B.KDV_ORANI_SATIS,B.MALZEME_NO_S,B.STERILIZASYON_VARMI' );
qristek.SQL.Add('FROM HASTANE.DEPO_DURUM A,HASTANE.MALZEME B,HASTANE.LABGRUP C,HASTANE.DEPO_SABLON_D S,HASTANE.ISLEMGRUPINDIRIM KI,HASTANE.BIRIM_S BR');
qristek.SQL.Add('WHERE  A.DEPO_NO=:DEPO AND B.GRUBU=C.GRUP_KODU(+) AND B.AKTIF_PASIF='''+'T''');
qristek.SQL.Add('AND A.MALZEME_NO=B.MALZEME_NO(+) AND B.GRUBU=C.GRUP_KODU(+) AND KI.GRUP_KODU(+)=B.GRUBU   AND KI.KURUM_NO(+)=:KRI_NO AND B.TB_BIRIMI=BR.BIRIM_KODU(+)');
qristek.SQL.Add(' ');
qristek.SQL.Add(' ');
qristek.SQL.Add(' ');
qristek.SQL.Add(' ');
if EditGrup.text<>'' then  qristek.SQL.Add('AND B.GRUBU=:GRUP_NO')
ELSE qristek.SQL.Add(' ');
if EditaltGrup.text<>'' then  qristek.SQL.Add('AND B.ALT_ANA_GRP_NO=:ALT_GRUP_NO')
ELSE qristek.SQL.Add(' ');

if dm.hastanekeybilgisi_al('depoda_olmayanda_gelsin')='T' then
qristek.SQL.Add('AND (A.KUTU_MIKTARI>=0 OR A.ADET_MIKTARI>=0)')
else
qristek.SQL.Add('AND (A.KUTU_MIKTARI>0 OR A.ADET_MIKTARI>0)');

qristek.SQL.Add(' ');
qristek.SQL.Add(' ');
qristek.SQL.Add(' ');
qristek.SQL.Add(' ');
qristek.SQL.Add(' ');
qristek.SQL.Add(' ');
BtnAraClick(self);

end;




procedure TFrmMal.aktar(Sender:Tobject);
function get_mevcut_toplam:integer;
var
toplam:integer;
begin
toplam:=0;
hareket_qr.first;
while not hareket_qr.EOF do begin

toplam:=toplam+hareket_qrkutu_miktari.asinteger*QrIstekTb_MIKTARI.value+hareket_qradet_miktari.asinteger;
hareket_qr.next;
                            end;
result:=toplam;
end;
function sarf_yap(kutu,adet:integer):Double;
var ster_depo_no,donecek_sonuc:double;sterilmi:string;
begin

//if QrIstekSTERILIZASYON_VARMI.AsString=null then sterilmi:='F';

         sarfiyat.close;
         sarfiyat.parambyname('m_no').asstring:=qrIstek.fieldbyname('malzeme_no').asstring;
         sarfiyat.parambyname('p_no').asstring:=FloatToStr(mprotokol_no);
         sarfiyat.parambyname('g_depo').asstring:=FloatToStr(depo_no);
         sarfiyat.parambyname('KUTU_MIKTAR').asstring:=inttostr(kutu);
         sarfiyat.parambyname('ADET_MIKTAR').asstring:=inttostr(adet);
         sarfiyat.parambyname('login').asstring:=usern;
         sarfiyat.parambyname('ilk_hareket').asstring:=FloatTostr(HAREKET_QRISLEM_NO.value);
         sarfiyat.parambyname('reuse').asstring:=QrIstekreuse.AsString;
         sarfiyat.parambyname('RECETESERI').asstring:=ozellikli_recete_seri;
         sarfiyat.parambyname('RECETENO').asstring:=ozellikli_recete_no;
         //sarfiyat.parambyname('STERILIZASYON_VARMI').asstring:=QrIstekSTERILIZASYON_VARMI.AsString;
         sarfiyat.execproc;
         donecek_sonuc := sarfiyat.parambyname('sonuc').asFloat;

         if  (donecek_sonuc>0) and (DM.hastanekeybilgisi_al('oto_barkod_uret')='T') then
         begin
         qrOtoBarkod.Edit;
         qrOtoBarkodKULLANILDI.Value:='T';
         qrOtoBarkodISLEM_NO.Value:=donecek_sonuc;
         qrOtoBarkod.Post;
         end;

         if dm.hastanekeybilgisi_al('steril_aktif')='T' then
         begin
    try
if (donecek_sonuc>0) and (qristekSTERILIZASYON_VARMI.Value='T')   then //  and (QrIstekreuse.AsString='T') then
    qrdep.close;
qrdep.parambyname('depo_no').value:=depo_no;
qrdep.open;
              if lookupsteril.KeyValue>0 then ster_depo_no:=lookupsteril.KeyValue
              else
              begin
                 try
                ster_depo_no:=qrdepSTERIL_DEPO_NO.value; //DM.GetNumber('SELECT depo_no FROM HASTANE.depolar WHERE STERILIZASYON_DEPOSU_MU=''T'' ');
              except
                 on exception do ster_depo_no:=0;
              end;
              end;
              if MessageDlg('Steril Malzeme Sterilizasyona Gönderilsinmi?',mtConfirmation,[mbYes,mbNo],0)= mryes then
             begin
              if (ster_depo_no>0) and (qrdepSTERILIZASYON_DEPOSU_MU.value<>'T')  then
     if DM.Depolar_Arasi_Transfer_Yap_Ve_Karsila(adet,kutu,ster_depo_no,DBLookDepo.KeyValue,
     QrIstekMALZEME_NO.asfloat,tbprtklDOSYA_NO.Value,tbprtklPROTOKOL_NO.Value,HAREKET_QRISLEM_NO.value,usern) then
     ShowMessage('Girilen ilaç/malzeme seçilen tali depoya transfer edildi.');
     end
     ELSE
     BEGin
     qrtemp.close;
qrtemp.ParamByName('KUTU').Value:=kutu;
qrtemp.ParamByName('adet').Value:=adet;
qrtemp.ParamByName('g_depo').Value:=FloatToStr(depo_no);
qrtemp.ParamByName('m_no').Value:=QrIstekMALZEME_NO.asfloat;
AnaForm.start_trans;
qrtemp.ExecSQL;
AnaForm.commit_yap;
          end;

  except
    end;
          end
          else
          begin
          if (donecek_sonuc<0) and  not(qristekReuse.Value='T') then begin
         messageDlg('Aktarmada problem oluþtu.Malzeme aktarýlamadý',MtError,[MbYes],0);
                                                         end
else     if (donecek_sonuc<0) and  (qristekReuse.Value='T') then begin
         messageDlg('Reuse malzeme Aktarma Sýnýrý aþýldý.Ýade edip,çýkýþýný yaptýrýnýz.',MtError,[MbYes],0);
                                                          end;

    try
    if (donecek_sonuc>0) and (QrIstekreuse.AsString='T') then
    if dm.hastanekeybilgisi_al('stk_ster_aktif')='T' then
    begin
              try
                ster_depo_no:=DM.GetNumber('SELECT depo_no FROM HASTANE.depolar WHERE STERILIZASYON_DEPOSU_MU=''T'' ');
      except
     on exception do ster_depo_no:=0;
     end;
     if ster_depo_no>0 then
     if DM.Depolar_Arasi_Transfer_Yap_Ve_Karsila(adet,kutu,ster_depo_no,DBLookDepo.KeyValue,
     QrIstekMALZEME_NO.asfloat,tbprtklDOSYA_NO.Value,tbprtklPROTOKOL_NO.Value,HAREKET_QRISLEM_NO.value,usern) then
     ShowMessage('Girilen ilaç/malzeme seçilen tali depoya transfer edildi.');
    end;
    except
    end;       end;
    result:=donecek_sonuc;
end;
function otel_no_al:double;
var
otel:double;
begin
if (DM.qrhastanehastane_tipi.value='Y') and (Dm.qrkurumyerli.value=1)and (TbPrtklhasta_a_Y.value=2)  then
begin
//if not (Dblookupotel.text<>'') then raise exception.Create('Ýþlemin yapýldýðý yeri seçmediniz');
otel:=Dblookupotel.keyvalue;
end
else begin
if yap_yer>0 then otel:=yap_yer else otel:=0;
     end;
result:=otel;
end;
function ozel_paket_mi:boolean;
var
sonuc:Boolean;
begin
sonuc:=false;
if ((tbPRTKLPAKET.value='A') or (tbPRTKLPAKET.value='a')) and (dm.hastanekeybilgisi_al('ozel_paket_aktif')='T')  then sonuc:=True;
ozel_paket_mi:=sonuc;
end;

function ybakim_paket_mi:boolean;
var
sonuc:Boolean;
begin
sonuc:=false;
if (tbPRTKLPAKET.value='Y') then sonuc:=True;
ybakim_paket_mi:=sonuc;
end;

function gss_paket_mi:boolean;
var
sonuc:Boolean;
begin
sonuc:=false;
if ((tbPRTKLPAKET.value='P') or (tbPRTKLPAKET.value='p')) and ((TbPrtklGSSMI.value='T') or (TbPrtklGSSMI.value='D')) and (Combopaket.value='0') then sonuc:=true;
if DM.hastanekeybilgisi_al('mlz_fark_kisitsiz')='T' then sonuc:=false; // 29 mayýs fark tanýmlý ise her þartta aktarsýn istiyor.paket dahil hariç farketmesin.
gss_paket_mi:=sonuc;
end;
PROCEDURE ozellikli_recete_bilgisi_al;
begin
 ozellikli_recete_seri:='';
 ozellikli_recete_no:='';
 if (not QrIstekRECETE_TIPI.IsNull) and (QrIstekRECETE_TIPI.Value<>'N') then
 begin
   InputQuery('Özellikli Reçete(Kýrmýzý/yeþil vb) Seri Bilgisi', 'Reçete Serisini Giriniz',ozellikli_recete_seri );
   InputQuery('Özellikli Reçete(Kýrmýzý/yeþil vb) No Bilgisi', 'Reçete Numarasýný Giriniz', ozellikli_recete_no);
 end;
end;
var
i : integer;
g_miktari,parca_miktar,mevcut,mevcut_tb,tb,mevcut_toplam,gonderilecek_toplam,gonderilen_miktar: integer;
MyBookMark:TBookMark;
Kutu_n,tb_n,hr_tb,tbkutu,kutu_top,tb_top,Ara_tb:integer;
sonuc:double;
butce_indirim_orani,butce_indirim_orani2:double;
tus_adi,kime:string;
adet1:Double;
qrdepobul:TOraQuery;
kurum_ücreti,fark_ücreti,tamamlayici_ücreti,kurum_ilk_ücreti:currency;
var
barkodu,barkodu_hareket,lot_no,seri_no,karekod_tipi:string;
son_kullanma_tarihi:TdateTime;
begin

adet1:=StrToFloatDef(adet_miktari.Text,0)+(StrToFloatDef(kutu_miktari.Text,0)*qristekTB_MIKTARI.Value);


if sender=btnsablon then
begin
QrSablonD.Close;
qrsablond.sql[3]:='and d.malzeme_no=:malzeme_no';
QrSablonD.ParamByName('SIRA_NO').Value:=QrSablonMSIRA_NO.Value;
QrSablonD.ParamByName('malzeme_no').Value:=QrIstekMALZEME_NO.Value;
QrSablonD.Open;
adet1:=StrToFloatDef(QrSablonDADET_MIKTARI.Text,0)+(StrToFloatDef(QrSablonDKutu_MIKTARI.Text,0)*qristekTB_MIKTARI.Value);
end;
qrsablond.sql[3]:='';
if butce_indirimi then butce_indirim_orani:=(100-QrIstekBUTCE_INDIRIM_ORANI.value)/100
else butce_indirim_orani:=1;
if butce_indirimi then butce_indirim_orani2:=(100-QrIstekBUTCE_INDIRIM_ORANI2.value)/100
else butce_indirim_orani2:=1;

//if (TbPrtklHASTA_A_Y.Value=1) and (TbPrtklGSSMI.Text='T') and (TbPrtklMEDULA_TAKIP_TURU.text='A') then
//kurum_ücreti:=0 else

kurum_ücreti:=QrIstekADET_FIYAT.value*butce_indirim_orani*butce_indirim_orani2;    //fiyat atacaksin cebraili

kurum_ilk_ücreti:=QrIstekADET_FIYAT.value;

if (radioCikis.itemindex=1)  then kurum_ücreti:=0;

if ((ozel_paket_mi) or (ybakim_paket_mi)) and ((Combopaket.ItemIndex<>1)){PAKET DAHÝLSE} then //27 mayýs 2013 buca için özel paket seçtikleri yatýþlarda iþlemin karþýsýnda paket seçili olan hizmetler fiyatlý diðerleri fiyatsýz olacak
begin
kurum_ücreti:=0;            //paket tipi þartý eklendi...15.10.2015 izzetcan
end;

if  ((tbPRTKLPAKET.value='P') or (tbPRTKLPAKET.value='p')) and (Combopaket.ItemIndex<>1) then kurum_ücreti:=0;

if (DM.qrhastanehastane_tipi.value='Y') and  (DM.QrKurumyerli.Value=1) then
    try
    StrToFloat(editozel.Text);
    kurum_ücreti:=StrToFloat(editozel.Text);
    kurum_ilk_ücreti:=kurum_ücreti;
    except
       on exception do
        end;

if (QrIstekADET_FARK.value>0) and not (gss_paket_mi)then
begin
fark_ücreti:=QrIstekADET_FARK.value;
if dm.hastanekeybilgisi_al('acilde_malzeme_farki_var')<>'T' then
if (TbPrtklBOLUM.Value=75) and  (QrIstekFARK_AKTAR.Value<>'T') then  fark_ücreti:=0;

  if dm.hastanekeybilgisi_al('mlz_triaj_yesil_fark_var')='T' then
  if ( (TbPrtklBOLUM.Value=75)and (TbPrtklTRIAJ_DEGERI.Text<>'N')) and (QrIstekFARK_AKTAR.Value<>'T') then  fark_ücreti:=0;

if QrIstekGRUBU.Value<>250 then
if (TbPrtklBOLUMDE_FARK_ALINMASIN.AsString='T') and (QrIstekFARK_AKTAR.Value<>'T') then fark_ücreti:=0;

if (dm.hastanekeybilgisi_al('gazi_hastadan_fark_alma')='T') and ((dm.TbPrtklMEDULA_DEVREDEN_KURUM.Value='7')or (dm.TbPrtklMEDULA_DEVREDEN_KURUM.Value='28')) and (QrIstekFARK_AKTAR.Value<>'T') and (QrIstekFARK_AKTAR.Value<>'T') then
fark_ücreti:=0;

if (not TbPrtklGSS_YDOGAN_SIRA.isnull) and (TbPrtklGSSMI.value='T') and (QrIstekFARK_AKTAR.Value<>'T') and (QrIstekFARK_AKTAR.Value<>'T') then
fark_ücreti:=0;

if (dm.hastanekeybilgisi_al('ybakimda_fark_atma')='T') and (TbPrtklMEDULA_TAKIP_TIPI.Value='Y') and (TbPrtklGSSMI.Value='T') and (QrIstekFARK_AKTAR.Value<>'T') and (QrIstekFARK_AKTAR.Value<>'T')  then
begin      // sut gereði
fark_ücreti:=0;
end;

if (dm.hastanekeybilgisi_al('emekli_hastadan_fark_alma')='T') and (TbPrtklHASTA_C_E.Value='E') and (QrIstekGRUBU.value=250) and (TbPrtklBOLUM.Value<>75) and (QrIstekFARK_AKTAR.Value<>'T') and (QrIstekFARK_AKTAR.Value<>'T') then
fark_ücreti:=0;
end
else
if  (QrIstekFARK_AKTAR.Value<>'T') then fark_ücreti:=0;

if (dm.hastanekeybilgisi_al('malzeme_tamamlayici_fark')='T') then
begin
if TbPrtklTAMAMLAYACI_SIGORTA.Value>0 THEN BEGIN
                                             QrDestekKrFiyat.Close;
                                             QrDestekKrFiyat.ParamByName('MALZEME_NO').Value:=QrIstekMALZEME_NO.Value;
                                             QrDestekKrFiyat.Open;
fark_ücreti:=QrDestekKrFiyatKUTU_FARK2.value;
                                             end
                                             else
  fark_ücreti:=0;
end;

 try
qrdepobul:=ToraQuery.Create(Self);
qrdepobul.session:=Dm.Database1;
qrdepobul.SQL.Add('SELECT DEPO_NO FROM hastane.LOGINDEPO WHERE LOGINAME=:LNAME');
qrdepobul.ParamByName('LNAME').AsSTRinG:=usern;
qrdepobul.open;
if DM.hastanekeybilgisi_al('malzeme_ack_goster')='T' then
    Begin
   if QrIstekACIKLAMA.Text<>'' then showmessage(QrIstekACIKLAMA.Text) ;
   end;
iF ((QrDepoSTERIL_DEPO_NO.Value)>0) and  (qristekSTERILIZASYON_VARMI.Value='T') and (MessageDlg('Steril Malzeme Sterilizasyona Gönderilsinmi?',mtConfirmation,[mbYes,mbNo],0)= mryes) then
begin
if  (qristekSTERILIZASYON_VARMI.Value='T') and (dm.hastanekeybilgisi_al('steril_aktif')='T') then
begin
IS_GIRIS.ParamByName('ADET_MIKTARI1').ASSTRING:=FloatToStr(adet1);
IS_GIRIS.ParamByName('LOGIN1').ASSTRING:=usern;
IS_GIRIS.ParamByName('ISTEYEN_DEPO1').ASSTRING:=QrDepoSTERIL_DEPO_NO.text;
IS_GIRIS.ParamByName('GONDEREN_DEPO1').ASSTRING:=DBLookdepo.KeyValue;
IS_GIRIS.ParamByName('MALZEME_NO1').ASSTRING:=QrIstekMALZEME_NO.AsString;
IS_GIRIS.ParamByName('ISTEK_NO1').ASSTRING:='';
IS_GIRIS.ParamByName('GLOBAL_ID1').ASSTRING:='';
IS_GIRIS.ParamByName('JSON').ASSTRING:='';
IS_GIRIS.ParamByName('AUTOCOMMIT').ASSTRING:='';
IS_GIRIS.EXECPROC;
IF IS_GIRIS.ParamByName('SONUC').ASSTRING='1' THEN
begin
MALZEME_SEVK_V2.Close;
MALZEME_SEVK_V2.ParamByName('MALZEME_NO1').AsString:=QrIstekMALZEME_NO.AsString;
MALZEME_SEVK_V2.ParamByName('ISTEK_NO1').AsString:=IS_GIRIS.ParamByName('ISTEK_NO1').ASSTRING;
MALZEME_SEVK_V2.ParamByName('GONDEREN_DEPO1').AsString:=DBLookdepo.KeyValue;
MALZEME_SEVK_V2.ParamByName('ALAN_DEPO1').AsString:=QrDepoSTERIL_DEPO_NO.text;
MALZEME_SEVK_V2.ParamByName('LOGIN1').AsString:=usern;
MALZEME_SEVK_V2.ParamByName('ADET_MIKTARI1').AsString:=FloatToStr(adet1);
MALZEME_SEVK_V2.ParamByName('MALI_YIL1').AsString:=DM.QrFirmaMALIYIL.AsString;
MALZEME_SEVK_V2.ParamByName('ANA_FIRMA1').AsString:=DM.QrFirmaFIRMA_NO.AsString;
if editkare.Text='' then
MALZEME_SEVK_V2.ParamByName('KAREKOD1').AsString:=''
else
MALZEME_SEVK_V2.ParamByName('KAREKOD1').AsString:=karekod_parse_et_meddata(editkare.text,qrmaldKAREKOD_TIPI.text); //karekod_parse_et(editkare.text,qrmaldKAREKOD_TIPI.text);//

//ShowMessage(karekod_parse_et(editkare.text));

MALZEME_SEVK_V2.ParamByName('CILT_NO1').AsString:='';
MALZEME_SEVK_V2.ParamByName('CILT_NO_ISTEKLER1').AsString:='';
MALZEME_SEVK_V2.ParamByName('SAYFA_NO1').AsString:='';
MALZEME_SEVK_V2.ParamByName('ISLEM_TARIHI1').AsDateTime:=anaform.sys_tarih_al;
MALZEME_SEVK_V2.ParamByName('FISSIRANO').AsString:='0';
MALZEME_SEVK_V2.ParamByName('STERILMI').AsString:='T';
MALZEME_SEVK_V2.ParamByName('JSON').AsString:='';
MALZEME_SEVK_V2.ParamByName('AUTOCOMMIT').AsString:='';
MALZEME_SEVK_V2.ExecProc;
if MALZEME_SEVK_V2.ParamByName('SONUC').AsString='1' then
begin
end else
raise Exception.Create(MALZEME_SEVK_V2.ParamByName('SONUC').AsString);
end;
end;
end;

  MALZEME_SARFIYAT_V2.Close;
  MALZEME_SARFIYAT_V2.ParamByName('MALI_YIL1').AsString := DM.QrFirmaMALIYIL.AsString;
  MALZEME_SARFIYAT_V2.ParamByName('ANA_FIRMA1').AsString := DM.QrFirmaFIRMA_NO.AsString;
  MALZEME_SARFIYAT_V2.ParamByName('MALZEME_NO1').AsString :=QrIstekMALZEME_NO.AsString;
  if DBLookdepo.text<>'' then
  MALZEME_SARFIYAT_V2.ParamByName('GONDEREN_DEPO1').AsString :=DBLookdepo.KeyValue
  else
  MALZEME_SARFIYAT_V2.ParamByName('GONDEREN_DEPO1').AsString := qrdepobul.Fields[0].Value;

  MALZEME_SARFIYAT_V2.ParamByName('LOGIN1').AsString := usern;

  MALZEME_SARFIYAT_V2.ParamByName('PROTOKOL_NO1').AsString :=FloatToStr(mprotokol_no);
  MALZEME_SARFIYAT_V2.ParamByName('SERVIS_NO1').AsString :='';
  MALZEME_SARFIYAT_V2.ParamByName('RECETE_SERI1').AsString := ozellikli_recete_seri;
  MALZEME_SARFIYAT_V2.ParamByName('RECETE_NO1').AsString := ozellikli_recete_no;
  MALZEME_SARFIYAT_V2.ParamByName('ILAC_ORDER_NO1').AsString :='';
//  MALZEME_SARFIYAT_V2.ParamByName('BIRIM_UCRETI1').AsString := FloatToStr(round_ytl(kurum_ücreti));
  MALZEME_SARFIYAT_V2.ParamByName('BIRIM_UCRETI1').asstring := ''; //buraya formüllü olacak
  MALZEME_SARFIYAT_V2.ParamByName('BIRIM_UCRETI_FARK1').AsString := FloatToStr(round_ytl(fark_ücreti));
  MALZEME_SARFIYAT_V2.ParamByName('DR1').AsString :=DBLookDr.KeyValue;
  //if DM.QrHastaneHASTANE_NO.AsString='' then
  //MALZEME_SARFIYAT_V2.ParamByName('HASTANE_NO1').AsString :='1' else

  MALZEME_SARFIYAT_V2.ParamByName('HASTANE_NO1').AsString :=floattostr(gelen_hastane_no); //hastane noyu protokolden alýcak.Sait bey öyle dedi.Burak.
  MALZEME_SARFIYAT_V2.ParamByName('DOVIZ_KODU1').AsString := FloatToStr(doviz_kodu);//'0';
  MALZEME_SARFIYAT_V2.ParamByName('OTEL_NO1').AsString :=FloatToStr(otel_no_al);
if LookupIsleminYapYer.KeyValue>0 then
MALZEME_SARFIYAT_V2.ParamByName('ISLEMIN_YAPILDIGI_YER1').AsString :=(LookupIsleminYapYer.KeyValue)
else
MALZEME_SARFIYAT_V2.ParamByName('ISLEMIN_YAPILDIGI_YER1').AsString:='';
if TbPrtklHASTA_A_Y.value=2 then   MALZEME_SARFIYAT_V2.ParamByName('M_ISLEM_DURUM1').AsString :=IntToStr(Combopaket.ItemIndex)
else MALZEME_SARFIYAT_V2.ParamByName('M_ISLEM_DURUM1').AsString:='0';
if ComboOzelDurum.itemindex<>16 then
MALZEME_SARFIYAT_V2.ParamByName('MEDULA_OZEL_DURUM1').AsString:=ComboOzelDurum.Value  // 2010
else
MALZEME_SARFIYAT_V2.ParamByName('MEDULA_OZEL_DURUM1').AsString := '';

//ShowMessage(karekod_parse_et(editkare.text));

MALZEME_SARFIYAT_V2.ParamByName('KAREKOD1').AsString :=karekod_parse_et(editkare.text,qrmaldKAREKOD_TIPI.text);//karekod_parse_et_meddata(editkare.text,qrmaldKAREKOD_TIPI.text);
if (editkare.text='') or (adet_miktari.Text<>'0') then
 MALZEME_SARFIYAT_V2.ParamByName('ADET_MIKTARI1').AsString :=FloatToStr(adet1)
 else
  MALZEME_SARFIYAT_V2.ParamByName('ADET_MIKTARI1').AsString :='1';



MALZEME_SARFIYAT_V2.ParamByName('FIS_NO1').AsString :=editFis.Text;
MALZEME_SARFIYAT_V2.ParamByName('ILKUCRET1').AsString := FloatToStr(round_ytl(kurum_ilk_ücreti)); //buraya bak
MALZEME_SARFIYAT_V2.ParamByName('ILKUCRET_FARK1').AsString := FloatToStr(round_ytl(fark_ücreti));
MALZEME_SARFIYAT_V2.ParamByName('TARIH1').AsDateTime :=anaform.sys_tarih_al ;
MALZEME_SARFIYAT_V2.ParamByName('SAYIM_NO1').AsString :='';
MALZEME_SARFIYAT_V2.ParamByName('ACIKLAMA1').AsString :=edtaciklama.Text;
//if chkfatura.checked then
//Begin
//   if editkare.Text<>'' then
//      Begin
//        if ilac_karekod_parse(editkare.Text,barkodu,lot_no,seri_no,son_kullanma_tarihi,karekod_tipi) then
//           Begin
//           barkodu_hareket:=HAREKET_QRBARKOD.Text;
//           if Copy(barkodu,1,1)='0' then barkodu:= copy(barkodu,2,Length(barkodu)) ;
//           if Copy(barkodu_hareket,1,1)='0' then barkodu_hareket:= copy(barkodu,2,Length(barkodu_hareket)) ;
//           if barkodu_hareket=barkodu then
//           MALZEME_SARFIYAT_V2.ParamByName('FSIRA_NO1').AsString :=hareket_qrfsira_no.text;
//           end;
//      end else
//      MALZEME_SARFIYAT_V2.ParamByName('FSIRA_NO1').AsString :='';
//end else
//MALZEME_SARFIYAT_V2.ParamByName('FSIRA_NO1').AsString :='';

 if chkfatura.checked then
 MALZEME_SARFIYAT_V2.ParamByName('FSIRA_NO1').AsString :=hareket_qrfsira_no.text else
 MALZEME_SARFIYAT_V2.ParamByName('FSIRA_NO1').AsString :='';
//if HAREKET_QRFSIRA_NO.Value>0 then
//MALZEME_SARFIYAT_V2.ParamByName('JSON').AsString :='{"FSIRA_NO":"'+HAREKET_QRFSIRA_NO.AsString+'"}'
//else
MALZEME_SARFIYAT_V2.ParamByName('JSON').AsString :='';
MALZEME_SARFIYAT_V2.ParamByName('AUTOCOMMIT').AsString :='';
MALZEME_SARFIYAT_V2.ExecProc;

if MALZEME_SARFIYAT_V2.ParamByName('SONUC').AsString = '1' then
begin
if MALZEME_SARFIYAT_V2.ParamByName('UYARI').AsString <>'' THEN
showmessage(MALZEME_SARFIYAT_V2.ParamByName('UYARI').AsString);
//  edtKarekod.Clear;
if dm.hastanekeybilgisi_al('mal_sevk_uyari_sessiz')<>'T' then
ShowMessage('Ýþlem Baþarýlý');

if (dm.TbPrtklMEDULA_DURUMU.value=7)  and (dm.TbPrtklGSSMI.value='T') then durum_update_et(dm.Tbprtkldosya_no.value,dm.TbPrtklprotokol_no.value,dm.tbprtklbolum.value);

if dm.hastanekeybilgisi_al('konsinye_mesaj_at')='T' then
begin
if (QrDepoKONSINYE_DEPOSU_MU.Value='T') then
begin
kime:=dm.hastanekeybilgisi_al('konsinye_uyari_kime');
if length(kime)>0 then
begin
dm.mesaj_send(kime,'Konsinye Ürün Kullanýldý','I','Ürün: '+QrIstekADI.Text+'Firma Adý: '+HAREKET_QRFIRMA_ADI.Text+' Ýrs./Tut.No: '+HAREKET_QRFATURA_NO.Text+' Açýklama/Lot.No: '+HAREKET_QRFATURASATIRACK.Value+'P.No: '+dm.tbprtklprotokol_no.asstring+' Adý Soyadý '+dm.QrKimADVESOYAD.AsString+' adlý hastaya konsinye ürün çýkýldý.',0,0,dm.qrkimdosya_no.value,dm.tbprtklprotokol_no.value,date,'','');
dm.mesaj_send(kime,'Konsinye Ürün Kullanýldý','O','Ürün: '+QrIstekADI.Text+'Firma Adý: '+HAREKET_QRFIRMA_ADI.Text+' Ýrs./Tut.No: '+HAREKET_QRFATURA_NO.Text+' Açýklama/Lot.No: '+HAREKET_QRFATURASATIRACK.Value+'P.No: '+dm.tbprtklprotokol_no.asstring+' Adý Soyadý '+dm.QrKimADVESOYAD.AsString+' adlý hastaya konsinye ürün çýkýldý.',0,0,dm.qrkimdosya_no.value,dm.tbprtklprotokol_no.value,date,'','');
end;
end;
end;
kutu_miktari.text:='0';
adet_miktari.text:='0';
QrIstek.refreshRecord;


if mprotokol_no<0 then
begin
qrMalD.close;
qrMald.sql[5]:='AND TO_DATE(ISL.TARIH)=:TARIH';
qrMald.ParamByName('TARIH').asdate:=date;
qrMalD.ParamByName('P_NO').AsFloat:=mprotokol_no;
qrMalD.open;
end
else
begin
qrMalD.close;
qrMalD.ParamByName('P_NO').AsFloat:=mprotokol_no;
qrMalD.open;
end;


Bagli_islem_aktar(QrIstekMALZEME_NO.value);


 //BAÐLI ÝÞLEM EKLE SON

  end
  else
raise Exception.Create(MALZEME_SARFIYAT_V2.ParamByName('SONUC').AsString);
finally
  qrdepobul.free;
end;
editkare.clear;





{$REGION 'eski kodlar'}
//mevcut_toplam:=get_mevcut_toplam; //hareketlerden alýyor
//mevcut:=mevcut_toplam div trunc(QrIstekTb_MIKTARI.value);
//mevcut_tb:=mevcut_toplam mod trunc(QrIstekTb_MIKTARI.value);
//tbkutu:=trunc(QrIstekTb_MIKTARI.value);
//tus_adi:='';
//if sender=btnsablon then
//begin
//g_miktari:=QrIstekSKUTU.AsInteger;
//tb:=QrIstekSADET.AsInteger;
//tus_adi:='S';
//end
//else begin
//g_miktari:=strtoint(kutu_miktari.text);
//tb:=strtoint(adet_miktari.text);
//tus_adi:='N';
//end;
//gonderilecek_toplam:=g_miktari*QrIstekTB_MIKTARI.VALUE+tb;
//
//
//
//ozellikli_recete_bilgisi_al;
//
//if hareket_qr.Active and (gonderilecek_toplam<=mevcut_toplam) then
//  begin
//hareket_qr.first;
//gonderilen_miktar:=0;
//
//    while (gonderilecek_toplam>0) and
//     (not hareket_qr.EOF)  do
//      begin
//parca_miktar:=0;
//if (gonderilecek_toplam<=(hareket_qrkutu_miktari.value*tbkutu+hareket_qradet_miktari.value) ) then parca_miktar:=gonderilecek_toplam
//else  parca_miktar:=(hareket_qrkutu_miktari.value*tbkutu)+(hareket_qradet_miktari.value);
//
//        kutu_top:=0;tb_top:=0;ara_tb:=0;
//         kutu_top:=parca_miktar div tbkutu;
//         tb_top:=parca_miktar mod tbkutu;
//         if tb_top>HAREKET_QRAdet_miktari.value then begin
//                                               ara_tb:=tb_top-Trunc(HAREKET_QRAdet_miktari.value);
//                                               tb_top:=Trunc(HAREKET_QRAdet_miktari.value);
//                                               end;
//         sonuc:=-1;
//         if tb_top>0 then begin
//                          sonuc:=sarf_yap(0,tb_top);
//         if sonuc>0 then  begin
//                          mal_aktar(sonuc,tb_top,QrIstekTB_BIRIMI.VALUE,tb_top*QrIstekADET_FIYAT.value*butce_indirim_orani*butce_indirim_orani2,tb_top*QrIstekADET_FIYAT.value,'K',tus_adi);
//if (QrIstekADET_FARK.value>0) and not (gss_paket_mi) then  mal_aktar(sonuc,tb_top,QrIstekTB_BIRIMI.VALUE,tb_top*QrIstekADET_FARK.value,tb_top*QrIstekADET_FARK.value,'F',tus_adi);
//if TbPrtklTAMAMLAYACI_SIGORTA.Value>0 THEN BEGIN
//                                             QrDestekKrFiyat.Close;
//                                             QrDestekKrFiyat.ParamByName('MALZEME_NO').Value:=QrIstekMALZEME_NO.Value;
//                                             QrDestekKrFiyat.Open;
//                                             mal_aktar(sonuc,tb_top,QrIstekTB_BIRIMI.VALUE,tb_top*QrDestekKrFiyatADET_FIYAT.Value,tb_top*QrDestekKrFiyatADET_FIYAT.Value,'2',tus_adi);
//                                           END;// destek sigorta satýrý
//                          end;
//                          end;
//         if kutu_top>0 then begin
//         sonuc:=sarf_yap(kutu_top,0);
//         if sonuc>0 then begin
//                         mal_aktar(sonuc,kutu_top,QrIstekKT_BIRIMI.VALUE,kutu_top*QrIstekKUTU_FIYAT.value*butce_indirim_orani*butce_indirim_orani2,kutu_top*QrIstekKUTU_FIYAT.value,'K',tus_adi);
//if (QrIstekKUTU_FARK.value>0) and not (gss_paket_mi)  then mal_aktar(sonuc,kutu_top,QrIstekKT_BIRIMI.VALUE,kutu_top*QrIstekKUTU_FARK.value,kutu_top*QrIstekKUTU_FARK.value,'F',tus_adi);
//if TbPrtklTAMAMLAYACI_SIGORTA.Value>0 THEN BEGIN
//                                             QrDestekKrFiyat.Close;
//                                             QrDestekKrFiyat.ParamByName('MALZEME_NO').Value:=QrIstekMALZEME_NO.Value;
//                                             QrDestekKrFiyat.Open;
//                                             mal_aktar(sonuc,kutu_top,QrIstekTB_BIRIMI.VALUE,kutu_top*QrDestekKrFiyatkutu_FIYAT.Value,kutu_top*QrDestekKrFiyatkutu_FIYAT.Value,'2',tus_adi);
//                                           END;// destek sigorta satýrý
//                         end;
//                            end;
//         if ara_tb>0 then begin
//                          sonuc:=sarf_yap(0,ara_tb);
//         if sonuc>0 then  begin
//                          mal_aktar(sonuc,ara_tb,QrIstekTB_BIRIMI.VALUE,ara_tb*QrIstekADET_FIYAT.value*butce_indirim_orani*butce_indirim_orani2,ara_tb*QrIstekADET_FIYAT.value,'K',tus_adi);
//if (QrIstekADET_FARK.value>0) and not (gss_paket_mi)  then mal_aktar(sonuc,ara_tb,QrIstekTB_BIRIMI.VALUE,ara_tb*QrIstekADET_FARK.value,ara_tb*QrIstekADET_FARK.value,'F',tus_adi);
//                          end;
//
//                          end;
//
//if sonuc>0 then gonderilen_miktar:=gonderilen_miktar+parca_miktar;
//if sonuc>0 then gonderilecek_toplam:=gonderilecek_toplam-parca_miktar;
//
//        hareket_qr.next;
//      end;  //2.end
//if dm.hastanekeybilgisi_al('konsinye_mesaj_at')='T' then
//begin
//if (QrDepoKONSINYE_DEPOSU_MU.Value='T') then
//begin
//kime:=dm.hastanekeybilgisi_al('konsinye_uyari_kime');
//if length(kime)>0 then
//begin
//dm.mesaj_send(kime,'Konsinye Ürün Kullanýldý','I','Ürün: '+QrIstekADI.Text+'Firma Adý: '+HAREKET_QRFIRMA_ADI.Text+' Ýrs./Tut.No: '+HAREKET_QRFATURA_NO.Text+' Açýklama/Lot.No: '+HAREKET_QRFATURASATIRACK.Value+'P.No: '+dm.tbprtklprotokol_no.asstring+' Adý Soyadý '+dm.QrKimADVESOYAD.AsString+' adlý hastaya konsinye ürün çýkýldý.',0,0,dm.qrkimdosya_no.value,dm.tbprtklprotokol_no.value,date,'');
//dm.mesaj_send(kime,'Konsinye Ürün Kullanýldý','O','Ürün: '+QrIstekADI.Text+'Firma Adý: '+HAREKET_QRFIRMA_ADI.Text+' Ýrs./Tut.No: '+HAREKET_QRFATURA_NO.Text+' Açýklama/Lot.No: '+HAREKET_QRFATURASATIRACK.Value+'P.No: '+dm.tbprtklprotokol_no.asstring+' Adý Soyadý '+dm.QrKimADVESOYAD.AsString+' adlý hastaya konsinye ürün çýkýldý.',0,0,dm.qrkimdosya_no.value,dm.tbprtklprotokol_no.value,date,'');
//end;
//end;
//end;
/////////////////////////////////////////////
//if gonderilen_miktar>0 then begin
//kutu_n:=gonderilen_miktar div tbkutu;
//tb_n:=gonderilen_miktar mod tbkutu;
//if not oto then begin
//if (kutu_n>0) and not (sender=btnSablon) then MessageDlg('Kutu Aktarma Ýþlemi Tamam.', mtInformation, [mbYes], 0);
//if (tb_n>0) and not (sender=btnSablon) then  MessageDlg('Tablet Aktarma Ýþlemi Tamam.', mtInformation, [mbYes], 0);
//            end;
//                            end;
////////////////////////////////////////////
//
//hareket_qr.first;
//hareket_qr.enableControls;
// kutu_miktari.text:='0';
// adet_miktari.text:='0';
//
//QrIstek.refreshRecord;
//qrMalD.close;
//qrMalD.ParamByName('P_NO').AsFloat:=mprotokol_no;
//qrMalD.open;
//
//end
//else messagedlg('Ýstediðiniz miktar Stoktakinden fazla??',mtError,[MbYes],0);
{$ENDREGION}
 end;




procedure TFrmMal.DSIstekDataChange(Sender: TObject; Field: TField);
begin
HAREKET_qr.Close;
HAREKET_qr.ParamByName('A_DEPO').Asfloat:=Depo_no;
HAREKET_qr.ParamByName('MLZNO').AsFloat:=QrIstekMalzeme_NO.value;
HAREKET_qr.ParamByName('MALI_YIL').Asfloat:=Dm.QrFirmaMALIYIL.value;
HAREKET_qr.ParamByName('ANA_FIRMA').AsFloat:=Dm.QrFirmaFIRMA_NO.value;
HAREKET_qr.Open;
Radiocikis.itemindex:=0;



if QrIstekCIKISTIPI.value='H' then Radiocikis.Color:=ClBtnFace
else Radiocikis.Color:=ClLime;

  if QRistekTEMIN_DURUMU.Value='T' THEN
  begin
   LblUyari.Caption:='Dikkat!Ehu Ýlaç Aktarýlýyor.Dr.Onayý Gerekir.';
   LblUyari.Blinking:=true;
  end
  else
  begin
   LblUyari.Caption:='';
   LblUyari.Blinking:=false;
  end;

if TbPrtklKURUM_NO.Value>=20 then
begin
 if QrIstekPAKETMI.Value='1' then Combopaket.ItemIndex:=1// malzeme kartýnda hariç seçildi ise
                             else
                                  Combopaket.ItemIndex:=0; // malzeme kartýnda dahil seçildi ise
                                  end
else
if TbPrtklKURUM_NO.Value<20 then                 //KURUMA GORE OZEL PAKET EKLENDI 08.02.2016
begin
 if QrIstekOZEL_PAKET_MI.Value='1' then Combopaket.ItemIndex:=1// malzeme kartýnda hariç seçildi ise
                             else
                                  Combopaket.ItemIndex:=0; // malzeme kartýnda dahil seçildi ise
end;



qrmua.Close;

if checkmuadil.checked then  qrmua.ParamByName('BARKODU').AsString:=QristekBARKOD.Value
else qrmua.ParamByName('mno').Value:=QristekMALZEME_NO.Value;
qrmua.ParamByName('depo_no').Value:=DBLookdepo.KeyValue;
qrmua.Open;
if qrmua.RecordCount>0 then
begin
LblMuadil.Visible:=True;
GridMuadil.Visible:=True;
end
else
begin
LblMuadil.Visible:=False;
GridMuadil.Visible:=False;
end;

 end;

procedure TFrmMal.kutu_miktariChange(Sender: TObject);
begin
try
if kutu_miktari.text<>'' then strToInt(kutu_miktari.text);
except
    on exception do kutu_miktari.text:='';
    end;
end;

procedure TFrmMal.Adet_miktariChange(Sender: TObject);
begin
try
if Adet_miktari.text<>'' then  strToInt(Adet_miktari.text);
except
    on exception do Adet_miktari.text:='';
    end;

end;
Function TFrmMal.durum_update_et(dosya_no,protokol_no,bolum:Double):Boolean;
var
adettoplam,adetislem,adetTani,adetmalzeme:double;
durum:integer;
begin
adettoplam:=0;
adettoplam:=Dm.GetNumber('SELECT COUNT(*) FROM HASTANE.ISLEMYAP WHERE PROTOKOL_NO='+FloatToStr(protokol_no)+
' AND FATURA_TIPI=0 ');
adetislem:=0;
adetislem:=Dm.GetNumber('SELECT COUNT(*) FROM HASTANE.ISLEMYAP WHERE PROTOKOL_NO='+FloatToStr(protokol_no)+
' AND FATURA_TIPI=0  '+
' AND ONLINE_KAYIT_NO IS NULL');
adetmalzeme:=0;
adetmalzeme:=Dm.GetNumber('SELECT COUNT(*) FROM HASTANE.ISLEMYAP WHERE PROTOKOL_NO='+FloatToStr(protokol_no)+
' AND FATURA_TIPI=0  '+
' AND ONLINE_KAYIT_NO IS NULL');
adettani:=0;
adettani:=Dm.GetNumber('SELECT COUNT(*) FROM HASTANE.TANI WHERE DOSYA_NO='+FloatToStr(dosya_no)+
' AND PROTOKOL_NO='+FloatToStr(protokol_no)+
' AND BOLUM='+ FloatToStr(BOLUM)+
' AND ONLINEMI IS NULL');
if (adettoplam>0) then begin
if (Adetislem=0) and (adetTani=0) then durum:=7
else durum:=6;

dm.OraTmp.sql.clear;
dm.OraTmp.sql.add('update hastane.PROTOKOL');
dm.OraTmp.sql.add('set  MEDULA_DURUMU='+intToStr(DURUM));
dm.OraTmp.sql.add('where protokol_no='+FloatToStr(protokol_no));
anaform.start_trans_base;
dm.OraTmp.execute;
anaform.commit_yap;
                       end;
end;


procedure TFrmMal.BtnAktarClick(Sender: TObject);
function tekrar_sor(grup_kodu,malzemekodu:double):boolean;
var
QrSor:ToraQuery;
begin
try
QrSor:=ToraQuery.Create(Self);
QrSor.session:=Dm.Database1;
QrSor.SQL.Add('SELECT COUNT(*) SAYI FROM HASTANE.ISLEMYAP');
QrSor.SQL.Add('WHERE DOSYA_NO='+tbPrtklDOSYA_NO.AsString);
QrSor.SQL.Add('AND GRUP_KODU='+FloatToStr(grup_kodu));
QrSor.SQL.Add('AND MALZEME_KODU='+FloatToStr(malzemekodu));
QrSor.SQL.Add('AND FATURA_TIPI=0');
QrSor.SQL.Add('AND TARIH BETWEEN :BAS AND :BIT');
QrSor.ParamByName('BAS').AsDateTime:=date+StrToTime('00:00');
QrSor.ParamByName('BIT').AsDateTime:=date+StrToTime('23:59');
QrSor.open;
if QrSor.Fields[0].value>0 then
begin
if messageDlg('Bu Ýlaç/Malzemeden ayný gün içerisinde birden fazla var. Eminmisiniz?',mtConfirmation,[mbyes,MbNo],0)=mrYes then result:=true
else result:=False;
end
else result:=True;
QrSor.free;

except
  on exception do QrSor.free;

  end;

end;
function gun_kontrolu_ok(malzeme_kodu,gun:double):boolean;
var
QrSor:ToraQuery;
begin
if (gun>0) then begin
try
QrSor:=ToraQuery.Create(Self);
QrSor.session:=Dm.Database1;
QrSor.SQL.Add('SELECT COUNT(*) SAYI FROM HASTANE.ISLEMYAP');
QrSor.SQL.Add('WHERE DOSYA_NO=:D_NO');
QrSor.SQL.Add('AND FATURA_TIPI=0');
QrSor.SQL.Add('AND MALZEME_KODU=:MLZ_NO');
QrSor.SQL.Add('AND TARIH BETWEEN :BAS AND :BIT');
QrSor.ParamByName('d_no').Value:=tbprtklDOSYA_NO.Value;
QrSor.ParamByName('mlz_no').Value:=malzeme_kodu;
QrSor.ParamByName('BAS').AsDateTime:=(date-gun)+StrToTime('00:00');
QrSor.ParamByName('BIT').AsDateTime:=date+StrToTime('23:59');
QrSor.open;
if QrSor.Fields[0].value>0 then
begin
messageDlg('Bu Ýlaç/Malzemeden '+FloatToStr(gun)+' gün içerisinde Aktarýlmýþ.Tekrar aktaramazsýnýz....',mtError,[mbyes],0);
result:=False;
end
else result:=True;
QrSor.free;

except
  on exception do QrSor.free;
  end;

     end
else result:=true;

end;
procedure ehu_onay_gonder;
var qrtemp:TOraQuery;
begin
   qrtemp:= toraquery.create(self) ;
   qrtemp.Session:= DM.Database1;
   qrtemp.Close;
   qrtemp.SQL.add('select * from HASTANE.ILAC_EHU_ONAY where istek_tarihi between sysdate and sysdate-3');
   qrtemp.SQL.add('and ENF_UZMANI_ONAYLADIMI='+#39+'E'+#39);
   qrtemp.SQL.add('AND MALZEME_NO=:MLZ_NO');
   qrtemp.ParamByName('MLZ_NO').AsString:=QrIstekMALZEME_NO.Text;
   qrtemp.Open;


  AnaForm.start_trans;
  QrEhuInsert.Close;
  QrEhuInsert.ParamByName('MALZEME_NO').Value:=QrIstekMALZEME_NO.Value;
  QrEhuInsert.ParamByName('AKTARILACAK_DR').Value:=DBLookDr.KeyValue;
  QrEhuInsert.ParamByName('DOSYA_NO').Value:=TbPrtklDOSYA_NO.Value;
  QrEhuInsert.ParamByName('PROTOKOL_NO').Value:=TbPrtklPROTOKOL_NO.Value;
  QrEhuInsert.ParamByName('ADET').Value:=StrToFloat(Adet_miktari.Text);
  if qrtemp.RecordCount>0 then
  QrEhuInsert.ParamByName('ENF_UZMANI_ONAYLADIMI').Value:='E' else
   QrEhuInsert.ParamByName('ENF_UZMANI_ONAYLADIMI').Value:='H';
  QrEhuInsert.ParamByName('HASTAYA_CIKILDI').Value:='H';
  QrEhuInsert.ParamByName('ISTEK_TARIHI').Value:=anaform.sys_tarih_al;
  QrEhuInsert.ParamByName('DEPO_NO').Value:=QrDepoDEPO_NO.Value; //DBLookdepo.KeyValue;
  QrEhuInsert.ParamByName('SIRA_NO').Value:=DM.GetNumber('SELECT NVL(MAX(SIRA_NO),0)+1 SIRA_NO FROM  HASTANE.ILAC_EHU_ONAY');
  QrEhuInsert.execsql;
  AnaForm.commit_yap;
   if qrtemp.RecordCount=0 then
  raise Exception.Create('Enfeksiyon Uzmanýna Onay Ýçin Bilgi Gönderildi.');

end;
procedure hareketleri_depodurumla_karsilastir;
var
hkutu,hadet,dkutu,dadet,htoplam,dtoplam:Double;
begin
hkutu:=0;
hadet:=0;
htoplam:=0;
dkutu:=0;
dadet:=0;
dtoplam:=0;
dkutu:=qristekkutu_miktari.Value;
dadet:=qristekadet_miktari.Value;
dtoplam:=dkutu*QrIstekTB_MIKTARI.value+dadet;

  HAREKET_QR.First;
  repeat
  hkutu:=hkutu+HAREKET_QRKUTU_MIKTARI.value;
  hadet:=hadet+HAREKET_QRADET_MIKTARI.value;
  HAREKET_QR.Next;
  until HAREKET_QR.Eof;
  htoplam:=hkutu*QrIstekADET_MIKTARI.Value+hadet;

if dtoplam=htoplam then {}
else begin
if dtoplam>htoplam then raise exception.create('Çýkýþ Yapýlmadý.Depodurum, Hareketten Fazla Lütfen Düzeltiniz='+FloatToStr(dtoplam-htoplam)+' adet')
else raise exception.create('Çýkýþ Yapýlmadý.Hareket, Depodurumdan Fazla Lütfen Düzeltiniz='+FloatToStr(htoplam-dtoplam)+' adet');
      exit;
      end;
end;
var
MyBookMark:TBookMark;
yatan_ktrl:boolean;
kontrolRakam,sonucRakam:CURRENCY;
ilac_ktrl_tutar_str:String;
begin




if DM.hastanekeybilgisi_al('medula_fatvar_islemekleme')='T' then

if DM.TbPrtklMEDULA_DURUMU.Value=3 then raise Exception.Create('Bu protokol medulaya fatura edilmiþ.Ýþlem giremezsiniz.');

QrDepo.close;
QrDepo.ParamByname('lname').asString:=usern;
QrDepo.open;

if qrdepokilit.Value='T' then  raise exception.create('Depo Kilitli Aktarým Yapamazsýnýz');




if dm.hastanekeybilgisi_al('sut_gun_ktrl_yatan_var')='T' then
yatan_ktrl:=True
else
yatan_ktrl:=False;

//if dm.hastanekeybilgisi_al('ilac_cikarken_har_ktrl_et')='T' then
//hareketleri_depodurumla_karsilastir;    //Kaldýrýlacak

if (QrIstekHASTAYA_CIKILAMASIN.Value='T') and (radiocikis.itemindex=0) then raise exception.Create('Bu stok, sistem yöneticisi tarafýndan hastaya çýkýlamaz olarak iþaretlenmiþ.Ýþlem durduruldu.');
if (QrIstekMALZEME_CIKILMASIN.Value='T') and (radiocikis.itemindex=0) then raise exception.Create('Bu stok, sistem yöneticisi tarafýndan hastaya çýkýlamaz olarak iþaretlenmiþ.Ýþlem durduruldu.');
//if dm.hastanekeybilgisi_al('online_ehu_onayi_al')='T' then
//if QrIstekTEMIN_DURUMU.Value='T' THEN
//ehu_onay_gonder;
kontrolRakam:=0;
ilac_ktrl_tutar_str:=dm.hastanekeybilgisi_al('ilac_maliyet_ktrl_tutar');
if (ilac_ktrl_tutar_str<>'') and (ilac_ktrl_tutar_str<>'T') then
begin
try
kontrolRakam:=StrToInt(ilac_ktrl_tutar_str);
except
on exception do  kontrolRakam:=0;
end;
end;
if kontrolRakam>0 then
begin
sonucRakam:=0;
sonucRakam:=DM.GetNumber('SELECT SUM(A.MALIYET1) TOPLAMILACMALIYET FROM HASTANE.ISLEMYAP A WHERE A.PROTOKOL_NO='+DM.TbPrtklPROTOKOL_NO.AsString+' AND A.FATURA_TIPI=0 AND A.GRUP_KODU>999');
if sonucRakam>=kontrolRakam then
MessageDlg('Dikkat, Bu hastanýn kartýna aktarýlan toplam stok maliyeti '+Floattostr(kontrolRakam)+' tutarýný aþmýþtýr.Aktarýlan stok maliyeti: '+floattostr(sonucRakam) ,mtInformation,[mbyes],0);
end;




if dm.hastanekeybilgisi_al('ilac_aciklama_uyar')='T' then
if not QrIstekACIKLAMA.isnull then
MessageDlg('Uyari var: '+QrIstekACIKLAMA.Text,mtInformation,[mbyes],0);

if (dm.hastanekeybilgisi_al('skt_gecen_uyar')='T') and (HAREKET_QRSON_KULLANMA.value<date)    then      //amerikan hast.
begin
MessageDlg('Dikkat ! Aktarmak istediðiniz malzemenin Son Kullanma Tarihi geçmiþtir.Bilginize..',mtWarning ,[mbyes],0);
end;

if (dm.hastanekeybilgisi_al('skt_gecen_engelle')='T') and (HAREKET_QRSON_KULLANMA.value<date)    then      //amerikan hast.
begin
raise exception.create  ('Dikkat ! Aktarmak istediðiniz malzemenin Son Kullanma Tarihi geçmiþtir!');
end;

//if dm.hastanekeybilgisi_al('ilac_malzeme_dr_zorunlu')='T' then
//if (editdr.Text='') and not(oto) then
//raise exception.create('Doktor Seçimi Supervisor Tarafýndan Zorunlu Olarak Belirlenmiþ.Lütfen Dr Seçiniz.');

if DM.hastanekeybilgisi_al('ilac_mlz_tekrar_sorma')<>'T' then
Begin
if mprotokol_no>0 then
if not tekrar_sor(QrIstekGRUBU.Value,QrIstekMALZEME_NO.Value) then
raise exception.Create('Ýþlemi iptal ettiniz.Aktarma yapýlmadý.');
end;

if ((TbPrtklHASTA_A_Y.Value=1) and (TbPrtklBOLUM.Value<>75)) or (yatan_ktrl) then
if not gun_kontrolu_ok(QrIstekMALZEME_NO.Value,QrIstekISTENMEYECEK_GUN.Value) then
raise exception.Create('Ýþlem Gün kontrolü ile iptal edildi. Aktarma yapýlmadý.');

//if (DM.qrhastanehastane_tipi.value='Y') and  (Dm.qrkurumyerli.value=1) then
//begin
//if not (Dblookupotel.text<>'') then raise exception.Create('Ýþlemin yapýldýðý yeri seçmediniz');
//end;


case bol_kodu of
    60,81..99:radiocikis.itemindex:=1; // 29.07.2010 radyolojiden hasta üzerine çýkýþ için 79-81 yapýldý
end;
if ((bol_kodu>=80) and (bol_kodu<=90) ) and (dm.hastanekeybilgisi_al('labda_otomal_hastaya')='T') then
radiocikis.itemindex:=0;

if ((editFis.text<>'') and (qristekMalzeme_no.value>0)) or (( oto)and(qristekMalzeme_no.value>0)) then
begin
MyBookMark:=QrIstek.GetBookMark;
dosya_protokol_ayarlari_al;
if oto or (editkare.Text<>'') then aktar(btnaktar)
else begin
if messageDlg('Bu Malzemeyi Aktarmak istediðinizden Emin misiniz?',
mtConfirmation,[mbYes,MbNo],0)=MrYEs then begin
                                aktar(btnaktar);
                                          end;
    end;
QrIstek.GotoBookMark(MyBookMark);
QrIstek.FreeBookMark(MyBookMark);
Editmal.text:='';
if not oto then Editmal.setfocus;
end
else messageDlg('Malzemeye istek Fiþ numarasý eksik????/malzeme yok??',mtError,[mbYes],0);
if dm.hastanekeybilgisi_al('malzemeye_islem_aktar')='T' then
begin
QrDusulecekstok.close;
QrDusulecekstok.parambyname('malzeme_no').value:=QrIstekMALZEME_NO.Value;
QrDusulecekstok.parambyname('bolum').value:=TbPrtklBOLum.value;
QrDusulecekstok.open;

qrbolum.close;
qrbolum.paramByName('kodu').AsFloat:=QrDusulecekstokKODU.value;
qrbolum.paramByName('kr_no').AsFloat:=DM.TbPrtklKURUM_NO.value;
qrbolum.paramByName('KRI_NO').AsFloat:=DM.TbPrtklKURUM_NO.value;
qrbolum.paramByName('dr').AsFloat:=tbPrtklDr_kodu.value;
qrbolum.open;

DM.islem_ekle(dm.tbPrtklDOSYA_NO.value,
dm.tbPrtklPROTOKOL_NO.value,
dm.TbPrtklTAMAMLAYACI_SIGORTA.value,
qrbolumgrup_kodu.value,
QrDusulecekstokKODU.value,
dm.tbPrtklDr_kodu.value,
0,
round_ytl(qrbolumilkucret.value),
round_ytl(qrbolumkurum_ucreti.value),
qrbolumKR_OZEL_KOD.AsString,
qrbolumTTBBIRIMI.AsInteger,
0,
'','',
0,
0,
0,0,0,1,dm.TbPrtklBOLUM.Value,8,anaform.sys_tarih_al);
end;

end;

procedure TFrmMal.DBLookdepoCloseUp(Sender: TObject);
begin
editdEPO.text:=DBLookdepo.TEXT;
if (QrDepoDepo_no.value>=0) and (QrDepo.Recordcount>0) then depo_no:=QrDepoDepo_no.value
else depo_no:= -1000;
QrSablonM.Close;
QrSablonM.ParamByName('depo_no').aSFloat:=depo_no;
QrSablonM.Open;
QrSablonD.Open;
if qrdepokilit.Value='T' then
begin
cxGridlisteDBTableView1KUTU_MIKTARI.visible:=False;
cxGridlisteDBTableView1adet_MIKTARI.visible:=False;
cxGridlisteDBTableView1toplam_adet.visible:=False;
end;
BtnAraClick(Sender);
end;




procedure TFrmMal.QrMalDCalcFields(DataSet: TDataSet);
begin
try
QrMalDAdetT.text:=floatTostr(QrMalDAdet.value)+' '+QrMalDbirim_ADI.value
except
   on exception do {}
   end;
end;

procedure TFrmMal.HAREKET_QRCalcFields(DataSet: TDataSet);
begin
Hareket_QRkttb.value:=FloatToStr(Hareket_QRKUTU_MIKTARI.VALUE)+'/'+FloatToStr(Hareket_QRadet_MIKTARI.VALUE);
end;

procedure TFrmMal.EditMalChange(Sender: TObject);
var
str1,STR2:string;
begin
//str1:='*''';
//if EditMal.text<>'' then begin
//                        QrIstek.Filter:='ADI='''+editMal.text+str1;
//                        if not QrIstek.filtered then QrIstek.filtered:=True;
//                        end
//else QrIstek.filtered:=False;

if (EditMal.Text<>'') and (PageListe.ActivePageIndex=1) then
begin
str1:='*''';
str2:='ADI = '+'''*'+turkce_buyult(uppercase(editmal.text))+str1;
Qrsk.Filter:=str2;
if editmal.text<>'' then Qrsk.Filtered:=True
else Qrsk.Filtered:=False;
end
else
begin
Qrsk.filtered:=False;
if dm.hastanekeybilgisi_al('ilac_3karakter_oto_ara')='T' then
begin
  if length(EditMal.Text)>2 then
  BtnAraClick(sender);
end;
end;



end;

procedure TFrmMal.EditMalKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then BtnAraClick(Self);
end;






procedure TFrmMal.EskiGrideGe1Click(Sender: TObject);
begin

cxgridliste.Visible:=not cxgridliste.Visible;
dbgridliste.Visible:=not dbgridliste.Visible;

end;

procedure TFrmMal.ExceleAktar1Click(Sender: TObject);
begin
  SaveDialog1.Filter:='Excel dosyalarý(*.xlsx)|*.xlsx';
  if SaveDialog1.Execute then
  begin
    if FileExists(SaveDialog1.FileName+'.xlsx') then
      if MessageDlg('Ayný Ýsimli Dosya Mevcut.Üzerine Yazýlsýn Mý?',
      mtConfirmation, mbYesNoCancel, 0) <> idYes then Exit;
      ExportGridToXLSX(SaveDialog1.FileName,cxgridliste,true,true,true,'xlsx');
  end;
end;

procedure TFrmMal.BitBtn1Click(Sender: TObject);
var
frmorder: TFrmOrder;
begin
try
  frmorder:= tfrmorder.Create(self);
  FrmOrder.cxpagecontrol1.activepageindex:=2;
  FrmOrder.cxtabsheet1.TABvisible:=false;
  FrmOrder.cxtabsheet2.TABvisible:=false;
  FrmOrder.cxtabsheet3.TABvisible:=True;
  frmorder.cxButton6Click(self);
  frmorder.ShowModal;

finally
  frmorder.Free;
end;

end;

procedure TFrmMal.BitBtn2Click(Sender: TObject);
var
FrmMalFiyat:TFrmMalFiyat;
begin
try
FrmMalFiyat:=TFrmMalFiyat.Create(Self);
FrmMalFiyat.ShowModal;
finally
FrmMalFiyat.Free;
  end;

end;

procedure TFrmMal.BtniptalClick(Sender: TObject);
var
adet1:string;
kutu1:string;
kutu2:integer;
begin

if QrMalDFatura_tipi.value=1 then raise exception.Create('Farký iade edemezsiniz. Normal hasta ayrýntýlarýndan iptal ediniz.');
if  not (QrMalDFATURA_NO.isnull) then raise exception.Create('Ýadet Etmek Ýstediðiniz Malzemeye Fatura Kesilmiþ.Lütfen Önce Faturayý Ýptal Ediniz.');
//
//if ( QrMalDOdeme.value=1) and (QrMalDMalzeme_kodu.value>0) then
//begin
//messagedlg('Bu Ödenmiþ malzemeleri iptal edemezsiniz.Kasalarla görüþünüz??',mtError,
//[mbYes,MbNo],0);
//exit;
//end
//else if (QrMalDMalzeme_kodu.value>0) and ((QrMalDodeme.value=0) or (QrMalDodeme.value>1)) or (editkare.text<>'') then
//if messagedlg('Bu Malzemeyi(ödenmemiþ) iptal ve iade etmek istediðinizden emin misiniz??',mtconfirmation,
//[mbYes,MbNo],0)=mrYes then
begin
AnaForm.Start_Trans;
parcali_iade_yapildi:=false;


if checkiade.checked then
QRmald.Locate('KAREKOD', VarArrayOf([editkare.text]), [loPartialKey]);  //Karekodu bul konumlan
//ÝSTEK DETAÝL SÝLÝNÝYOR.

kutu1:=kutu_miktari.Text;
adet1:=Adet_miktari.Text; //QrOrderDetayISLEMYAP_ADET.AsString;

if  (strtoint(adet1)>0) and (strtoint(kutu1)>0) then raise exception.create('Ýade Edilecek Adet Yada Kutu Ýkisinden Birini Giriniz Lütfen');

if strtoint(adet1)>0 then
begin
if  strtoint(adet1)>QrMalDADET.Value then raise exception.create('Ýade Edilecek Miktar Aþýlmýþtýr');
if  strtoint(adet1)<0 then raise exception.create('Ýade Edilecek Adeti Giriniz');
end
else
if strtoint(kutu1)>0 then
begin
if  strtoint(kutu1)<0 then raise exception.create('Ýade Edilecek Adeti Giriniz');

kutu2:=StrToInt(kutu1)*StrToInt(QrMalDADET_MIKTARI.Text);
adet1:=IntToStr(kutu2);
if  strtoint(adet1)>QrMalDADET.Value then raise exception.create('Ýade Edilecek Miktar Aþýlmýþtýr');
end;


  if (dm.hastanekeybilgisi_al('iade_kontrol_aktif')='T') then //kizilay hastaneleri.burak
  begin
   if strtoint(adet1)<>QrMalDADET.Value then  raise Exception.Create('Ýade Edilecek Miktar Eþit Deðil.Lütfen Kontrol Ediniz!');

  end;



if strtoint(adet1)>0  then
      begin
     if StrToIntDef(adet1,0)=0 then raise Exception.Create('Sýfýrdan büyük miktar giriniz.');
     if StrToIntDef(adet1,0)>QrMalDADET.Value then raise Exception.Create('Ýade edilecek miktar aktarýlmýþ miktardan büyük olamaz!');

 if (editkare.Text='') and (QrMalDKAREKOD.Text='') and ((QrMalDKAREKOD_KULLANILACAK_MI.Text ='T') or(QrMalDKAREKOD_KULLANILACAK_MI.Text ='C')  )then
 raise Exception.Create('Seçili malzeme ile ilgili yapýlacak iþlemler için karekod zorunludur!');

  if (dm.hastanekeybilgisi_al('order_iade_onayli')='T') and (QrMalDILAC_ORDER_NO.Value>0) then
     Begin


      DM.ISTEK_GIRIS_V5.ParamByName('MALZEME_NO1').AsString:='';
      DM.ISTEK_GIRIS_V5.ParamByName('ISTEYEN_DEPO1').AsString:='';
      DM.ISTEK_GIRIS_V5.ParamByName('GONDEREN_DEPO1').AsString:='';
      DM.ISTEK_GIRIS_V5.ParamByName('ADET_MIKTARI1').AsString:=adet1;
      DM.ISTEK_GIRIS_V5.ParamByName('LOGIN1').AsString:=usern;
      DM.ISTEK_GIRIS_V5.ParamByName('CILT_NO_ISTEKLER1').AsString:= '';
      DM.ISTEK_GIRIS_V5.ParamByName('ACIKLAMA1').AsString:='';
      DM.ISTEK_GIRIS_V5.ParamByName('ISTEK_NO1').AsString:= '';
      DM.ISTEK_GIRIS_V5.ParamByName('GLOBAL_ID1').AsString:= '';
      DM.ISTEK_GIRIS_V5.ParamByName('JSON').AsString:='{"ISLEMYAP_ROWID1":'+'"'+qrmaldROWID1.AsString+'"},{"ISLEMYAP_KAREKOD1":'+'"'+qrmaldkarekod.AsString+'"}';
      DM.ISTEK_GIRIS_V5.ParamByName('AUTOCOMMIT').AsString:= '';
      DM.ISTEK_GIRIS_V5.ParamByName('SONUC').AsString:= '';
      DM.ISTEK_GIRIS_V5.EXECPROC;

     if DM.ISTEK_GIRIS_V5.ParamByName('SONUC').AsString='1' then
     begin
     ShowMessage('Ýade isteði eczaneye gönderildi. Lütfen malzemeleri ezcaneye teslim ediniz.');
     end
     else
     raise exception.Create(DM.ISTEK_GIRIS_V5.ParamByName('SONUC').AsString);


     End else
     Begin
     if dm.hastanekeybilgisi_al('order_iade_kisitlama_yok')='T' then {}
     else
     if QrMalDILAC_ORDER_NO.Value>0 then raise Exception.Create('Bu ilaç eczane modülünden orderla düþülmüþ.Buradan iade edemezsiniz.Lütfen eczane ile görüþünüz.');

     DM.MALZEME_IADE_V4.Close;
//     DM.MALZEME_IADE_V4.ParamByName('MALZEME_NO1').AsString:=QrMalDMALZEME_KODU.AsString;

//     DM.MALZEME_IADE_V4.ParamByName('ALAN_DEPO1').AsString:=DBLookdepo.KeyValue;
//     DM.MALZEME_IADE_V4.ParamByName('PROTOKOL_NO1').AsString:=QrMalDPROTOKOL_NO.AsString;
DM.MALZEME_IADE_V4.ParamByName('LOGIN1').AsString:=usern;
DM.MALZEME_IADE_V4.ParamByName('MALI_YIL1').AsString:=DM.QrFirmaMALIYIL.AsString;
DM.MALZEME_IADE_V4.ParamByName('ANA_FIRMA1').AsString:=DM.QrFirmaFIRMA_NO.AsString;
if dm.hastanekeybilgisi_al('order_iade_kisitlama_yok')='T' then {}
begin
if QrMalDILAC_ORDER_NO.Value>0 then
begin
DM.MALZEME_IADE_V4.ParamByName('ILAC_ORDER_NO1').AsString:=QrMalDILAC_ORDER_NO.AsString;
DM.MALZEME_IADE_V4.ParamByName('ROWID11').AsString:='';
end
else
DM.MALZEME_IADE_V4.ParamByName('ROWID11').AsString:=QrMalDROWID1.AsString;
DM.MALZEME_IADE_V4.ParamByName('ILAC_ORDER_NO1').AsString:='';
end
else
begin
DM.MALZEME_IADE_V4.ParamByName('ROWID11').AsString:=QrMalDROWID1.AsString;
DM.MALZEME_IADE_V4.ParamByName('ILAC_ORDER_NO1').AsString:='';//QrMalDILAC_ORDER_NO.AsString;
end;

//DM.MALZEME_IADE_V4.ParamByName('ILAC_ORDER_NO1').AsString:='';//QrMalDILAC_ORDER_NO.AsString;







if QrMalDKAREKOD.Text<>'' then
DM.MALZEME_IADE_V4.ParamByName('KAREKOD1').AsString:= QrMalDKAREKOD.Text else
DM.MALZEME_IADE_V4.ParamByName('KAREKOD1').AsString:=karekod_parse_et_meddata(editkare.text,qrmaldKAREKOD_TIPI.text);

if (editkare.text='') or (adet_miktari.Text<>'0') then
DM.MALZEME_IADE_V4.ParamByName('ADET_MIKTARI1').AsString:=adet1
else
DM.MALZEME_IADE_V4.ParamByName('ADET_MIKTARI1').AsString:='1';


//DM.MALZEME_IADE_V4.ParamByName('ROWID11').AsString:=QrMalDROWID1.AsString;

DM.MALZEME_IADE_V4.ParamByName('FSIRA_NO1').AsString:='';
DM.MALZEME_IADE_V4.ParamByName('PROTOKOL_NO1').AsString:='';
DM.MALZEME_IADE_V4.ParamByName('ACIKLAMA1').AsString:='';
DM.MALZEME_IADE_V4.ParamByName('JSON').AsString:='';
DM.MALZEME_IADE_V4.ParamByName('AUTOCOMMIT').AsString:='';
DM.MALZEME_IADE_V4.ExecProc;
if DM.MALZEME_IADE_V4.ParamByName('SONUC').AsString='1' then
begin
ShowMessage('Ýade iþlemi baþarýlý')
end
else
raise exception.Create(DM.MALZEME_IADE_V4.ParamByName('SONUC').AsString);
End;
QrMalD.Refresh;
editkare.clear;
end;
//if mal_iade_ok then begin
//if DM.MALZEME_IADE_V2.ParamByName('SONUC').AsString='1' then begin
//ÝÞLEMYAP SÝLÝNÝYOR.
//if (DM.hastanekeybilgisi_al('malzeme_iade_fark_sil')='T') and (DM.MALZEME_IADE_V2.ParamByName('SONUC').AsString='1' ) then begin  // fark sil
//try
//DM.qrIslemSil.SQL.clear;
//DM.qrIslemSil.SQL.Add('DELETE FROM HASTANE.ISLEMYAP');
//DM.qrIslemSil.SQL.Add('WHERE ISLEM_NO=:ISLEM_NO AND ODEME<>1 and ((fatura_tipi=1) or (fatura_tipi=3))');
//DM.qrIslemSil.ParamByName('ISLEM_NO').Value:=qrmaldISLEM_NO.Value;
//DM.qrIslemSil.Execute;   // ödenmedi ise FARK SÝLÝNÝYOR.
//except
//end;
//end;// fark sil
//if (parcali_iade_yapildi) AND (parcali_iade_miktari>0) then
//begin // parçalý iade
//DM.qrIslemSil.SQL.clear;
//DM.qrIslemSil.SQL.Add('UPDATE HASTANE.ISLEMYAP');
//DM.qrIslemSil.SQL.Add('SET ADET=ADET-:MIKTAR,UCRETI=:UCRETI,ODENEN=ODENEN,KALAN=:UCRETI WHERE rowid=:rowid1');
//DM.qrIslemSil.ParamByName('rowid1').AsString:=QrMalDrowid.value;
//DM.qrIslemSil.ParamByName('MIKTAR').Value:=parcali_iade_miktari;
//DM.qrIslemSil.ParamByName('UCRETI').Value:=round_ytl((QrMalDUCRETI.Value/QrMalDADET.Value)*(QrMalDADET.Value-parcali_iade_miktari));
//DM.qrIslemSil.Execute;
//end   // parçalý iade
//else
//begin  // normal iade
//DM.qrIslemSil.SQL.clear;
//DM.qrIslemSil.SQL.Add('DELETE FROM HASTANE.ISLEMYAP');
//DM.qrIslemSil.SQL.Add('WHERE rowid=:rowid1');
//DM.qrIslemSil.ParamByName('rowid1').AsString:=QrMalDrowid.value;
//DM.qrIslemSil.Execute;
//end; // normal iade
//                end;
AnaForm.Commit_yap;
end;


if mprotokol_no<0 then
begin

qrMalD.close;
qrMald.sql[5]:='AND TO_DATE(ISL.TARIH)=:TARIH';
qrMald.ParamByName('TARIH').asdate:=date;
qrMalD.ParamByName('P_NO').AsFloat:=mprotokol_no;
qrMalD.open;
end
else
begin
qrMalD.close;
qrMalD.ParamByName('P_NO').AsFloat:=mprotokol_no;
qrMalD.open;
end;

QrIstek.refresh;
end;



//malzeme iadde function
Function TFrmMal.Mal_iade_ok:boolean;
var
kt_adet,tb_adet,s_tarih,s_depo_no,s_ilk_hareket:String;
frmiade:Tfrmiade;
islem_ok:Boolean;
islemno1:double;
begin
kt_adet:='';tb_adet:='';
islem_ok:=false;
try
frmiade:=Tfrmiade.create(application);
frmiade.query1.close;
frmiade.query1.ParamByname('lname').asString:=usern;
frmiade.query1.open;
frmiade.hareket_qr.close;
frmiade.hareket_qr.ParamByname('protokol_no').asFloat:=mprotokol_no;
frmiade.hareket_qr.ParamByname('malzeme_no').asFloat:=QrMalDMALZEME_KODU.value;
//frmiade.hareket_qr.ParamByname('tarih').asDate:=QrMalDTARIH.value;
frmiade.hareket_qr.ParamByname('islemno').Value:=QrMalDISLEM_NO.value;
frmiade.hareket_qr.open;
repeat
if frmiade.query1depo_no.value=frmiade.hareket_qrgonderen_depo.value then BREAK;
frmiade.query1.next;
until frmiade.query1.EOF;
if  QrMalDBIRIMI.value=QrMalDTB_BIRIMI.value then frmiade.edittb.value:=QrMalDadet.asinteger
else if QrMalDBIRIMI.value=QrMalDKT_BIRIMI.value then  frmiade.editkt.value:=QrMalDadet.asinteger;
frmiade.i_protokol:=QrMalDPROTOKOL_NO.Value;
frmiade.i_malzeme:=QrMalDMALZEME_KODU.Value;
frmiade.i_Tarih:=QrMalDTARIH.Value;
if not iadeoto then
frmiade.showmodal;
if iadeoto then
frmiade.BitBtn1Click(self);
 finally
if frmiade.modalResult=mrOK then Begin
                    s_tarih:=DateToStr(dep_tarih);
                    s_depo_no:=FloatToStr(dep_depo_no);
                    islem_ok:=true;
 dm.QrMalInfo.close;
 dm.QrMalInfo.PARAMBYNAME('m_no').Asfloat:=QrMalDMALZEME_KODU.value;
 dm.QrMalInfo.open;
 if QrMalDBIRIMI.value=dm.QrMalInfoKT_BIRIMI.value then
                begin
                kt_adet:=FloatToStr(QrMalDADET.value);
                tb_adet:='0';
                end
 else if QrMalDBIRIMI.value=dm.QrMalInfoTB_BIRIMI.value then
                begin
                tb_adet:=FloatToStr(QrMalDADET.value);
                kt_adet:='0';
                end;

 if frmiade.parcali_iademi then
begin
parcali_iade_yapildi:=true;
parcali_iade_miktari:=0;
if frmiade.HAREKET_QRKUTU_MIKTARI.Value>0 then parcali_iade_miktari:=frmiade.HAREKET_QRKUTU_MIKTARI.Value //frmiade.EditKt.IntValue
else
if frmiade.HAREKET_QRADET_MIKTARI.Value>0 then parcali_iade_miktari:=frmiade.HAREKET_QRADET_MIKTARI.Value;//frmiade.EditTb.IntValue;
end;


                    {if frmiade.parcali_iademi then
                    begin // parçalý iademi
                    islemno1:=dm.GetnextNumber('HASTANE.HAREKET_NO');
frmiade.hareket_qr_INS.close;  // iade edilecek miktarda hareket insert ediliyor
frmiade.hareket_qr_INS.ParamByname('protokol_no').asFloat:=mprotokol_no;
frmiade.hareket_qr_INS.ParamByname('malzeme_no').asFloat:=QrMalDMALZEME_KODU.value;
frmiade.hareket_qr_INS.ParamByname('tarih').asDate:=QrMalDTARIH.value;
frmiade.hareket_qr_INS.ParamByname('KUTU').Value:=frmiade.EditKt.IntValue;
frmiade.hareket_qr_INS.ParamByname('ADET').Value:=frmiade.EditTb.IntValue;
frmiade.hareket_qr_INS.ParamByname('islemno').Value:=islemno1;
frmiade.hareket_qr_INS.ExecSQL;  // iade edilecek miktarda hareket insert ediliyor

// ilk asýl hareket iade edilecek miktar kadar eksiltiliyor
frmiade.HAREKET_QR.ReadOnly:=false;
frmiade.HAREKET_QR.Edit;
frmiade.HAREKET_QRKUTU_MIKTARI.Value:=frmiade.HAREKET_QRKUTU_MIKTARI.Value-frmiade.EditKt.IntValue;
frmiade.HAREKET_QRADET_MIKTARI.Value:=frmiade.HAREKET_QRADET_MIKTARI.Value-frmiade.EditTb.IntValue;
frmiade.HAREKET_QR.Post;
frmiade.HAREKET_QR.ReadOnly:=true;
// ilk asýl hareket iade edilecek miktar kadar eksiltiliyor
frmiade.hareket_qr.close;
frmiade.hareket_qr.ParamByname('protokol_no').asFloat:=mprotokol_no;
frmiade.hareket_qr.ParamByname('malzeme_no').asFloat:=QrMalDMALZEME_KODU.value;
frmiade.hareket_qr.ParamByname('tarih').asDate:=QrMalDTARIH.value;
frmiade.hareket_qr.open;
frmiade.hareket_qr.last;
                kt_adet:=frmiade.EditKt.Text;
                tb_adet:=frmiade.EditTb.text;
                parcali_iade_yapildi:=true;
                parcali_iade_miktari:=0;
                if frmiade.EditKt.IntValue>0 then parcali_iade_miktari:=frmiade.EditKt.IntValue
                else
                if frmiade.EditTb.IntValue>0 then parcali_iade_miktari:=frmiade.EditTb.IntValue;

                    end;  // parçalý iademi}
if not (qrmaldislem_no.value>0) then s_ilk_hareket:=frmiade.hareket_qrislem_no.AsString
else if qrmaldislem_no.value=frmiade.hareket_qrislem_no.value then s_ilk_hareket:=qrmaldislem_no.AsString
else s_ilk_hareket:=frmiade.hareket_qrislem_no.AsString;
//if (islemno1>0) and (parcali_iade_yapildi) then  s_ilk_hareket:=floattostr(islemno1);

                                    end;
  frmiade.free;
    end;


 //end sonunda


if ((kt_adet<>'') or (tb_adet<>'')) and (islem_ok=true)  then begin
 DM.Mal_IADE.close;
 DM.MAL_IADE.PARAMBYNAME('K_MIKTARI').AsString:=Kt_Adet;
 DM.MAL_IADE.PARAMBYNAME('A_MIKTARI').AsString:=tb_adet;
 DM.MAL_IADE.PARAMBYNAME('M_NO').AsString:=FloatToStr(QrMalDMALZEME_KODU.value);
 DM.MAL_IADE.PARAMBYNAME('SON_KULLANMA').AsString:=s_tarih;
 DM.MAL_IADE.PARAMBYNAME('DEPO_N').AsString:=s_depo_no;
 DM.MAL_IADE.PARAMBYNAME('PR_NO').AsString:=FloatToStr(MPROTOKOL_NO);
 DM.MAL_IADE.PARAMBYNAME('LOGIN').AsString:=USERN;
 DM.MAL_IADE.PARAMBYNAME('ILK_HAREKET').AsString:=s_ilk_hareket;

 DM.MAL_IADE.ExecProc;

   IF DM.MAL_IADE.PARAMBYNAME('SONUC').asstring='1' THEN
        begin
        if not iadeoto then
        SHOWMESSAGE('iade Yapýldý');
        mal_iade_ok:=True;
        end
    ELSE begin
        if not iadeoto then
        SHOWMESSAGE('Ýade Yapýlamadý');
        mal_iade_ok:=False;
        end;
                 end
else mal_iade_ok:=False;

end;





procedure TFrmMal.RadioCikisClick(Sender: TObject);
begin

if (bol_kodu=15)  then {}
else if QrIstekCIKISTIPI.value='H' then Radiocikis.itemindex:=0;
if DM.hastanekeybilgisi_al('malzeme_cikis_aciklama')='T' then
begin
if Radiocikis.itemindex=1 then edtaciklama.Visible:=True;
end;
end;

procedure TFrmMal.QrIstekCalcFields(DataSet: TDataSet);
begin
qristeksonkullanmatarihi.Value:=HAREKET_QRson_kullanma.asstring;
if ((qristekkutu_miktari.Value*QrIstekTB_MIKTARI.value+qristekAdet_miktari.Value)<qristekminimum_stok.Value) then
        begin
        qristekdurum.value:=chr(76);
qristekfark.Value:=qristektoplam_adet.Value-qristekminimum_stok.Value;
        end
else if ((qristekkutu_miktari.Value*QrIstekTB_MIKTARI.value+qristekAdet_miktari.Value)>qristekmaximum_stok.Value) and (qristekmaximum_stok.Value>0) then
        begin
        qristekdurum.value:=chr(74);
qristekfark.Value:=qristektoplam_adet.Value-qristekmaximum_stok.Value;
        end
else begin
     qristekdurum.value:=chr(75);
qristekfark.Value:=0;
     end;

     if qristekReuse.Value='T' then  qristekReuse_S.Value:=chr(252)
     else qristekReuse_S.Value:=chr(251);

     if qristekcikistipi.Value='G' then  qristekCIKISTIPI_S.Value:='Serbest'
     else qristekCIKISTIPI_S.Value:='Hasta';
case trunc(doviz_KODU) of
      0:qristekDoviz_adi.Value:='TL';
      1:qristekDoviz_adi.Value:='$';
      2:qristekDoviz_adi.Value:='€';
      3:qristekDoviz_adi.Value:='£';
       end;


   if qristektoplam_adet.value> qristekmaximum_stok.Value then
   qristekdurum.asinteger:=1;


   if qristektoplam_adet.Value<qristekminimum_stok.value then
   qristekdurum.asinteger:=0 ;

   if qristektoplam_adet.Value<qristekkritik_stok.value then
   qristekdurum.asinteger:=2 ;




end;

procedure TFrmMal.dbGridListeDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var Icon: TBitmap;
    depodaki_toplam_adet:integer;
begin
   depodaki_toplam_adet:=(qristekkutu_miktari.Value*QrIstekTB_MIKTARI.value+qristekAdet_miktari.Value);
   if (qristekminimum_stok.Value>0) AND (qristekmaximum_stok.Value>0) then begin // varsa
    if (qristekminimum_stok.Value>depodaki_toplam_adet) OR (qristekmaximum_stok.Value<depodaki_toplam_adet) then
          begin // minimum altý veya maximum üstü ise kýrmýzý olsun
            dbGridListe.Canvas.Font.Color := clRed;
            dbGridListe.DefaultDrawColumnCell(Rect,DataCol , Column, State);
          end

                                                                                                    end; // varsa


   if (QrIstekKRITIK_STOK.value>0) then begin // kritik stok dolu ise
   if (qristekKRITIK_STOK.Value>depodaki_toplam_adet) then
          begin // kritik altý ise sarý olsun
            dbGridListe.Canvas.Font.Color := clolive;
            dbGridListe.DefaultDrawColumnCell(Rect,DataCol , Column, State);
          end;
                                        end;  // kritik stok dolu ise



if  (Column.fieldName='DURUM') then begin
Icon:=TBitmap.Create;
with  dbGridListe.Canvas do
if qristekrecete_tipi.Value='K' then begin
                                ImageList1.GetBitmap(2,Icon);
                                TextRect(Rect,Rect.Left+21,Rect.Top,Column.Field.AsString);
                                Draw(rect.Left+1,Rect.Top,Icon); // Resim Konuyor..
                                end
else if qristekrecete_tipi.Value='Y' then begin
                                ImageList1.GetBitmap(3,Icon);
                                TextRect(Rect,Rect.Left+21,Rect.Top,Column.Field.AsString);
                                Draw(rect.Left+1,Rect.Top,Icon); // Resim Konuyor..
                                end;
icon.free;
                                        end;
end;

procedure TFrmMal.kutu_miktariKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
                BtnAktarClick(kutu_miktari);
                end;

end;

procedure TFrmMal.Adet_miktariKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
                BtnAktarClick(adet_miktari);
                end;

end;

procedure TFrmMal.EditGrupChange(Sender: TObject);
begin
if EditGrup.text='' then DBLookGRPCloseUp(Sender);
end;

procedure TFrmMal.editkareKeyPress(Sender: TObject; var Key: Char);
var barkodu,barkodu_hareket,lot_no,seri_no,karekod_tipi:string;
son_kullanma_tarihi:TDateTime;

begin
if key=#13 then
Begin
Key:=#0;

barkodu:='';
if pos('_',EditKare.Text)>0 then
barkodu:= Copy(EditKare.Text,0,pos('_',EditKare.Text)-1)  ;

if barkodu='' then
Begin
if ilac_karekod_parse(editkare.Text,barkodu,lot_no,seri_no,son_kullanma_tarihi,karekod_tipi) then
           Begin
           if Copy(barkodu,1,1)='0' then barkodu:= copy(barkodu,2,Length(barkodu)) ;
           end;
End;
if barkodu<>'' then editbarkod.text:=barkodu;
BtnAraClick(Self);


if checkiade.Checked=true then
Begin
btniptalclick(Sender);
End
else
Begin
BtnAktarClick(sender);
end;

end;
end;

procedure TFrmMal.LookAltGrupCloseUp(Sender: TObject);
begin
EditAltGrup.text:=lookAltGrup.text;
DBLookGRPCloseUp(sender);
end;

procedure TFrmMal.DBLookupSablonCloseUp(Sender: TObject);
begin
editsablon.text:=DBLookupSablon.TEXT;
end;

procedure TFrmMal.DizaynEt1Click(Sender: TObject);
begin

                  dm.frxReportGenel.DesignReport;
end;

procedure TFrmMal.BtnSablonClick(Sender: TObject);
begin
if messageDlg('Bu Þablondaki Malzemeleri Aktarmak istediðinizden Eminmisiniz?,Geri Dönüþ Yoktur.Sadece Olan malzemeler Aktarýlacak?',
mtconfirmation,[mbYes,MbNo],0)=mrYes then begin
Qristek.First;

while not Qristek.Eof do
begin
dosya_protokol_ayarlari_al;
if (Qristekskutu.value>0) or (QristeksAdet.value>0) then aktar(BtnSablon);
Qristek.next;
end;
                                          end;

end;

procedure TFrmMal.RadiodrClick(Sender: TObject);
begin
case radiodr.ItemIndex of
   0:QrDr.SQL[2]:='and Dr.BOLUM BETWEEN '+FloatToStr((tbPRTKLBolum.asinteger div 10)*10)+' AND '+FloatToStr((tbPRTKLBolum.asinteger div 10)*10+9);
   1:QrDr.SQL[2]:=' ';
   end;

QrDr.Open;


end;

procedure TFrmMal.QrIstekBeforeOpen(DataSet: TDataSet);
begin
if dm.hastanekeybilgisi_al('stk_minmax_adetten')='T' then
QrIstek.SQL[3]:=',NVL(A.KRITIK_STOK,0) KRITIK_STOK ,NVL(A.MINIMUM_STOK,0) MINIMUM_STOK,NVL(A.MAXIMUM_STOK,0) MAXIMUM_STOK,B.ISTENMEYECEK_GUN,B.UBBKODU,C.HASTAYA_CIKILAMASIN,B.KDV_ORANI_SATIS,B.MALZEME_NO_S,b.STERILIZASYON_VARMI, '+
'B.HASTAYA_CIKILAMASIN malzeme_cikilmasin'
else
QrIstek.SQL[3]:=',NVL(A.KRITIK_STOK,0)*NVL(B.ADET_MIKTARI,1) KRITIK_STOK,NVL(A.MINIMUM_STOK,0)*NVL(B.ADET_MIKTARI,1) MINIMUM_STOK,NVL(A.MAXIMUM_STOK,0)*NVL(B.ADET_MIKTARI,1) MAXIMUM_STOK,B.ISTENMEYECEK_GUN,B.UBBKODU,C.HASTAYA_CIKILAMASIN,B.KDV_ORANI_SATIS,B.MALZEME_NO_S,'+
                'b.STERILIZASYON_VARMI,B.HASTAYA_CIKILAMASIN malzeme_cikilmasin';


case RadioListe.ItemIndex of
0:begin
    QrIstek.SQL[16]:='';
  end;
1:begin
    QrIstek.SQL[16]:=' AND B.MALZEME_NO IN (SELECT MALZEME_NO FROM HASTANE.MALZEME_SIK_KULLANILAN WHERE DEPO_NO='+Qrdepodepo_no.text+'AND KULLANICI='+#39+usern+#39+')';
  end;
end;

end;

procedure TFrmMal.DBLookDrCloseUp(Sender: TObject);
begin
editdr.text:=DBLookDr.text;
end;

procedure TFrmMal.mesaj_yaz(Mesaj:String);
Function zaman_uzunlugu(zaman:integer):string;
var
zamanstr:string;
begin
zamanstr:=IntToStr(zaman);
if length(zamanstr)=1 then  zamanstr:='0'+zamanstr;
result:=zamanstr;
end;

var
Fdosya:TextFile;
Year, Month, Day: Word;
dosya_adi:string;
 begin
 try
DecodeDate(date, Year, Month, Day);
Application.ProcessMessages;
dosya_adi:='malzemegiris'+IntToStr(Year)+zaman_uzunlugu(Month)+Zaman_uzunlugu(Day)+'.LOG';
Application.ProcessMessages;
AssignFile(FDosya, dosya_adi);
if fileexists(dosya_Adi) then Append(FDosya)
else Rewrite(Fdosya);
Application.ProcessMessages;
writeln(FDosya,#13+Mesaj);
Application.ProcessMessages;
CloseFile(FDosya);
Application.ProcessMessages;
except
   on exception do CloseFile(FDosya);
end;


end;


procedure TFrmMal.TbPrtklBeforeOpen(DataSet: TDataSet);
begin

if dm.hastanekeybilgisi_al('malzeme_istisna')='T' then
begin
TbPrtkl.SQL[2]:=' ,'' '' ACIKLAMA';
TbPrtkl.SQL[3]:='';
end;

end;

procedure TFrmMal.FormShow(Sender: TObject);
begin
dbLookupotel.KeyValue := dbLookupotel.ListSource.DataSet.FieldByName(dbLookupotel.KeyField).Value; //Lookup varsayýlan seçili alan olarak 0. indexteki otel getirildi -- Uður
if hemsiremi and (AnaForm.fiyat_goremez='T') then
begin
dbgridliste.Columns[4].Visible:=false;
dbgridliste.Columns[5].Visible:=false;
dbgridliste.Columns[6].Visible:=false;
dbgridliste.Columns[7].Visible:=false;
cxGridlisteDBTableView1KUTU_FIYAT.visible:=False;
cxGridlisteDBTableView1ADET_FIYAT.visible:=False;
cxGridlisteDBTableView1KUTU_FARK.visible:=False;
cxGridlisteDBTableView1DOVIZ_ADI.visible:=False;
end;

if hemsiremi  then
if dm.hastanekeybilgisi_al('hemsire_stok_gormesin')='T' then
begin
dbgridliste.Columns[1].Visible:=false;
dbgridliste.Columns[2].Visible:=false;
dbgridliste.Columns[3].Visible:=false;
cxGridlisteDBTableView1KUTU_MIKTARI.visible:=False;
cxGridlisteDBTableView1ADET_MIKTARI.visible:=False;
cxGridlisteDBTableView1TOPLAM_ADET.visible:=False;
end;
EditBarkod.SetFocus;

if  (dm.hastanekeybilgisi_al('barkodla_oto_1adet_cik')='S') then
begin
  EditMal.enabled:=False;
  BtnAktar.visible:=False;
  Btniptal.Visible:=False;
end;

end;

procedure TFrmMal.HAREKET_QRBeforeOpen(DataSet: TDataSet);
begin
  if dm.hastanekeybilgisi_al('stk_cikislar_skt_gore')='T' then
  HAREKET_QR.SQL[8]:='ORDER BY SON_KULLANMA,FSIRA_NO,ISLEM_NO'
  else
  HAREKET_QR.SQL[8]:='ORDER BY FSIRA_NO,ISLEM_NO'

end;

procedure TFrmMal.grid_kolon_bilgilerini_sakla;
var
reg:tregistry;
i:integer;
kolon:String;
begin
Reg:=TRegistry.Create;
Reg.OpenKey('Software',True);
Reg.OpenKey('diginet',True);
Reg.OpenKey('MedData',True);
Reg.OpenKey('hk',True);
Reg.deletekey('malzemecikis');
Reg.closeKey;
Reg.Free;


for i:=0 to dbGridListe.Columns.Count-1 do begin
kolon:='kolon'+intToStr(i);
Reg:=TRegistry.Create;
Reg.OpenKey('Software',True);
Reg.OpenKey('diginet',True);
Reg.OpenKey('MedData',True);
Reg.OpenKey('hk',True);
Reg.OpenKey('malzemecikis',True);
Reg.OpenKey(kolon,True);
Reg.writeString('Fieldname',dbGridListe.Columns[i].FieldName);
Reg.WriteString('color',IntToStr(dbGridListe.Columns[i].color));
Reg.WriteString('caption',dbGridListe.Columns[i].Title.caption);
Reg.WriteInteger('width',dbGridListe.Columns[i].width);
Reg.closeKey;
Reg.Free;
                                    end;
end;


procedure TFrmMal.grid_kolon_bilgilerini_yukle;
var
reg:tregistry;
i:integer;
kolon:String;
begin
for i:=0 to dbGridListe.Columns.Count-1 do begin
Reg:=TRegistry.Create;
Reg.OpenKey('Software',True);
Reg.OpenKey('diginet',True);
Reg.OpenKey('MedData',True);
Reg.OpenKey('hk',True);
Reg.OpenKey('malzemecikis',True);
kolon:='kolon'+intToStr(i);
Reg.OpenKey(kolon,True);
try
if Reg.ReadString('Fieldname')='' then
exit;
dbGridListe.Columns[i].FieldName:=Reg.ReadString('Fieldname');
dbGridListe.Columns[i].color:=StrToInt(Reg.ReadString('color'));
dbGridListe.Columns[i].Title.caption:=Reg.ReadString('caption');
dbGridListe.Columns[i].width:=Reg.ReadInteger('width');
except
      on exception do {};
      end;
Reg.closeKey;
Reg.Free;
                                    end;
end;



procedure TFrmMal.GriddekiKolonlarnSrasnSakla1Click(Sender: TObject);
begin
grid_kolon_bilgilerini_sakla;
cxgridlisteDBTableView1.StoreToRegistry('malzemecikis\malzemegrid',false,[gsoUseFilter, gsoUseSummary]);
end;


procedure TFrmMal.yeni_yetki_seviyesi;
begin
Dm.QryeniYetki.close;
Dm.QryeniYetki.paramByname('LNAME').AsString:=usern;
Dm.QryeniYetki.open;

Btniptal.enabled:=False;
while not dm.QrYeniYetki.Eof do
begin
case  dm.QrYeniYetkiKODU.asinteger of
1022:Btniptal.enabled:=True;//Malzeme giriþinde iptal yapabilir
1079:begin
dbgridliste.Columns[1].Visible:=false;
dbgridliste.Columns[2].Visible:=false;
dbgridliste.Columns[3].Visible:=false;
      //Malzeme giriþinde stok durumunu göremez
     end;
1099:Begin
     brnSonkullanma.Visible:=true;
     End;
end;
 dm.QrYeniYetki.next;
 end;

end;

procedure TFrmMal.FormCreate(Sender: TObject);
Procedure Reg_OKU;
var
Reg:TRegistry;
NewString,muatipi: string;
ClickedOK: Boolean;
deponoreg:double;
begin
Reg:=TRegistry.Create;
Reg.OpenKey('Software',True);
Reg.OpenKey('diginet',True);
Reg.OpenKey('MedData',True);
Reg.OpenKey('order',True);

muatipi:=Reg.readstring('muadiltipi');

if muatipi='J' then CheckMuadil.Checked:=true

               else CheckMuadil.Checked:=false;


end;
procedure ana_firma_ac;
begin
if not dm.qrfirma.active then dm.qrfirma.open;
if dm.QrFirma.recordcount>1 then begin
try
frmfirmaAna:=TfrmfirmaAna.create(Self);
frmfirmaAna.showmodal;
finally
dm.qrfirma.SQL[2]:='and firma_no=:firma_no';
dm.qrfirma.ParamByName('FIRMA_NO').AsFloat:=frmfirmaAna.qrfirmafirma_no.AsFloat;
dm.qrfirma.open;
mali_yil_calisilan:=DM.QrFirmaMALIYIL.Value;
anafirma_no_calisilan:=DM.QrFirmaFIRMA_NO.asinteger;
frmfirmaAna.free;
end;
                               end
                               else
                               begin
                               mali_yil_calisilan:=DM.QrFirmaMALIYIL.Value;
                               anafirma_no_calisilan:=DM.QrFirmaFIRMA_NO.asinteger;
                               end;
end;
begin
if dm.hastanekeybilgisi_al('mal_ara_ilk_harften')='T' then mal_ara_ada_gore:=True else mal_ara_ada_gore:=False;
 ana_firma_ac;
if Dm.hastanekeybilgisi_al('yeni_guvenlik_sistemi')='T' then yeni_yetki_seviyesi;
 try
  grid_kolon_bilgilerini_yukle;
  cxgridlisteDBTableView1.RestoreFromRegistry('malzemecikis\malzemegrid',false,False,[gsoUseFilter, gsoUseSummary]);
 except
 end;
karekod_okunan_karekter_sayisi:=1;
DM.QrEtkinMaddeList.Open;
parcali_iade_yapildi:=false;

if (dm.hastanekeybilgisi_al('gidere_tutar_kaydet')='T') then
gider_sistemi_aktif:=true
else
gider_sistemi_aktif:=false;
qrsteril.Close;
qrsteril.Open;
if (DM.hastanekeybilgisi_al('oto_barkod_uret')='T') then
begin
Btniptal.Enabled:=False;
BtnAktar.Enabled:=False;
end;
//try
//Reg_OKU;
//except
//end;
end;

procedure TFrmMal.QrDestekKrFiyatBeforeOpen(DataSet: TDataSet);
VAR sql_k:string;
begin
case TbPrtklKULLANILACAK_MALZEME.asinteger of
        1:sql_k:='(B.KUTU_FIYAT*B.KATSAYI) KUTU_FIYAT,(B.ADET_FIYAT*B.KATSAYI2) ADET_FIYAT,b.kutu_fark2';{cari fiyatlar;}
        2:sql_k:='(B.BUTCE_KT) KUTU_FIYAT,(B.BUTCE_TB) ADET_FIYAT,b.kutu_fark2';{butce fiyatý}
        3:sql_k:='(B.KUTU_FIYATI_3) KUTU_FIYAT,(B.ADET_FIYATI_3) ADET_FIYAT,b.kutu_fark2';
        4:sql_k:='(B.KUTU_FIYATI_4) KUTU_FIYAT,(B.ADET_FIYATI_4) ADET_FIYAT,b.kutu_fark2';
        5:sql_k:='(B.KUTU_FIYATI_5) KUTU_FIYAT,(B.ADET_FIYATI_5) ADET_FIYAT,b.kutu_fark2';
                END;
if  TbPrtklKULLANILACAK_MALZEME.IsNull  then  sql_k:='(B.KUTU_FIYAT*B.KATSAYI) KUTU_FIYAT,(B.ADET_FIYAT*B.KATSAYI2) ADET_FIYAT,b.kutu_fark2';{cari fiyatlar;}
QrDestekKrFiyat.SQL[1]:=sql_k;

end;

procedure TFrmMal.EditKareKodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
//procedure karekod_parse_et_kaydet(karekod:string;ayrac_kodu:integer);
//var global_trade_number:string[14]; // baþýnda 01 tanýmlayýcýsý var sonra 14 basamaklý barkod no toplam 16 basamak
//    sira_no:string[20];             // baþýnda 21 tanýmlayýcýsý var sonra max 20 karekter olabilen deðiþken uzunluklu sira no
//    grup_ayraci:Char;           // char(19) deðiþken uzunluktakilerden sonra bu char var
//    son_kullanma_tarihi:tdate;  // baþýnda 17 tanýmlayýcýsý var sonra 6 basamaklý yyaagg
//    son_kullanma_tarihi_str,gun1:string[6];
//    parti_numarasi:string[20];      // baþýnda 10 tanýmlayýcýsý var sonra max 20 karekter olabilen deðiþken uzunluklu parti no
//    grup_ayraci_index:integer;
//    gun,ay,yil:word;
//    kk_sktarih:Tdate;
//begin
//   karekod:=EditKareKod.Text;
//   global_trade_number:=Copy(karekod,3,14);
//   //EditKareBarkod.Text:=global_trade_number;
//   grup_ayraci_index:=ayrac_kodu; // 33 hatalý
//   sira_no:=Copy(karekod,19,grup_ayraci_index-19);
//   //EditKareSno.Text:=sira_no;
//    // 01-08690570010008-21-20369670054202
//   try
//   son_kullanma_tarihi_str:=Copy(karekod,grup_ayraci_index+2,6);
//   gun1:=copy(son_kullanma_tarihi_str,5,2);
//   if gun1='00' then gun1:='31';
//   gun:=StrToInt(gun1);
//
//   ay:=StrToInt(copy(son_kullanma_tarihi_str,3,2));
//   yil:=StrToInt('20'+copy(son_kullanma_tarihi_str,1,2));
//   kk_sktarih:=EncodeDate(yil,ay,gun);
//   EditKareSkt.Text:=DateToStr(kk_sktarih);        // yyaagg       120501
//   except
//     end;
//
//   parti_numarasi:=Copy(karekod,grup_ayraci_index+10,20);
//   parti_numarasi:=Trim(parti_numarasi);
//   //EditKareParti.Text:=parti_numarasi;
//
////   karekod_okunan_karekter_sayisi:=1;
//   delete(global_trade_number,1,1);
//   EditBarkod.Text:=global_trade_number;
//   BtnAraClick(Self);
// //  BARKODExit(sender);  // okutulan karekoddan barkodu al ve barkod editine yükle malzemeyi çaðýr
//   editkarekod.Clear;
//   ilkmi:=True;// deðer okuma bittikten sonra true yapýlýyor altta kontrolü var
//end;
begin    //1086905700100082120369670054202
//  if (ilkmi) then begin
//                   karekod_okunan_karekter_sayisi:=1;
//                   ilkmi:=False;
//                  end;

//if (key=vk_return) and (EditKareKod.text<>'') and ((Length(EditKareKod.text))<40) and (DM.hastanekeybilgisi_al('oto_barkod_uret')='T')  then  //stok modülünde üretilen barkod 4 haneli olduðu ve 40 haneye eriþemeyeceði düþünüldüðü için lenght<40 denildi
//begin
//qrOtoBarkod.Close;
//qrOtoBarkod.ParamByName('barkod').value:=strtoint(Editkarekod.text);
//qrOtoBarkod.Open;
//if (qrOtoBarkodBARKOD.IsNull) then raise Exception.Create('Barkod Bilgisi Sistemde Bulunamadý.')
//else if qrOtoBarkodKULLANILDI.VALUE='T' then  raise Exception.Create('Bu Barkoda Ait Malzeme Daha Önceden Kullanýlmýþtýr.Lütfen Kontrol Ediniz.')
//else BtnAraClick(Self);
//end
//else
//begin
//  MemoChar.Lines.Add(inttostr(karekod_okunan_karekter_sayisi)+'-'+inttostr(Key));
//  if (Key=119) or (key=17) or (key=29) then begin  karekod_ayrac_index_kodu:=karekod_okunan_karekter_sayisi; LblAyrac.Caption:=FloatToStr(karekod_ayrac_index_kodu);  end;  // selçuk klavuza göre ayraç normalde ascii 29 olmalý ama f8 geliyor
//  Inc(karekod_okunan_karekter_sayisi);
//  if (key=vk_return) and (EditKareKod.text<>'') then begin
//                                                  karekod_parse_et_kaydet(EditKareKod.text,karekod_ayrac_index_kodu);
//                                                     end;
//  if Key=40 then karekod_okunan_karekter_sayisi:=1; // bilgi sonu karakteri
//end;

end;

procedure TFrmMal.EditBarkodIadeKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin

 if ( (dm.hastanekeybilgisi_al('barkodla_oto_1adet_cik')='S') and (editbarkodiade.text <>'') and (QrMalD.RecordCount=1) ) then
 if  InputQuery('Adet Giriniz', 'Adet Giriniz'+'('+(QrMalDBIRIM_ADI.TEXT+')'),adetbarkod) then
   begin
  try
   Adet_miktari.Text:=adetbarkod;
  except
    on Exception do Adet_miktari.Text:='1';
  end;
   end;


  if EditBarkodIade.Text<>'' then
  begin
  QrMalD.Filter:='BARKOD='+#39+EditBarkodIade.Text+#39;
  QrMalD.Filtered:=True;
  if qrmald.RecordCount>0 then BtniptalClick(Sender);
  end
  else
  begin
  QrMalD.Filter:='';
  QrMalD.Filtered:=False;
  end;
end;

end;



procedure TFrmMal.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if (not HAREKET_QRSON_KULLANMA.IsNull) then begin
   if (HAREKET_QRSON_KULLANMA.Value<date) then
          begin // kritik altý ise sarý olsun
            dbGrid2.Canvas.Font.Color := clLime;
            dbGrid2.DefaultDrawColumnCell(Rect,DataCol , Column, State);
          end;
                                        end;

end;

procedure TFrmMal.DblookupEtkenMadde2CloseUp(Sender: TObject);
begin
EditEtkenMadde2.text:=DblookupEtkenMadde2.Text;
end;

procedure TFrmMal.QrIlkUcretBulBeforeOpen(DataSet: TDataSet);
begin
{case dm.QrKurumKULLANILACAK_MALZEME_GRUBU.asinteger of
        1:QRYUCret.SQL[4]:='(M.KUTU_FIYAT*M.KATSAYI) KTFIYATI,(M.ADET_FIYAT*M.KATSAYI2) TBFIYAT';{cari fiyatlar;}
//        2:QRYUCret.SQL[4]:='(M.BUTCE_KT) KTFIYATI,(M.BUTCE_TB) TBFIYAT';{butce fiyatý}
//        3:QRYUCret.SQL[4]:='(M.KUTU_FIYATI_3) KTFIYATI,(M.ADET_FIYATI_3) TBFIYAT';
//        4:QRYUCret.SQL[4]:='(M.KUTU_FIYATI_4) KTFIYATI,(M.ADET_FIYATI_4) TBFIYAT';
//        5:QRYUCret.SQL[4]:='(M.KUTU_FIYATI_5) KTFIYATI,(M.ADET_FIYATI_5) TBFIYAT';
//                END;

end;

procedure TFrmMal.DsDepoDataChange(Sender: TObject; Field: TField);
begin
// if QrDepoISLEM_YAPILAN_YER.Value>0 then LookupIsleminYapYer.KeyValue:=QrDepoISLEM_YAPILAN_YER.Value
//                                    else LookupIsleminYapYer.ClearKeyValue;
end;

procedure TFrmMal.EditBarkodChange(Sender: TObject);
VAR str1,str2:string;
begin
if (Editbarkod.Text<>'') and (PageListe.ActivePageIndex=1) then
begin
str1:='*''';
str2:='BARKOD = '+'''*'+turkce_buyult(uppercase(EditBarkod.text))+str1;
Qrsk.Filter:=str2;
if EditBarkod.text<>'' then Qrsk.Filtered:=True
else Qrsk.Filtered:=False;
end
else Qrsk.filtered:=False;

end;

procedure TFrmMal.BtnSkEkleClick(Sender: TObject);
begin
if not DBLookdepo.KeyValue>=0 then
raise Exception.Create('Depo seçili olmalýdýr.');

if not QrSk.Active then QrSk.Active:=true;
anaform.start_trans;
QrSk.Append;
QrSkSIRA_NO.Value:=dm.GetNumber('SELECT NVL(MAX(SIRA_NO),0)+1 SIRA_NO FROM  HASTANE.MALZEME_SIK_KULLANILAN');
QrSkDEPO_NO.Value:=DBLookdepo.KeyValue;
QrSkKULLANICI.Value:=usern;
QrSkMALZEME_NO.Value:=QrIstekMALZEME_NO.Value;
QrSk.Post;
AnaForm.commit_yap;
MessageDlg('Ekleme yapýldý.',mtinformation,[mbyes],0);
QrSk.Close;
QrSk.ParamByName('DEPO_NO').Value:=DBLookdepo.KeyValue;
QrSk.ParamByName('KULLANICI').Value:=usern;
QrSk.Open;

end;

procedure TFrmMal.CheckMuadilClick(Sender: TObject);
begin
if checkmuadil.checked then
begin
QrMua.SQL.Clear;
QrMua.SQL.add('SELECT TO_NUMBER(MLZ.MALZEME_NO) MALZEME_NO,');
QrMua.SQL.add('TO_NUMBER(MLZ.MALZEME_NO) MUADIL_MALZEME_NO,');
QrMua.SQL.add('MLZ.ADI,');
QrMua.SQL.add('       NVL (DD.ADET_MIKTARI, 0) DEPODAKI_ADET, ');
QrMua.SQL.add('       NVL (DD.KUTU_MIKTARI, 0) DEPODAKI_KUTU');
QrMua.SQL.add('FROM hastane.malzeme mlz,HASTANE.DEPO_DURUM DD');
QrMua.SQL.add('WHERE  MLZ.BARKOD IN');
QrMua.SQL.add('(SELECT ILAC_BARKODU FROM HASTANE.malzeme_muadil_ILAC');
QrMua.SQL.add('WHERE ICERIK_KODU IN');
QrMua.SQL.add('( select ICERIK_KODU FROM HASTANE.malzeme_muadil_ILAC');
QrMua.SQL.add('WHERE ILAC_BARKODU=:BARKODU)');
QrMua.SQL.add('AND ILAC_BARKODU<>:BARKODU');
QrMua.SQL.add('GROUP BY  ILAC_BARKODU)');
QrMua.SQL.add('AND MLZ.MALZEME_NO = DD.MALZEME_NO(+)');
QrMua.SQL.add('AND DD.DEPO_NO(+) =:DEPO_NO');
end
else begin
QrMua.SQL.Clear;
QrMua.SQL.add('SELECT ML.MALZEME_NO,');
QrMua.SQL.add('       ML.MUADIL_MALZEME_NO,');
QrMua.SQL.add('       MLZ.ADI,');
QrMua.SQL.add('       NVL (DD.ADET_MIKTARI, 0) DEPODAKI_ADET, ');
QrMua.SQL.add('       NVL (DD.KUTU_MIKTARI, 0) DEPODAKI_KUTU');
QrMua.SQL.add('  FROM hastane.malzeme_muadil ml, hastane.malzeme mlz, HASTANE.DEPO_DURUM DD');
QrMua.SQL.add(' WHERE     ML.MALZEME_NO = :mno');
QrMua.SQL.add('       AND ML.MUADIL_MALZEME_NO = mlz.malzeme_no(+)');
QrMua.SQL.add('       AND ML.MUADIL_MALZEME_NO = DD.MALZEME_NO(+)');
QrMua.SQL.add('       AND DD.DEPO_NO(+) = :DEPO_NO');






end;
end;

procedure TFrmMal.chorderfilterClick(Sender: TObject);
begin
if chorderfilter.checked then
 begin
qrmald.filter:='ILAC_ORDER_NO IS NOT NULL';
qrmald.Filtered:=True;
end
else
qrmald.Filtered:=False;
end;

procedure TFrmMal.cxGridlisteDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if (AViewInfo.GridRecord.Values[cxGridListeDBTableView1RECETE_TIPI.Index]='K')
then  Begin
ACanvas.Brush.Color := clRED;
ACanvas.Font.Color := clWhite;
End ;
if (AViewInfo.GridRecord.Values[cxGridListeDBTableView1RECETE_TIPI.Index]='M')
then  Begin
ACanvas.Brush.Color := clPurple;
ACanvas.Font.Color := clWhite;
End ;
if (AViewInfo.GridRecord.Values[cxGridListeDBTableView1RECETE_TIPI.Index]='Y')
then  Begin
ACanvas.Brush.Color := clgREEN;
ACanvas.Font.Color := clWhite;
End ;
end;

procedure TFrmMal.SkKullanlanlaraEkle1Click(Sender: TObject);
begin
BtnSkEkleClick(self);
end;

procedure TFrmMal.SkKullanlanlardanSL1Click(Sender: TObject);
begin
if not DBLookdepo.KeyValue>=0 then
raise Exception.Create('Depo seçili olmalýdýr.');
QrSk.Close;
QrSk.ParamByName('DEPO_NO').Value:=DBLookdepo.KeyValue;
QrSk.ParamByName('KULLANICI').Value:=usern;
QrSk.Open;
anaform.start_trans;
QrSk.delete;
AnaForm.commit_yap;
MessageDlg('Silme iþlemi baþarýlý.',mtinformation,[mbyes],0);
end;

procedure TFrmMal.brnSonkullanmaClick(Sender: TObject);
  var yenitarih :string;
begin
yenitarih:=datetostr(hareket_qrson_kullanma.value)  ;
inputQuery('Malzemenin Son kullanma tarihini giriniz (Format GG.AA.YYYY)','Malzemenin Son kullanma tarihini giriniz',yenitarih);
if yenitarih<>'' then
Begin
anaform.start_trans;
dm.Execute_Sql('UPDATE HASTANE.HAREKET SET SON_KULLANMA=TO_DATE('+quotedstr(yenitarih)+','+QUOTEDSTR('DD.MM.YYYY')+') where ISLEM_NO='+HAREKET_QRISLEM_NO.Text);
anaform.commit_yap;
hareket_qr.Refreshrecord;
application.MessageBox('Ýþlem Tamamlanmýþtýr','',MB_OK+MB_ICONINFORMATION);
End;

end;

procedure TFrmMal.RadioListeClick(Sender: TObject);
begin
BtnAraClick(SELF); // qristek before openda sql sýk kullanýlan veya tümüne göre deðiþiyor
end;

procedure TFrmMal.GridMuadilDblClick(Sender: TObject);
begin
//QrIstek.EnableControls;
//QrIstek.Locate('MALZEME_NO', qrmuaMUADIL_MALZEME_NO.AsString, [loPartialKey]);
EditMal.Text:=qrmuaADI.Text;
BtnAra.Click;
end;

end.
