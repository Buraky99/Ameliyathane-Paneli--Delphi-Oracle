program AmeliyathanePanel;

uses
  Vcl.Forms,
  AmlPanel in 'AmlPanel.pas' {PanelAml};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPanelAml, PanelAml);
  Application.CreateForm(TFrmIstek, FrmIstek);
  Application.Run;
end.
