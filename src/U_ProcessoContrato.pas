unit U_ProcessoContrato;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons;

type
  Tfrm_ProcessoContrato = class(TForm)
    pnl_Contrato: TPanel;
    nav_Contrato: TDBNavigator;
    QR_Contrato: TFDQuery;
    DS_Contrato: TDataSource;
    pnl_Selecionar: TPanel;
    QR_ContratoCODIGO: TIntegerField;
    QR_ContratoDATA_CONTRATO: TDateField;
    QR_ContratoCOD_PRODUTOR: TIntegerField;
    QR_ContratoCOD_TRADE: TIntegerField;
    QR_ContratoCOD_PRODUTO: TIntegerField;
    QR_ContratoQUANTIDADE: TIntegerField;
    QR_Produtor: TFDQuery;
    QR_Trade: TFDQuery;
    QR_Produto: TFDQuery;
    DS_Produtor: TDataSource;
    DS_Trade: TDataSource;
    DS_Produto: TDataSource;
    QR_ProdutorCODIGO: TIntegerField;
    QR_ProdutorNOME: TStringField;
    QR_ProdutorCNPJ: TStringField;
    QR_TradeCODIGO: TIntegerField;
    QR_TradeNOME: TStringField;
    QR_TradeCNPJ: TStringField;
    QR_ProdutoCODIGO: TIntegerField;
    QR_ProdutoDESCRICAO: TStringField;
    grd_Contrato: TDBGrid;
    QR_ContratoDesc_Produtor: TStringField;
    QR_ContratoCNPJ_Produtor: TStringField;
    QR_ContratoDesc_Trade: TStringField;
    QR_ContratoCNPJ_Trade: TStringField;
    QR_ContratoDesc_Produto: TStringField;
    grb_Selecionar: TGroupBox;
    btn_Selecionar: TBitBtn;
    lbl_Produtor: TLabel;
    lbl_Trade: TLabel;
    lkb_Produtor: TDBLookupComboBox;
    lkb_Trade: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure QR_ContratoNewRecord(DataSet: TDataSet);
    procedure btn_SelecionarClick(Sender: TObject);
    procedure QR_ContratoAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ProcessoContrato: Tfrm_ProcessoContrato;

implementation

{$R *.dfm}

uses U_Modulo, frm_Principal;

procedure Tfrm_ProcessoContrato.btn_SelecionarClick(Sender: TObject);
begin
  QR_Contrato.Close;

  if lkb_Produtor.KeyValue <> null then
     QR_Contrato.ParamByName('COD_PRODUTOR').AsInteger := lkb_Produtor.KeyValue
  else
     QR_Contrato.ParamByName('COD_PRODUTOR').AsInteger := 0;

  if lkb_Trade.KeyValue <> null then
     QR_Contrato.ParamByName('COD_TRADE').AsInteger    := lkb_Trade.KeyValue
  else
     QR_Contrato.ParamByName('COD_TRADE').AsInteger    := 0;

  QR_Contrato.Open;

  QR_Produtor.Close;
  QR_Produtor.Open;

  QR_Trade.Close;
  QR_Trade.Open;

  QR_Produto.Close;
  QR_Produto.Open;
end;

procedure Tfrm_ProcessoContrato.FormCreate(Sender: TObject);
begin

  QR_Contrato.Close;

  if lkb_Produtor.KeyValue <> null then
     QR_Contrato.ParamByName('COD_PRODUTOR').AsInteger := lkb_Produtor.KeyValue
  else
     QR_Contrato.ParamByName('COD_PRODUTOR').AsInteger := 0;

  if lkb_Trade.KeyValue <> null then
     QR_Contrato.ParamByName('COD_TRADE').AsInteger    := lkb_Trade.KeyValue
  else
     QR_Contrato.ParamByName('COD_TRADE').AsInteger    := 0;

  QR_Contrato.Open;

  QR_Produtor.Close;
  QR_Produtor.Open;

  QR_Trade.Close;
  QR_Trade.Open;

  QR_Produto.Close;
  QR_Produto.Open;
end;

procedure Tfrm_ProcessoContrato.QR_ContratoAfterPost(DataSet: TDataSet);
begin
   QR_Contrato.Refresh;
end;

procedure Tfrm_ProcessoContrato.QR_ContratoNewRecord(DataSet: TDataSet);
begin
   QR_ContratoDATA_CONTRATO.AsDateTime := Date;
end;

end.
