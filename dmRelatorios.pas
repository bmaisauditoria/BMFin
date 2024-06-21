unit dmRelatorios;

interface

uses
  SysUtils, Variants, Classes, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess,
  MemDS, RpDefine, RpCon, RpConDS,  Extenso, RpConBDE;

type
  TdmRelatorio = class(TDataModule)
    dbBanco: TMSTable;
    dbBancoBancoID: TAutoIncField;
    dbBancoBanco: TSmallintField;
    dbBancoConta: TStringField;
    dbBancoNome: TStringField;
    dbBancoSigla: TStringField;
    dbBancoEndereco: TMemoField;
    dbBancoGerente: TStringField;
    dbBancoFone: TStringField;
    dbBancoFax: TStringField;
    dbBancoSite: TStringField;
    dbBancoFilial: TSmallintField;
    dbBancoUltimoCheque: TIntegerField;
    dbBancoSaldoFechamento: TCurrencyField;
    dbBancoUsuarioFechamento: TStringField;
    dbBancoSaldoAtual: TCurrencyField;
    dbBancoUsuario: TStringField;
    relCheque: TMSQuery;
    relChequeValorExtenso: TStringField;
    dbFilial: TMSTable;
    dbFilialFilial: TIntegerField;
    dbFilialNome: TStringField;
    dbCliente: TMSTable;
    dbClienteCliFor: TAutoIncField;
    dbClienteNome: TStringField;
    dbClienteStatusPre: TBooleanField;
    dbFuncionario: TMSTable;
    dbFuncionarioFuncionario: TIntegerField;
    dbFuncionarioNome: TStringField;
    dbFuncionarioBanco: TSmallintField;
    dbFuncionarioAgencia: TStringField;
    dbFuncionarioConta: TStringField;
    dbFuncionarioCPF: TStringField;
    dbFuncionarioSalarioBruto: TCurrencyField;
    dbPlanoC: TMSTable;
    dbPlanoCCod1: TSmallintField;
    dbPlanoCCod2: TSmallintField;
    dbPlanoCCod3: TSmallintField;
    dbPlanoCDescricao: TStringField;
    dbBancoLimiteCredito: TCurrencyField;
    dbBancoStatus: TStringField;
    dbFilialEndereco: TStringField;
    dbFilialCidade: TStringField;
    dbFilialUF: TStringField;
    dbFilialCep: TStringField;
    dbFilialFone: TStringField;
    dbFilialCGC: TStringField;
    dbFilialIE: TStringField;
    dbFilialUltimaNF: TIntegerField;
    dbFilialCod1: TSmallintField;
    dbFilialCod2: TSmallintField;
    dbFilialCod3: TSmallintField;
    dbFilialUsuario: TStringField;
    dbClienteCGC: TStringField;
    dbClienteIE: TStringField;
    dbClienteEmail: TStringField;
    dbClienteHomePage: TStringField;
    dbClienteStatusCli: TBooleanField;
    dbClienteStatusFor: TBooleanField;
    dbClienteObservacao: TMemoField;
    dbClienteLogotipo: TGraphicField;
    dbClienteJuridica: TBooleanField;
    dbClienteUsuario: TStringField;
    dbFuncionarioEndereco: TStringField;
    dbFuncionarioBairro: TStringField;
    dbFuncionarioCidade: TStringField;
    dbFuncionarioUF: TStringField;
    dbFuncionarioCep: TStringField;
    dbFuncionarioFone: TStringField;
    dbFuncionarioRG: TStringField;
    dbFuncionarioEmail: TStringField;
    dbFuncionarioFilial: TIntegerField;
    dbFuncionarioObservacao: TMemoField;
    dbFuncionarioUsuario: TStringField;
    dbMovBanco: TMSTable;
    dbMovBancoMovBanco: TAutoIncField;
    dbMovBancoDataEntrada: TDateField;
    dbMovBancoBancoID: TIntegerField;
    dbMovBancoTipo: TStringField;
    dbMovBancoDoc: TStringField;
    dbMovBancoValor: TCurrencyField;
    dbMovBancoFavorecido: TStringField;
    dbMovBancoHistorico: TMemoField;
    dbMovBancoStatus: TStringField;
    dbMovBancoFilial: TIntegerField;
    dbMovBancoDataMovimento: TDateField;
    dbMovBancoDataInclusao: TDateField;
    dbMovBancoUsuario: TStringField;
    dbBco: TMSTable;
    dbBcoBanco: TSmallintField;
    dbBcoNome: TStringField;
    dbBancoNomeBanco: TStringField;
    qryTotBanco: TMSQuery;
    qryTotBancoBancoID: TIntegerField;
    qryTotBancoSalarioLiquido: TCurrencyField;
    dbBancoNomeFilial: TStringField;
    dbClienteBanco: TSmallintField;
    dbClienteAgencia: TStringField;
    dbClienteConta: TStringField;
    dbProprietario: TMSTable;
    dbProprietarioEndereco: TStringField;
    dbProprietarioCidade: TStringField;
    dbProprietarioUF: TStringField;
    dbProprietarioCep: TStringField;
    dbProprietarioCGC: TStringField;
    dbProprietarioIE: TStringField;
    dbProprietarioTelefone: TStringField;
    dbProprietarioFax: TStringField;
    relChequeMovBanco: TIntegerField;
    relChequeBancoID: TIntegerField;
    relChequeTipo: TStringField;
    relChequeDoc: TStringField;
    relChequeValor: TCurrencyField;
    relChequeFavorecido: TStringField;
    relChequeHistorico: TMemoField;
    relChequeStatus: TStringField;
    relChequeFilial: TIntegerField;
    relChequeUsuario: TStringField;
    relChequeBanco: TSmallintField;
    relChequeConta: TStringField;
    relChequeNome: TStringField;
    relChequeSigla: TStringField;
    relPrevisao: TMSQuery;
    relPrevisaoFilial: TIntegerField;
    relPrevisaoPrevisao: TIntegerField;
    relPrevisaoCliente: TIntegerField;
    relPrevisaoClienteDeb: TIntegerField;
    relPrevisaoHistorico: TStringField;
    relPrevisaoValor: TCurrencyField;
    relPrevisaoCod1: TSmallintField;
    relPrevisaoCod2: TSmallintField;
    relPrevisaoCod3: TSmallintField;
    relPrevisaoDia: TSmallintField;
    relPrevisaoTipo: TStringField;
    relPrevisaoRepetir: TIntegerField;
    relPrevisaoAtivo: TBooleanField;
    relPrevisaoUsuario: TStringField;
    relPrevisaoNome: TStringField;
    relPrevisaoTipoTexto: TStringField;
    relPrevisaoCodTexto: TStringField;
    relPrevisaoPlanoTexto: TStringField;
    relLancamento: TMSQuery;
    relLancamentoFilial: TIntegerField;
    relLancamentoLancamento: TIntegerField;
    relLancamentoCliente: TIntegerField;
    relLancamentoClienteDeb: TIntegerField;
    relLancamentoPrazo: TIntegerField;
    relLancamentoCod1: TSmallintField;
    relLancamentoCod2: TSmallintField;
    relLancamentoCod3: TSmallintField;
    relLancamentoHistorico: TStringField;
    relLancamentoDoc: TStringField;
    relLancamentoValor: TCurrencyField;
    relLancamentoBancoID: TIntegerField;
    relLancamentoCheque: TStringField;
    relLancamentoValorPago: TCurrencyField;
    relLancamentoPago: TBooleanField;
    relLancamentoSelecionado: TBooleanField;
    relLancamentoStatus: TStringField;
    relLancamentoPrevisao: TIntegerField;
    relLancamentoMovBanco: TIntegerField;
    relLancamentoNF: TIntegerField;
    relLancamentoPorcentagem: TFloatField;
    relLancamentoUsuario: TStringField;
    relChequeCruzado: TBooleanField;
    relChequeFilialNome: TStringField;
    relChequeValorcheque: TCurrencyField;
    dbLancamento: TMSTable;
    dbLancamentoFilial: TIntegerField;
    dbLancamentoLancamento: TAutoIncField;
    dbLancamentoCliente: TIntegerField;
    dbLancamentoClienteDeb: TIntegerField;
    dbLancamentoDataEmissao: TDateField;
    dbLancamentoDataVencto: TDateField;
    dbLancamentoPrazo: TIntegerField;
    dbLancamentoCod1: TSmallintField;
    dbLancamentoCod2: TSmallintField;
    dbLancamentoCod3: TSmallintField;
    dbLancamentoHistorico: TStringField;
    dbLancamentoDoc: TStringField;
    dbLancamentoValor: TCurrencyField;
    dbLancamentoBancoID: TIntegerField;
    dbLancamentoCheque: TStringField;
    dbLancamentoDataPagto: TDateField;
    dbLancamentoValorPago: TCurrencyField;
    dbLancamentoPago: TBooleanField;
    dbLancamentoSelecionado: TBooleanField;
    dbLancamentoStatus: TStringField;
    dbLancamentoPrevisao: TIntegerField;
    dbLancamentoMovBanco: TIntegerField;
    dbLancamentoNF: TIntegerField;
    dbLancamentoPorcentagem: TFloatField;
    dbLancamentoTributo: TBooleanField;
    dbLancamentoDataInclusao: TDateField;
    dbLancamentoUsuario: TStringField;
    relLancamentoTributo: TBooleanField;
    relLancamento3: TMSQuery;
    relLancamento3Cod1: TSmallintField;
    relLancamento3Cod2: TSmallintField;
    relLancamento3Cod3: TSmallintField;
    relLancamento3ValorPago: TCurrencyField;
    relLancamento3PlanoNome: TStringField;
    relLancamento3PlanoNome1: TStringField;
    relLancamento3PlanoNome2: TStringField;
    relChequeFilial_1: TSmallintField;
    relChequeFilial1Nome: TStringField;
    relChequeFilialEndereco: TStringField;
    relChequeFilialCidade: TStringField;
    relChequeFilialUF: TStringField;
    relChequeFilialCep: TStringField;
    relChequeFilialFone: TStringField;
    relChequeFilialCGC: TStringField;
    relChequeBancoNome: TStringField;
    relNF: TMSQuery;
    relNFFilial: TSmallintField;
    relNFNF: TIntegerField;
    relNFFatura: TStringField;
    relNFNatureza: TStringField;
    relNFCliente: TIntegerField;
    relNFDescricao: TMemoField;
    relNFIRenda: TFloatField;
    relNFImpostos: TFloatField;
    relNFNFBruto: TCurrencyField;
    relNFValorIRenda: TCurrencyField;
    relNFValorImpostos: TCurrencyField;
    relNFNFLiquida: TCurrencyField;
    relNFObservacao: TMemoField;
    relNFStatus: TBooleanField;
    relNFBancoIDDep: TIntegerField;
    relNFUsuario: TStringField;
    relNFClienteNome: TStringField;
    relLancamento2: TMSQuery;
    StringField2: TStringField;
    relLancamento2Cod1: TSmallintField;
    relLancamento2Cod2: TSmallintField;
    relLancamento2ValorPago: TCurrencyField;
    relLancamento2PlanoNome2: TStringField;
    relGPS: TMSQuery;
    relGPSMovBanco: TIntegerField;
    relGPSBancoID: TIntegerField;
    relGPSTipo: TStringField;
    relGPSDoc: TStringField;
    relGPSValor: TCurrencyField;
    relGPSFavorecido: TStringField;
    relGPSHistorico: TMemoField;
    relGPSStatus: TStringField;
    relGPSFilial: TIntegerField;
    relGPSUsuario: TStringField;
    relGPSBanco: TSmallintField;
    relGPSConta: TStringField;
    relGPSNome: TStringField;
    relGPSSigla: TStringField;
    relGPSCruzado: TBooleanField;
    relGPSFilialNome: TStringField;
    relGPSFilialEndereco: TStringField;
    relGPSFilialCidade: TStringField;
    relGPSFilialUF: TStringField;
    relGPSFilialCep: TStringField;
    relGPSFilialFone: TStringField;
    relGPSFilialCGC: TStringField;
    relGPSBancoNome: TStringField;
    relGPSMulta: TCurrencyField;
    relGPSOutros: TCurrencyField;
    relGPSValorGPS: TCurrencyField;
    relGPSCliente: TIntegerField;
    relGPSClienteNome: TStringField;
    relGPSClienteCGC: TStringField;
    dbClienteEnd: TMSTable;
    dbClienteEndCliente: TIntegerField;
    dbClienteEndCep: TStringField;
    dbClienteEndEntrega: TBooleanField;
    dbClienteEndCobranca: TBooleanField;
    dbClienteEndFaturamento: TBooleanField;
    dbClienteEndEndereco: TStringField;
    dbClienteEndBairro: TStringField;
    dbClienteEndComplemento: TStringField;
    dbClienteEndCidade: TStringField;
    dbClienteEndUF: TStringField;
    dbClienteEndContato: TStringField;
    dbClienteEndFone: TStringField;
    dbClienteEndFax: TStringField;
    dbClienteEndCGC: TStringField;
    dbClienteEndIE: TStringField;
    dbClienteEndUsuario: TStringField;
    relGPSClienteEndereco: TStringField;
    relGPSClienteCidade: TStringField;
    relGPSClienteUF: TStringField;
    relGPSClienteCep: TStringField;
    relAutDeb: TMSQuery;
    relAutDebMovBanco: TIntegerField;
    relAutDebBancoID: TIntegerField;
    relAutDebFundo: TIntegerField;
    relAutDebTipo: TStringField;
    relAutDebDoc: TStringField;
    relAutDebValor: TCurrencyField;
    relAutDebFavorecido: TStringField;
    relAutDebCruzado: TBooleanField;
    relAutDebHistorico: TMemoField;
    relAutDebStatus: TStringField;
    relAutDebFilial: TIntegerField;
    relAutDebExtenso: TStringField;
    relAutDebBancoNome: TStringField;
    relAutDebTipoPagtoTexto: TStringField;
    relAutDebBanco: TSmallintField;
    relAutDebConta: TStringField;
    relAutDebGerente: TStringField;
    relAutDebFilialNome: TStringField;
    qryExtrato: TMSQuery;
    qryExtratoBancoID: TIntegerField;
    qryExtratoFundo: TIntegerField;
    qryExtratoTipo: TStringField;
    qryExtratoDoc: TStringField;
    qryExtratoValor: TCurrencyField;
    qryExtratoFavorecido: TStringField;
    qryExtratoCruzado: TBooleanField;
    qryExtratoHistorico: TMemoField;
    qryExtratoStatus: TStringField;
    qryExtratoFilial: TIntegerField;
    qryExtratoUsuario: TStringField;
    relLancamento3Filial: TIntegerField;
    relLancamento2Filial: TIntegerField;
    relLancamento3PFaturamento: TFloatField;
    relLancamento2PFaturamento: TFloatField;
    relLancamento3Faturamento: TCurrencyField;
    relLancamento2Faturamento: TCurrencyField;
    relLancamento3Cli: TMSQuery;
    relLancamento3CliClienteDeb: TIntegerField;
    relLancamento3CliCod1: TSmallintField;
    relLancamento3CliCod2: TSmallintField;
    relLancamento3CliCod3: TSmallintField;
    relLancamento3CliValorPago: TCurrencyField;
    relLancamento3CliValorReal: TCurrencyField;
    relLancamento3CliPlanoNome: TStringField;
    relLancamento3CliPlanoNome1: TStringField;
    relLancamento3CliPlanoNome2: TStringField;
    relLancamento3CliPFaturamento: TFloatField;
    relLancamento3CliFaturamento: TCurrencyField;
    relLancamento3CliClienteDebNome: TStringField;
    relLancamento2Cli: TMSQuery;
    relLancamento2CliClienteDeb: TIntegerField;
    relLancamento2CliCod1: TSmallintField;
    relLancamento2CliCod2: TSmallintField;
    relLancamento2CliValorPago: TCurrencyField;
    relLancamento2CliFilial: TIntegerField;
    relLancamento2CliPlanoNome2: TStringField;
    relLancamento2CliPlanoNome1: TStringField;
    relLancamento2CliPFaturamento: TFloatField;
    relLancamento2CliFaturamento: TCurrencyField;
    relLancamento3CliFilial: TIntegerField;
    relLancamento2CliClienteDebNome: TStringField;
    relLancamento3valor: TCurrencyField;
    relLancamento2Clivalor: TCurrencyField;
    relLancamento3Clivalor: TCurrencyField;
    relLancamento2valor: TCurrencyField;
    relLancamentoTot: TMSQuery;
    relLancamentoTotClienteDeb: TIntegerField;
    relLancamentoTotValorPago: TCurrencyField;
    relLancamentoTotvalor: TCurrencyField;
    relLancamento3PlanoNomeCalc: TStringField;
    relLancamentoSeq: TStringField;
    dbNF: TMSTable;
    dbNFFilial: TSmallintField;
    dbNFNF: TIntegerField;
    dbNFFatura: TStringField;
    dbNFNatureza: TStringField;
    dbNFCliente: TIntegerField;
    dbNFDescricao: TMemoField;
    dbNFIRenda: TFloatField;
    dbNFImpostos: TFloatField;
    dbNFNFBruto: TCurrencyField;
    dbNFValorIRenda: TCurrencyField;
    dbNFValorImpostos: TCurrencyField;
    dbNFNFLiquida: TCurrencyField;
    dbNFObservacao: TMemoField;
    dbNFStatus: TBooleanField;
    dbNFBancoIDDep: TIntegerField;
    dbNFUsuario: TStringField;
    dbNFClienteDeb: TIntegerField;
    relNFClienteDeb: TIntegerField;
    relNFClienteDebNome: TStringField;
    relNF1: TMSQuery;
    relNF1clientedeb: TIntegerField;
    relNF1nfbruto: TCurrencyField;
    relNFRepresentatividade: TFloatField;
    relLancamentoTotvalorReal: TCurrencyField;
    relLancamento2ClivalorReal: TCurrencyField;
    relLancamento3valorreal: TCurrencyField;
    relLancamento2valorreal: TCurrencyField;
    relNFFilial1: TIntegerField;
    relNF2: TMSQuery;
    relNF2filial: TSmallintField;
    relNF2Bruto: TCurrencyField;
    relNF2IRenda: TCurrencyField;
    relNF2Impostos: TCurrencyField;
    relNF2Liquido: TCurrencyField;
    relNF2FilialTexto: TStringField;
    qryLanCli: TMSQuery;
    qryLanCliClienteDeb: TIntegerField;
    qryLanCliCod1: TSmallintField;
    qryLanCliCod2: TSmallintField;
    qryLanCliCod3: TSmallintField;
    qryLanCliFilial: TIntegerField;
    qryLanCliValorReal: TCurrencyField;
    qryLanCliFaturamento: TCurrencyField;
    qryLanCliPFaturamento: TFloatField;
    qryLanCliValorRateado: TCurrencyField;
    qryLanCliPFaturamentoCli: TFloatField;
    dbPlanoCIndicativo: TStringField;
    qryDup: TMSQuery;
    qryDupFilial: TIntegerField;
    qryDupDuplicata: TIntegerField;
    qryDupSeq: TStringField;
    qryDupSeqNum: TSmallintField;
    qryDupPrazo: TIntegerField;
    qryDupCliente: TIntegerField;
    qryDupPraca: TStringField;
    qryDupValor: TCurrencyField;
    qryDupAcrescimos: TCurrencyField;
    qryDupDescontos: TCurrencyField;
    qryDupBancoID: TIntegerField;
    qryDupValorPago: TCurrencyField;
    qryDupDocPagto: TStringField;
    qryDupHistorico: TMemoField;
    qryDupQuitado: TBooleanField;
    qryDupPorcentagem: TFloatField;
    qryDupSelecionado: TBooleanField;
    qryDupNumero: TIntegerField;
    qryDupUsuario: TStringField;
    qryDupClienteDeb: TIntegerField;
    qryDupClienteNome: TStringField;
    qryDupFilialNome: TStringField;
    qryDupDias: TIntegerField;
    qryDupFilial1: TIntegerField;
    qryDupFilial2: TIntegerField;
    relChequeDias: TIntegerField;
    dbPlanoCDescricaoFC: TStringField;
    qrySocio: TMSQuery;
    qrySocioCod1: TSmallintField;
    qrySocioCod2: TSmallintField;
    qrySocioCod3: TSmallintField;
    qrySocioValorPago: TCurrencyField;
    qrySociovalor: TCurrencyField;
    qrySociovalorreal: TCurrencyField;
    qrySocioPlanoNome2: TStringField;
    qrySocioPlanoNome1: TStringField;
    qrySocioPFaturamento: TFloatField;
    qrySocioFaturamento: TCurrencyField;
    qrySocioFilial: TIntegerField;
    qrySocioPlanoNomeCalc: TStringField;
    qrySocioPlanoNome: TStringField;
    relChequePreDatado: TStringField;
    relChequeFilialzero: TIntegerField;
    relLancamentoFilial1: TIntegerField;
    rvqLancamento: TRvQueryConnection;
    relLancamentoClienteNome: TStringField;
    relLancamentoValorD: TCurrencyField;
    relLancamentoValorC: TCurrencyField;
    relLancamentoPlanoNome1: TStringField;
    relLancamentoPlanoNome2: TStringField;
    relLancamentoFCNome: TStringField;
    relLancamentoFCNome1: TStringField;
    relLancamentoFCNome2: TStringField;
    relLancamentoPlanoNomeCalc: TStringField;
    relLancamentoPlanoNome: TStringField;
    relLancamentoValorReal: TCurrencyField;
    relAutDebFilial_1: TSmallintField;
    relNFFilialNome: TStringField;
    relNFClienteDebCNPJ: TStringField;
    rptCLT: TMSQuery;
    rptCLTFilial: TIntegerField;
    rptCLTLancamento: TIntegerField;
    rptCLTTipoPag: TStringField;
    rptCLTCliente: TIntegerField;
    rptCLTClienteDeb: TIntegerField;
    rptCLTCod1: TSmallintField;
    rptCLTCod2: TSmallintField;
    rptCLTCod3: TSmallintField;
    rptCLTHistorico: TStringField;
    rptCLTDoc: TStringField;
    rptCLTValor: TCurrencyField;
    rptCLTBancoID: TIntegerField;
    rptCLTCheque: TStringField;
    rptCLTValorPago: TCurrencyField;
    rptCLTPago: TBooleanField;
    rptCLTStatus: TStringField;
    rptCLTMovBanco: TIntegerField;
    rptCLTFuncionario: TIntegerField;
    rptCLTNome: TStringField;
    rptCLTBanco: TSmallintField;
    rptCLTAgencia: TStringField;
    rptCLTConta: TStringField;
    rptCLTTipo: TStringField;
    rptCLTFormaPag: TStringField;
    rptCLTClienteNome: TStringField;
    rptCLTValorBruto: TCurrencyField;
    rptCLTBancoNome: TStringField;
    rptCLTGerente: TStringField;
    rptCLTextenso: TStringField;
    rptCLTCPF: TStringField;
    rptCLTFilialNome: TStringField;
    rptCLTAgenciaBanco: TStringField;
    rptCLTContaBanco: TStringField;
    rptCLTPlanoContasNome: TStringField;
    dbBancoAgencia: TStringField;
    relChequeAgencia: TStringField;
    relGPSAgencia: TStringField;
    relAutDebAgencia: TStringField;
    qryFuncionario: TMSQuery;
    qryFuncionarioStatusTexto: TStringField;
    qryFuncionarioFuncionario: TIntegerField;
    qryFuncionarioNome: TStringField;
    qryFuncionarioFilial: TIntegerField;
    qryFuncionarioFilialNome: TStringField;
    qryFuncionarioEndereco: TStringField;
    qryFuncionarioBairro: TStringField;
    qryFuncionarioCidade: TStringField;
    qryFuncionarioUF: TStringField;
    qryFuncionarioCep: TStringField;
    qryFuncionarioFone: TStringField;
    qryFuncionarioCPF: TStringField;
    qryFuncionarioRG: TStringField;
    qryFuncionarioEmail: TStringField;
    qryFuncionarioBanco: TSmallintField;
    qryFuncionarioAgencia: TStringField;
    qryFuncionarioConta: TStringField;
    qryFuncionarioSalarioBruto: TCurrencyField;
    rvRelCheque: TRvDataSetConnection;
    relChequeDataEntrada: TDateTimeField;
    relChequeDataMovimento: TDateTimeField;
    relChequeDataInclusao: TDateTimeField;
    rvRelGPS: TRvDataSetConnection;
    relGPSDataEntrada: TDateTimeField;
    relGPSDataMovimento: TDateTimeField;
    relGPSDataInclusao: TDateTimeField;
    rvAutDeb: TRvDataSetConnection;
    relAutDebDataEntrada: TDateTimeField;
    relAutDebDataMovimento: TDateTimeField;
    rvLancamento: TRvDataSetConnection;
    rvFilial: TRvDataSetConnection;
    rvLancamento3: TRvDataSetConnection;
    rvPrevisao: TRvDataSetConnection;
    rvLancamentoCli: TRvDataSetConnection;
    rvLancamento2: TRvDataSetConnection;
    rvLancamento2Cli: TRvDataSetConnection;
    rvSocio: TRvDataSetConnection;
    rvNF: TRvDataSetConnection;
    rvRelNF2: TRvDataSetConnection;
    rvFuncionario: TRvDataSetConnection;
    rvrpCLT: TRvDataSetConnection;
    rvExtrato: TRvDataSetConnection;
    rvDup: TRvDataSetConnection;
    rvProprietario: TRvDataSetConnection;
    dbBancoDataFechamento: TDateTimeField;
    dbBancoDataInclusao: TDateTimeField;
    dbFilialDataInicio: TDateTimeField;
    dbFuncionarioDataInicio: TDateTimeField;
    dbFuncionarioDataFim: TDateTimeField;
    dbFuncionarioDataInclusao: TDateTimeField;
    dbNFDataEmissao: TDateTimeField;
    dbNFDataVencto: TDateTimeField;
    dbNFDataInclusao: TDateTimeField;
    relPrevisaoDataIni: TDateTimeField;
    relPrevisaoDataFim: TDateTimeField;
    relLancamentoDataEmissao: TDateTimeField;
    relLancamentoDataVencto: TDateTimeField;
    relLancamentoDataInclusao: TDateTimeField;
    relNFDataEmissao: TDateTimeField;
    relNFDataVencto: TDateTimeField;
    relNFDataInclusao: TDateTimeField;
    qryFuncionarioNascimento: TDateTimeField;
    qryFuncionarioNacionalidade: TStringField;
    qryFuncionarioEstadoCivil: TStringField;
    qryFuncionarioNomePai: TStringField;
    qryFuncionarioNomeMae: TStringField;
    qryFuncionarioContatoUrgencia: TStringField;
    qryFuncionarioRGEmissor: TStringField;
    qryFuncionarioCT: TStringField;
    qryFuncionarioCTSerie: TStringField;
    qryFuncionarioPis: TStringField;
    qryFuncionarioTituloEleitor: TStringField;
    qryFuncionarioReservista: TStringField;
    qryFuncionarioCliente: TIntegerField;
    qryDupDataEmissao: TDateTimeField;
    qryDupDataVencto: TDateTimeField;
    qryDupDataInclusao: TDateTimeField;
    qryExtratoMovBanco: TIntegerField;
    qryExtratoDataEntrada: TDateTimeField;
    qryExtratoDataMovimento: TDateTimeField;
    qryExtratoDataInclusao: TDateTimeField;
    qryFuncionarioDataFim: TDateTimeField;
    qryDupDataPagto: TDateTimeField;
    qryProdEmpPag: TMSQuery;
    qryProdEmpPagEmpresa: TIntegerField;
    qryProdEmpPagNome: TStringField;
    qryProdEmpPagAno: TSmallintField;
    qryProdEmpPagMes: TSmallintField;
    qryProdEmpPagFilial: TIntegerField;
    qryProdEmpPagBancoID: TSmallintField;
    qryProdEmpPagPagtoPre: TIntegerField;
    qryProdEmpPagValorBruto: TCurrencyField;
    qryProdEmpPagIRenda: TCurrencyField;
    qryProdEmpPagGPS: TCurrencyField;
    qryProdEmpPagPis: TCurrencyField;
    qryProdEmpPagCofins: TCurrencyField;
    qryProdEmpPagCSLL: TCurrencyField;
    qryProdEmpPagISSNF: TCurrencyField;
    qryProdEmpPagMovBanco: TIntegerField;
    qryProdEmpPagTipo: TStringField;
    qryProdEmpPagTipoPag: TStringField;
    qryProdEmpPagDoc: TStringField;
    qryProdEmpPagValor: TCurrencyField;
    qryProdEmpPagValorLiquido: TCurrencyField;
    qryProdEmpPagTipoPagTexto: TStringField;
    qryProdEmpPagFilialTexto: TStringField;
    qryProdEmpPagCGC: TStringField;
    qryProdEmpPagBanco: TSmallintField;
    qryProdEmpPagAgencia: TStringField;
    qryProdEmpPagConta: TStringField;
    qryProdEmpPagDataInclusao: TDateTimeField;
    qryProdEmpPagDataEntrada: TDateTimeField;
    qryProdEmpPagDataMovimento: TDateTimeField;
    RvProdEmpPag: TRvDataSetConnection;
    dbFilialRazao: TStringField;
    dbFilialCCM: TStringField;
    dbExtrato: TMSQuery;
    dbExtratoData: TDateTimeField;
    dbExtratoTipo: TStringField;
    dbExtratoSeq: TIntegerField;
    dbExtratoDoc: TStringField;
    dbExtratoHistorico: TStringField;
    dbExtratoCredito: TCurrencyField;
    dbExtratoDebito: TCurrencyField;
    dbExtratoSaldo: TCurrencyField;
    dbExtratoConciliado: TBooleanField;
    relLancamentoDataPagto: TDateTimeField;
    qryGraf: TMSQuery;
    qryGrafFilial: TSmallintField;
    qryGrafDataEmissao: TDateTimeField;
    qryGrafDataVencto: TDateTimeField;
    qryGrafCod1: TSmallintField;
    qryGrafCod2: TSmallintField;
    qryGrafCod3: TSmallintField;
    qryGrafValor: TCurrencyField;
    qryGrafValorPago: TCurrencyField;
    qryGrafDataPagto: TDateTimeField;
    dbGraf: TMSTable;
    dbGrafTexto: TStringField;
    dbGrafAno: TSmallintField;
    dbGrafMes: TSmallintField;
    dbGrafValor: TCurrencyField;
    dbEnfermeiro: TMSTable;
    dbMedico: TMSTable;
    dbMedicoAuditor: TIntegerField;
    dbMedicoNome: TStringField;
    dbMedicoCRM: TIntegerField;
    dbEnfermeiroEnfermeiro: TIntegerField;
    dbEnfermeiroNome: TStringField;
    dbEnfermeiroCOREN: TIntegerField;
    qryProdEmpPagStatus: TStringField;
    relChequeDataExtenso: TStringField;
    relAutDebDataExtenso: TStringField;
    rptCLTDataExtenso: TStringField;
    qryFuncionarioCelular: TStringField;
    qryFuncionarioParentescoUrgencia: TStringField;
    qryFuncionarioFoneUrgencia: TStringField;
    qryFuncionarioCelularUrgencia: TStringField;
    qryFuncionarioContatoMenor: TStringField;
    qryFuncionarioParentescoMenor: TStringField;
    qryFuncionarioCPFMenor: TStringField;
    qryFuncionarioRGEmissao: TDateTimeField;
    qryFuncionarioTipoConta: TStringField;
    qryFuncionarioSexo: TStringField;
    qryFuncionarioStatus: TStringField;
    qryFuncionarioMesTexto: TStringField;
    qryFuncionarioLocalNascimento: TStringField;
    qryFuncionarioUFNascimento: TStringField;
    qryFuncionarioEnderecoUrgencia: TStringField;
    qryFuncionarioComercialUrgencia: TStringField;
    qryFuncionarioHorarioIni: TDateTimeField;
    qryFuncionarioHorarioFim: TDateTimeField;
    qryFuncionarioHorarioIni1: TDateTimeField;
    qryFuncionarioHorarioFim1: TDateTimeField;
    qryFuncionarioAlmocoIni: TDateTimeField;
    qryFuncionarioAlmocoFim: TDateTimeField;
    qryFuncionarioGrauEscolariedadeTexto: TStringField;
    qryFuncionarioBancoTexto: TStringField;
    qryFuncionarioTipoContaTexto: TStringField;
    dbCargo: TMSTable;
    dbFunTR: TMSTable;
    qryFuncionarioTransporte: TStringField;
    dbFunTRFuncionario: TIntegerField;
    dbFunTRTransporte: TStringField;
    dbFunTRQtd: TIntegerField;
    dbFunTRUsuario: TStringField;
    dbFunTRDataUsuario: TDateTimeField;
    qryFuncionarioGrauEscolariedade: TSmallintField;
    qryFuncionarioValeTransporte: TSmallintField;
    qryFuncionarioEstadoCivilTexto: TStringField;
    dbCargoCargo: TIntegerField;
    dbCargoDescricao: TStringField;
    qryFuncionarioCargoTexto: TStringField;
    qryFuncionarioCargo: TIntegerField;
    qryFuncionarioDataInicio: TDateTimeField;
    qryAtivos: TMSQuery;
    rvAtivos: TRvDataSetConnection;
    rvAdmitidos: TRvDataSetConnection;
    qryAdmitidos: TMSQuery;
    rvDemitidos: TRvDataSetConnection;
    qryDemitidos: TMSQuery;
    qryAtivosFuncionario: TIntegerField;
    qryAtivosNome: TStringField;
    qryAtivosDataInicio: TDateTimeField;
    qryAtivosDataFim: TDateTimeField;
    qryAtivosStatus: TStringField;
    qryAdmitidosFuncionario: TIntegerField;
    qryAdmitidosNome: TStringField;
    qryAdmitidosDataInicio: TDateTimeField;
    qryAdmitidosDataFim: TDateTimeField;
    qryAdmitidosStatus: TStringField;
    qryDemitidosFuncionario: TIntegerField;
    qryDemitidosNome: TStringField;
    qryDemitidosDataInicio: TDateTimeField;
    qryDemitidosDataFim: TDateTimeField;
    qryDemitidosStatus: TStringField;
    qryAtivosStatusTexto: TStringField;
    relChequeNumeroDoc: TStringField;
    qryFluxoD: TMSQuery;
    rvFluxoD: TRvQueryConnection;
    qryFluxoDLancamento: TIntegerField;
    qryFluxoDTipoPag: TStringField;
    qryFluxoDCliente: TIntegerField;
    qryFluxoDClienteDeb: TIntegerField;
    qryFluxoDDataEmissao: TDateTimeField;
    qryFluxoDDataVencto: TDateTimeField;
    qryFluxoDPrazo: TIntegerField;
    qryFluxoDCod1: TSmallintField;
    qryFluxoDCod2: TSmallintField;
    qryFluxoDCod3: TSmallintField;
    qryFluxoDHistorico: TStringField;
    qryFluxoDDoc: TStringField;
    qryFluxoDValor: TCurrencyField;
    qryFluxoDTributo: TBooleanField;
    qryFluxoDBancoId: TSmallintField;
    qryFluxoDCheque: TStringField;
    qryFluxoDDataPagto: TDateTimeField;
    qryFluxoDValorPago: TCurrencyField;
    qryFluxoDValorBruto: TCurrencyField;
    qryFluxoDPago: TBooleanField;
    qryFluxoDStatus: TStringField;
    qryFluxoDPrevisao: TIntegerField;
    qryFluxoDMovBanco: TIntegerField;
    qryFluxoDNF: TIntegerField;
    qryFluxoDBanco: TSmallintField;
    qryFluxoDDescricao: TStringField;
    qryFluxoDDescricaoFC: TStringField;
    qryFluxoDIndicativo: TStringField;
    qryFluxoDValorReal: TCurrencyField;
    qryFluxoDPlanoNome1: TStringField;
    qryFluxoDPlanoNome2: TStringField;
    qryFluxoDClienteNome: TStringField;
    qryFluxoDIndicativoTexto: TStringField;
    qryFluxoD3: TMSQuery;
    rvFluxoD3: TRvDataSetConnection;
    qryFluxoD3Filial: TSmallintField;
    qryFluxoD3Cod1: TSmallintField;
    qryFluxoD3Indicativo: TStringField;
    qryFluxoD3Cod2: TSmallintField;
    qryFluxoD3Cod3: TSmallintField;
    qryFluxoD3ValorPago: TCurrencyField;
    qryFluxoD3Valor: TCurrencyField;
    qryFluxoD3ValorReal: TCurrencyField;
    qryFluxoD3PlanoNome2: TStringField;
    qryFluxoD3PlanoNome1: TStringField;
    qryFluxoD3IndicativoTexto: TStringField;
    qryFluxoD3PlanoNome: TStringField;
    qryFluxoDValorRD: TCurrencyField;
    qryFluxoD3ValorRD: TCurrencyField;
    qryFluxoD2: TMSQuery;
    rvFluxoD2: TRvDataSetConnection;
    qryFluxoD2Filial: TSmallintField;
    qryFluxoD2Cod1: TSmallintField;
    qryFluxoD2Indicativo: TStringField;
    qryFluxoD2Cod2: TSmallintField;
    qryFluxoD2ValorPago: TCurrencyField;
    qryFluxoD2Valor: TCurrencyField;
    qryFluxoD2ValorReal: TCurrencyField;
    qryFluxoD2IndicativoTexto: TStringField;
    qryFluxoD2PlanoNome1: TStringField;
    qryFluxoD2PlanoNome2: TStringField;
    qryFluxoD2ValorRD: TCurrencyField;
    relNF2Filial1: TIntegerField;
    qryFuncionarioObservacao: TMemoField;
    qryFuncionarioDataInclusao: TDateTimeField;
    qryFuncionarioUsuario: TStringField;
    qryFuncionarioLogin: TStringField;
    qryFuncionarioTicket: TStringField;
    qryFuncionarioFoto: TMemoField;
    qryFuncionarioDataAlteracao: TDateTimeField;
    qryFuncionarioPendenciaTexto: TMemoField;
    qryFuncionarioPendencia: TBooleanField;
    qryFuncionarioBolsaEducacao: TSmallintField;
    qryFuncionarioCursando: TBooleanField;
    qryFuncionarioDataAtualizacao: TDateTimeField;
    qryFuncionarioDiaAniversario: TSmallintField;
    qryFuncionarioMesAniversario: TSmallintField;
    qryFuncionarioCursandoTexto: TStringField;
    relLancamento1: TMSQuery;
    relLancamento1Filial: TIntegerField;
    relLancamento1Lancamento: TIntegerField;
    relLancamento1Sequencial: TAutoIncField;
    relLancamento1Cliente: TIntegerField;
    relLancamento1ClienteDeb: TIntegerField;
    relLancamento1Prazo: TIntegerField;
    relLancamento1Cod1: TSmallintField;
    relLancamento1Cod2: TSmallintField;
    relLancamento1Cod3: TSmallintField;
    relLancamento1Historico: TStringField;
    relLancamento1Doc: TStringField;
    relLancamento1Valor: TCurrencyField;
    relLancamento1Tributo: TBooleanField;
    relLancamento1BancoID: TIntegerField;
    relLancamento1Cheque: TStringField;
    relLancamento1ValorPago: TCurrencyField;
    relLancamento1Pago: TBooleanField;
    relLancamento1Selecionado: TBooleanField;
    relLancamento1Status: TStringField;
    relLancamento1Previsao: TIntegerField;
    relLancamento1MovBanco: TIntegerField;
    relLancamento1NF: TIntegerField;
    relLancamento1DataEmissao: TDateTimeField;
    relLancamento1DataVencto: TDateTimeField;
    relLancamento1DataPagto: TDateTimeField;
    relLancamento1DataInclusao: TDateTimeField;
    relLancamento1Seq: TStringField;
    relLancamento1Usuario: TStringField;
    relLancamento1ClienteNome: TStringField;
    relLancamento1ValorD: TCurrencyField;
    relLancamento1ValorC: TCurrencyField;
    relLancamento1DocOrigem: TStringField;
    relLancamento1FilialNome: TStringField;
    relLancamento1CNPJ: TStringField;
    relLancamento1ValorOrigem: TCurrencyField;
    relLancamento1ClienteDebNome: TStringField;
    relLancamento1Filial1: TIntegerField;
    relLancamento1ValorReal: TCurrencyField;
    relLancamento1ValorRateado: TCurrencyField;
    relLancamento1Indicativo: TStringField;
    relLancamento1PlanoNome: TStringField;
    relLancamento1PlanoNome1: TStringField;
    relLancamento1PlanoNome2: TStringField;
    relLancamento1FCNome: TStringField;
    relLancamento1FCNome1: TStringField;
    relLancamento1FCNome2: TStringField;
    relLanCli: TMSQuery;
    relLanCliClienteDeb: TIntegerField;
    relLanCliCod1: TSmallintField;
    relLanCliCod2: TSmallintField;
    relLanCliCod3: TSmallintField;
    relLanCliFilial: TIntegerField;
    relLanCliValorReal: TCurrencyField;
    relLanCliValorRateado: TCurrencyField;
    relLanCliFaturamento: TCurrencyField;
    relLanCliPFaturamento: TFloatField;
    relLanCliPFaturamentoCli: TFloatField;
    relLanCliPlanoNome2: TStringField;
    relLanCliPlanoNome1: TStringField;
    relLanCliPlanoNome: TStringField;
    relLanCliClienteDebNome: TStringField;
    relLanCliValorTotal: TCurrencyField;
    qryFluxoDFilial: TSmallintField;
    procedure relChequeCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure relPrevisaoCalcFields(DataSet: TDataSet);
    procedure relLancamento3FilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure relGPSCalcFields(DataSet: TDataSet);
    procedure dbClienteEndFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure relAutDebCalcFields(DataSet: TDataSet);
    procedure relLancamento3CalcFields(DataSet: TDataSet);
    procedure relLancamento2CalcFields(DataSet: TDataSet);
    procedure relLancamento3CliCalcFields(DataSet: TDataSet);
    procedure relLancamento3CliFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure relLancamento2CliCalcFields(DataSet: TDataSet);
    procedure relLancamento2CliFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure relLancamento2FilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure relLancamento1CalcFields(DataSet: TDataSet);
    procedure relNFCalcFields(DataSet: TDataSet);
    procedure relLanCliAfterInsert(DataSet: TDataSet);
    procedure relLanCliCalcFields(DataSet: TDataSet);
    procedure qryDupCalcFields(DataSet: TDataSet);
    procedure qrySocioCalcFields(DataSet: TDataSet);
    procedure relLancamentoCalcFields(DataSet: TDataSet);
    procedure rptCLTCalcFields(DataSet: TDataSet);
    procedure qryFuncionarioCalcFields(DataSet: TDataSet);
    procedure qryProdEmpPagCalcFields(DataSet: TDataSet);
    procedure qryAtivosCalcFields(DataSet: TDataSet);
    procedure qryFluxoDCalcFields(DataSet: TDataSet);
    procedure qryFluxoD3CalcFields(DataSet: TDataSet);
    procedure qryFluxoD2CalcFields(DataSet: TDataSet);
    procedure relNF2CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    iTotalNF:variant;
    { Public declarations }
  end;

var
  dmRelatorio: TdmRelatorio;

implementation

uses frmPrincipal, frmRelAutDebitos, frmRelLancamentosPC, frmRelLancamentosPCCli,
     frmRelLancamentosSocio, frmRelNFs, DateUtils, frmRelLancamentos,
     frmRelDups, frmRelFluxoCaixas, frmRelCheques, frmRelListaCheques;
{$R *.dfm}

procedure TdmRelatorio.relChequeCalcFields(DataSet: TDataSet);
var d,m,a:word;
begin
    if frmRelCheque<> nil then
    begin
        if (frmRelCheque.chkPre.Checked) and
           (relChequeDataEntrada.value>Date) then
            relChequePreDatado.value:='Bom para '+DatetoStr(relChequeDataEntrada.value)
        else
            relChequePreDatado.value:='';
    end;
    if relChequeStatus.asstring='C' then
        relChequeValorCheque.value:=0
    else
        relChequeValorCheque.value:=relChequeValor.value;

    frmMenu.extenso.valor:=relChequeValor.asstring;
    relChequeValorExtenso.value:=frmMenu.extenso.Caption+
                                ' x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x';
    relChequeDias.value:=DaysBetween(date,relChequeDataEntrada.value);
    if frmRelListaCheque<>nil then
        if not frmRelListaCheque.chkConta.checked then
            relChequeFilialzero.value:=relChequeFilial_1.value
        else
            relChequeFilialzero.value:=0
    else
        relChequeFilialzero.value:=0;

    DecodeDate(date,a,m,d);
    relChequeDataExtenso.Value:=IntToStr(d)+' de '+Meses[m]+' de '+IntToStr(a);
end;

procedure TdmRelatorio.DataModuleCreate(Sender: TObject);
begin
    dbBAnco.Open;
    dbFilial.OPen;
    dbMedico.OPen;
    dbEnfermeiro.Open;
    dbFuncionario.Open;
    dbCliente.Open;
    dbClienteEnd.Open;
    dbPlanoC.Open;
    dbMovBanco.Open;
    dbBco.Open;
    dbProprietario.Open;
    dbLancamento.Open;
    dbNF.Open;
    dbCargo.Open;
    dbFunTR.Open;
end;

procedure TdmRelatorio.DataModuleDestroy(Sender: TObject);
begin
    dbBAnco.Close;
    dbFilial.Close;
    dbMedico.Close;
    dbEnfermeiro.Close;
    dbFuncionario.Close;
    dbCliente.Close;
    dbClienteEnd.Close;
    dbPlanoC.Close;
    dbMovBanco.Close;
    dbBco.Close;
    dbProprietario.Close;
    dbLancamento.Close;
    dbNF.Close;
    qryFuncionario.Close;
    dbFunTR.Close;
    dbCargo.Close;

    relCheque.Close;
    relPrevisao.Close;

    relLancamento.Close;
    relLancamento3.Close;
    relLancamento3Cli.Close;
    relLancamentoTot.Close;
    relLancamento2.Close;
    relLancamento2Cli.Close;

    relNF.Close;
    relNF1.Close;
    relNF2.Close;
    relGPS.Close;
    relAutDeb.Close;

    qryTotBanco.Close;

    qryExtrato.Close;
    dbExtrato.Close;
end;

procedure TdmRelatorio.relPrevisaoCalcFields(DataSet: TDataSet);
begin
    if relPrevisaoTipo.value='D' then
        relPrevisaoTipoTexto.value:='todo dia';
    if relPrevisaoTipo.value='N' then
        relPrevisaoTipoTexto.value:='a cada n dias';

    if relPrevisaoCod1.value=1 then
        relPrevisaoCodTexto.value:='Contas a Receber'
    else
        relPrevisaoCodTexto.value:='Contas a Pagar'
end;

procedure TdmRelatorio.relLancamento3FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    if frmRelLancamentoPC<>nil then
    begin
        case frmRelLancamentoPC.rdgPago.ItemIndex of
        0:accept:=relLancamento3Valor.value>0;
        1:accept:=relLancamento3ValorPago.value>0;
        end;
    end;
end;

procedure TdmRelatorio.relGPSCalcFields(DataSet: TDataSet);
begin
    relGPSValorGPS.value:=relGPSValor.value-relGPSOutros.value-relGPSMulta.value;
end;

procedure TdmRelatorio.dbClienteEndFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbClienteEndFaturamento.value=true;
end;

procedure TdmRelatorio.relAutDebCalcFields(DataSet: TDataSet);
var d,m,a:word;
begin
    if frmRelAutDebito<>nil then
    begin
        if relAutDebBanco.value=frmRelAutDebito.iBanco then
            relAutDebTipoPagtoTexto.value:='Transferencia'
        else
            if relAutDebValor.value>=5000 then
                relAutDebTipoPagtoTexto.value:='TED'
            else
                relAutDebTipoPagtoTexto.value:='DOC';

        frmMenu.extenso.Valor:=relAutDebValor.asstring;
        relAutDebExtenso.value:='('+Trim(frmMenu.extenso.Caption)+')';

        DecodeDate(date,a,m,d);
        relAutDebDataExtenso.Value:=IntToStr(d)+' de '+Meses[m]+' de '+IntToStr(a);
    end;
end;

procedure TdmRelatorio.relLancamento3CalcFields(DataSet: TDataSet);
begin
    if frmRelLancamentoPC<>nil then
    begin
        relLancamento3Filial.Value:=frmRelLancamentosPc.iFilial;
        relLancamento3Faturamento.Value:=frmRelLancamentosPc.iFaturado;
        if frmRelLancamentosPC.iFaturado>0 then
            relLancamento3PFaturamento.value:=relLancamento3ValorReal.value/
                                              frmRelLancamentosPC.iFaturado*100;
        if (relLancamento3Cod1.value=1) and
           ((relLancamento3Cod2.value<>1) or
           (relLancamento3Cod3.value<>1)) then
           relLancamento3PFaturamento.value:=0;

    end;
end;

procedure TdmRelatorio.relLancamento2CalcFields(DataSet: TDataSet);
begin
    if frmRelLancamentoPC<>nil then
    begin
        relLancamento2Filial.Value:=frmRelLancamentosPc.iFilial;
        relLancamento2Faturamento.Value:=frmRelLancamentosPc.iFaturado;
        if frmRelLancamentosPC.iFaturado>0 then
            relLancamento2PFaturamento.value:=relLancamento2ValorReal.value/
                                              frmRelLancamentosPC.iFaturado*100;
    end;
    if (relLancamento2Cod1.value=1) and
       (relLancamento2Cod2.value<>1) then
        relLancamento2PFaturamento.value:=0;
end;

procedure TdmRelatorio.relLancamento2FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    if frmRelLancamentoPC<>nil then
    begin
        case frmRelLancamentoPC.rdgPago.ItemIndex of
        0:accept:=relLancamento2Valor.value>0;
        1:accept:=relLancamento2ValorPago.value>0;
        end;
    end;
end;

procedure TdmRelatorio.relLancamento3CliCalcFields(DataSet: TDataSet);
begin
    if frmRelLancamentoPCCli<>nil then
    begin
        relLancamento3CliFilial.Value:=frmRelLancamentosPcCli.iFilial;
        if relLancamentoTot.Locate('ClienteDeb',relLancamento3CliClienteDeb.value,[]) then
            relLancamento3CliFaturamento.Value:=relLancamentoTotValorReal.value
        else
            relLancamento3CliFaturamento.Value:=0;

        if relLancamento3CliFaturamento.Value>0 then
            relLancamento3CliPFaturamento.value:=relLancamento3CliValorReal.value/
                                                 relLancamento3CliFaturamento.Value*100
        else
            relLancamento3CliPFaturamento.value:=0;

        if (relLancamento3CliCod1.value=1) and
           ((relLancamento3CliCod2.value<>1) or
           (relLancamento3CliCod3.value<>1)) then
           relLancamento3CliPFaturamento.value:=0;

        if relLancamento3CliClienteDeb.value=0 then
            relLancamento3CliClienteDebNome.value:='Nenhum cliente específico'
        else
            if dbCliente.Locate('CliFor',relLancamento3CliClienteDeb.value,[]) then
                relLancamento3CliClienteDebNome.value:=dbClienteNome.value
            else
                relLancamento3CliClienteDebNome.value:='Cliente não cadastrado';
    end;
end;

procedure TdmRelatorio.relLancamento3CliFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    if frmRelLancamentoPCCli<>nil then
    begin
        case frmRelLancamentoPCCli.rdgPago.ItemIndex of
        0:accept:=relLancamento3CliValor.value>0;
        1:accept:=relLancamento3CliValorPago.value>0;
        end;
    end;
end;

procedure TdmRelatorio.relLancamento2CliCalcFields(DataSet: TDataSet);
begin
    if frmRelLancamentoPCCli<>nil then
    begin
        relLancamento2CliFilial.Value:=frmRelLancamentosPcCli.iFilial;
        if relLancamentoTot.Locate('ClienteDeb',rellancamento2CliClienteDeb.value,[]) then
            rellancamento2CliFaturamento.Value:=relLancamentoTotValorReal.value
        else
            rellancamento2CliFaturamento.Value:=0;

        if rellancamento2CliFaturamento.Value>0 then
            rellancamento2CliPFaturamento.value:=rellancamento2CliValorReal.value/
                                                 rellancamento2CliFaturamento.Value*100
        else
            rellancamento2CliPFaturamento.value:=0;
        if (relLancamento2CliCod1.value=1) and
           (relLancamento2CliCod2.value<>1) then
           relLancamento2CliPFaturamento.value:=0;


        if relLancamento2CliClienteDeb.value=0 then
            relLancamento2CliClienteDebNome.value:='Nenhum cliente específico'
        else
            if dbCliente.Locate('CliFor',relLancamento2CliClienteDeb.value,[]) then
                relLancamento2CliClienteDebNome.value:=dbClienteNome.value
            else
                relLancamento2CliClienteDebNome.value:='Cliente não cadastrado';
    end;
end;

procedure TdmRelatorio.relLancamento2CliFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    if frmRelLancamentoPCCli<>nil then
    begin
        case frmRelLancamentoPCCli.rdgPago.ItemIndex of
        0:accept:=relLancamento2CliValor.value>0;
        1:accept:=relLancamento2CliValorPago.value>0;
        end;
    end;
end;


procedure TdmRelatorio.Query1CalcFields(DataSet: TDataSet);
begin
    relLancamento3CliFilial.Value:=frmRelLancamentosPcCli.iFilial;
    relLancamento3CliFaturamento.Value:=frmRelLancamentosPcCli.iFaturado;
    if frmRelLancamentosPCCli.iFaturado>0 then
        relLancamento3CliPFaturamento.value:=relLancamento3CliValorPago.value/
                                             frmRelLancamentosPCCli.iFaturado*100;
    if dbCliente.Locate('CliFor',relLancamento3CliClienteDeb.value,[]) then
        relLancamento3CliClienteDebNome.value:=dbClienteNome.value
    else
        relLancamento3CliClienteDebNome.value:='Nenhum cliente específico';

    case frmRelLancamentoPcCli.rdgPago.ItemIndex of
    0:relLancamento3CliValorReal.Value:=relLancamento3CliValor.value;
    1:relLancamento3CliValorReal.Value:=relLancamento3CliValorPago.value;
    end;

    if relLancamento3CliCod1.value>1 then
        relLancamento3CliValorReal.value:=relLancamento3CliValorReal.value*-1;
end;

procedure TdmRelatorio.relLancamento1CalcFields(DataSet: TDataSet);
begin
    relLancamento1ValorC.clear;
    relLancamento1ValorD.clear;

    if relLancamento1Status.value='P' then
    begin
        if relLancamento1Cod1.value=1 then
            relLancamento1ValorC.value:=relLancamento1ValorPago.value
        else
            relLancamento1ValorD.value:=relLancamento1ValorPago.value;
    end
    else
    begin
            if relLancamento1Cod1.value=1 then
            relLancamento1ValorC.value:=relLancamento1Valor.value
        else
            relLancamento1ValorD.value:=relLancamento1Valor.value;
    end;

    relLancamento1Filial1.Value:=0;
    if relLancamento1.tag=1 then
        if not frmRelLancamentoPc.chkFilial.Checked then
            relLancamento1Filial1.Value:=frmrelLancamentosPc.iFilial;

    if relLancamento1.tag=2 then
        if not frmRelLancamentoPcCli.chkFilial.Checked then
            relLancamento1Filial1.Value:=frmrelLancamentosPcCli.iFilial;

    if dbCliente.Locate('CliFor',relLancamento1ClienteDeb.value,[]) then
        relLancamento1ClienteDebNome.value:=dbClienteNome.value
    else
        relLancamento1ClienteDebNome.value:='Nenhum cliente específico';
end;

procedure TdmRelatorio.relNFCalcFields(DataSet: TDataSet);
begin
    if (relNF1.Active) and
       (iTotalNF>0) then
    begin
        relNF1.Locate('ClienteDeb',relNFClienteDeb.value,[]);
        relNFRepresentatividade.value:=relNF1NFBruto.value/iTotalNF*100;

        if frmRelNF.chkFilial.Checked=true then
            relNFFilial1.value:=0
        else
            relNFFilial1.Value:=relNFFilial.value;
    end;
end;

procedure TdmRelatorio.relLanCliAfterInsert(DataSet: TDataSet);
begin
    relLanCliValorReal.value:=0;
    relLanCliValorRateado.value:=0;
    relLanCliPFaturamento.value:=0;
    relLanCliPFaturamentoCli.value:=0;
    relLanCliCod1.value:=0;
    relLanCliCod2.value:=0;
    relLanCliCod3.value:=0;
end;

procedure TdmRelatorio.relLanCliCalcFields(DataSet: TDataSet);
begin
    relLanCliVAlorTotal.value:=relLanCliValorReal.value+
                               relLanCliValorRateado.value;
    if (relLanCliCod1.value=9) and
       (relLanCliCod2.value=90) and
       (relLanCliCod3.value=9) then
        relLanCliPlanoNome2.value:='Total Geral'
    else
        if dbPlanoC.Locate('Cod1;Cod2',VarArrayof([relLanCliCod1.value,relLanCliCod2.value]),[]) then
           relLanCliPlanoNome2.value:=dbPlanoCDescricao.value;
end;

procedure TdmRelatorio.qryDupCalcFields(DataSet: TDataSet);
begin
    qryDupDias.value:=DaysBetween(date,qryDupDataVencto.value);
    qryDupFilial1.value:=0;
    if frmRelDup<>nil then
        if frmRelDup.chkFilial.checked then
            qryDupFilial2.value:=0
        else
            qryDupFilial2.value:=qryDupFilial.value;
end;

procedure TdmRelatorio.qrySocioCalcFields(DataSet: TDataSet);
begin
    if frmRelLancamentoSocio<>nil then
    begin
        if qrySocioValorPago.value=0 then
            qrySocioValorReal.value:=qrySocioValor.value
        else
            qrySocioValorReal.value:=qrySocioValorPago.value;
        if qrySocioCod1.value>1 then
            qrySocioValorReal.value:=qrySocioValorReal.value*-1;
        qrySocioFilial.Value:=frmRelLancamentosSocio.iFilial;
        qrySocioFaturamento.Value:=frmRelLancamentosSocio.iFaturado;
        if frmRelLancamentosSocio.iFaturado>0 then
            qrySocioPFaturamento.value:=qrySocioValorReal.value/frmRelLancamentosSocio.iFaturado*100;
        if qrySocioCod1.value=1 then
            qrySocioPlanoNomeCalc.Value:='Receitas - Mes(es) ANTERIORE(S) AO MES SELECIONADO'
        else
            qrySocioPlanoNomeCalc.Value:='Despesas - Mes(es) SELECIONADO(S)'
    end;
end;

procedure TdmRelatorio.relLancamentoCalcFields(DataSet: TDataSet);
begin
    relLancamentoFilial1.Value:=0;
    if relLancamento.tag=3 then
        relLancamentoFilial1.Value:=frmrelLancamentos.iFilial;
    rellancamentoValorC.clear;
    rellancamentoValorD.clear;

    if rellancamentoStatus.value='P' then
    begin
        if rellancamentoCod1.value=1 then
            rellancamentoValorC.value:=rellancamentoValorPago.value
        else
            rellancamentoValorD.value:=rellancamentoValorPago.value;
    end
    else
    begin
            if rellancamentoCod1.value=1 then
            rellancamentoValorC.value:=rellancamentoValor.value
        else
            rellancamentoValorD.value:=rellancamentoValor.value;
    end;
    if relLancamentoCod1.value=1 then
        relLancamentoPlanoNomeCalc.Value:='Receitas - Mes(es) ANTERIOR(ES) AO MES SELECIONADO'
    else
        relLancamentoPlanoNomeCalc.Value:='Despesas - Mes(es) SELECIONADO(S)';

    if relLancamentoStatus.value='P' then
        relLancamentoValorReal.value:=relLancamentoValorPago.value
    else
        relLancamentoValorReal.value:=relLancamentoValor.value;
    if relLancamentoCod1.value>1 then
        relLancamentoValorReal.value:=relLancamentoValorReal.value*-1;
end;

procedure TdmRelatorio.rptCLTCalcFields(DataSet: TDataSet);
var d,m,a:word;
begin
    if rptCLTTipo.value='P' then
        rptCLTFormaPag.value:='Transferência';
    if rptCLTTipo.value='X' then
        rptCLTFormaPag.value:='Cheque';
    DecodeDate(date,a,m,d);
    rptCLTDataExtenso.Value:=IntToStr(d)+' de '+Meses[m]+' de '+IntToStr(a);
end;

procedure TdmRelatorio.qryFuncionarioCalcFields(DataSet: TDataSet);
var m:integer;
var igrau:integer;
begin
    if qryFuncionarioStatus.value='A' then
        qryFuncionarioStatusTexto.value:='Ativos';
    if qryFuncionarioStatus.value='D' then
        qryFuncionarioStatusTexto.value:='Demitidos';
    if qryFuncionarioStatus.value='I' then
        qryFuncionarioStatusTexto.value:='Afastados';
    if qryFuncionarioStatus.value='E' then
        qryFuncionarioStatusTexto.value:='Ativos-transferidos';
    if qryFuncionarioStatus.value='S' then
        qryFuncionarioStatusTexto.value:='Demitidos-transferidos';

    m:=qryFuncionarioMesAniversario.value;

    case m of
    1:qryFuncionarioMesTexto.value:='Janeiro';
    2:qryFuncionarioMesTexto.value:='Fevereiro';
    3:qryFuncionarioMesTexto.value:='Março';
    4:qryFuncionarioMesTexto.value:='Abril';
    5:qryFuncionarioMesTexto.value:='Maio';
    6:qryFuncionarioMesTexto.value:='Junho';
    7:qryFuncionarioMesTexto.value:='Julho';
    8:qryFuncionarioMesTexto.value:='Agosto';
    9:qryFuncionarioMesTexto.value:='Setembro';
    10:qryFuncionarioMesTexto.value:='Outubro';
    11:qryFuncionarioMesTexto.value:='Novembro';
    12:qryFuncionarioMesTexto.value:='Dezembro';
    else
       qryFuncionarioMesTexto.value:='Não cadastrado';
    end;

    case qryFuncionarioGrauEscolariedade.asinteger of
    0:qryFuncionarioGrauEscolariedadeTexto.value:='Não informado';
    1:qryFuncionarioGrauEscolariedadeTexto.value:='1o. grau Incompleto (Fundamental)';
    2:qryFuncionarioGrauEscolariedadeTexto.value:='1o. grau Completo (Fundamental)';
    3:qryFuncionarioGrauEscolariedadeTexto.value:='2o. grau Incompleto (Ensino Médio)';
    4:qryFuncionarioGrauEscolariedadeTexto.value:='2o. grau Completo (Ensino Médio)';
    5:qryFuncionarioGrauEscolariedadeTexto.value:='Superior Incompleto';
    6:qryFuncionarioGrauEscolariedadeTexto.value:='Superior Completo';
    7:qryFuncionarioGrauEscolariedadeTexto.value:='Mestrado Completo';
    8:qryFuncionarioGrauEscolariedadeTexto.value:='Doutorado Completo';
    9:qryFuncionarioGrauEscolariedadeTexto.value:='Analfabeto(a)';
    end;

   if qryFuncionarioTipoConta.value='C' then
       qryFuncionarioTipoContaTexto.value:='Corrente';
    if qryFuncionarioTipoConta.value='P' then
       qryFuncionarioTipoContaTexto.value:='Poupança';
    if qryFuncionarioTipoConta.value='S' then
        qryFuncionarioTipoContaTexto.value:='Salário';

    if qryFuncionarioValeTransporte.value=0 then
        qryFuncionarioTransporte.value:='Não utiliza Vale Transporte'
    else
    begin
        qryFuncionarioTransporte.value:='Necessidade diária: ';

        dbFunTR.Locate('Funcionario',qryFuncionarioFuncionario.value,[]);
        while (dbFunTRFuncionario.value=qryFuncionarioFuncionario.value) and (not dbFunTR.eof) do
        begin
            qryFuncionarioTransporte.value:=qryFuncionarioTransporte.value+
                                            dbFunTRTransporte.Value+': '+dbFunTRQtd.asstring+'    ';
            dbFunTR.Next;
        end;
    end;

    if qryFuncionarioEstadoCivil.value='' then
       qryFuncionarioEstadoCivilTexto.value:='Não Informado';
    if qryFuncionarioEstadoCivil.value='S' then
       qryFuncionarioEstadoCivilTexto.value:='Solteiro(a)';
    if qryFuncionarioEstadoCivil.value='C' then
        qryFuncionarioEstadoCivilTexto.value:='Casado(a)';
    if qryFuncionarioEstadoCivil.value='D' then
       qryFuncionarioEstadoCivilTexto.value:='Divorciado(a)';
    if qryFuncionarioEstadoCivil.value='P' then
       qryFuncionarioEstadoCivilTexto.value:='Separado(a)';
    if qryFuncionarioEstadoCivil.value='V' then
       qryFuncionarioEstadoCivilTexto.value:='Viúvo(a)';
    if qryFuncionarioEstadoCivil.value='0' then
       qryFuncionarioEstadoCivilTexto.value:='Outros';
    if qryFuncionarioEstadoCivil.value='U' then
       qryFuncionarioEstadoCivilTexto.value:='União Estável';

   if qryFuncionarioCursando.value=true then
       qryFuncionarioCursandoTexto.value:='Sim'
   else
       qryFuncionarioCursandoTexto.value:='Não';


end;

procedure TdmRelatorio.qryProdEmpPagCalcFields(DataSet: TDataSet);
begin
    qryProdEmpPagValorLiquido.value:=qryProdEmpPagValorBruto.value-
                                  qryProdEmpPagIRenda.Value-
                                  qryProdEmpPagGPS.Value-
                                  qryProdEmpPagPis.Value-
                                  qryProdEmpPagCofins.Value-
                                  qryProdEmpPagCSLL.Value-
                                  qryProdEmpPagISSNF.Value;

    if qryProdEmpPagTipo.value='P' then
        if qryProdEmpPagValor.value>5000 then
            qryProdEmpPagTipoPagTexto.value:='TED'
        else
            qryProdEmpPagTipoPagTexto.value:='Doc';
    if qryProdEmpPagTipo.value='X' then
        qryProdEmpPagTipoPagTexto.value:='Chq';
    if qryProdEmpPagValor.value=0 then
        qryProdEmpPagTipoPagTexto.value:='';
end;

procedure TdmRelatorio.qryAtivosCalcFields(DataSet: TDataSet);
begin
    qryAtivosStatusTexto.value:='A';
end;

procedure TdmRelatorio.qryFluxoDCalcFields(DataSet: TDataSet);
begin
    if qryFluxoDCod1.value>1 then
        qryFluxoDValorReal.value:=qryFluxoDValorPago.value*-1
    else
        qryFluxoDValorReal.value:=qryFluxoDValorPago.value;

    if qryFluxoDCod1.value=1 then
        if qryFluxoDIndicativo.value='S' then
            qryFluxoDIndicativoTexto.value:='Receitas'
        else
            qryFluxoDIndicativoTexto.value:='Não Receitas'
    else
        if qryFluxoDIndicativo.value='S' then
            qryFluxoDIndicativoTexto.value:='Despesas'
        else
            qryFluxoDIndicativoTexto.value:='Não Despesas';

    if qryFluxoDIndicativo.value='S' then
        qryFluxoDValorRD.value:=qryFluxoDValorPago.value
    else
        qryFluxoDValorRD.value:=0;
    if qryFluxoDCod1.value>1 then
        qryFluxoDValorRD.value:=qryFluxoDValorRD.value*-1;

end;

procedure TdmRelatorio.qryFluxoD3CalcFields(DataSet: TDataSet);
begin
    if qryFluxoD3Cod1.value=1 then
        if qryFluxoD3Indicativo.value='S' then
            qryFluxoD3IndicativoTexto.value:='Receitas'
        else
            qryFluxoD3IndicativoTexto.value:='Não Receitas'
    else
        if qryFluxoD3Indicativo.value='S' then
            qryFluxoD3IndicativoTexto.value:='Despesas'
        else
            qryFluxoD3IndicativoTexto.value:='Não Despesas';

    if qryFluxoD3Cod1.value>1 then
        qryFluxoD3ValorReal.value:=qryFluxoD3ValorPago.value*-1
    else
        qryFluxoD3ValorReal.value:=qryFluxoD3ValorPago.value;

    if qryFluxoD3Indicativo.value='S' then
        qryFluxoD3ValorRD.value:=qryFluxoD3ValorPago.value
    else
        qryFluxoD3ValorRD.value:=0;
    if qryFluxoD3Cod1.value>1 then
        qryFluxoD3ValorRD.value:=qryFluxoD3ValorRD.value*-1;


end;

procedure TdmRelatorio.qryFluxoD2CalcFields(DataSet: TDataSet);
begin
    if qryFluxoD2Cod1.value=1 then
        if qryFluxoD2Indicativo.value='S' then
            qryFluxoD2IndicativoTexto.value:='Receitas'
        else
            qryFluxoD2IndicativoTexto.value:='Não Receitas'
    else
        if qryFluxoD2Indicativo.value='S' then
            qryFluxoD2IndicativoTexto.value:='Despesas'
        else
            qryFluxoD2IndicativoTexto.value:='Não Despesas';

    if qryFluxoD2Cod1.value>1 then
        qryFluxoD2ValorReal.value:=qryFluxoD2ValorPago.value*-1
    else
        qryFluxoD2ValorReal.value:=qryFluxoD2ValorPago.value;

    if qryFluxoD2Indicativo.value='S' then
        qryFluxoD2ValorRD.value:=qryFluxoD2ValorPago.value
    else
        qryFluxoD2ValorRD.value:=0;
    if qryFluxoD2Cod1.value>1 then
        qryFluxoD2ValorRD.value:=qryFluxoD2ValorRD.value*-1;

end;

procedure TdmRelatorio.relNF2CalcFields(DataSet: TDataSet);
begin
    if (relNF1.Active) and
       (iTotalNF>0) then
    begin
        if frmRelNF.chkFilial.Checked=true then
            relNF2Filial1.value:=0
        else
            relNF2Filial1.Value:=relNFFilial.value;
    end;

end;

end.


