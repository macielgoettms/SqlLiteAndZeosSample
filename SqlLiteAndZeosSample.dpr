program SqlLiteAndZeosSample;

uses
  Vcl.Forms,
  Main.View in 'Main.View.pas' {mainView},
  Main.Model in 'Main.Model.pas' {mainModel: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TmainView, mainView);
  Application.CreateForm(TmainModel, mainModel);
  Application.Run;
end.
