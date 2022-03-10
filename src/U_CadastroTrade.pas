unit U_CadastroTrade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tfrm_CadastroTrade = class(TForm)
    pnl_Trade: TPanel;
    grd_Trade: TDBGrid;
    nav_Trade: TDBNavigator;
    QR_Trade: TFDQuery;
    DS_Trade: TDataSource;
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
  frm_CadastroTrade: Tfrm_CadastroTrade;

implementation

{$R *.dfm}

uses U_Modulo, frm_Principal;

procedure Tfrm_CadastroTrade.FormCreate(Sender: TObject);
begin
  QR_Trade.Close;
  QR_Trade.Open;
end;

end.
