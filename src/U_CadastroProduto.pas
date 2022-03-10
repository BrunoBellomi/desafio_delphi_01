unit U_CadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_CadastroProduto = class(TForm)
    pnl_Produto: TPanel;
    grd_Produto: TDBGrid;
    nav_Produto: TDBNavigator;
    QR_Produto: TFDQuery;
    DS_Produto: TDataSource;
    QR_ProdutoCODIGO: TIntegerField;
    QR_ProdutoDESCRICAO: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CadastroProduto: Tfrm_CadastroProduto;

implementation

{$R *.dfm}

uses U_Modulo, frm_Principal;

procedure Tfrm_CadastroProduto.FormCreate(Sender: TObject);
begin
  QR_Produto.Close;
  QR_Produto.Open;
end;

end.
