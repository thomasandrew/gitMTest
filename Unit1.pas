unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Actions,
  FMX.ActnList, FMX.TabControl, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.Objects;

type
  TfrmPrincipal = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    ToolBar1: TToolBar;
    playBtn: TSpeedButton;
    pauseBtn: TSpeedButton;
    esqBtn: TSpeedButton;
    dirBtn: TSpeedButton;
    sairBtn: TSpeedButton;
    Timer1: TTimer;
    ActionList1: TActionList;
    ChangeTabAction1: TChangeTabAction;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  TabControl1.ActiveTab := TabItem1;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  TabControl1.Next();

  if TabControl1.ActiveTab = TabItem4 then
  begin
    Sleep(5000);
    TabControl1.ActiveTab := TabItem1;
    ChangeTabAction1.ExecuteTarget(self);
  end;

end;

end.
