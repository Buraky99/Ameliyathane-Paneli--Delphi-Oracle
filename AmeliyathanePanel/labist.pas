unit labist;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,datamod,
  Grids, DBGrids, ComCtrls, StdCtrls, DBCtrls, Db,  Buttons,
  ExtCtrls, DBCGrids, Menus, Ora, MemDS, DBAccess, RzTabs, RzPanel,
  RzRadGrp, RzDBGrid, RzDBEdit, OraSmart,  Mask, RzEdit, ImgList, RzButton,
  RzLaunch,   RzLabel,
  RzDBLbl, RzStatus, OleCtrls, RVScroll, RichView,
  RVEdit, DBRV, RVStyle, RzRadChk,registry, RzSplit, CRGrid, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdFTP,IdFTPCommon, base64, frxClass, frxExportMail, frxExportDOCX,
  frxExportBIFF, frxExportPDF,shellapi, System.ImageList, frxDBSet, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxButtons, AdvMenus, cxControls, cxContainer, cxEdit,
  dxSkinOffice2019Colorful, dxSkinTheBezier, cxTextEdit, cxMaskEdit, cxSpinEdit,
  cxLabel, cxCheckBox, cxGroupBox, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;
type
  Tlogin=function(userName:string;password:string;institution:string):Real;
//  Tcreateinstance=function(getd:string):boolean;
  IIntegradApi=interface(Iunknown)
                         function CreateInstance():string;stdcall;
               end;


  TFrmIstek = class(TForm)
    PageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    DsLabD: TOraDataSource;
    QrTetkik: TOraQuery;
    DsTetkik: TOraDataSource;
    QrIstekD: TOraQuery;
    QrIstekDISTEK_NO: TFloatField;
    QrIstekDISLEM_KODU: TFloatField;
    QrIstekDISLEM: TStringField;
    DsIstekD: TOraDataSource;
    QrLabD: TOraQuery;
    QrLabDISTEK_NO: TFloatField;
    QrLabDISLEM_KODU: TFloatField;
    QrLabDSONUCN: TFloatField;
    QrLabDSONUCC: TStringField;
    QrLabDISLEM: TStringField;
    QrLabDSONUC: TStringField;
    QrLabDMIN: TFloatField;
    QrLabDMAX: TFloatField;
    QrLabDMINMAX: TStringField;
    QrLabDARALIK: TStringField;
    QrIstekDDURUM: TIntegerField;
    QrLabDARALIK2: TStringField;
    QrTetkikISTEK_NO: TFloatField;
    QrTetkikID: TFloatField;
    QrTetkikPROTOKOL_NO: TFloatField;
    QrTetkikTARIH: TDateTimeField;
    QrTetkikGRUP_ADI: TStringField;
    QrTetkikGRUBU: TFloatField;
    QrTetkikISTEK_YAPAN: TFloatField;
    QrTetkikBOLUM: TFloatField;
    QrTetkikDRADI: TStringField;
    QrTetkikBOLUM_ADI: TStringField;
    PanelLab: TRzPanel;
    Label2: TLabel;
    QrIstekDR: TOraQuery;
    QrIstekDRISTEK_NO: TFloatField;
    QrIstekDRISLEM_KODU: TFloatField;
    QrIstekDRISLEM: TStringField;
    QrIstekDRDURUM: TIntegerField;
    DsIstekDR: TOraDataSource;
    PanelRad: TRzPanel;
    DsSonuc: TOraDataSource;
    TbSonuc: TOraTable;
    TbSonucISTEK_NO: TFloatField;
    TbSonucISLEM_KODU: TFloatField;
    TbSonucTARIH: TDateTimeField;
    TbSonucDR: TStringField;
    TbSonucTIPI: TStringField;
    TbTani: TOraTable;
    TbTaniISTEK_NO: TFloatField;
    TbTaniISLEM_KODU: TFloatField;
    TbTaniSEVK_TANISI: TStringField;
    TbTaniRAPOR_TANISI: TStringField;
    DsTani: TOraDataSource;
    PageControl2: TRzPageControl;
    TabSheet4: TRzTabSheet;
    TabResim: TRzTabSheet;
    RzGroupBox7: TRzGroupBox;
    VScrollb: TScrollBar;
    HScrollb: TScrollBar;
    TbFilm: TOraQuery;
    TbFilmISTEK_NO: TFloatField;
    TbFilmISLEM_KODU: TFloatField;
    TbFilmRESIM: TBlobField;
    TbFilmRESIM_NO: TFloatField;
    TbFilmACIKLAMA: TStringField;
    DSFilm: TOraDataSource;
    QrLabDACIKLAMA: TStringField;
    QrRapor: TOraQuery;
    QrRaporISTEK_NO: TFloatField;
    QrRaporRAPORX: TMemoField;
    DsRapor: TOraDataSource;
    TbSonucRAPORX: TMemoField;
    QrTetkikDURUM: TIntegerField;
    QrTetkikDURUMLAB: TStringField;
    QrTetkikDURUMRAD: TStringField;
    QrTetkikdurum_s: TStringField;
    QrTetkikLAB: TIntegerField;
    ImageList1: TImageList;
    QrLabDPRN: TIntegerField;
    QrLabDUNITE: TStringField;
    QrTetkikROWNUM: TFloatField;
    QrTetkikSEC: TStringField;
    PopupMenu1: TPopupMenu;
    SonularKopyala1: TMenuItem;
    Memokopya: TMemo;
    YanYanaKopyala1: TMenuItem;
    QrIstekDRDRADI: TStringField;
    QrIstekDRRAPOR_BOLUMU: TStringField;
    TbSonucRAPORC: TMemoField;
    TbSonucIMAGENO: TStringField;
    RzLauncher1: TRzLauncher;
    PopupMenu2: TPopupMenu;
    PACSServerinabalan1: TMenuItem;
    QrTetkikTRANSFER_SYNTAX: TStringField;
    StatusPanel1: TRzStatusPane;
    QrSonSonuclar: TOraQuery;
    QrSonSonuclarSONUC: TStringField;
    QrSonSonuclarTARIH: TDateTimeField;
    DsSonSonuclar: TOraDataSource;
    meddatadicomviewerykle1: TMenuItem;
    QrTetkikIMAJDURUMU: TStringField;
    QrLabDPANIK_MIN: TFloatField;
    QrLabDPANIK_MAX: TFloatField;
    QrLabDcl_panik_degerler: TStringField;
    QrLabDcl_panik_uyari: TIntegerField;
    QrLabDTETKIK_YAPILMA_SURESI: TIntegerField;
    QrTetkikIMAJDURUM: TFloatField;
    RzSplitter1: TRzSplitter;
    Label1: TLabel;
    PanelSonSonuc: TRzPanel;
    CheckSonSonuc: TRzCheckBox;
    DBRichEkNormal: TRzDBRichEdit;
    QrTetkikNUMUNE_RED_DURUMU: TIntegerField;
    QrTetkikNUMUNE_RED_TARIHI: TDateTimeField;
    QrTetkikNUMUNEREDDURUMU: TStringField;
    QrTetkikKAN_ALMA_TARIH: TDateTimeField;
    QrTetkikKANALAN: TStringField;
    QrTetkikCIHAZA_GIRIS_TARIHI: TDateTimeField;
    QrTetkikCIHAZDAN_SONUC_GTARIHI: TDateTimeField;
    QrTetkikLAB_GORME_TARIHI: TDateTimeField;
    QrTetkikEPIKRIZDE_CIKMASIN: TStringField;
    ImageList2: TImageList;
    RzLauncher2: TRzLauncher;
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RadioKontrol: TRzRadioGroup;
    btnSec: TSpeedButton;
    btniptal: TSpeedButton;
    btnpreview: TRzBitBtn;
    btnPrint: TRzBitBtn;
    btn1: TBitBtn;
    RzPanel2: TRzPanel;
    DBGrid1: TCRDBGrid;
    RzPanel3: TRzPanel;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    PanelRadUst: TRzPanel;
    DBGrid7: TRzDBGrid;
    DBGrid2: TRzDBGrid;
    RzPanel4: TRzPanel;
    DBGridSonuc: TCRDBGrid;
    PanelRapor: TRzPanel;
    RzDBRichEdit2: TRzDBRichEdit;
    RzDBGrid1: TRzDBGrid;
    GroupRapor: TRzGroupBox;
    Editor: TDBRichViewEdit;
    GroupAltRapor: TRzGroupBox;
    DBMemo1: TRzDBMemo;
    BtnPacsAc: TRzBitBtn;
    RzDBLabel1: TRzDBLabel;
    Check2M: TRzCheckBox;
    DBEdit1: TRzDBEdit;
    Label9: TLabel;
    CheckTumu: TRzCheckBox;
    LauncherApi: TRzLauncher;
    QrIstekDRTARIH: TDateTimeField;
    RzBitBtn1: TRzBitBtn;
    QrTetkikIP_ADRESI: TStringField;
    QrTetkikDOSYA_NO: TFloatField;
    QrTetkikPACSSERVERYERI: TStringField;
    RzLauncherEx: TRzLauncher;
    Tabpatoloji: TRzTabSheet;
    TbSonucP_MAKROSKOPIK_BULGU: TStringField;
    TbSonucP_MIKROSKOPIK_BULGU: TStringField;
    TbSonucP_TANIYA_Y_YONTEM: TStringField;
    TbSonucP_KONSULTASYON_TANISI: TStringField;
    TbSonucP_FROZEN_TANISI: TStringField;
    TbTaniP_ICD_10: TStringField;
    TbTaniP_YORUM: TStringField;
    TbSonucRAPOR_NO: TStringField;
    QrTetkikIMAGENO: TStringField;
    RzDBLabel3: TRzDBLabel;
    QrLabDROWID1: TStringField;
    QrLabDPDF: TStringField;
    RzLauncher3: TRzLauncher;
    IdFTP1: TIdFTP;
    BtnPDF: TSpeedButton;
    Qrimagelist: TOraQuery;
    QrimagelistDOSYA_NO: TFloatField;
    QrimagelistPROTOKOL_NO: TFloatField;
    QrimagelistISTEK_NO: TFloatField;
    QrimagelistKODU: TFloatField;
    QrimagelistROWID1: TStringField;
    QrimagelistSIRA_NO: TFloatField;
    QrimagelistTARIH: TDateTimeField;
    QrimagelistDOSYA_ADI: TStringField;
    QrimagelistACIKLAMA: TStringField;
    QrimagelistROWID: TStringField;
    Memo1: TMemo;
    CheckEski: TRzCheckBox;
    CheckVerildi: TRzCheckBox;
    TbSonucPDF: TStringField;
    TbSonucROWID1: TStringField;
    QrIstekDRPDF: TStringField;
    RzDBLabel4: TRzDBLabel;
    Label5: TLabel;
    frxMailExport1: TfrxMailExport;
    frxBIFFExport1: TfrxBIFFExport;
    QrTetkikKLINIK_ACIKLAMA: TStringField;
    dspatsonuc: TOraDataSource;
    qrpatsonuc: TOraQuery;
    qrpatsonucROWID: TStringField;
    qrpatsonucISTEK_NO: TFloatField;
    qrpatsonucTARIH: TDateTimeField;
    qrpatsonucRAPOR: TStringField;
    qrpatsonucDR: TStringField;
    qrpatsonucTIPI: TStringField;
    qrpatsonucRAPOR_NO_SAYI: TFloatField;
    qrpatsonucISLEM_KODU: TFloatField;
    qrpatsonucIMAGENO: TStringField;
    qrpatsonucRAPOR_NO: TStringField;
    qrpatsonucRAPOR_TANISI: TStringField;
    editorpat1: TDBRichViewEdit;
    editorpat: TRzDBMemo;
    QrIstekDRMODALITY: TStringField;
    QrTetkikDIS_LAB: TStringField;
    QrLabDBELIRSIZLIK_ORANI: TStringField;
    QrTetkikROVID1: TStringField;
    QrIstekDRROWID1: TStringField;
    qrdetailpat: TOraQuery;
    qrtanipat: TOraQuery;
    qrisimpat: TOraQuery;
    qristekmpat: TOraQuery;
    qrtaniklinikpat: TOraQuery;
    qrtanipatISTEK_NO: TFloatField;
    qrtanipatISLEM_KODU: TFloatField;
    qrtanipatSEVK_TANISI: TStringField;
    qrtanipatRAPOR_TANISI: TStringField;
    qrtanipatROWID1: TStringField;
    qrtanipatTARIH: TDateTimeField;
    qrtanipatP_ICD_10: TStringField;
    qrtanipatP_YORUM: TStringField;
    qrtanipatMORFOLOJI_KODU: TStringField;
    qrdetailpatISTEK_NO: TFloatField;
    qrdetailpatISLEM_KODU: TFloatField;
    qrdetailpatDURUM: TIntegerField;
    qrdetailpatLOCKLAB: TStringField;
    qrdetailpatISLEM: TStringField;
    qrdetailpatUCRETI: TFloatField;
    qrdetailpatONBILGI: TStringField;
    qrdetailpatPACS_UID: TStringField;
    qrdetailpatMODALITY: TStringField;
    qrdetailpatLAB_ADI: TStringField;
    qrdetailpatTETKIK_SUT_TIPI: TStringField;
    qrdetailpatONLINE_KAYIT_NO: TStringField;
    qrdetailpatTETKIK_TIPI: TStringField;
    qrdetailpatDRYUZDESI: TFloatField;
    qrdetailpatROWID1: TStringField;
    qrdetailpatDR2: TFloatField;
    qrdetailpatDR2ADI: TStringField;
    qrdetailpatGRUPMU: TIntegerField;
    qrdetailpatROWIDY: TStringField;
    qrdetailpatDIS_NO: TIntegerField;
    qrdetailpatSNO: TFloatField;
    qrdetailpatFARK: TFloatField;
    qrdetailpatFARKODEME: TFloatField;
    qrdetailpatPDF: TStringField;
    qrtaniklinikpatDOSYA_NO: TFloatField;
    qrtaniklinikpatPROTOKOL_NO: TFloatField;
    qrtaniklinikpatBOLUM: TFloatField;
    qrtaniklinikpatTANI_KODU: TIntegerField;
    qrtaniklinikpatTARIH: TDateTimeField;
    qrtaniklinikpatR_L: TStringField;
    qrtaniklinikpatONTANI: TStringField;
    qrtaniklinikpatANA_TANI: TStringField;
    qrtaniklinikpatONLINEMI: TStringField;
    qrtaniklinikpatACIKLAMA: TStringField;
    qrtaniklinikpatICD: TStringField;
    qrtaniklinikpatUSERNAME: TStringField;
    qrtaniklinikpatTANI_MEDULA_OZEL_DURUM: TStringField;
    qrtaniklinikpatDR_KODU: TFloatField;
    qrtaniklinikpatMESLEK_KODU: TFloatField;
    qrtaniklinikpatMESLEKI_MARUZIYET_DURUMU: TFloatField;
    qrtaniklinikpatSYS_MM_DURUM: TStringField;
    qrtaniklinikpatSYS_MM_ACIKLAMA: TStringField;
    qrtaniklinikpatTANI: TStringField;
    qrtaniklinikpatICD_1: TStringField;
    qrtaniklinikpatROWID: TStringField;
    qrisimpatADI: TStringField;
    qrisimpatSOYADI: TStringField;
    qrisimpatDOSYA_NO: TFloatField;
    qrisimpatANNE_ADI: TStringField;
    qrisimpatBABA_ADI: TStringField;
    qrisimpatMEMLEKET: TStringField;
    qrisimpatISTEK_NO: TFloatField;
    qrisimpatE_MAIL: TStringField;
    qrisimpatESIN_ADI: TStringField;
    qrisimpatESIN_KANGR: TStringField;
    qrisimpatTC_KIMLIK_NO: TFloatField;
    qrisimpatKILO: TIntegerField;
    qrisimpatACIL: TStringField;
    qrisimpatGELIS_YASI: TFloatField;
    qrisimpatCEP_TEL: TStringField;
    qrisimpatDOGUM_TAR: TDateTimeField;
    qrisimpatCINS: TStringField;
    qrisimpatEV_TEL: TStringField;
    qrisimpatIS_TEL: TStringField;
    qrisimpatYETKILI_GORSUN: TStringField;
    qrisimpatROWNUM: TFloatField;
    qristekmpatISTEK_NO: TFloatField;
    qristekmpatDOSYA_NO: TFloatField;
    qristekmpatPROTOKOL_NO: TFloatField;
    qristekmpatKURUM_NO: TIntegerField;
    qristekmpatHASTA_O_R: TStringField;
    qristekmpatHASTA_A_Y: TIntegerField;
    qristekmpatADLI: TStringField;
    qristekmpatONAYLAYAN: TStringField;
    qristekmpatACIKLAMA: TStringField;
    qristekmpatBARCODE_ADI: TStringField;
    qristekmpatHASTA_C_E: TStringField;
    qristekmpatIMAJDURUMU: TStringField;
    qristekmpatIMAGENO: TStringField;
    qristekmpatP_SITOPATO_UYUM: TStringField;
    qristekmpatALINMA_SEKLI: TStringField;
    qristekmpatALINAN_YER: TStringField;
    qristekmpatDOKU_ADI: TStringField;
    qristekmpatPREPARAT_ADI: TStringField;
    qristekmpatALINAN_LOKALISYASON: TStringField;
    qristekmpatPRINT_MAC: TStringField;
    qristekmpatPRINT_IP: TStringField;
    qristekmpatFN_GUID: TStringField;
    qristekmpatGRUBU: TFloatField;
    qristekmpatPRN_SAYI: TFloatField;
    qristekmpatTARIH2: TDateTimeField;
    qristekmpatGRUP_ADI: TStringField;
    qristekmpatLAB_BASLIK: TStringField;
    qristekmpatTARIH: TDateTimeField;
    qristekmpatRAPOR_NO: TStringField;
    qristekmpatISTEK_YAPAN: TFloatField;
    qristekmpatDRADI: TStringField;
    qristekmpatBOLUM: TFloatField;
    qristekmpatRAPOR_TARIHI: TDateTimeField;
    qristekmpatLAB_GORME_TARIHI: TDateTimeField;
    qristekmpatGONDERME_TARIHI: TDateTimeField;
    qristekmpatBOLUM_ADI: TStringField;
    qristekmpatMEDULA_TAKIP_TURU: TStringField;
    qristekmpatDURUM: TIntegerField;
    qristekmpatM_MADDE: TStringField;
    qristekmpatDURUM_ADI: TStringField;
    qristekmpatID: TFloatField;
    qristekmpatUNVAN: TStringField;
    qristekmpatDIPLOMA_NO: TStringField;
    qristekmpatRAPOR_UNVANI: TStringField;
    qristekmpatSIRAMATIK_NO: TStringField;
    qristekmpatPDURUMU: TStringField;
    qristekmpatGSSMI: TStringField;
    qristekmpatYIL: TIntegerField;
    qristekmpatYIL_BIOPSI_NO: TIntegerField;
    qristekmpatPESIN: TStringField;
    qristekmpatPESINY: TStringField;
    qristekmpatKURUM_ADI: TStringField;
    qristekmpatLAB_ONAY: TStringField;
    qristekmpatBAZ_KURUM_NO: TFloatField;
    qristekmpatROWNUM: TFloatField;
    qristekmpatLAB: TIntegerField;
    qristekmpatPROTOKOL_BOLUM: TFloatField;
    qristekmpatTRANSFER_SYNTAX: TStringField;
    qristekmpatGTARIH: TDateTimeField;
    qristekmpatACCESS_NO: TStringField;
    qristekmpatIHE_ORDER_NO: TStringField;
    qristekmpatIHE_ISLEM_KODU: TStringField;
    qristekmpatIP_ADRESI: TStringField;
    qristekmpatPACSSERVERYERI: TStringField;
    qristekmpatP_ALIM_SEKLI: TStringField;
    qristekmpatP_ALINDIGI_ORGAN: TStringField;
    qristekmpatP_LOKALIYASYON: TStringField;
    qristekmpatP_ALINDIGI_YON: TStringField;
    qristekmpatP_ALINDIGI_TARAF: TStringField;
    qristekmpatP_TAHMINI_AGIRLIK: TIntegerField;
    qristekmpatP_KAVANOZ_TIPI: TStringField;
    qristekmpatP_SOLUSYON_TIPI: TStringField;
    qristekmpatP_KAVANOZ_ICI_MIKTAR: TIntegerField;
    qristekmpatP_ALINDIGI_TARIH: TDateTimeField;
    qristekmpatSONUC_SAYI: TFloatField;
    dsisimpat: TOraDataSource;
    dsistekmpat: TOraDataSource;
    dsdetailpat: TOraDataSource;
    dstaniklinikpat: TOraDataSource;
    dstanipat: TOraDataSource;
    frxDBTaniKlinik: TfrxDBDataset;
    frxDBPatTani: TfrxDBDataset;
    frxDBPatolojiDetail: TfrxDBDataset;
    frxDBPatolojiIsim: TfrxDBDataset;
    qrtbpatsonuc: TOraQuery;
    dstbpatsonuc: TOraDataSource;
    qrtbpatsonucISTEK_NO: TFloatField;
    qrtbpatsonucTARIH: TDateTimeField;
    qrtbpatsonucRAPOR: TStringField;
    qrtbpatsonucDR: TStringField;
    qrtbpatsonucTIPI: TStringField;
    qrtbpatsonucRAPORX: TMemoField;
    qrtbpatsonucISLEM_KODU: TFloatField;
    ra: TStringField;
    qrtbpatsonucRAPORC: TMemoField;
    qrtbpatsonucROWID1: TStringField;
    qrtbpatsonucBOLUM: TFloatField;
    qrtbpatsonucRAPOR_NO_SAYI: TFloatField;
    qrtbpatsonucRAPOR_NO: TStringField;
    qrtbpatsonucIHE_ACCESS_NO: TStringField;
    qrtbpatsonucRAPOR_DIGER: TBlobField;
    qrtbpatsonucP_MAKROSKOPIK_BULGU: TStringField;
    qrtbpatsonucP_MIKROSKOPIK_BULGU: TStringField;
    qrtbpatsonucP_TANIYA_Y_YONTEM: TStringField;
    qrtbpatsonucP_KONSULTASYON_TANISI: TStringField;
    qrtbpatsonucP_FROZEN_TANISI: TStringField;
    qrtbpatsonucP_BENING_MALING: TIntegerField;
    qrtbpatsonucPDF: TStringField;
    qrtbpatsonucPDF_ADI: TStringField;
    qrtbpatsonucGIRISIMSEL_YATIS_TARIHI: TDateTimeField;
    qrtbpatsonucGIRISIMSEL_ISLEM_TARIHI: TDateTimeField;
    qrtbpatsonucGIRISIMSEL_CIKIS_TARIHI: TDateTimeField;
    qrtbpatsonucANGIO_KATETERLERI: TStringField;
    qrtbpatsonucANGIO_SOL_VENTRIKULOGRAFI: TStringField;
    qrtbpatsonucANGIO_LVEDP: TStringField;
    qrtbpatsonucANGIO_K_ANGIOGRAFI_ACIK: TStringField;
    qrtbpatsonucANGIO_K_ANGIOGRAFI_LMCA: TStringField;
    qrtbpatsonucANGIO_K_ANGIOGRAFI_LAD: TStringField;
    qrtbpatsonucANGIO_K_ANGIOGRAFI_CFX: TStringField;
    qrtbpatsonucANGIO_K_ANGIOGRAFI_RCA: TStringField;
    qrtbpatsonucANGIO_K_ANGIOGRAFI_D1: TStringField;
    qrtbpatsonucANGIO_K_ANGIOGRAFI_D2: TStringField;
    qrtbpatsonucANGIO_K_ANGIOGRAFI_OM1: TStringField;
    qrtbpatsonucANGIO_K_ANGIOGRAFI_OM2: TStringField;
    qrtbpatsonucANGIO_K_ANGIOGRAFI_PDA: TStringField;
    qrtbpatsonucANGIO_K_ANGIOGRAFI_AM: TStringField;
    qrtbpatsonucGIRISIMSEL_KOMPLIKASYON: TStringField;
    qrtbpatsonucGIRISIMSEL_KONSEY_KARARI: TStringField;
    qrtbpatsonucYAZILACAK_RAPOR_TIPI: TIntegerField;
    qrtbpatsonucANGIO2_SAG_COMMON_KAROTIS: TStringField;
    qrtbpatsonucANGIO2_SAG_EXTERNAL_KAROTIS: TStringField;
    qrtbpatsonucANGIO2_SAG_INTERNAL_KAROTIS: TStringField;
    qrtbpatsonucANGIO2_SAG_VERTEBARAL_ARTER: TStringField;
    qrtbpatsonucANGIO2_SOL_COMMON_KAROTIS: TStringField;
    qrtbpatsonucANGIO2_SOL_EXTERNAL_KAROTIS: TStringField;
    qrtbpatsonucANGIO2_SOL_INTERNAL_KAROTIS: TStringField;
    qrtbpatsonucANGIO2_SOL_VERTEBARAL_ARTER: TStringField;
    qrtbpatsonucRAPORYAZI: TStringField;
    qrRaporic: TOraQuery;
    qrRaporicISTEK_NO: TFloatField;
    qrRaporicRAPOR: TStringField;
    qrRaporicRAPORX: TMemoField;
    qrRapordis: TOraQuery;
    qrRapordisISTEK_NO: TFloatField;
    qrRapordisRAPOR: TStringField;
    qrRapordisRAPORX: TMemoField;
    QrLabDHL_PREFIX_WS: TStringField;
    QrLabDNOTLAR: TStringField;
    QrIstekDRDIS_NO: TIntegerField;
    QrIstekDRBOLUM_ADI: TStringField;
    QrTetkikRAPOR_TARIHI: TDateTimeField;
    PopupSakla: TAdvPopupMenu;
    GrnmSakla1: TMenuItem;
    QrLabDHSYS_SONUC_1: TStringField;
    QrLabDESKI_SONUC: TStringField;
    qrPatSonucEski: TOraQuery;
    qrpatsonucRAPORPAT: TStringField;
    cxGroupBox7: TcxGroupBox;
    cxSure: TcxSpinEdit;
    cxButton1: TcxButton;
    tmr1: TTimer;
    procedure TUMU;
    procedure cevaplanmis;
    procedure FormCreate(Sender: TObject);
    procedure DsTetkikDataChange(Sender: TObject; Field: TField);
    procedure QrLabDCalcFields(DataSet: TDataSet);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure RadioKontrolClick(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure DsIstekDRDataChange(Sender: TObject; Field: TField);
    procedure VScrollbChange(Sender: TObject);
    procedure HScrollbChange(Sender: TObject);
    procedure DSFilmDataChange(Sender: TObject; Field: TField);
    procedure QrTetkikCalcFields(DataSet: TDataSet);
    procedure DBGridSonucDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnSecClick(Sender: TObject);
    procedure btniptalClick(Sender: TObject);
    procedure btnpreviewClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure SonularKopyala1Click(Sender: TObject);
    procedure DBMemo1DblClick(Sender: TObject);
    procedure YanYanaKopyala1Click(Sender: TObject);
    procedure BtnPacsAcClick(Sender: TObject);
    procedure DsLabDDataChange(Sender: TObject; Field: TField);
    procedure PACSServerinabalan1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure meddatadicomviewerykle1Click(Sender: TObject);
    procedure QrTetkikBeforeEdit(DataSet: TDataSet);
    procedure QrTetkikAfterPost(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure QrLabDBeforeOpen(DataSet: TDataSet);
    procedure CheckTumuClick(Sender: TObject);
    procedure DBGrid7DblClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure BtnPDFClick(Sender: TObject);
    procedure IdFTP1Work(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure IdFTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure IdFTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure DsSonucDataChange(Sender: TObject; Field: TField);
    procedure RzLauncher3Error(Sender: TObject; ErrorCode: Cardinal);
    procedure GrnmSakla1Click(Sender: TObject);
    procedure btnPDFExportClick(Sender: TObject);
    procedure chkOtoClick(Sender: TObject);
    procedure cxSurePropertiesChange(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
 Units: TPoint;
    TransferrignData: Boolean;
    BytesToTransfer: LongWord;

 procedure istekm_query_ac;
    { Private declarations }
  public
isDownloadAvaible : boolean;
extension:String;
  protokol_no,dosya_no:double;
   formun_kaynagi:string[20];
  procedure meddata_Dicom_viewer_yukle;
  procedure ozel_sec;
  function connection_yap:boolean;
  function  disconnect:boolean;


    { Public declarations }
  end;



var
  FrmIstek: TFrmIstek;
  kod_sayac:integer;
  bas_kodu:double;
  sonuc,aktarma_durumu,GRUPMU:boolean;
  rowid1:String[20];
  yenigrup,yazdirabilir:boolean;
  eskigrp:integer;
  panik_ws_uyar, panik_uyari_renk_sari:Boolean;
  pacscreated:Boolean;
implementation



uses Main,utils,urptlabtekdr,urptradtekdr,bulgunit, UFrmpacsviewer,
  TypInfo,ufrmecg;

{$R *.DFM}



procedure TFrmIstek.FormCreate(Sender: TObject);
procedure reg_oku;
var
reg:Tregistry;
sonuc:String[1];
sizedeger:integer;
begin
Reg:=TRegistry.Create;
Reg.OpenKey('Software',True);
Reg.OpenKey('diginet',True);
Reg.OpenKey('MedData',True);
Reg.OpenKey('medikal',True);
Reg.OpenKey('labsonuc',True);
sonuc:='0';
try
sonuc:=Reg.readString('sonsonuc');
except
   on exception do sonuc:='0';
    end;
if sonuc='1' then CheckSonSonuc.Checked:=True  else CheckSonSonuc.checked:=False;


sizedeger:=510;
try
sizedeger:=Reg.readinteger('sizepaneldeger');
except
   on exception do sizedeger:=510;
    end;
//if sonuc>0 then RzSplitter1.Position:=sonuc;

Reg.closeKey;
Reg.Free;

if DM.hastanekeybilgisi_al('panik_uyari_renk_sari')='T' then  panik_uyari_renk_sari:=True else panik_uyari_renk_sari:=False;
if DM.hastanekeybilgisi_al('panik_ws_uyar')= 'T' then  panik_ws_uyar:=True else panik_ws_uyar:=False;



end;

procedure lab_sonuc_gridi_yukle;
var
reg:tregistry;
i:integer;
kolon:String;
begin
for i:=0 to DBGrid1.Columns.Count-1 do begin
Reg:=TRegistry.Create;
Reg.OpenKey('Software',True);
Reg.OpenKey('diginet',True);
Reg.OpenKey('MedData',True);
Reg.OpenKey('hk',True);
Reg.OpenKey('labsonucgrid',True);
kolon:='kolon'+intToStr(i);
Reg.OpenKey(kolon,True);
try
if Reg.ReadString('Fieldname')='' then
exit;
DBGrid1.Columns[i].FieldName:=Reg.ReadString('Fieldname');
DBGrid1.Columns[i].color:=StrToInt(Reg.ReadString('color'));
DBGrid1.Columns[i].Title.caption:=Reg.ReadString('caption');
DBGrid1.Columns[i].width:=Reg.ReadInteger('width');
except
      on exception do {};
      end;
Reg.closeKey;
Reg.Free;
                                    end;
end;








procedure yeni_yetki_sevileri;
begin
Dm.QryeniYetki.close;
Dm.QryeniYetki.paramByname('LNAME').AsString:=usern;
Dm.QryeniYetki.open;

while not dm.QrYeniYetki.Eof do
begin
case  dm.QrYeniYetkiKODU.asinteger of //Lab/Rad sonuclarýný yazdýramaz
10013:yazdirabilir:=false;
end;
dm.QrYeniYetki.next;
end;
end;

begin
//tumu;
yazdirabilir:=true;
 if Dm.hastanekeybilgisi_al('yeni_guvenlik_sistemi')='T' then
yeni_yetki_sevileri;
eskigrp:=1;
tempdata:='';
if not Dm.Qrhastane.active then Dm.Qrhastane.open;

if (dm.hastanekeybilgisi_al('PACS_rapor')='T') or (yap_yer=2) then begin
Editor.DataField:='RAPORC';
TabResim.Enabled:=False;
TabResim.Tabvisible:=False;

                                                   end;
reg_oku;
lab_sonuc_gridi_yukle;

end;

procedure TFrmIstek.GrnmSakla1Click(Sender: TObject);
procedure lab_sonuc_gridi_sakla;
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
Reg.deletekey('labsonucgrid');
Reg.closeKey;
Reg.Free;

for i:=0 to DBGrid1.Columns.Count-1 do begin
kolon:='kolon'+intToStr(i);
Reg:=TRegistry.Create;
Reg.OpenKey('Software',True);
Reg.OpenKey('diginet',True);
Reg.OpenKey('MedData',True);
Reg.OpenKey('hk',True);
Reg.OpenKey('labsonucgrid',True);
Reg.OpenKey(kolon,True);
Reg.writeString('Fieldname',DBGrid1.Columns[i].FieldName);
Reg.WriteString('color',IntToStr(DBGrid1.Columns[i].color));
Reg.WriteString('caption',DBGrid1.Columns[i].Title.caption);
Reg.WriteInteger('width',DBGrid1.Columns[i].width);
Reg.closeKey;
Reg.Free;
                                    end;
end;

begin
lab_sonuc_gridi_sakla;
end;

procedure TFrmIstek.cevaplanmis;
begin
//{$IFDEF idarimodul}
//if dm.hastanekeybilgisi_al('Sonuc_verme')='Lab' then qrTetkik.SQL[6]:='AND C.LAB=1'
//else if dm.hastanekeybilgisi_al('Sonuc_verme')='Rad' then qrTetkik.SQL[6]:='AND C.LAB=10'
//else qrTetkik.SQL[6]:='AND C.LAB>=1';
//{$ELSE}
qrTetkik.SQL[6]:='AND C.LAB>=1';
//{$ENDIF}

istekm_query_ac;
qrTetkik.Filter:='DURUM=10 or DURUM=11 or DURUM=13';
qrTetkik.Filtered:=True
end;


procedure TFrmIstek.chkOtoClick(Sender: TObject);
begin
if chkOto.Checked then Begin
 tmr1.Enabled:=True;
end
 else Begin tmr1.Enabled:=False;
 End;

end;

function TFrmIstek.connection_yap:boolean;
var
ftpserver:String;
user1,pass1:string;
begin
  if IdFTP1.Connected then try
    if TransferrignData then IdFTP1.Abort;
    IdFTP1.Quit;
  finally
  end
  else
  try
ftpserver:=dm.hastanekeybilgisi_al('ftpserver2');
if ftpserver='ftp.meddataonline.com' then
begin
    IdFTP1.Username := 'meddataonline.com';
    IdFTP1.Password := '1453med';
end
else begin
user1:=dm.hastanekeybilgisi_al('ftpuser2');
pass1:=dm.hastanekeybilgisi_al('ftppass2');

    if length(user1)<5 then user1:='ftpuser';
    if length(pass1)<5 then pass1:='documan';
    IdFTP1.Username :=user1;
    IdFTP1.Password := pass1;
     end;
   if not (ftpserver<>'') then ftpserver:='10.0.0.1';
     IdFTP1.Host := ftpserver;
     IdFTP1.Connect;

if ftpserver='ftp.meddataonline.com' then IdFTP1.ChangeDir('www');
  finally
   end;

if IdFTP1.connected then connection_yap:=true
else connection_yap:=False;

end;

procedure TFrmIstek.cxButton1Click(Sender: TObject);
begin
istekm_query_ac;
end;

procedure TFrmIstek.cxSurePropertiesChange(Sender: TObject);
begin
tmr1.Interval:=cxSure.Value*60*1000;
end;

function  TFrmIstek.disconnect:boolean;
begin

if TransferrignData then IdFTP1.Abort;
    IdFTP1.Quit;
end;

procedure TFrmIstek.tumu;
begin
//if dm.hastanekeybilgisi_al('Sonuc_verme')='Lab' then qrTetkik.SQL[6]:='AND C.LAB=1'
//else if dm.hastanekeybilgisi_al('Sonuc_verme')='Rad' then qrTetkik.SQL[6]:='AND C.LAB=10'
///else qrTetkik.SQL[6]:='AND C.LAB>=1';
qrTetkik.SQL[6]:='AND C.LAB>=1';
istekm_query_ac;
qrTetkik.Filtered:=False;
end;

procedure TFrmIstek.DsTetkikDataChange(Sender: TObject; Field: TField);
procedure lab_ac;
begin
Panellab.visible:=true;
panelrad.visible:=False;
if QrTetkikISTEK_NO.value>0 then begin
          qrlabD.close;
          qrIstekD.close;
          QRRapor.Close;
qrlabD.sql[1]:=' FROM HASTANE.LABSONUC L,HASTANE.ISLEMTIPI S';
checkeski.Checked:=false;
if QrTetkikDURUM.Asinteger in [10,11] then begin

if (devlet) then
if  QrTetkikTARIH.value<encodedate(2014,05,01)  then
if (dm.hastanekeybilgisi_al('eski_sonuc_labsonuc1')='T') then
begin
checkeski.Checked:=true;
qrlabD.sql[1]:=' FROM HASTANE.LABSONUC1 L,HASTANE.ISLEMTIPI S';
end
else
begin
checkeski.Checked:=false;
qrlabD.sql[1]:=' FROM HASTANE.LABSONUC L,HASTANE.ISLEMTIPI S';
end;

           qrlabD.ParamByName('IS_NO').AsFloat:=QrTetkikISTEK_NO.value;
           qrlabD.open;
           QrRapor.Close;
           QrRapor.ParamByName('ISTEK_NO').AsFloat:=QrTetkikISTEK_NO.value;
           QrRapor.Open;
           QrRaporic.ParamByName('ISTEK_NO').AsFloat:=QrTetkikISTEK_NO.value;
           QrRapor.Open;
           QrRapordis.ParamByName('ISTEK_NO').AsFloat:=QrTetkikISTEK_NO.value;
           QrRapor.Open;
           DbGridSonuc.DataSource:=DsLabD;
             end
else begin
     qrIstekD.ParamByName('IS_NO').AsFloat:=QrTetkikISTEK_NO.value;
     qrIstekD.open;
     DbGridSonuc.DataSource:=DsistekD;
     end;

if QrTetkikID.Value>0 then
if DM.hastanekeybilgisi_al('lab_barcode_id_protde_tek')='T' then  // ordu umut ventura enteg için bu keyi kullanýyoruz aynýsýna baðladým
begin              // onay yapýldýðýnda id yi hafýzaya alýr.onlar hafýzadan basýyor
  MemoKopya.Lines.Clear;
  MemoKopya.Lines.Add(QrTetkikID.Text);
  MemoKopya.selectall;
  MemoKopya.CopyToClipboard;
end;

                                end;

end;

procedure rad_ac;
begin
Panellab.visible:=False;
panelrad.visible:=True;
//if QrtetkikDurum.asinteger in [10,11,12] then sonuc:=True
if (QrtetkikDurum.asinteger in [10,11]) or (QrTetkikIMAJDURUM.AsInteger=12) then sonuc:=True
else sonuc:=False;

qrIstekDR.close;
if QrtetkikISTEK_NO.value>0 then begin
qrIstekDR.ParamByName('IS_NO').AsFloat:=QrtetkikISTEK_NO.value;
//QrIstekDR.ParamByName('KODU').AsFloat:=TbSonucISLEM_KODU.value;
qrIstekDR.open;
                               end;

if sonuc then begin
if (QrTetkikLAB.Value=40) and  (dm.hastanekeybilgisi_al('yeni_patoloji')='T') then pageControl2.ActivePageindex:=2;

   case pageControl2.ActivePage.pageindex of
         1: begin
        TbFilm.Close;
        TbFilm.paramByName('ISTEK_NO').AsFloat:=QrIstekDISTEK_NO.value;
        TbFilm.paramByName('ISLEM_KODU').AsFloat:=QrIstekDISLEM_KODU.Value;
        TbFilm.open;
             end;
         end;
end
else if not sonuc then
   case pageControl2.ActivePage.pageindex of
         1:TbFilm.Close;
         end;

    pagecontrol2change(self);
  end;

begin
if QrTetkikLAB.value<5 then lab_ac
else if QrTetkikLAB.value>=10 then rad_ac;
if not QrTetkikNUMUNE_RED_TARIHI.IsNull then
if QrTetkikDURUM.Value>11 then
MessageDlg('Uyarý!! Üzerinde olduðunuz tetkikin, numunesi lab.tarafýndan reddedilmiþ.',mtError,[mbyes],0);
end;


procedure TFrmIstek.QrLabDCalcFields(DataSet: TDataSet);
procedure set_panik_aciklama;
begin

QrLabDcl_panik_uyari.value:=0;
if (QrLabDPANIK_MAX.value<>0) or  (QrLabDPANIK_MAX.value<>0) then
if (QrLabDSonucN.value<QrLabDPANIK_MIN.value) or (QrLabDSonucN.value>QrLabDPANIK_MAX.value) then
begin
if (QrLabDSonucN.value<QrLabDPANIK_MIN.value) then QrLabDcl_panik_uyari.value:=1;
if (QrLabDSonucN.value>QrLabDPANIK_MAX.value)  then QrLabDcl_panik_uyari.value:=3;
     end
else QrLabDcl_panik_uyari.value:=0;

if (QrLabDSONUCN.isnull) then QrLabDcl_panik_uyari.value:=0;

if (QrLabDSonucC.value='B') or (QrLabDSonucC.value='b') then QrLabDcl_panik_uyari.value:=2;


end;

var
sonuc1,sonmin,sonmax,panik_deger_min,panik_deger_max:string;

begin
sonuc1:='';sonmin:='';sonmax:='';   panik_deger_min:=''; panik_deger_max:='';

try
if Not QrLabDsonucN.isNull then sonuc1:=FloattoStr(QrLabDsonucN.value)
else sonuc1:='';
except
 on exception do {};
end;

//if qrLabDsonucC.IsNull then
//qrLabDSonuc.value:=sonuc1
//else
qrLabDSonuc.value:=sonuc1+qrLabDsonucC.value;
//if qrLabDsonucC.value='B' or qrLabDsonucC.value='b' then



try
sonmin:=FloattoStr(QrLabDMIN.value);
except
 on exception do {};
end;

try
sonmax:=FloattoStr(QrLabDMAX.value);
except
 on exception do {};
 end;

try   // panik deðerler
if (not QrLabDPANIK_MIN.isNull)  then panik_deger_min:=QrLabDPANIK_MIN.AsString;
except
    on exception do {};
    end;

try
if (not QrLabDPANIK_MAX.isNull)  then panik_deger_max:=QrLabDPANIK_MAX.AsString;
except
    on exception do {};
    end;

if (not QrLabDPANIK_MIN.isNull) and (not QrLabDPANIK_MAX.isNull)  then
QrLabDcl_panik_degerler.value:=panik_deger_min+'-'+panik_deger_max;

if (QrLabDPANIK_MIN.value=0) and (QrLabDPANIK_MAX.value=0) then QrLabDcl_panik_degerler.value:='';



if (QrLabDMIN.value=0) and (QrLabDMAX.value=0) then qrLabDMINMAX.value:=qrLabDARALIK.value
else qrLabDMINMAX.value:=sonMIN+'-'+SONMAX+' '+qrLabDARALIK.value;


QrLabDPrn.value:=0;
if (QrLabDMin.value<>0) or  (QrLabDMax.value<>0) then
if (QrLabDSonucN.value<QrLabDMin.value) or (QrLabDSonucN.value>QrLabDMax.value) then
begin
if (QrLabDSonucN.value<QrLabDMin.value) then QrLabDPrn.value:=1;
if (QrLabDSonucN.value>QrLabDMax.value)  then QrLabDPrn.value:=3;
     end
else QrLabDPrn.value:=0;

if (QrLabDSONUCN.isnull) then QrLabDPrn.value:=0;

if (QrLabDSonucC.value='B') or (QrLabDSonucC.value='b') then QrLabDPrn.value:=2;

set_panik_aciklama; // selcuk panik deðerler dýþý testler için uyari

end;

procedure TFrmIstek.btn2Click(Sender: TObject);
var
sonuc:string;
begin
sonuc:='';
QrLAbD.First;
Repeat
sonuc:=sonuc+QrLabDIslem.Value+':'+QrLabDSonuc.Value+', ';
QrLAbD.Next;
until QrLAbD.EOF;
if sonuc<>'' then begin
if sonuc<>'' then tempdata:=tempdata+copy(QrTetkikTARIH.AsString,1,10)+'='+sonuc+#13#10;
                  end;

end;

procedure TFrmIstek.btn3Click(Sender: TObject);
var
sonuc:string;
begin
cevaplanmis;
Qrtetkik.first;
Repeat
sonuc:='';
QrLAbD.First;
Repeat
sonuc:=sonuc+QrLabDIslem.Value+':'+QrLabDSonuc.Value+', ';
QrLAbD.Next;
until QrLAbD.EOF;
if sonuc<>'' then tempdata:=tempdata+copy(QrTetkikTARIH.AsString,1,10)+'='+sonuc+#13#10;

Qrtetkik.next;
until Qrtetkik.EOF;


end;

procedure TFrmIstek.RadioKontrolClick(Sender: TObject);
procedure print_edilecek_lab;
begin
qrTetkik.SQL[6]:='AND ((C.LAB BETWEEN 1 AND 9) or (C.LAB BETWEEN 100 AND 199)) ';
qrTetkik.SQL[13]:='ORDER BY C.TARIH desc';
istekm_query_ac;
qrTetkik.Filter:='DURUM=10 OR DURUM=11 OR DURUM=13';
qrTetkik.Filtered:=True;
btnsec.Enabled:=True;
btniptal.Enabled:=True;
btnpreview.Enabled:=True;
btnprint.Enabled:=True;
end;
procedure print_edilecek_rad;
begin

qrTetkik.SQL[6]:='AND ((C.LAB BETWEEN 10 and 39) or (C.LAB BETWEEN 41 and 99))';
//if DM.hastanekeybilgisi_al('rad_sonuc_tar_gore')='T' then
qrTetkik.SQL[13]:='ORDER BY C.TARIH desc'  ;
//else
//qrTetkik.SQL[13]:='ORDER BY C.TARIH,C.GRUBU desc';
istekm_query_ac;
qrTetkik.Filter:='DURUM=10 OR DURUM=11';
qrTetkik.Filtered:=True;
btnsec.Enabled:=True;
btniptal.Enabled:=True;
btnpreview.Enabled:=True;
btnprint.Enabled:=True;
end;
procedure print_edilecek_pat;
begin

qrTetkik.SQL[6]:='AND C.LAB=40';
//if DM.hastanekeybilgisi_al('rad_sonuc_tar_gore')='T' then
qrTetkik.SQL[13]:='ORDER BY C.TARIH desc';
//else
//qrTetkik.SQL[13]:='ORDER BY C.TARIH,C.GRUBU desc';
istekm_query_ac;
qrTetkik.Filter:='DURUM=10 OR DURUM=11';
qrTetkik.Filtered:=True;
btnsec.Enabled:=True;
btniptal.Enabled:=True;
btnpreview.Enabled:=True;
btnprint.Enabled:=True;
end;

begin
btnsec.Enabled:=False;
btniptal.Enabled:=False;
btnpreview.Enabled:=False;
btnprint.Enabled:=False;
case  Radiokontrol.itemindex of
0:tumu;
1:cevaplanmis;
2:print_edilecek_lab;
3:print_edilecek_rad;
4:print_edilecek_pat;
 end;
end;

procedure TFrmIstek.PageControl2Change(Sender: TObject);
begin
case pageControl2.ActivePage.pageindex of
     0:if sonuc then tbSonuc.open
        else tbsonuc.close;
     1:if sonuc then begin
        TbFilm.Close;
        TbFilm.paramByName('ISTEK_NO').AsFloat:=QrIstekDRISTEK_NO.value;
        TbFilm.paramByName('ISLEM_KODU').AsFloat:=QrIstekDRISLEM_KODU.Value;
        TbFilm.open;
                     end
         else TbFilm.close;
              2:if sonuc then begin
        qrpatsonuc.Close;
        qrpatsonuc.paramByName('ISTEK_NO').AsFloat:=QrIstekDRISTEK_NO.value;
        qrpatsonuc.paramByName('ISLEM_KODU').AsFloat:=QrIstekDRISLEM_KODU.Value;
        qrpatsonuc.open;
                     end
                     else         qrpatsonuc.close;
    end;

end;

procedure TFrmIstek.DsIstekDRDataChange(Sender: TObject; Field: TField);
procedure imaj_rapor_kontrolu_yap;
begin
if QrTetkikDURUM.Value<10 THEN
Editor.visible:=false   // imajdurumu sütunu aktif edildi imaj geldi ise tbsonuc imajlara eriþim için açýlýyor
else                       //  ama rapor yok ise rapor tabý unvisible yapýlýyor.
Editor.visible:=true;
end;
//////////////////////baþlangýç
begin
if not sonuc then begin
TbTani.Close;
TbSonuc.Close;
                   end
else begin
TbTani.open;
TbSonuc.open;

imaj_rapor_kontrolu_yap;

     end;

end;

procedure TFrmIstek.VScrollbChange(Sender: TObject);
begin
  if Sender as TScrollBar = VScrollb then
//    Image.Top := -Units.y * VScrollb.Position;

end;

procedure TFrmIstek.HScrollbChange(Sender: TObject);
begin
 if Sender as TScrollBar = HScrollb then
//    Image.left := -Units.x * HScrollb.Position;
end;

procedure TFrmIstek.IdFTP1Work(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
begin
//  ProgressBar.Position := AWorkCount;
statuspanel1.Caption:=intToStr(AWorkCount);
  TransferrignData := true;

end;

procedure TFrmIstek.IdFTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin

  TransferrignData := true;
//  if AWorkCountMax > 0 then ProgressBar.Max := AWorkCountMax
//  else ProgressBar.Max := BytesToTransfer;
statuspanel1.Caption:=intToStr(AWorkCountMax);

end;

procedure TFrmIstek.IdFTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
  BytesToTransfer := 0;
  TransferrignData := false;
//  ProgressBar.Position := 0;
isDownloadAvaible:=TRUE;
end;

procedure TFrmIstek.DSFilmDataChange(Sender: TObject; Field: TField);
begin
//    Image.Top := 0;
//    Image.Left := 0;
    HScrollb.Position := 0;
    VScrollb.Position := 0;


//Image.Height:=Image.Picture.Height;
//Image.Width:=Image.Picture.Width;
//if Image.Height<=imgpanel.Height then begin
//                                        VScrollb.Visible:=False;
//                                        Image.Height:=imgpanel.Height;
//                                      end
//else begin
//   VScrollb.Visible:=True;
//  VScrollb.Max := Image.Picture.Height-imgpanel.Height;
//  Units.x := 1;
//     end;
//if Image.Width<=imgpanel.Width then begin
//                                        HScrollb.Visible:=False;
//                                        Image.Width:=imgpanel.Width;
//                                      end
//else begin
//  HScrollb.Visible:=True;
//  HScrollb.Max :=Image.Picture.Width-imgpanel.Width;
//  Units.y := 1;
//       end;

end;

procedure TFrmIstek.QrTetkikCalcFields(DataSet: TDataSet);
begin
if Iskodu[Trunc(QrTetkikROWNUM.value)].kod=1 then QrTetkikSec.value:='ü'
else QrTetkikSec.value:=' ';

Case QrTetkikLAB.AsInteger of
   1..9,100..199:QrTetkikDurum_s.Value:=QrTetkikDurumlab.value;
   10..99:QrTetkikDurum_s.Value:=QrTetkikDurumrad.value;
   end;

end;

procedure TFrmIstek.DBGridSonucDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
  var
  icon:Ticon;
begin
if  (QrLabDPrn.value=1) or (QrLabDPrn.value=3) then
begin
    DBGridSonuc.Canvas.Font.Style:= [fsbold,fsUnderline];

    DBGridSonuc.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

if  (column.fieldName='ACIKLAMA' ) then begin // DbGridin ilk Sütunu
icon:=Ticon.create;

    with  DBGridSonuc.Canvas do begin

if  QrLabDPrn.value=1  then   begin
                                ImageList1.Geticon(5,icon);
                                TextRect(Rect,Rect.Left+21,Rect.Top,column.Field.AsString);
                                Draw(rect.Left+1,Rect.Top,icon); // Resim Konuyor..
                                     end
else  if QrLabDPrn.value=3 then begin
                                ImageList1.Geticon(4,icon);
                                TextRect(Rect,Rect.Left+21,Rect.Top,column.Field.AsString);
                                Draw(rect.Left+1,Rect.Top,icon); // Resim Konuyor..
                                Font.Style:= [fsbold];
           DBGridSonuc.DefaultDrawColumnCell(Rect, DataCol, Column, State);
                                  end
else if  QrLabDPDF.value='T'  then   begin
                                ImageList1.Geticon(6,icon);
                                TextRect(Rect,Rect.Left+21,Rect.Top,column.Field.AsString);
                                Draw(rect.Left+1,Rect.Top,icon); // Resim Konuyor..
                                 end;

                                end;
icon.free;
                                             end;

 if QrLabDcl_panik_uyari.value in [1,3] then // selcuk test panik deðer dýþý ise renklendiriliyor
          begin
           if panik_uyari_renk_sari then
            DBGridSonuc.Canvas.Brush.Color :=CL_DURUM_asari
           else
            DBGridSonuc.Canvas.Brush.Color :=$006963B6;     // bordo

           DBGridSonuc.DefaultDrawColumnCell(Rect, DataCol, Column, State);
           DBGridSonuc.Hint:='Uyarý!! Sonuçlarý Panik Deðer sýnýrlarýný aþmýþ tetkikler var.';
           DBGridSonuc.ShowHint:=True;
          end
          else
          begin
           DBGridSonuc.Hint:='';
           DBGridSonuc.ShowHint:=false;
          end;

 if panik_ws_uyar  and  (QrLabDHL_PREFIX_WS.Value='Panik')then //özkaya týp merkezi Aslan.
 begin
   DBGridSonuc.Canvas.Brush.Color :=$006963B6;
   DBGridSonuc.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;

  if (QrLabDHL_PREFIX_WS.Value='Yuksek') or (QrLabDHL_PREFIX_WS.Value='Dusuk') then
   begin
      dbgridsonuc.Canvas.Font.Style :=[fsBold];
      DBGridSonuc.Canvas.Font.Style:= [fsbold,fsUnderline];
      DBGridSonuc.DefaultDrawColumnCell(Rect, DataCol, Column, State);

       end;


   end;

procedure TFrmIstek.ozel_sec;
var
MybookMark:Tbookmark;
begin
qrtetkik.first;
qrtetkik.disableControls;
mybookmark:=qrtetkik.GetBookmark;
qrtetkik.First;
repeat
Iskodu[trunc(qrtetkikROWNUM.value)].kod:=1;
qrtetkik.Next;
until qrtetkik.EOF;
qrtetkik.GotoBookmark(MyBookMark);
qrtetkik.FreeBookmark(MyBookMark);
qrtetkik.EnableControls;
end;

procedure TFrmIstek.btnSecClick(Sender: TObject);
var
MybookMark:Tbookmark;
begin
qrtetkik.first;
//qrtetkik.disableControls;
mybookmark:=qrtetkik.GetBookmark;
qrtetkik.First;
repeat

if (QrTetkikDURUM.value=11) and (CheckVerildi.checked) then Iskodu[trunc(qrtetkikROWNUM.value)].kod:=0 else
 Iskodu[trunc(qrtetkikROWNUM.value)].kod:=1;
qrtetkik.Next;
until qrtetkik.EOF;
qrtetkik.GotoBookmark(MyBookMark);
qrtetkik.FreeBookmark(MyBookMark);
qrtetkik.EnableControls;


end;

procedure TFrmIstek.btniptalClick(Sender: TObject);
var
MybookMark:Tbookmark;
begin
qrtetkik.first;
qrtetkik.disableControls;
mybookmark:=qrtetkik.GetBookmark;
qrtetkik.First;
repeat
Iskodu[trunc(qrtetkikROWNUM.value)].kod:=0;
qrtetkik.Next;
until qrtetkik.EOF;
qrtetkik.GotoBookmark(MyBookMark);
qrtetkik.FreeBookmark(MyBookMark);
qrtetkik.EnableControls;

end;

procedure TFrmIstek.btnPDFExportClick(Sender: TObject);
function print_update_et(strSQL:string):boolean;
var
QrPUpdate:ToraSQL;
begin
QrPUpdate:=ToraSQL.create(Self);
QrPUpdate.Session:=dm.Database1;
QrPUpdate.SQL.add('UPDATE HASTANE.ISTEKMAIN');
QrPUpdate.SQL.add('SET PRINT_TARIHI=SYSDATE,');
QrPUpdate.SQL.add('PRINT_EDEN=USER,');
QrPUpdate.SQL.add('PRINT_MAC='+quotedstr(GetMACAddress)+',');
QrPUpdate.SQL.add('PRINT_IP='+quotedstr(GetIp)+',');
QrPUpdate.SQL.add('DURUM=11');
QrPUpdate.SQL.add('WHERE ISTEK_NO IN ('+StrSQL+')');
QrPUpdate.SQL.add('AND DURUM=10');
QrPUpdate.execute;
anaform.commit_yap;
try
anaform.start_trans;
QrPUpdate.SQL.Clear;
QrPUpdate.SQL.add('UPDATE HASTANE.ISTEKMAIN');
QrPUpdate.SQL.add('SET RAPOR_TARIHI=SYSDATE,');
QrPUpdate.SQL.add('PRINT_MAC='+quotedstr(GetMACAddress)+',');
QrPUpdate.SQL.add('PRINT_IP='+quotedstr(GetIp)+'');
QrPUpdate.SQL.add('WHERE ISTEK_NO IN ('+StrSQL+') AND RAPOR_TARIHI IS NULL');
QrPUpdate.execute;
anaform.commit_yap;

except
  on exception do anaform.rollback_yap;
 end;

QrPUpdate.free;
end;
var
RptlabTekdr:TRptlabTekdr;
strSQL:String;
printd_adi,raporadi:String;
begin
if yazdirabilir=false  then   raise Exception.Create('Sonuç yazdýrma yetkiniz yoktur.');
case  radiokontrol.itemindex of
2:begin //
      if bol_kodu<>50 then
      if (dm.hastanekeybilgisi_al('lab_sonucu_labdan')='T') then
      if (QrTetkikLAB.Value>=1) and (QrTetkikLAB.Value<10) then
      raise Exception.Create('Laboratuvar sonuçlarý sadece laboratuvar modülünden yazdýrýlabilir olarak ayarlanmýþ.Ýþlem durduruldu');

      QrTetkik.first;
        StrSQL:='';
        while not QrTeTkik.EOF do
        begin
        if qrtetkiksec.value='ü' then  strSQL:=StrSQL+','+QrTetkikISTEK_NO.AsString;
        QrTetkik.Next;
        end;

    if StrSQL<>'' then
      begin
      delete(StrSQL,1,1);
      try
      RptlabTekdr:=TRptlabTekdr.create(Self);
      RptlabTekdr.qristekm.sql[11]:='WHERE C.ISTEK_NO IN ('+StrSQL+')';
      RptlabTekdr.qristekm.Open;
      RptlabTekdr.TbSonuc.open;
      RptlabTekdr.TbSonucic.open;
      RptlabTekdr.TbSonucdis.open;
      RptlabTekdr.QrRapor.open;
      RptlabTekdr.QrRaporic.open;
      RptlabTekdr.QrRapordis.open;
      RptlabTekdr.QrIstekDR.open;
      RptlabTekdr.QrYatan.Open;

if fileexists('labsonuc.fr3') then
begin
            frxReport1.LoadFromFile('labsonuc.fr3');
            frxPDFExport1.FileName:=qrtetkikPROTOKOL_NO.text+'_'+QrTetkikISTEK_NO.text+'_'+DateToStr(QrTetkikTARIH.value)+'.pdf';
            frxPDFExport1.PdfA:=True;
            frxPDFExport1.EmbeddedFonts:=True;
            frxPDFExport1.ShowDialog:=true;
            frxReport1.PrintOptions.ShowDialog := False;
            frxreport1.PrepareReport(true);
            frxReport1.ShowProgress := false;
            frxReport1.Export(frxPDFExport1);


end

      finally
        RptlabTekDR.free;
        end;

          end;
    end;
   3:begin

          if (dm.hastanekeybilgisi_al('pato_sonucu_labdan')='T') then
      if QrTetkikLAB.Value=40 then
      raise Exception.Create('Patoloji sonuçlarý sadece patoloji modülünden yazdýrýlabilir olarak ayarlanmýþ.');

      try

      RptRadTekdR:=TRptRadTekDr.create(Self);

      if (dm.hastanekeybilgisi_al('PACS_rapor')='T') or (yap_yer=2) then
      RptRadTekdR.QRDBRichText1.DataField:='RAPORC';
      RptRadTekdR.qristekM.close;

if dm.hastanekeybilgisi_al('rad_raporda_onaydr_yok')='T' then {}
else begin
     RptRadTekdR.QRLabelDr.Caption:=QrIstekDRDRADI.AsString;
     RptRadTekdR.QRLabelunvan.Caption:=QrIstekDRRAPOR_BOLUMU.AsString;
     end;

if not (QrIstekDRDRADI.isnull) then RptRadTekdR.sumek1.Enabled:=True;
if not (QrIstekDRRAPOR_BOLUMU.isnull) then RptRadTekdR.sumek2.Enabled:=True;

      RptRadTekdR.qristekm.paramByName('ISTEK_NO').AsFloat:=QrTetkikISTEK_NO.value;
      RptRadTekdR.qristekm.Open;
      RptRadTekDr.TbSonuc.close;
      RptRadTekDr.TbSonuc.paramByName('ISTEK_NO').AsFloat:=QrTetkikISTEK_NO.value;
      RptRadTekDr.TbSonuc.paramByName('ISLEM_KODU').AsFloat:=QrIstekDRISLEM_KODU.VALUE;
      RptRadTekDr.TbSonuc.open;
      RptRadTekDr.TbRaporTani.close;
      RptRadTekDr.TbRaporTani.paramByName('ISTEK_NO').AsFloat:=QrTetkikISTEK_NO.value;
      RptRadTekDr.TbRaporTani.paramByName('ISLEM_KODU').AsFloat:=QrIstekDRISLEM_KODU.VALUE;
      RptRadTekDr.TbRaporTani.open;

      RptRadTekdR.qrIstekDR.close;
      RptRadTekdR.qrIstekDR.ParamByName('IS_NO').AsFloat:=QrTetkikISTEK_NO.value;
      RptRadTekdR.qrIstekDR.ParamByName('kodu').AsFloat:=QrIstekDRISLEM_KODU.VALUE;
      RptRadTekdR.qrIstekDR.open;

      RptRadTekDr.QrFilm.close;
      RptRadTekDr.QrFilm.paramByName('ISTEK_NO').AsFloat:=QrTetkikISTEK_NO.value;
      RptRadTekDr.QrFilm.paramByName('ISLEM_KODU').AsFloat:=QrIstekDRISLEM_KODU.VALUE;
      RptRadTekDr.QrFilm.open;

      RptRadTekDr.QrTANIVIEW.close;
      RptRadTekDr.QrTANIVIEW.paramByName('DOSYA_NO').AsFloat:=RptRadTekdR.qristekmDOSYA_NO.value;
      RptRadTekDr.QrTANIVIEW.paramByName('PROTOKOL_NO').AsFloat:=RptRadTekdR.qristekmPROTOKOL_NO.VALUE;
      RptRadTekDr.QrTANIVIEW.open;

      RptRadTekdR.QrImzaDrler.close;
      RptRadTekdR.QrImzaDrler.ParamByName('ISTEK_NO').AsFloat:=QrTetkikISTEK_NO.value;
      RptRadTekdR.QrImzaDrler.ParamByName('ISLEM_KODU').AsFloat:=QrIstekDRISLEM_KODU.VALUE;
      RptRadTekdR.QrImzaDrler.ParamByName('ROWID1').text:=TbSonucROWID1.value;
      RptRadTekdR.QrImzaDrler.open;

      printd_adi:='';
 case QrTetkikLAB.Value of
     60:printd_adi:='norolojisonuc.fr3';{Nöroloji EEG}
     20:printd_adi:='kardiosonuc.fr3';{kardio}
     30:printd_adi:='gastrosonuc.fr3';{Gastro}
     40:printd_adi:='patsonuc.fr3';{Pato}
     50:printd_adi:='nukleersonuc.fr3';{Nükleer}
     else printd_adi:='radsonuc.fr3';
           end;
if not fileexists(printd_adi) then printd_adi:='radsonuc.fr3';




raporadi:=extractfilepath(application.exename)+'/'+printd_adi;

if fileexists(raporadi) then
begin
frxReport1.LoadFromFile(raporadi);
frxPDFExport1.FileName:=qrtetkikPROTOKOL_NO.text+'_'+QrTetkikISTEK_NO.text+'_'+DateToStr(QrTetkikTARIH.value)+'.pdf';
frxReport1.PrintOptions.ShowDialog := False;
frxReport1.ShowProgress := false;
frxReport1.PrepareReport(True);
frxReport1.PrepareReport(False);
frxReport1.Export(frxPDFExport1);
end;
      finally
        RptRadTekDr.free;
        end;










     end;

     end;


end;

procedure TFrmIstek.btnpreviewClick(Sender: TObject);

function print_update_et(strSQL:string):boolean;
var
QrPUpdate:ToraSQL;
begin
QrPUpdate:=ToraSQL.create(Self);
QrPUpdate.Session:=dm.Database1;
QrPUpdate.SQL.add('UPDATE HASTANE.ISTEKMAIN');
QrPUpdate.SQL.add('SET PRINT_TARIHI=SYSDATE,');
QrPUpdate.SQL.add('PRINT_EDEN=USER,DURUM=11');
QrPUpdate.SQL.add('WHERE ISTEK_NO IN ('+StrSQL+')');

try
if dm.hastanekeybilgisi_al('labprint_verildi_yapma')='T' then {}
else
begin
anaform.start_trans;
QrPUpdate.execute;
anaform.commit_yap;
end;
QrPUpdate.SQL.Clear;
QrPUpdate.SQL.add('UPDATE HASTANE.ISTEKMAIN');
QrPUpdate.SQL.add('SET RAPOR_TARIHI=SYSDATE');
QrPUpdate.SQL.add('WHERE ISTEK_NO IN ('+StrSQL+') AND RAPOR_TARIHI IS NULL');
anaform.start_trans;
QrPUpdate.execute;
anaform.commit_yap;
except
  on exception do anaform.rollback_yap;
 end;

QrPUpdate.free;
end;
/////////////////////////
var
RptlabTekdr:TRptlabTekdr;
strSQL,printd_adi,raporadi:String;
begin
case  radiokontrol.itemindex of
2:begin //
      if bol_kodu<>50 then
      if (dm.hastanekeybilgisi_al('lab_sonucu_labdan')='T') then
      if (QrTetkikLAB.Value>=1) and (QrTetkikLAB.Value<10) then
      raise Exception.Create('Laboratuvar sonuçlarý sadece laboratuvar modülünden yazdýrýlabilir olarak ayarlanmýþ.Ýþlem durduruldu');


      QrTetkik.first;
        StrSQL:='';
        while not QrTeTkik.EOF do
        begin
        if qrtetkiksec.value='ü' then  strSQL:=StrSQL+','+QrTetkikISTEK_NO.AsString;
        QrTetkik.Next;
        end;

    if StrSQL<>'' then
      begin
      delete(StrSQL,1,1);
      try
      RptlabTekdr:=TRptlabTekdr.create(Self);
      RptlabTekdr.qristekm.sql[11]:='WHERE C.ISTEK_NO IN ('+StrSQL+')';
      RptlabTekdr.qristekm.Open;
      RptlabTekdr.TbSonuc.open;
      RptlabTekdr.TbSonucic.open;
      RptlabTekdr.TbSonucdis.open;
      RptlabTekdr.QrRapor.open;
      RptlabTekdr.QrRaporic.open;
      RptlabTekdr.QrRapordis.open;
      RptlabTekdr.QrIstekDR.open;
      RptlabTekdr.QrYatan.Open;

raporadi:=extractfilepath(application.exename)+'/labsonuc.fr3';
if fileexists(raporadi) then  // APP BULUNDUGU --  SPLITTER
begin

 dm.frxReportGenel.FileName:=Ansiuppercase(turkce_buyult(dm.QrKimADVESOYAD.AsString))+'_'+dm.tbprtklPROTOKOL_NO.text+'_'+'sonuc.pdf';
 dm.print_fr3(raporadi,true);
 print_update_et(strSQL);
end
else RptlabTekdr.quickrep1.preview;
      if RptlabTekdr.printTamam then print_update_et(strSQL);
      finally
        RptlabTekDR.free;
        end;

          end;
    end;
   3,4:begin


//yeni patoloji için
qristekmpat.Close;
qristekmpat.ParamByName('D_NO').Value:=Dm.TbPrtklDOSYA_NO.Value;
qristekmpat.ParamByName('istekno').Value:=QrTetkikISTEK_NO.Value;
qristekmpat.open;

qrisimpat.Close;
qrisimpat.ParamByName('dosyano').Value:=Dm.TbPrtklDOSYA_NO.Value;
qrisimpat.ParamByName('istek_no').Value:=QrTetkikISTEK_NO.Value;
qrisimpat.Open;

qrdetailpat.Close;
qrdetailpat.ParamByName('ist_no').Value:=QrTetkikISTEK_NO.Value;
qrdetailpat.Open;

qrtaniklinikpat.Close;
qrtaniklinikpat.ParamByName('dosya_no').Value:=Dm.TbPrtklDOSYA_NO.Value;
qrtaniklinikpat.ParamByName('protokol_no').Value:=Dm.TbPrtklprotokol_NO.Value;
qrtaniklinikpat.Open;

qrtanipat.Close;
qrtanipat.ParamByName('istek_no').Value:=QrTetkikISTEK_NO.Value;
qrtanipat.Open;

qrtbpatsonuc.Close;
qrtbpatsonuc.ParamByName('istek_no').Value:=QrTetkikISTEK_NO.Value;
qrtbpatsonuc.Open;
//yeni patoloji için

      if (dm.hastanekeybilgisi_al('pato_sonucu_labdan')='T') then
      if QrTetkikLAB.Value=40 then
      raise Exception.Create('Patoloji sonuçlarý sadece patoloji modülünden yazdýrýlabilir olarak ayarlanmýþ.');

      try

      RptRadTekdR:=TRptRadTekDr.create(Self);

      if (dm.hastanekeybilgisi_al('PACS_rapor')='T') or (yap_yer=2) then
      RptRadTekdR.QRDBRichText1.DataField:='RAPORC';
      RptRadTekdR.qristekM.close;

if dm.hastanekeybilgisi_al('rad_raporda_onaydr_yok')='T' then {}
else begin
     RptRadTekdR.QRLabelDr.Caption:=QrIstekDRDRADI.AsString;
     RptRadTekdR.QRLabelunvan.Caption:=QrIstekDRRAPOR_BOLUMU.AsString;
     end;

if not (QrIstekDRDRADI.isnull) then RptRadTekdR.sumek1.Enabled:=True;
if not (QrIstekDRRAPOR_BOLUMU.isnull) then RptRadTekdR.sumek2.Enabled:=True;

      RptRadTekdR.qristekm.paramByName('ISTEK_NO').AsFloat:=QrTetkikISTEK_NO.value;
      RptRadTekdR.qristekm.Open;
      RptRadTekDr.TbSonuc.close;
      RptRadTekDr.TbSonuc.paramByName('ISTEK_NO').AsFloat:=QrTetkikISTEK_NO.value;
      RptRadTekDr.TbSonuc.paramByName('ISLEM_KODU').AsFloat:=QrIstekDRISLEM_KODU.VALUE;
      RptRadTekDr.TbSonuc.open;
      RptRadTekDr.TbRaporTani.close;
      RptRadTekDr.TbRaporTani.paramByName('ISTEK_NO').AsFloat:=QrTetkikISTEK_NO.value;
      RptRadTekDr.TbRaporTani.paramByName('ISLEM_KODU').AsFloat:=QrIstekDRISLEM_KODU.VALUE;
      RptRadTekDr.TbRaporTani.open;

RptRadTekdR.qrIstekDR.close;
RptRadTekdR.qrIstekDR.ParamByName('IS_NO').AsFloat:=QrTetkikISTEK_NO.value;
RptRadTekdR.qrIstekDR.ParamByName('kodu').AsFloat:=QrIstekDRISLEM_KODU.VALUE;
RptRadTekdR.qrIstekDR.open;

      RptRadTekDr.QrFilm.close;
      RptRadTekDr.QrFilm.paramByName('ISTEK_NO').AsFloat:=QrTetkikISTEK_NO.value;
      RptRadTekDr.QrFilm.paramByName('ISLEM_KODU').AsFloat:=QrIstekDRISLEM_KODU.VALUE;
      RptRadTekDr.QrFilm.open;

      RptRadTekDr.QrTANIVIEW.close;
      RptRadTekDr.QrTANIVIEW.paramByName('DOSYA_NO').AsFloat:=RptRadTekdR.qristekmDOSYA_NO.value;
      RptRadTekDr.QrTANIVIEW.paramByName('PROTOKOL_NO').AsFloat:=RptRadTekdR.qristekmPROTOKOL_NO.VALUE;
      RptRadTekDr.QrTANIVIEW.open;

RptRadTekdR.QrImzaDrler.close;
RptRadTekdR.QrImzaDrler.ParamByName('ISTEK_NO').AsFloat:=QrTetkikISTEK_NO.value;
RptRadTekdR.QrImzaDrler.ParamByName('ISLEM_KODU').AsFloat:=QrIstekDRISLEM_KODU.VALUE;
RptRadTekdR.QrImzaDrler.ParamByName('ROWID1').text:=TbSonucROWID1.value;
RptRadTekdR.QrImzaDrler.open;




      printd_adi:='';
 case QrTetkikLAB.Value of
     60:printd_adi:='norolojisonuc.fr3';{Nöroloji EEG}
     20:printd_adi:='kardiosonuc.fr3';{kardio}
     30:printd_adi:='gastrosonuc.fr3';{Gastro}
     40:printd_adi:='patsonuc.fr3';{Pato}
     50:printd_adi:='nukleersonuc.fr3';{Nükleer}
     else printd_adi:='radsonuc.fr3';
           end;
if not fileexists(printd_adi) then printd_adi:='radsonuc.fr3';

raporadi:=extractfilepath(application.exename)+'/'+printd_adi;

if fileexists(raporadi) then
begin
if yazdirabilir=false then dm.frxReportGenel.PreviewOptions.Buttons:= dm.frxReportGenel.PreviewOptions.Buttons-[pbprint];
  dm.fr3_rapor_aciklama:=Ansiuppercase(turkce_buyult(dm.QrKimADVESOYAD.AsString))+'_'+dm.tbprtklPROTOKOL_NO.text+'_'+'sonuc.pdf';
  dm.print_fr3(raporadi,true)
end
else RptRadTekDr.quickrep1.preview;
      finally
        RptRadTekDr.free;
        end;
     end;

     end;


end;

procedure TFrmIstek.DBGrid1DblClick(Sender: TObject);
var
MyBookMark:TBookMark;
begin

if (DBGrid1.SelectedField = QrTetkikEPIKRIZDE_CIKMASIN) then begin
AnaForm.start_trans;
QrTetkik.Edit;
if QrTetkikEPIKRIZDE_CIKMASIN.value='T' then QrTetkikEPIKRIZDE_CIKMASIN.value:='F'
else QrTetkikEPIKRIZDE_CIKMASIN.value:='T';
QrTetkik.Post;
anaform.commit_yap;
QrTetkik.RefreshRecord;
end
else
begin
if RadioKontrol.ItemIndex=3 then raise Exception.Create('Radyolojide seçerek çýktý alamazsýnýz.Tek Tek alýnýz.');

MyBookMark:=QrTetkik.GetBookMark;
if QrTetkiksec.value='ü' then iskodu[Trunc(QrTetkikRownum.value)].kod:=0
else iskodu[Trunc(QrTetkikRownum.value)].kod:=1;
QrTetkik.disableControls;
QrTetkik.GotoBookMark(MyBookMark);
QrTetkik.FreeBookMark(MyBookMark);
QrTetkik.EnableControls;
end;


end;

procedure TFrmIstek.btnPrintClick(Sender: TObject);

function print_update_et(strSQL:string):boolean;
var
QrPUpdate:ToraSQL;
begin
QrPUpdate:=ToraSQL.create(Self);
QrPUpdate.Session:=dm.Database1;
QrPUpdate.SQL.add('UPDATE HASTANE.ISTEKMAIN');
QrPUpdate.SQL.add('SET PRINT_TARIHI=SYSDATE,');
QrPUpdate.SQL.add('PRINT_EDEN=USER,');
QrPUpdate.SQL.add('PRINT_MAC='+quotedstr(GetMACAddress)+',');
QrPUpdate.SQL.add('PRINT_IP='+quotedstr(GetIp)+',');
QrPUpdate.SQL.add('DURUM=11');
QrPUpdate.SQL.add('WHERE ISTEK_NO IN ('+StrSQL+')');
QrPUpdate.SQL.add('AND DURUM=10');
QrPUpdate.execute;
anaform.commit_yap;
try
anaform.start_trans;
QrPUpdate.SQL.Clear;
QrPUpdate.SQL.add('UPDATE HASTANE.ISTEKMAIN');
QrPUpdate.SQL.add('SET RAPOR_TARIHI=SYSDATE,');
QrPUpdate.SQL.add('PRINT_MAC='+quotedstr(GetMACAddress)+',');
QrPUpdate.SQL.add('PRINT_IP='+quotedstr(GetIp)+'');
QrPUpdate.SQL.add('WHERE ISTEK_NO IN ('+StrSQL+') AND RAPOR_TARIHI IS NULL');
QrPUpdate.execute;
anaform.commit_yap;

except
  on exception do anaform.rollback_yap;
 end;

QrPUpdate.free;
end;
var
RptlabTekdr:TRptlabTekdr;
strSQL:String;
printd_adi,raporadi:String;
begin
if yazdirabilir=false  then   raise Exception.Create('Sonuç yazdýrma yetkiniz yoktur.');


case  radiokontrol.itemindex of
2:begin //
      if bol_kodu<>50 then
      if (dm.hastanekeybilgisi_al('lab_sonucu_labdan')='T') then
      if (QrTetkikLAB.Value>=1) and (QrTetkikLAB.Value<10) then
      raise Exception.Create('Laboratuvar sonuçlarý sadece laboratuvar modülünden yazdýrýlabilir olarak ayarlanmýþ.Ýþlem durduruldu');

      QrTetkik.first;
        StrSQL:='';
        while not QrTeTkik.EOF do
        begin
        if qrtetkiksec.value='ü' then  strSQL:=StrSQL+','+QrTetkikISTEK_NO.AsString;
        QrTetkik.Next;
        end;

    if StrSQL<>'' then
      begin
      delete(StrSQL,1,1);
      try
      RptlabTekdr:=TRptlabTekdr.create(Self);
      RptlabTekdr.qristekm.sql[11]:='WHERE C.ISTEK_NO IN ('+StrSQL+')';
      RptlabTekdr.qristekm.Open;
      RptlabTekdr.TbSonuc.open;
      RptlabTekdr.TbSonucic.open;
      RptlabTekdr.TbSonucdis.open;
      RptlabTekdr.QrRapor.open;
      RptlabTekdr.QrRaporic.open;
      RptlabTekdr.QrRapordis.open;
      RptlabTekdr.QrIstekDR.open;
      RptlabTekdr.QrYatan.Open;

if fileexists('labsonuc.fr3') then
begin
 dm.fr3_rapor_aciklama:=Ansiuppercase(turkce_buyult(dm.QrKimADVESOYAD.AsString))+'_'+dm.tbprtklPROTOKOL_NO.text+'_'+'sonuc.pdf';
  dm.print_fr3('labsonuc.fr3',false);
  print_update_et(strSQL);
end
else RptlabTekdr.quickrep1.print;
      if RptlabTekdr.printTamam then print_update_et(strSQL);

      finally
        RptlabTekDR.free;
        end;

          end;
    end;
   3:begin

          if (dm.hastanekeybilgisi_al('pato_sonucu_labdan')='T') then
      if QrTetkikLAB.Value=40 then
      raise Exception.Create('Patoloji sonuçlarý sadece patoloji modülünden yazdýrýlabilir olarak ayarlanmýþ.');

      try

      RptRadTekdR:=TRptRadTekDr.create(Self);

      if (dm.hastanekeybilgisi_al('PACS_rapor')='T') or (yap_yer=2) then
      RptRadTekdR.QRDBRichText1.DataField:='RAPORC';
      RptRadTekdR.qristekM.close;

if dm.hastanekeybilgisi_al('rad_raporda_onaydr_yok')='T' then {}
else begin
     RptRadTekdR.QRLabelDr.Caption:=QrIstekDRDRADI.AsString;
     RptRadTekdR.QRLabelunvan.Caption:=QrIstekDRRAPOR_BOLUMU.AsString;
     end;

if not (QrIstekDRDRADI.isnull) then RptRadTekdR.sumek1.Enabled:=True;
if not (QrIstekDRRAPOR_BOLUMU.isnull) then RptRadTekdR.sumek2.Enabled:=True;

      RptRadTekdR.qristekm.paramByName('ISTEK_NO').AsFloat:=QrTetkikISTEK_NO.value;
      RptRadTekdR.qristekm.Open;
      RptRadTekDr.TbSonuc.close;
      RptRadTekDr.TbSonuc.paramByName('ISTEK_NO').AsFloat:=QrTetkikISTEK_NO.value;
      RptRadTekDr.TbSonuc.paramByName('ISLEM_KODU').AsFloat:=QrIstekDRISLEM_KODU.VALUE;
      RptRadTekDr.TbSonuc.open;
      RptRadTekDr.TbRaporTani.close;
      RptRadTekDr.TbRaporTani.paramByName('ISTEK_NO').AsFloat:=QrTetkikISTEK_NO.value;
      RptRadTekDr.TbRaporTani.paramByName('ISLEM_KODU').AsFloat:=QrIstekDRISLEM_KODU.VALUE;
      RptRadTekDr.TbRaporTani.open;

      RptRadTekdR.qrIstekDR.close;
      RptRadTekdR.qrIstekDR.ParamByName('IS_NO').AsFloat:=QrTetkikISTEK_NO.value;
      RptRadTekdR.qrIstekDR.ParamByName('kodu').AsFloat:=QrIstekDRISLEM_KODU.VALUE;
      RptRadTekdR.qrIstekDR.open;

      RptRadTekDr.QrFilm.close;
      RptRadTekDr.QrFilm.paramByName('ISTEK_NO').AsFloat:=QrTetkikISTEK_NO.value;
      RptRadTekDr.QrFilm.paramByName('ISLEM_KODU').AsFloat:=QrIstekDRISLEM_KODU.VALUE;
      RptRadTekDr.QrFilm.open;

      RptRadTekDr.QrTANIVIEW.close;
      RptRadTekDr.QrTANIVIEW.paramByName('DOSYA_NO').AsFloat:=RptRadTekdR.qristekmDOSYA_NO.value;
      RptRadTekDr.QrTANIVIEW.paramByName('PROTOKOL_NO').AsFloat:=RptRadTekdR.qristekmPROTOKOL_NO.VALUE;
      RptRadTekDr.QrTANIVIEW.open;

      RptRadTekdR.QrImzaDrler.close;
      RptRadTekdR.QrImzaDrler.ParamByName('ISTEK_NO').AsFloat:=QrTetkikISTEK_NO.value;
      RptRadTekdR.QrImzaDrler.ParamByName('ISLEM_KODU').AsFloat:=QrIstekDRISLEM_KODU.VALUE;
      RptRadTekdR.QrImzaDrler.ParamByName('ROWID1').text:=TbSonucROWID1.value;
      RptRadTekdR.QrImzaDrler.open;

      printd_adi:='';
 case QrTetkikLAB.Value of
     60:printd_adi:='norolojisonuc.fr3';{Nöroloji EEG}
     20:printd_adi:='kardiosonuc.fr3';{kardio}
     30:printd_adi:='gastrosonuc.fr3';{Gastro}
     40:printd_adi:='patsonuc.fr3';{Pato}
     50:printd_adi:='nukleersonuc.fr3';{Nükleer}
     else printd_adi:='radsonuc.fr3';
           end;
if not fileexists(printd_adi) then printd_adi:='radsonuc.fr3';

raporadi:=extractfilepath(application.exename)+'/'+printd_adi;

if fileexists(raporadi) then
begin
if yazdirabilir=false then dm.frxReportGenel.PreviewOptions.Buttons:= dm.frxReportGenel.PreviewOptions.Buttons-[pbprint];
 dm.fr3_rapor_aciklama:=Ansiuppercase(turkce_buyult(dm.QrKimADVESOYAD.AsString))+'_'+dm.tbprtklPROTOKOL_NO.text+'_'+'sonuc.pdf';
 dm.print_fr3(raporadi,false)
end
else RptRadTekDr.quickrep1.print;
      finally
        RptRadTekDr.free;
        end;










     end;

     end;

end;

procedure TFrmIstek.SonularKopyala1Click(Sender: TObject);
function  doldur(str:string;uz:integer):string;
var
i:integer;
begin
if length(str)<uz then
for i:=1 to uz-length(str) do str:=str+' ';
doldur:=str;
end;

var
sonuc,test,unite,referans:string;
begin
memokopya.lines.clear;
QrlabD.first;
while not QrlabD.eOF do
begin
 sonuc:=QrlabDsonuc.AsString;
 test:=copy(QrlabDISLEM.AsString,1,40);
 unite:=copy(QrlabDunite.AsString,1,15);
 referans:=copy(qrLabDMINMAX.AsString,1,30);
 memokopya.lines.add(doldur(test,40)+':'+doldur(sonuc,20)+doldur(unite,15)+doldur(referans,30));
 QrlabD.next;
end;
 memokopya.SelectAll;
 memokopya.CopyToClipboard;

end;

procedure TFrmIstek.tmr1Timer(Sender: TObject);
begin
istekm_query_ac;

end;

procedure TFrmIstek.DBMemo1DblClick(Sender: TObject);
var
  BulguDlg :TBulguDlg;
  aciklama: string;
  ClickedOK: Boolean;
begin

//if (QrTetkikDURUM.value<>10) then raise exception.create('Radyoloji departmanýndan gönderilmemiþ.');

//if (dm.hastanekeybilgisi_al('PACS_mwl_gonder')='T') and (not TbSonucRAPORC.IsNull) then raise exception.create('Buna Radyolojiden rapor yazýlmýþ.Siz deðiþtiremezsiniz.');

//if (dm.hastanekeybilgisi_al('PACS_mwl_gonder')<>'T') and (not TbSonucISTEK_NO.isnull) then raise exception.create('Buna Radyolojiden rapor yazýlmýþ.Siz deðiþtiremezsiniz.');

if not (TbTaniRAPOR_TANISI.IsNull) then raise exception.create('Sonuç yazýlmýþ.Deðiþtiremezsiniz.');
  aciklama := '';
bul_grup_kodu:=200;
BulguDlg:=TBulguDlg.Create(Application);
         try
         BulguDlg.Caption:='Radyoloji Sonucu';
         BulguDlg.label1.Caption:='Radyoloji Sonucu';
         BulguDlg.ShowModal;
          finally
         if (BulguDlg.ModalResult=MrOK) and (BulguDlg.Memo1.text<>'')  then begin
                      aciklama:=BulguDlg.Memo1.text;
                                           end;
           BulguDlg.Free;
           end;





  if (aciklama<>'') then begin
  try
  TbTani.readonly:=False;
  TbTani.close;TbTani.open;
  anaform.start_trans;
  TbTani.edit;
  TbTaniRAPOR_TANISI.Value:=aciklama;
  TbTani.post;
  anaform.commit_yap;
  TbTani.readonly:=True;
  except
    on exception do anaform.Rollback_yap;
           end;
                                         end;
  TbTani.readonly:=True;
  TbTani.close;TbTani.open;
end;

procedure TFrmIstek.YanYanaKopyala1Click(Sender: TObject);
var
sonuc,test,unite:string;
toplamsatir:AnsiString;
begin
memokopya.lines.clear;
toplamsatir:='';
QrlabD.first;
while not QrlabD.eOF do
begin
 sonuc:=QrlabDsonuc.AsString;
 if length(QrlabDISLEM.AsString)>40 then test:=copy(QrlabDISLEM.AsString,1,40)
 else test:=QrlabDISLEM.AsString;
 Toplamsatir:=toplamsatir+', '+test+':'+sonuc;
 QrlabD.next;
end;
if length(toplamsatir)>2 then delete(Toplamsatir,1,2)
else toplamsatir:='';
memokopya.lines.Add(Toplamsatir);
 memokopya.SelectAll;
 memokopya.CopyToClipboard;
end;

procedure TFrmIstek.meddata_Dicom_viewer_yukle;
begin
if Not DM.lisans_icerik_kontrol('C') then raise exception.Create('PACS lisansýnýz yok. lütfen meddata satýþ ile görüþünüz.');
try
RzLauncher1.FileName:='meddataDicomViewer.exe';
RzLauncher1.WaitUntilFinished:=False;
if dm.hastanekeybilgisi_al('PACS_server')='' then raise exception.create('PACS serverin ip adresi eksik');
if dm.hastanekeybilgisi_al('PACS_db_server')='' then raise exception.create('PACS db serverin ip adresi eksik');
RzLauncher1.Parameters:=dm.hastanekeybilgisi_al('PACS_db_server')+':1521:orcl'+' '+dm.hastanekeybilgisi_al('PACS_server')+' '+TbSonucIMAGENO.asstring+' study';
RzLauncher1.Launch;
except
    on exception do {};
end;

end;


procedure TFrmIstek.BtnPacsAcClick(Sender: TObject);
procedure meddata_pacs_ocx_yukle;
var
  studyUID:string;
  monitor:Integer;
  Filename1,ip1:String;
sonuc1:integer;
Frmecg:TFrmecg;
begin
if Not DM.lisans_icerik_kontrol('C') then raise exception.Create('PACS lisansýnýz yok. lütfen meddata satýþ ile görüþünüz.');

if qristekdrmodality.Value='ECG' then
begin
try
Frmecg:=TFrmecg.create(self);
Frmecg.Editstudyuid.Text:=QrTetkikIMAGENO.asstring;
Frmecg.BitBtn1Click(sender);
finally
Frmecg.free;
end;
end
else
begin
try
if pacscreated=false then
Begin
Frmpacsviewer:=TFrmpacsviewer.create(Nil);
pacscreated:=True;
End;
Frmpacsviewer.studyUID:='';
if not (TbSonucIMAGENO.isnull) then Frmpacsviewer.studyUID:=TbSonucIMAGENO.asstring
else if not (QrTetkikIMAGENO.isnull) then Frmpacsviewer.studyUID:=QrTetkikIMAGENO.asstring;

if Check2M.checked then  Frmpacsviewer.monitor:=1
else Frmpacsviewer.monitor:=-1;
Frmpacsviewer.pacs_ip_adres:=QrTetkikIP_ADRESI.Text;
Frmpacsviewer.dosya_no_p:=QrTetkikDOSYA_NO.Value;
Frmpacsviewer.protokol_no_p:=QrTetkikPROTOKOL_NO.Value;
FrmPACSViewer.WindowState:=wsMaximized;
FrmPACSViewer.Visible:=True;
Frmpacsviewer.show;
finally


end;
end;
end;


procedure ge_api_programini_ac(ris_id,executable_program_name:string);
var dosya_yeri:string[100];
    filename1:string[120];
    param_string,pacs_uretici:string;
begin
    filename1:=executable_program_name;
    dosya_yeri:=dm.hastanekeybilgisi_al('ge_viewer_prg_yeri');
    pacs_uretici:=dm.hastanekeybilgisi_al('PACS_uretici');

    if dosya_yeri <>'' then
    filename1:=dosya_yeri+filename1;
    LauncherApi.FileName:=filename1;
    LauncherApi.WaitUntilFinished:=False;

    param_string:=ris_id;
    if pacs_uretici='intpacs' then
    param_string:=' itp:Type=Dicom&PatientId='+QrTetkikDOSYA_NO.text+'&AccessionNumber='+ris_id;


    statuspanel1.Caption:=filename1+param_string;
    memo1.Lines.Add(filename1+param_string);
    LauncherApi.Parameters:=param_string;
    LauncherApi.Launch;
end;
var
b64_kullan,executable_program_name,url4,url1,syntax1,ris_id,id_tipi1:string;
begin
b64_kullan:='';
syntax1:='';
id_tipi1:='';
id_tipi1:=dm.hastanekeybilgisi_al('PACS_id_tipi');

if (id_tipi1='dosya_no') or (id_tipi1='istek_no')
or (id_tipi1='protokol_no' ) or (id_tipi1='id') or  (id_tipi1='rowid') then {}
else if (TbSonucIMAGENO.IsNull)  then begin
if (QrTetkikIMAGENO.isnull) then  raise exception.Create('image numarasý yok(PACS tan gelmemiþ)');
                                       end;
if not (TbSonucIMAGENO.IsNull)  then ris_id:=TbSonucIMAGENO.asstring
else if not (QrTetkikIMAGENO.isnull)  then ris_id:=QrTetkikIMAGENO.asstring;
try
if dm.hastanekeybilgisi_al('PACS_uretici')='meddata' then begin
                                                             meddata_pacs_ocx_yukle;
                                                          end
else
if dm.hastanekeybilgisi_al('ge_viewer_api_ac')='T' then begin

if id_tipi1='dosya_no' then ris_id:=FloatToStr(Dm.TbPrtklDOSYA_NO.Value);
if id_tipi1='protokol_no' then ris_id:=FloatToStr(Dm.TbPrtklprotokol_NO.Value);
if id_tipi1='istek_no' then ris_id:=FloatToStr(QrTetkikISTEK_NO.Value);
if id_tipi1='id' then ris_id:=FloatToStr(QrTetkikID.Value);
if id_tipi1='rowid' then ris_id:=(QrIstekDRROWID1.asstring);
executable_program_name:=dm.hastanekeybilgisi_al('pacs_program_name');
ge_api_programini_ac(ris_id,executable_program_name);
                                                        end
else
if dm.hastanekeybilgisi_al('PACS_url3')<>'' then begin // miv.exe ile açýyor
url1:=dm.hastanekeybilgisi_al('PACS_url3');
if url1='' then raise exception.create ('PACS Server url si tanýmlý degil(PACS_url3).Lütfen BÝM ile görüþünüz.');
//ris_id:=TbSonucIMAGENO.asstring;
if id_tipi1='dosya_no' then ris_id:=FloatToStr(Dm.TbPrtklDOSYA_NO.Value);
if id_tipi1='protokol_no' then ris_id:=FloatToStr(Dm.TbPrtklprotokol_NO.Value);
if id_tipi1='istek_no' then ris_id:=FloatToStr(QrTetkikISTEK_NO.Value);
if id_tipi1='id' then ris_id:=FloatToStr(QrTetkikID.Value);
if id_tipi1='rowid' then ris_id:=(QrIstekDRROWID1.asstring);
RzLauncher2.Parameters:=url1+' '+ris_id;
if DM.lisans_icerik_kontrol('C') or DM.lisans_icerik_kontrol('E') then
RzLauncher2.Launch;
                                                 end
else if dm.hastanekeybilgisi_al('PACS_url1') <>'' then
begin
url1:=dm.hastanekeybilgisi_al('PACS_url1');    // internet explorer ile açýyor
b64_kullan:=dm.hastanekeybilgisi_al('PACS_url1_accesno_b64_var');
if url1='' then raise exception.create ('PACS Server url si tanýmlý degil(PACS_url1).Lütfen BÝM ile görüþünüz.');

ris_id:=TbSonucIMAGENO.asstring;
if id_tipi1='dosya_no' then ris_id:=FloatToStr(Dm.TbPrtklDOSYA_NO.Value);
if id_tipi1='protokol_no' then ris_id:=FloatToStr(Dm.TbPrtklprotokol_NO.Value);

if id_tipi1='istek_no' then
begin
if b64_kullan='T' then
ris_id:=B64encode(QrTetkikISTEK_NO.text)
else
ris_id:=FloatToStr(QrTetkikISTEK_NO.Value);
end;

if id_tipi1='id' then ris_id:=FloatToStr(QrTetkikID.Value);
if id_tipi1='rowid' then ris_id:=(QrIstekDRROWID1.asstring);
RzLauncher1.Parameters:=url1+ris_id;
//http://192.168.1.231/ami/html/webviewer.html?view&wlname=&un=meddata&pw=Meddata-1234&ris_exam_id=
if DM.lisans_icerik_kontrol('C') or DM.lisans_icerik_kontrol('E') then
if dm.hastanekeybilgisi_al('pacs_tarayici_varsayilan')='T' then  ShellExecute(self.WindowHandle,'open',PChar(url1+ris_id),nil,nil, SW_SHOWNORMAL)
else
RzLauncher1.Launch;
end;


finally
end;

end;

procedure TFrmIstek.BtnPDFClick(Sender: TObject);
function GetTempDirectory: String;
var
  tempFolder: array[0..MAX_PATH] of Char;
begin
  GetTempPath(MAX_PATH, @tempFolder);
  result := StrPas(tempFolder);
end;

var
dosya_adi,ftpserver,Name ,uzak_dizin:String;
i:integer;
begin
try
Qrimagelist.close;
Qrimagelist.paramByname('ISTEK_NO').AsFloat:=QrTetkikISTEK_NO.value;
case QrTetkikLAB.value of
1..9:begin
      Qrimagelist.paramByname('KODU').AsFloat:=QrLabDISLEM_KODU.value;
      Qrimagelist.paramByname('ROWID1').AsString:=QrLabDROWID1.value;
      end;
10..90:begin
      Qrimagelist.paramByname('KODU').AsFloat:=TbSonucISLEM_KODU.value;
      Qrimagelist.paramByname('ROWID1').AsString:=TbSonucROWID1.value;
       end;
  end;
Qrimagelist.open;
if Qrimagelist.recordcount>=1 then begin
uzak_dizin:=QrTetkikDOSYA_NO.AsString;

dosya_adi:=QrimagelistDOSYA_ADI.value;

if not connection_yap then raise exception.Create('baðlantý kurulamadý.');
if not (dosya_adi<>'') then raise exception.Create('Geçerli dosya adi yok.');
        IdFTP1.TransferType := ftBinary;
        name:=dosya_adi;
        idftp1.ChangeDir(uzak_dizin);
        deletefile(GetTempDirectory+Name);
        BytesToTransfer := IdFTP1.Size(Name);
        IdFTP1.Get(Name, GetTempDirectory+Name, false, true);

Disconnect;

sleep(1000);

for i:=1 to 100 do
begin
if not (isDownloadAvaible) then sleep(1000);
Application.ProcessMessages;
Statuspanel1.Caption:=intToStr(i);
end;

//if isDownloadAvaible then
//begin
//if pos('.pdf',Name)>1 then RzLauncher3.FileName:='AcroRd32.exe';
//if pos('.doc',Name)>1 then RzLauncher3.FileName:='WINWORD.EXE';
//if pos('.jpg',Name)>1 then RzLauncher3.FileName:='MSPAINT.EXE';
//RzLauncher3.Parameters:=GetTempDirectory+Name;
//sleep(2000);
//RzLauncher3.Execute;
//end;
//                              end;
//except
//    on exception do ;
//    end;


if isDownloadAvaible then begin
try
dosya_adi:=QrimagelistDOSYA_ADI.value;

ShellExecute(Handle, nil,
  PChar(GetTempDirectory+Name), nil, nil, SW_SHOWNORMAL)

except
    on exception do ;
    end;

///
 end


end;
  except
  on exception do ;
end;
end;

procedure TFrmIstek.DsLabDDataChange(Sender: TObject; Field: TField);
var
tarih1:TdateTime;
begin
if field=nil then begin
if not QrLabDARALIK2.IsNull then begin
DBRichEkNormal.Visible:=True;
                                 end
else  DBRichEkNormal.Visible:=false;


if QrLabDPDF.value='T' then btnpdf.enabled:=true
else btnpdf.enabled:=False;

if (field=nil) and (CheckSonsonuc.checked) then
begin
try                                
tarih1:=QrTetkikTARIH.Value;
except
      on exception do tarih1:=date;
end;
QrSonsonuclar.close;
QrSonsonuclar.paramByName('DOSYA_NO').AsFloat:=dm.TbPrtklDOSYA_NO.VALUE;
QrSonsonuclar.paramByName('KODU').AsFloat:=QrLabDISLEM_KODU.value;
QrSonsonuclar.paramByName('TAR1').AsDateTime:=tarih1-1095;
QrSonsonuclar.paramByName('TAR2').AsDateTime:=tarih1;
QrSonsonuclar.open;
end
else QrSonsonuclar.close;

                  end;



end;

procedure TFrmIstek.DsSonucDataChange(Sender: TObject; Field: TField);
begin

if field=nil then begin
if TbSonucPDF.value='T' then btnpdf.enabled:=true
else btnpdf.enabled:=False;
                  end;

end;

procedure TFrmIstek.PACSServerinabalan1Click(Sender: TObject);
procedure ge_api_programini_ac(ris_id:string);
var dosya_yeri:string[100];
    filename1:string[120];
begin
    filename1:='29MAYIS_RIS.EXE';
    dosya_yeri:=dm.hastanekeybilgisi_al('ge_viewer_prg_yeri');
    if dosya_yeri <>'' then
    filename1:=dosya_yeri+filename1;
    LauncherApi.FileName:=filename1;
    LauncherApi.WaitUntilFinished:=False;
    LauncherApi.Parameters:=ris_id;
    LauncherApi.Launch;
end;
var
ris_id,url2:string;
begin
//if not DM.lisans_icerik_kontrol('C') then raise exception.Create('PACS lisansýnýz yok. lütfen meddata satýþ ile görüþünüz.');
if dm.hastanekeybilgisi_al('ge_viewer_api_ac')='T' then begin
//ris_id:='B'+Dm.TbPrtklDOSYA_NO.text;     // diðer program ilk harf B ise geneli açmasý gerektiðini anlýyor
ris_id:=(QrIstekDRROWID1.asstring);
ge_api_programini_ac(ris_id);
                                                        end
                                                        else
                                                        begin

try
url2:=dm.hastanekeybilgisi_al('PACS_url2');
if url2<>'' then RzLauncher1.Parameters:=url2
else raise exception.create('pacs serveri tanýmlý degil');
RzLauncher1.Launch;
finally
end;
                                                        end;
end;

procedure TFrmIstek.FormClose(Sender: TObject; var Action: TCloseAction);
procedure reg_yaz;
var
reg:Tregistry;
sonuc:String[1];
begin
Reg:=TRegistry.Create;
Reg.OpenKey('Software',True);
Reg.OpenKey('diginet',True);
Reg.OpenKey('MedData',True);
Reg.OpenKey('medikal',True);
Reg.OpenKey('labsonuc',True);

if CheckSonSonuc.Checked then sonuc:='1'  else sonuc:='0';
Reg.writeString('sonsonuc',sonuc);
//Reg.writeinteger('sizepaneldeger',rzsplitter.Position);

Reg.closeKey;
Reg.Free;
end;
begin
reg_yaz;
end;

procedure TFrmIstek.meddatadicomviewerykle1Click(Sender: TObject);
begin
//if not DM.lisans_icerik_kontrol('C') then raise exception.Create('PACS lisansýnýz yok. lütfen meddata satýþ ile görüþünüz.');
meddata_Dicom_viewer_yukle;
end;

procedure TFrmIstek.QrTetkikBeforeEdit(DataSet: TDataSet);
begin
anaform.start_trans;
end;

procedure TFrmIstek.QrTetkikAfterPost(DataSet: TDataSet);
begin
AnaForm.commit_yap;
end;

procedure TFrmIstek.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var Icon: TBitmap;
begin
Icon:=TBitmap.Create;

if  (Column.fieldName='EPIKRIZDE_CIKMASIN') then begin // DbGridin ilk Sütunu
    with  dbgrid1.Canvas do begin

if QrTetkikEPIKRIZDE_CIKMASIN.Value='T' then
begin
       ImageList2.GetBitmap(2,Icon);
       Draw(rect.Left+1,Rect.Top,Icon); // Resim Konuyor..
end;

                             end; //with grid
                                       end; //

 Icon.free;

end;
procedure TFrmIstek.QrLabDBeforeOpen(DataSet: TDataSet);
begin
if ((bol_kodu<110) or (bol_kodu<>75) or (bol_kodu<>67)) and (dm.hastanekeybilgisi_al('sonucu_dr_gorsun')<>'T') then
QrLabD.SQL[4]:='AND NVL(S.SONUCU_SADECE_DR_GORSUN,''F'') <>''T'' '
else
if (dm.hastanekeybilgisi_al('sonucu_dr_gorsun')='T') and (floattostr(usercode)=dm.TbPrtklDR_KODU.Text) then
QrLabD.SQL[4]:=''
else
QrLabD.SQL[4]:='AND NVL(S.SONUCU_SADECE_DR_GORSUN,''F'') <>''T'' ';

if (dm.hastanekeybilgisi_al('ehu_onay_dr_kodu')=floattostr(usercode)) or ((dm.hastanekeybilgisi_al('ehu_dahiliye_cocuk')='T') and ((bol_kodu=110)or (bol_kodu=120))) then
QrLabD.SQL[3]:=''
else
QrLabD.SQL[3]:='AND NVL(L.KISITLI_BILDIRIM,''F'') <>''T'' '



end;


procedure TFrmIstek.istekm_query_ac;
begin
qrTetkik.close;
if CheckTumu.Checked then begin
                             QrTetkik.SQL[5]:='WHERE C.DOSYA_NO=:P_NO ';
                             QrTetkik.ParamByName('P_NO').AsFloat:=dosya_no;
                          end
                          else
                          begin
                             QrTetkik.SQL[5]:='WHERE C.PROTOKOL_NO=:P_NO ';
                             qrTetkik.ParamByName('P_NO').AsFloat:=PROTOKOL_NO;
                          end;
qrTetkik.open;

end;

procedure TFrmIstek.CheckTumuClick(Sender: TObject);
begin
if CheckTumu.Checked then
begin
// btnpreview.Enabled:=false;
// btnPrint.Enabled:=false;
end;

RadioKontrolClick(Self);
end;

procedure TFrmIstek.DBGrid7DblClick(Sender: TObject);
begin
BtnPacsAcClick(self);
end;


{procedure ge_viewer_yukle(ris_id:string);
var dllhandle :THandle;
    login     :Tlogin;
    apiinterface:IIntegradApi;
begin
  try
   dllhandle:=LoadLibrary('ivapi.dll');

   if dllhandle <>0 then    begin


   @login:=GetProcAddress(dllhandle,'login');
   if Addr(login)<> nil then begin
                              login('WEBDX','GEWEB123','');
                             end
                             else
                             ShowMessage('Login Fonksiyonu Bulunamadý.');
                            end
                            else
                            ShowMessage('ivapi.dll bulunamadý.');
finally
  FreeLibrary(dllhandle);
end;

end;
}
procedure TFrmIstek.RzBitBtn1Click(Sender: TObject);
procedure meddata_pacs_ocx_yukle;
var
  studyUID:string;
  monitor:Integer;
    Filename1,ip1:String;
sonuc1:integer;
Frmecg:TFrmecg;
  begin

if Not DM.lisans_icerik_kontrol('C') then raise exception.Create('PACS lisansýnýz yok. lütfen meddata satýþ ile görüþünüz.');

if qristekdrmodality.Value='ECG' then
begin
try
Frmecg:=TFrmecg.create(self);
Frmecg.Editstudyuid.Text:=QrTetkikIMAGENO.asstring;
Frmecg.BitBtn1Click(sender);
finally
Frmecg.free;
end;
end
else
begin
//try
Frmpacsviewer:=TFrmpacsviewer.create(Nil);
Frmpacsviewer.studyUID:=TbSonucIMAGENO.asstring;
if Check2M.checked then  Frmpacsviewer.monitor:=1
else Frmpacsviewer.monitor:=-1;
Frmpacsviewer.dosya_no_p:=QrTetkikDOSYA_NO.Value;
Frmpacsviewer.protokol_no_p:=QrTetkikPROTOKOL_NO.Value;
Frmpacsviewer.show;
//finally
//Frmpacsviewer.free;
//end;
   end;
end;


procedure ge_api_programini_ac(ris_id,executable_program_name:string);
var dosya_yeri:string[100];
    filename1:string[120];
begin
    filename1:=executable_program_name;
    dosya_yeri:=dm.hastanekeybilgisi_al('ge_viewer_prg_yeri');
    if dosya_yeri <>'' then
    filename1:=dosya_yeri+filename1;
    LauncherApi.FileName:=filename1;
    LauncherApi.WaitUntilFinished:=False;
    LauncherApi.Parameters:=ris_id;
    LauncherApi.Launch;
end;
var
executable_program_name,url4,url1,syntax1,ris_id:string;
begin

syntax1:='';

if (dm.hastanekeybilgisi_al('PACS_id_tipi')='dosya_no') or (dm.hastanekeybilgisi_al('PACS_id_tipi')='istek_no' )
or (dm.hastanekeybilgisi_al('PACS_id_tipi')='protokol_no' ) or (dm.hastanekeybilgisi_al('PACS_id_tipi')='id' ) or (dm.hastanekeybilgisi_al('PACS_id_tipi')='rowid' ) then {}
else if (TbSonucIMAGENO.IsNull) then raise exception.Create('image numarasý yok(PACS tan gelmemiþ)');

try
if dm.hastanekeybilgisi_al('ge_viewer_api_ac')='T' then begin
ris_id:=TbSonucIMAGENO.asstring;
if dm.hastanekeybilgisi_al('PACS_id_tipi')='dosya_no' then ris_id:=FloatToStr(Dm.TbPrtklDOSYA_NO.Value);
if dm.hastanekeybilgisi_al('PACS_id_tipi')='protokol_no' then ris_id:=FloatToStr(Dm.TbPrtklprotokol_NO.Value);
if dm.hastanekeybilgisi_al('PACS_id_tipi')='istek_no' then ris_id:=FloatToStr(QrTetkikISTEK_NO.Value);
if dm.hastanekeybilgisi_al('PACS_id_tipi')='id' then ris_id:=FloatToStr(QrTetkikID.Value);
if dm.hastanekeybilgisi_al('PACS_id_tipi')='rowid' then ris_id:=(QrTetkikROVID1.Value);
executable_program_name:=dm.hastanekeybilgisi_al('pacs_program_name');
ge_api_programini_ac(ris_id,executable_program_name);
end
else
if dm.hastanekeybilgisi_al('PACS_url3')<>'' then begin
url1:=dm.hastanekeybilgisi_al('PACS_url3');
if url1='' then raise exception.create ('PACS Server url si tanýmlý degil(PACS_url3).Lütfen BÝM ile görüþünüz.');
ris_id:=TbSonucIMAGENO.asstring;
if dm.hastanekeybilgisi_al('PACS_id_tipi')='dosya_no' then ris_id:=FloatToStr(Dm.TbPrtklDOSYA_NO.Value);
if dm.hastanekeybilgisi_al('PACS_id_tipi')='protokol_no' then ris_id:=FloatToStr(Dm.TbPrtklprotokol_NO.Value);
if dm.hastanekeybilgisi_al('PACS_id_tipi')='istek_no' then ris_id:=FloatToStr(QrTetkikISTEK_NO.Value);
if dm.hastanekeybilgisi_al('PACS_id_tipi')='id' then ris_id:=FloatToStr(QrTetkikID.Value);
if dm.hastanekeybilgisi_al('PACS_id_tipi')='rowid' then ris_id:=(QrTetkikROVID1.Value);

RzLauncher2.Parameters:=url1+' '+ris_id;
if DM.lisans_icerik_kontrol('C') or DM.lisans_icerik_kontrol('E') then
RzLauncher2.Launch;
end
else if dm.hastanekeybilgisi_al('PACS_url1') <>'' then
begin
url1:=dm.hastanekeybilgisi_al('PACS_url1');
if url1='' then raise exception.create ('PACS Server url si tanýmlý degil(PACS_url1).Lütfen BÝM ile görüþünüz.');
ris_id:=TbSonucIMAGENO.asstring;
if dm.hastanekeybilgisi_al('PACS_id_tipi')='dosya_no'     then ris_id:=FloatToStr(Dm.TbPrtklDOSYA_NO.Value);
if dm.hastanekeybilgisi_al('PACS_id_tipi')='protokol_no'  then ris_id:=FloatToStr(Dm.TbPrtklprotokol_NO.Value);
if dm.hastanekeybilgisi_al('PACS_id_tipi')='istek_no'     then ris_id:=FloatToStr(QrTetkikISTEK_NO.Value);
if dm.hastanekeybilgisi_al('PACS_id_tipi')='id'           then ris_id:=FloatToStr(QrTetkikID.Value);
if dm.hastanekeybilgisi_al('PACS_id_tipi')='rowid'       then ris_id:=QrIstekDRROWID1.Value;

RzLauncher1.Parameters:=url1+ris_id;
//http://192.168.1.231/ami/html/webviewer.html?view&wlname=&un=meddata&pw=Meddata-1234&ris_exam_id=
if DM.lisans_icerik_kontrol('C') or DM.lisans_icerik_kontrol('E') then
RzLauncher1.Launch;
end;

finally
end;

end;
    procedure TFrmIstek.RzLauncher3Error(Sender: TObject; ErrorCode: Cardinal);
begin

end;

//*//
end.

