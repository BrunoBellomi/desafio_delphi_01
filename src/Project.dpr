program Project;

uses
  Vcl.Forms,
  frm_Principal in 'frm_Principal.pas' {F_Principal},
  U_Modulo in 'U_Modulo.pas' {DataModule1: TDataModule},
  U_CadastroProdutor in 'U_CadastroProdutor.pas' {frm_CadastroProdutor},
  U_CadastroTrade in 'U_CadastroTrade.pas' {frm_CadastroTrade},
  U_CadastroSilo in 'U_CadastroSilo.pas' {frm_CadastroSilo},
  U_CadastroProduto in 'U_CadastroProduto.pas' {frm_CadastroProduto},
  U_ProcessoContrato in 'U_ProcessoContrato.pas' {frm_ProcessoContrato},
  U_RelatorioContrato in 'U_RelatorioContrato.pas' {frm_RelatorioContrato};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_Principal, F_Principal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(Tfrm_CadastroProdutor, frm_CadastroProdutor);
  Application.CreateForm(Tfrm_CadastroTrade, frm_CadastroTrade);
  Application.CreateForm(Tfrm_CadastroSilo, frm_CadastroSilo);
  Application.CreateForm(Tfrm_CadastroProduto, frm_CadastroProduto);
  Application.CreateForm(Tfrm_ProcessoContrato, frm_ProcessoContrato);
  Application.CreateForm(Tfrm_RelatorioContrato, frm_RelatorioContrato);
  Application.Run;
end.
