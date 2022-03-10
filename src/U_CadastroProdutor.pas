unit U_CadastroProdutor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.DBCtrls, Vcl.ExtCtrls;

type
  Tfrm_CadastroProdutor = class(TForm)
    grd_Produtor: TDBGrid;
    QR_Produtor: TFDQuery;
    DS_Produtor: TDataSource;
    QR_ProdutorCODIGO: TIntegerField;
    QR_ProdutorNOME: TStringField;
    pnl_Produtor: TPanel;
    nav_Produtor: TDBNavigator;
    QR_ProdutorCNPJ: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CadastroProdutor: Tfrm_CadastroProdutor;

implementation

{$R *.dfm}

uses U_Modulo, frm_Principal;

procedure Tfrm_CadastroProdutor.FormCreate(Sender: TObject);
begin
  QR_Produtor.Close;
  QR_Produtor.Open;
end;

end.
