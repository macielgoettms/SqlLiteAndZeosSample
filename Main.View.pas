unit Main.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxDropDownEdit, cxCalc, cxDBEdit,
  cxMemo, cxTextEdit, cxMaskEdit, cxSpinEdit;

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
    cxDBSpinEdit1: TcxDBSpinEdit;
    lbl2: TLabel;
    cxDBMemo1: TcxDBMemo;
    lbl3: TLabel;
    cxDBMemo2: TcxDBMemo;
    lbl4: TLabel;
    cxDBMemo3: TcxDBMemo;
    lbl5: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    lbl6: TLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    lbl7: TLabel;
    cxDBMemo4: TcxDBMemo;
    lbl8: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
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
