unit UFrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Effects, FMX.TabControl, FMX.Layouts,
  System.Actions, FMX.ActnList, FMX.ListView.Types, FMX.ListView.Appearances, StrUtils,
  FMX.ListView.Adapters.Base, FMX.ListView, FMX.ListBox, FMX.Objects, FMX.Edit, FMX.EditBox, FMX.SpinBox, Math;

type
  THabilidade = (hAlarme,hAuraDeProtecao,hAuraDeCombate,hAuraDeVelocidade,hExplodir,hFurtividade,hImortal,hIniciatia,hLadino,hParalisar,
                 hProtecao,hPossessao,hRecompensa,hRegenerar,hToqueDeMedo,hTravessia,hTrespassar,hVeneno,hVoar);

type
  TFrmPrincipal = class(TForm)
    ToolBar1: TToolBar;
    Label1: TLabel;
    btnMenu: TSpeedButton;
    ShadowEffect1: TShadowEffect;
    btnVoltar: TSpeedButton;
    ActionList1: TActionList;
    actHabilidades: TAction;
    actVoltar: TAction;
    tbcHabilidades: TTabControl;
    tabListaHabilidades: TTabItem;
    tabDescricaoHabilidade: TTabItem;
    lsbHabilidades: TListBox;
    lbiAlarme: TListBoxItem;
    lbiAuraDeProtecao: TListBoxItem;
    lbiAuraDeCombate: TListBoxItem;
    lbiAuraDeVelocidade: TListBoxItem;
    lbiExplodir: TListBoxItem;
    lbiFurtividade: TListBoxItem;
    lbiImortal: TListBoxItem;
    lbiIniciativa: TListBoxItem;
    lbiLadino: TListBoxItem;
    lbiParalisar: TListBoxItem;
    lbiProtecao: TListBoxItem;
    lbiPossessao: TListBoxItem;
    lbiRecompensa: TListBoxItem;
    lbiRegenerar: TListBoxItem;
    lbiToqueDeMedo: TListBoxItem;
    lbiTravessia: TListBoxItem;
    lbiTrespassar: TListBoxItem;
    lbiVeneno: TListBoxItem;
    lbiVoar: TListBoxItem;
    lblNomeHabilidade: TLabel;
    lblDescricaoHabilidade: TLabel;
    tbcPrincipal: TTabControl;
    tabInicial: TTabItem;
    tabHabilidades: TTabItem;
    GridPanelLayout1: TGridPanelLayout;
    imgHabilidades: TImage;
    Label2: TLabel;
    ShadowEffect_Habilidades: TShadowEffect;
    VertScrollBoxHabilidades: TVertScrollBox;
    imgFortaleza: TImage;
    Label3: TLabel;
    ShadowEffect_Fortaleza: TShadowEffect;
    tabFortaleza: TTabItem;
    actFortaleza: TAction;
    lytGerarDanoEDefesa: TLayout;
    lytDanoGerado: TLayout;
    lytFortaleza4: TLayout;
    rec25: TRectangle;
    Image3: TImage;
    rec26: TRectangle;
    Image4: TImage;
    rec27: TRectangle;
    Image5: TImage;
    rec29: TRectangle;
    Image6: TImage;
    rec30: TRectangle;
    Image7: TImage;
    spbGerarDano: TSpinBox;
    Button1: TButton;
    recGerarDano: TRectangle;
    lblDanoGerado: TLabel;
    rec28: TRectangle;
    Image29: TImage;
    lytFortaleza3: TLayout;
    rec19: TRectangle;
    Image10: TImage;
    rec20: TRectangle;
    Image11: TImage;
    rec21: TRectangle;
    Image12: TImage;
    rec23: TRectangle;
    Image13: TImage;
    rec24: TRectangle;
    Image14: TImage;
    rec22: TRectangle;
    Image15: TImage;
    rec17: TRectangle;
    Image8: TImage;
    rec18: TRectangle;
    Image9: TImage;
    lytFortaleza2: TLayout;
    rec11: TRectangle;
    Image1: TImage;
    rec12: TRectangle;
    Image2: TImage;
    rec13: TRectangle;
    Image16: TImage;
    rec15: TRectangle;
    Image17: TImage;
    rec16: TRectangle;
    Image18: TImage;
    rec14: TRectangle;
    Image19: TImage;
    rec9: TRectangle;
    Image20: TImage;
    rec10: TRectangle;
    Image21: TImage;
    lytFortaleza1: TLayout;
    rec3: TRectangle;
    Image22: TImage;
    rec4: TRectangle;
    Image23: TImage;
    rec5: TRectangle;
    Image24: TImage;
    rec7: TRectangle;
    Image25: TImage;
    rec8: TRectangle;
    Image26: TImage;
    rec6: TRectangle;
    Image27: TImage;
    rec1: TRectangle;
    Image28: TImage;
    rec2: TRectangle;
    Image30: TImage;
    lytFortaleza_BordaEsquerda: TLayout;
    lytFortaleza_BordaDIreita: TLayout;
    ScaledLayoutFortaleza: TScaledLayout;
    recFundoGerandoDano: TRectangle;
    recFundoGerarDano: TRectangle;
    ShadowEffect2: TShadowEffect;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Image31: TImage;
    ShadowEffect3: TShadowEffect;
    lytBotaoGerarDano: TLayout;
    recTituloDefesas: TRectangle;
    Label34: TLabel;
    lytDefesa2: TLayout;
    lytDefesa1: TLayout;
    btnReconstruir: TButton;
    lytAdcDefesa: TLayout;
    btnAdcDefesa: TButton;
    spbAdcDefesa: TSpinBox;
    recFundoBotaoGerarDano: TRectangle;
    ShadowEffect4: TShadowEffect;
    recFundoFortaleza: TRectangle;
    procedure actVoltarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure lbiHabilidadeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actHabilidadesExecute(Sender: TObject);
    procedure imgHabilidadesClick(Sender: TObject);
    procedure actFortalezaExecute(Sender: TObject);
    procedure imgFortalezaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnReconstruirClick(Sender: TObject);
    procedure recGerarDanoClick(Sender: TObject);
    procedure btnAdcDefesaClick(Sender: TObject);
    procedure ImageFortalezaClick(Sender: TObject);
  private
    ListaFortaleza: TListBox;
    Habilidade: THabilidade;
    QuantidadeDano: Integer;
    procedure AtualizaAreasDestruidas;
    procedure ConstruirFortaleza;
    procedure GeraMaisUmDano;
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.fmx}

procedure TFrmPrincipal.actFortalezaExecute(Sender: TObject);
begin
  tbcPrincipal.ActiveTab := tabFortaleza;
end;

procedure TFrmPrincipal.actHabilidadesExecute(Sender: TObject);
begin
  tbcPrincipal.ActiveTab := tabHabilidades;
end;

procedure TFrmPrincipal.actVoltarExecute(Sender: TObject);
begin
  if (tbcPrincipal.ActiveTab = tabHabilidades) and (tbcHabilidades.ActiveTab = tabDescricaoHabilidade) then
  begin
    tbcHabilidades.ActiveTab := tabListaHabilidades;
    Exit;
  end
  else if tbcPrincipal.ActiveTab <> tabInicial then
  begin
    tbcPrincipal.ActiveTab := tabInicial;
  end
  else
  begin
    Close;
  end;
end;

procedure TFrmPrincipal.Button1Click(Sender: TObject);
begin
  if ListaFortaleza.Count = 0 then
    Exit;

  QuantidadeDano := Trunc(spbGerarDano.Value);
  spbGerarDano.Value := 0;

  if QuantidadeDano <= 0 then
    Exit;

  lblDanoGerado.Text := '';
  recFundoGerandoDano.Visible := True;
  lytDanoGerado.Visible := True;
  lytDanoGerado.BringToFront;

  Application.ProcessMessages;
  GeraMaisUmDano;
  //TimerGerarDano.Enabled := True;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  ListaFortaleza := TListBox.Create(Self);
  ConstruirFortaleza;
end;

procedure TFrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if key = vkHardwareBack then
  begin
    Key := 0;
    actVoltar.Execute;
  end;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  tbcPrincipal.ActiveTab      := tabInicial;
  tbcHabilidades.ActiveTab    := tabListaHabilidades;

  tbcPrincipal.TabPosition    := TTabPosition.None;
  tbcHabilidades.TabPosition  := TTabPosition.None;
end;

procedure TFrmPrincipal.imgFortalezaClick(Sender: TObject);
begin
  ShadowEffect_Fortaleza.Enabled := True;
  Application.ProcessMessages;
  Sleep(100);
  actFortaleza.Execute;
  ShadowEffect_Fortaleza.Enabled := False;
end;

procedure TFrmPrincipal.imgHabilidadesClick(Sender: TObject);
begin
  ShadowEffect_Habilidades.Enabled := True;
  Application.ProcessMessages;
  Sleep(100);
  actHabilidades.Execute;
  ShadowEffect_Habilidades.Enabled := False;
end;

procedure TFrmPrincipal.lbiHabilidadeClick(Sender: TObject);
begin
  Habilidade := THabilidade(TListBoxItem(Sender).Index);

  lblNomeHabilidade.Text        := '';
  lblDescricaoHabilidade.Text   := '';

  if Habilidade = hAlarme then
  begin
    lblNomeHabilidade.Text      := 'ALARME';
    lblDescricaoHabilidade.Text := 'Quando esta unidade é atacada, unidades aliadas a até 1 quadrado de distância podem se mover 1 quadrado.' +
                                   'Na invasão, as unidades aliadas ignoram os inimigos e avançam 1 quadrado em direção a Fortaleza.';
  end;
  if Habilidade = hAuraDeProtecao then
  begin
    lblNomeHabilidade.Text      := 'AURA DE PROTEÇÃO';
    lblDescricaoHabilidade.Text := 'Outras unidades aliadas, a até 1 quadrado de distância desta unidade, ganham a habilidade "Proteção".';
  end;
  if Habilidade = hAuraDeCombate then
  begin
    lblNomeHabilidade.Text      := 'AURA DE COMBATE';
    lblDescricaoHabilidade.Text := 'Outras unidades aliadas, a até 1 quadrado de distância desta unidade, ganham bônus de +X(Dano).';
  end;
  if Habilidade = hAuraDeVelocidade then
  begin
    lblNomeHabilidade.Text      := 'AURA DE VELOCIDADE';
    lblDescricaoHabilidade.Text := 'Outras unidades aliadas, que começarem o turno a até 1 quadrado de distância desta unidade, gaham bônus '+
                                   'de +X em seu deslocamento.';
  end;
  if Habilidade = hExplodir then
  begin
    lblNomeHabilidade.Text      := 'EXPLODIR';
    lblDescricaoHabilidade.Text := 'Quando esta unidade é destruida, ela causa seu valor de combate contra todas as unidades inimigas que ' +
                                   'estejam em seu quadrado (Rajada) ou em um outro quadrado que esteja até x(Rajada) de distância. Unidades ' +
                                   'vencidas desta forma não dão recursos ao vencedor.';
  end;
  if Habilidade = hFurtividade then
  begin
    lblNomeHabilidade.Text      := 'FURTIVIDADE';
    lblDescricaoHabilidade.Text := 'Unidades com Furtividade só podem ser atacadas por unidades que tenham ALARME ou INICIATIVA. Porém, se ' +
                                   'uma unidade com Furtividade atacar um inimigo, o combate é resolvido normalmente.';
  end;
  if Habilidade = hImortal then
  begin
    lblNomeHabilidade.Text      := 'IMORTAL';
    lblDescricaoHabilidade.Text := 'Unidades com esta habilidade quando derrotadas não dão recursos para o vencedor; estes recursos ' +
                                   'voltam para o dono dela.';
  end;
  if Habilidade = hIniciatia then
  begin
    lblNomeHabilidade.Text      := 'INICIATIVA';
    lblDescricaoHabilidade.Text := 'Após o uso de cartas de Tática, Eventos de Combate e ativação de cartas de Evolução, em caso de empate ' +
                                   'no combate, esta unidade ataca primeiro e não recebe dano. Caso as duas unidades tenham iniciativa, ' +
                                   'elas se cancelam.';
  end;
  if Habilidade = hLadino then
  begin
    lblNomeHabilidade.Text      := 'LADINO: X[Carcaça, Mana e/ou Material]';
    lblDescricaoHabilidade.Text := 'Esta unidade, quando sobrevive a um combate, rouba X[Carcaça, Mana e/ou Material] retirado diretamente ' +
                                   'do oponente. Se a unidade atacada for controlada pela tabuleiro pegue X[Carcaça, Mana e /ou Material] ' +
                                   'diretamente da caixa.';
  end;
  if Habilidade = hParalisar then
  begin
    lblNomeHabilidade.Text      := 'PARALISAR';
    lblDescricaoHabilidade.Text := 'Ao término do combate, unidades que atacaram ou foram atacadas por uma unidade com esta habilidade '+
                                   'ficam paralisadas até o fim da rodada, ou até serem ativadas.' + #13 + #13 +
                                   'Unidades Paralisadas: Quando uma unidade é paralisada. Esta unidade perde um em ataque e não pode se mover ' +
                                   'usar cartas de Evento de Combate, cartas de Tática ou bônus de cartas de Evolução.';
  end;
  if Habilidade = hProtecao then
  begin
    lblNomeHabilidade.Text      := 'PROTEÇÃO';
    lblDescricaoHabilidade.Text := 'Em caso de empate no combate, esta unidade, em vez de ser destruída, fica paralisada. Caso as duas unidades ' +
                                   'envolvidas no combate tenham Proteção, as duas ficam paralisadas. Se uma das unidades tiver, além de proteção ' +
                                   'iniciativa, ela não fica paralisada.';
  end;
  if Habilidade = hPossessao then
  begin
    lblNomeHabilidade.Text      := 'POSSESSÃO';
    lblDescricaoHabilidade.Text := 'Quando esta unidade for derrotada em combate você pode ativar imediatamente a unidade inimiga que a derrotou ' +
                                   'como se fosse uma de suas unidades. Se a unidade com Possessão for controlada pelo tabuleiro use-a para ' +
                                   'atacar a Fortaleza inimiga. Se não for possível use-a para atacar a unidade inimiga mais próxima. ' +
                                   'Se não for possível atacar um inimigo ou uma fortaleza inimiga paralise esta unidade.';
  end;
  if Habilidade = hRecompensa then
  begin
    lblNomeHabilidade.Text      := 'RECOMPENSA';
    lblDescricaoHabilidade.Text := 'Quando esta unidade é derrotada, quem a derrotou ganha X pontos de Influência.';
  end;
  if Habilidade = hRegenerar then
  begin
    lblNomeHabilidade.Text      := 'REGENERAR: X[Carcaça, Mana e /ou Material]';
    lblDescricaoHabilidade.Text := 'Quando uma unidade com regenerar é destruída em combate, você pode pagar X[Carcaça, Mana e/ou Material] ' +
                                   'para que a unidade não seja destruída e retorne para a sua reserva.';
  end;
  if Habilidade = hToqueDeMedo then
  begin
    lblNomeHabilidade.Text      := 'TOQUE DE MEDO: X';
    lblDescricaoHabilidade.Text := 'Unidades inimigas que entrarem em combate com esta unidade são movidas X quadrados, na direção ' +
                                   'escolhida pelo jogador que controla a unidade com Toque de Medo, no final do combate. Unidades controladas ' +
                                   'pelo tabuleiro se movem em direção contrária a Fortaleza, pelo caminho que vieram.';
  end;
  if Habilidade = hTravessia then
  begin
    lblNomeHabilidade.Text      := 'TRAVESSIA';
    lblDescricaoHabilidade.Text := 'Esta habilidade de movimento dá à unidade a capacidade de ignorar terrenos perigosos, barreiras ' +
                                   'terrenos intransponíveis e fossos';
  end;
  if Habilidade = hTrespassar then
  begin
    lblNomeHabilidade.Text      := 'TRESPASSAR';
    lblDescricaoHabilidade.Text := 'Esta unidade pode atacar todos os inimigos a seu alcance enquanto percorre seu deslocamento. ' +
                                   'Se esta unidade for vencida, paralisada ou não puder mais se deslocar, ela não continua atacando.';
  end;
  if Habilidade = hVeneno then
  begin
    lblNomeHabilidade.Text      := 'VENENO: -X(Dano)';
    lblDescricaoHabilidade.Text := 'Inimigos atacados por esta unidade tem -X(Dano) de combate até o final do turno';
  end;
  if Habilidade = hVoar then
  begin
    lblNomeHabilidade.Text      := 'VOAR';
    lblDescricaoHabilidade.Text := 'Unidades com a habilidades voar podem ocupar espaços dentro de quadrados marcados com (Voar) e não sofrem ' +
                                   'efeitos de fossos. Unidades com a habilidade voar só recebem dano em combate de outras unidades com a ' +
                                   'habilidade voar, unidades com ataques à distância e unidades em Torres. Porém, se esta unidade ' +
                                   'atacar um inimigo, o combate é resolvido normalmente.';
  end;
  tbcHabilidades.ActiveTab := tabDescricaoHabilidade;
  VertScrollBoxHabilidades.RealignContent;
end;

procedure TFrmPrincipal.recGerarDanoClick(Sender: TObject);
begin
  GeraMaisUmDano;
end;

procedure TfrmPrincipal.GeraMaisUmDano;
var
  IndexAreaAtingida: Integer;
  AreaAtingida: String;
  RecAtingido: TRectangle;
begin
  if (QuantidadeDano = 0) or (ListaFortaleza.Count = 0) then
  begin
    recFundoGerandoDano.Visible := False;
    lytDanoGerado.Visible := False;
    Exit;
  end;
  IndexAreaAtingida := Random(ListaFortaleza.Count-1);

  RecAtingido := TRectangle(ListaFortaleza.ItemByIndex(IndexAreaAtingida).Data);

  if (RecAtingido.Parent = lytDefesa2) or (RecAtingido.Parent = lytDefesa1) then
    AreaAtingida := '0'
  else
    AreaAtingida := ReplaceStr(RecAtingido.Name,'rec','');

  ListaFortaleza.Items.Delete(IndexAreaAtingida);

  lblDanoGerado.Text := AreaAtingida;
  Application.ProcessMessages;

  AtualizaAreasDestruidas;

  QuantidadeDano := QuantidadeDano - 1;
end;

procedure TFrmPrincipal.ImageFortalezaClick(Sender: TObject);
begin
  if ListaFortaleza.Items.IndexOfObject(Timage(Sender).Parent) = -1 then
    ListaFortaleza.Items.AddObject('',Timage(Sender).Parent)
  else
    ListaFortaleza.Items.Delete(ListaFortaleza.Items.IndexOfObject(Timage(Sender).Parent));

  AtualizaAreasDestruidas;
end;

procedure TFrmPrincipal.AtualizaAreasDestruidas;
var
  I: Integer;
  def1, def2: Integer;
  RecAreaAtingida: TRectangle;
begin
  spbGerarDano.Value := 0;
  spbAdcDefesa.Value := 0;

  for I := 0 to Self.ComponentCount -1 do
  begin
    if (Self.Components[i] is TRectangle) then
    begin
      RecAreaAtingida := TRectangle(Self.Components[i]);
      if RecAreaAtingida.Parent.Parent = ScaledLayoutFortaleza then
      begin
        if ListaFortaleza.Items.IndexOfObject( RecAreaAtingida ) = -1 then
          RecAreaAtingida.Fill.Color := TAlphaColors.Red
        else
          RecAreaAtingida.Fill.Color := TAlphaColors.Darkgray;
      end;
    end;
  end;

  for def1 := 0 to lytDefesa1.ComponentCount -1 do
  begin
    if (lytDefesa1.Components[def1] is TRectangle) then
    begin
      RecAreaAtingida := TRectangle(lytDefesa1.Components[def1]);
      if RecAreaAtingida.Parent.Parent = ScaledLayoutFortaleza then
      begin
        if ListaFortaleza.Items.IndexOfObject( RecAreaAtingida ) = -1 then
          RecAreaAtingida.Fill.Color := TAlphaColors.Red
        else
          RecAreaAtingida.Fill.Color := TAlphaColors.Darkgray;
      end;
    end;
  end;

  for def2 := 0 to lytDefesa2.ComponentCount -1 do
  begin
    if (lytDefesa2.Components[def2] is TRectangle) then
    begin
      RecAreaAtingida := TRectangle(lytDefesa2.Components[def2]);
      if RecAreaAtingida.Parent.Parent = ScaledLayoutFortaleza then
      begin
        if ListaFortaleza.Items.IndexOfObject( RecAreaAtingida ) = -1 then
          RecAreaAtingida.Fill.Color := TAlphaColors.Red
        else
          RecAreaAtingida.Fill.Color := TAlphaColors.Darkgray;
      end;
    end;
  end;

end;

procedure TFrmPrincipal.btnAdcDefesaClick(Sender: TObject);
var
  Rec: TRectangle;
  Lbl: TLabel;
  Image: TImage;
  I: Integer;
  LayoutDestino: TLayout;
begin
  if spbAdcDefesa.Value > 0 then
  begin
    for I := 1 to Trunc(spbAdcDefesa.Value) do
    begin
      if      lytDefesa2.ComponentCount < 8 then
        LayoutDestino := lytDefesa2
      else if lytDefesa1.ComponentCount < 8 then
        LayoutDestino := lytDefesa1
      else
        Continue;

      Rec := TRectangle.Create(LayoutDestino);
      Rec.Parent          := LayoutDestino;
      rec.Align           := TAlignLayout.Left;
      Rec.Width           := 40;
      Rec.Margins.Left    := 2;
      rec.Margins.Right   := 2;
      rec.Margins.Bottom  := 2;
      rec.Margins.Top     := 2;

      Image := TImage.Create(Rec);
      Image.Parent := Rec;
      Image.Align := TAlignLayout.Contents;
      Image.MultiResBitmap.Add.Bitmap := Image3.MultiResBitmap[0].Bitmap;
      Image.Opacity := 0.4;
      image.OnClick := ImageFortalezaClick;

      Lbl := TLabel.Create(Rec);
      Lbl.Parent                  := Rec;
      lbl.Align                   := TAlignLayout.Client;
      Lbl.Text                    := '00';
      Lbl.StyledSettings          := [];
      lbl.TextSettings.Font.Size  := 22;
      Lbl.TextSettings.Font.Style := [TFontStyle.fsbold];
      lbl.TextSettings.HorzAlign  := TTextAlign.Center;


      ListaFortaleza.Items.AddObject('',Rec);
    end;
    spbAdcDefesa.Value := 0;
    AtualizaAreasDestruidas;
  end;
end;

procedure TFrmPrincipal.btnReconstruirClick(Sender: TObject);
begin
  ConstruirFortaleza;
  AtualizaAreasDestruidas;
end;

procedure TFrmPrincipal.ConstruirFortaleza;
var
  i,j: Integer;
begin
  //destruir retangulos de defesa
  for j := lytDefesa2.ComponentCount -1 downto 0 do
    lytDefesa2.Components[j].DisposeOf;

  for j := lytDefesa1.ComponentCount -1 downto 0 do
    lytDefesa1.Components[j].DisposeOf;

  ListaFortaleza.Items.Clear;
  for i := 1 to 30 do
  begin
    ListaFortaleza.Items.AddObject('rec'+i.ToString, (TFmxObject(FindComponent('rec'+i.ToString))));
  end;
end;

end.
