unit U_CadastroSilo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tfrm_CadastroSilo = class(TForm)
    pnl_Silo: TPanel;
    grd_Silo: TDBGrid;
    Nav_Silo: TDBNavigator;
    QR_Silo: TFDQuery;
    DS_Silo: TDataSource;
    QR_SiloCODIGO: TIntegerField;
    QR_SiloDESCRICAO: TStringField;
    QR_SiloQUANTIDADE: TIntegerField;
    QR_SiloCOD_TRADE: TIntegerField;
    QR_Trade: TFDQuery;
    QR_SiloDesc_Trade: TStringField;
    QR_TradeCODIGO: TIntegerField;
    QR_TradeNOME: TStringField;
    QR_TradeCNPJ: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CadastroSilo: Tfrm_CadastroSilo;

implementation

{$R *.dfm}

uses frm_Principal, U_Modulo;

procedure Tfrm_CadastroSilo.FormCreate(Sender: TObject);
begin
  QR_Silo.Close;
  QR_Silo.Open;

  QR_Trade.Close;
  QR_Trade.Open;
end;

end.
