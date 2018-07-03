unit Main.Model;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractTable, ZSqlUpdate;

type
  TmainModel = class(TDataModule)
    ZConnection: TZConnection;
    TableCliente: TZTable;
    TableProduto: TZTable;
    TableClienteid: TLargeintField;
    TableClientenome: TWideMemoField;
    TableClienteemail: TWideMemoField;
    TableClientetelefone: TWideMemoField;
    TableProdutoid: TLargeintField;
    TableProdutocodigo: TLargeintField;
    TableProdutonome: TWideMemoField;
    TableProdutovalor: TFloatField;
    ZUpdateSQLCliente: TZUpdateSQL;
    ZUpdateSQLProduto: TZUpdateSQL;
    procedure TableClientenomeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure TableClienteemailGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure TableClientetelefoneGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure DataModuleCreate(Sender: TObject);
    procedure TableProdutonomeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainModel: TmainModel;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TmainModel.DataModuleCreate(Sender: TObject);
begin
  //ZConnection.Database := ExtractFilePath(ParamStr(0))  +'\DataBase\db.sqlite';
end;

procedure TmainModel.TableClienteemailGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := TableClienteemail.AsString;
end;

procedure TmainModel.TableClientenomeGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := TableClientenome.AsString;
end;

procedure TmainModel.TableClientetelefoneGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := TableClientetelefone.AsString;
end;

procedure TmainModel.TableProdutonomeGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := TableProdutonome.AsString;
end;

end.
