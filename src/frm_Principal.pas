unit frm_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.FMTBcd, Data.SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.IBBase, FireDAC.Comp.UI, Vcl.StdCtrls, Vcl.Menus;

type
  TF_Principal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Cadastro2: TMenuItem;
    rade1: TMenuItem;
    rade2: TMenuItem;
    Produto1: TMenuItem;
    Processo1: TMenuItem;
    Contrato1: TMenuItem;
    Relatrio1: TMenuItem;
    Contrato2: TMenuItem;
    procedure Cadastro2Click(Sender: TObject);
    procedure rade1Click(Sender: TObject);
    procedure rade2Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure Contrato1Click(Sender: TObject);
    procedure Contrato2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Principal: TF_Principal;

implementation

{$R *.dfm}

uses U_CadastroProdutor, U_Modulo, U_CadastroTrade, U_CadastroSilo,
  U_CadastroProduto, U_ProcessoContrato,
  U_RelatorioContrato;

procedure TF_Principal.Cadastro2Click(Sender: TObject);
begin
  Application.CreateForm(Tfrm_CadastroProdutor, frm_CadastroProdutor);
  frm_CadastroProdutor.ShowModal;
end;

procedure TF_Principal.Contrato1Click(Sender: TObject);
begin
  Application.CreateForm(Tfrm_ProcessoContrato, frm_ProcessoContrato);
  frm_ProcessoContrato.ShowModal;
end;

procedure TF_Principal.Contrato2Click(Sender: TObject);
begin
  Application.CreateForm(Tfrm_RelatorioContrato, frm_RelatorioContrato);
  frm_RelatorioContrato.ShowModal;
end;

procedure TF_Principal.Produto1Click(Sender: TObject);
begin
  Application.CreateForm(Tfrm_CadastroProduto, frm_CadastroProduto);
  frm_CadastroProduto.ShowModal;
end;

procedure TF_Principal.rade1Click(Sender: TObject);
begin
  Application.CreateForm(Tfrm_CadastroTrade, frm_CadastroTrade);
  frm_CadastroTrade.ShowModal;
end;

procedure TF_Principal.rade2Click(Sender: TObject);
begin
  Application.CreateForm(Tfrm_CadastroSilo, frm_CadastroSilo);
  frm_CadastroSilo.ShowModal;
end;

end.
