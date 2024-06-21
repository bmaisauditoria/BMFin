program BMFin;

uses
  Forms,
  Windows,
  dmRelatorios in 'dmRelatorios.pas' {dmRelatorio: TDataModule},
  frmCheques in 'frmCheques.pas' {frmCheque},
  frmClassificaFins in 'frmClassificaFins.pas' {frmClassificaFin},
  frmClientes in 'frmClientes.pas' {frmCliente},
  frmPrevsPagRec in 'frmPrevsPagRec.pas' {frmPrevPagRec},
  frmPrincipal in 'frmPrincipal.pas' {frmMenu},
  frmProprietarias in 'frmProprietarias.pas' {frmProprietaria},
  frmReceber in 'frmReceber.pas' {frmRec},
  frmRelCheques in 'frmRelCheques.pas' {frmRelCheque},
  frmRepetirPrevs in 'frmRepetirPrevs.pas' {frmRepetirPrev},
  frmSenhas in 'frmSenhas.pas' {frmSenha},
  frmSenhasAltera in 'frmSenhasAltera.pas' {frmSenhaAltera},
  frmSobres in 'frmSobres.pas' {frmSobre},
  frmCadastrosF in 'frmCadastrosF.pas' {frmCadastroF},
  frmCadastros in 'frmCadastros.pas' {frmCadastro},
  frmRelListaCheques in 'frmRelListaCheques.pas' {frmRelListaCheque},
  frmRelLancamentos in 'frmRelLancamentos.pas' {frmRelLancamento},
  frmRelLancamentosPC in 'frmRelLancamentosPC.pas' {frmRelLancamentoPC},
  frmRelTributos in 'frmRelTributos.pas' {frmRelTributo},
  frmRelExtratos in 'frmRelExtratos.pas' {frmRelExtrato},
  frmRelPagtosGPS in 'frmRelPagtosGPS.pas' {frmRelPagtoGPS},
  frmRelNFs in 'frmRelNFs.pas' {frmRelNF},
  frmMovsBanco in 'frmMovsBanco.pas' {frmMovBanco},
  frmExtratosNC in 'frmExtratosNC.pas' {frmExtratoNC},
  frmReclassificacaos in 'frmReclassificacaos.pas' {frmReclassificacao},
  frmRelAutDebitos in 'frmRelAutDebitos.pas' {frmRelAutDebito},
  frmFluxos in 'frmFluxos.pas' {frmFluxo},
  frmRelLancamentosPCCli in 'frmRelLancamentosPCCli.pas' {frmRelLancamentoPCCli},
  frmRelLancamentosSocio in 'frmRelLancamentosSocio.pas' {frmRelLancamentoSocio},
  frmFechamentosA in 'frmFechamentosA.pas' {frmFechamentoA},
  frmRelFolhaTotaisCli in 'frmRelFolhaTotaisCli.pas' {frmRelFolhaTotalCli},
  relChequesFaltante in 'relChequesFaltante.pas' {relChequeFaltante},
  frmRelDups in 'frmRelDups.pas' {frmRelDup},
  frmRelFluxoCaixas in 'frmRelFluxoCaixas.pas' {frmRelFluxoCaixa},
  frmRelPFinanceira in 'frmRelPFinanceira.pas' {frmRePFinanceiro},
  frmRelChequesPre in 'frmRelChequesPre.pas' {frmRelChequePre},
  frmRelChequesNC in 'frmRelChequesNC.pas' {frmRelChequeNC},
  frmRelChequesNCP in 'frmRelChequesNCP.pas' {frmRelChequeNCP},
  frmProdutividades in 'frmProdutividades.pas' {frmProdutividade},
  frmPagtoCLT in 'frmPagtoCLT.pas' {frmPagtosCLT},
  frmPagtoCLTLans in 'frmPagtoCLTLans.pas' {frmPagtoCLTLan},
  frmGeraPagtos in 'frmGeraPagtos.pas' {frmGeraPagto},
  frmRelCLTs in 'frmRelCLTs.pas' {frmRelCLT},
  frmParams in 'frmParams.pas' {frmParam},
  frmSelCompetencias in 'frmSelCompetencias.pas' {frmSelCompetencia},
  frmLogs in 'frmLogs.pas' {frmLog},
  frmGrafPlanos in 'frmGrafPlanos.pas' {frmGrafPlano},
  frmProdsExclusao in 'frmProdsExclusao.pas' {frmProdExclusao},
  frmProdMovBancos in 'frmProdMovBancos.pas' {frmProdMovBanco},
  frmCLTs in 'frmCLTs.pas' {frmCLT},
  frmCadastrosCLT in 'frmCadastrosCLT.pas' {frmCadastroCLT},
  frmRelIndicadores in 'frmRelIndicadores.pas' {frmRelIndicador},
  frmRelFavorecios in 'frmRelFavorecios.pas' {frmRelFavorecido},
  frmRelFichaCadastros in 'frmRelFichaCadastros.pas' {frmRelFichaCadastro},
  frmRelFichaAtualizacao in 'frmRelFichaAtualizacao.pas' {frmRelFichaAtualiza},
  frmTransfere in 'frmTransfere.pas' {frmTransfer};

{$R *.res}

var
  Hwnd : THandle;
begin
//  Hwnd := FindWindow('TApplication', 'BBFinSQL');
  Hwnd := FindWindow(Nil, PChar('frmMenu'));
  if Hwnd = 0 then
  begin
      Application.Initialize;
      Application.CreateForm(TfrmMenu, frmMenu);
  Application.Run;
  end
  else
  begin
     Application.Terminate;
     Exit;
  end;

end.


