unit Main.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask;

type
  TmainView = class(TForm)
    grp1: TGroupBox;
    pnl1: TPanel;
    btnConnect: TButton;
    grp2: TGroupBox;
    dbnvgr2: TDBNavigator;
    dbnvgr1: TDBNavigator;
    dsClientes: TDataSource;
    dsProdutos: TDataSource;
    lbl1: TLabel;
    dbedtid1: TDBEdit;
    lbl2: TLabel;
    dbmmonome1: TDBMemo;
    lbl3: TLabel;
    dbmmoemail: TDBMemo;
    lbl4: TLabel;
    dbmmotelefone: TDBMemo;
    lbl5: TLabel;
    dbedtid: TDBEdit;
    lbl6: TLabel;
    dbedtcodigo: TDBEdit;
    lbl7: TLabel;
    dbmmonome: TDBMemo;
    lbl8: TLabel;
    dbedtvalor: TDBEdit;
    dbgrd1: TDBGrid;
    dbgrd2: TDBGrid;
    procedure btnConnectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainView: TmainView;

implementation

uses
  Main.Model;

{$R *.dfm}

procedure TmainView.btnConnectClick(Sender: TObject);
begin
  mainModel.ZConnection.Connect;
  mainModel.TableCliente.Open;
  mainModel.TableProduto.Open;
end;

end.
