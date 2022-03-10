unit U_RelatorioContrato;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls;

type
  Tfrm_RelatorioContrato = class(TForm)
    grd_Contrato: TDBGrid;
    grb_Filtro: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btn_Selecionar: TBitBtn;
    QR_Relatorio: TFDQuery;
    DS_Relatorio: TDataSource;
    QR_RelatorioCODIGO: TIntegerField;
    QR_RelatorioDATA_CONTRATO: TDateField;
    QR_RelatorioCOD_PRODUTOR: TIntegerField;
    QR_RelatorioDESC_PRODUTOR: TStringField;
    QR_RelatorioCOD_TRADE: TIntegerField;
    QR_RelatorioDESC_TRADE: TStringField;
    QR_RelatorioCOD_PRODUTO: TIntegerField;
    QR_RelatorioDESC_PRODUTO: TStringField;
    QR_RelatorioQUANTIDADE: TIntegerField;
    edt_Contrato: TEdit;
    Label4: TLabel;
    Edt_DataInicio: TDateTimePicker;
    Edt_DataTermino: TDateTimePicker;
    procedure btn_SelecionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_RelatorioContrato: Tfrm_RelatorioContrato;

implementation

{$R *.dfm}

uses frm_Principal, U_Modulo;

procedure Tfrm_RelatorioContrato.btn_SelecionarClick(Sender: TObject);
begin
  QR_Relatorio.Close;
  QR_Relatorio.ParamByName('CODIGO').AsInteger    := StrToIntDef(edt_Contrato.Text,0);
  QR_Relatorio.ParamByName('DATAINI').AsDateTime  := Edt_DataInicio.DateTime;
  QR_Relatorio.ParamByName('DATAFIM').AsDateTime  := Edt_DataTermino.DateTime;
  QR_Relatorio.Open;
end;

end.
