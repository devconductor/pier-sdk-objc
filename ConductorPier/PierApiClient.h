#import <Foundation/Foundation.h>
#import <ISO8601/ISO8601.h>
#import <AFNetworking/AFHTTPRequestOperationManager.h>
#import "PierJSONResponseSerializer.h"
#import "PierJSONRequestSerializer.h"
#import "PierQueryParamCollection.h"
#import "PierConfiguration.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "PierAcordoDetalheResponse.h"
#import "PierAcordoResponse.h"
#import "PierAdesaoPagamentoSabadoResponse.h"
#import "PierAdicionalContaPersist.h"
#import "PierAdicionalContaResponse.h"
#import "PierAdicionalDetalheResponse.h"
#import "PierAdicionalPersist.h"
#import "PierAdicionalResponse.h"
#import "PierAdicionalUpdate.h"
#import "PierAjusteFinanceiroResponse.h"
#import "PierAlterarProdutoRequest.h"
#import "PierAnexoNotificacaoEmailRequest.h"
#import "PierAntecipacaoResponse.h"
#import "PierAntecipacaoSimuladaDetalhesResponse.h"
#import "PierAntecipacaoSimuladaLoteResponse.h"
#import "PierAntecipacaoSimuladaResponse.h"
#import "PierAnuidadeResponse.h"
#import "PierAplicacaoMobileEmissorResponse.h"
#import "PierAplicacaoMobilePersistValue_.h"
#import "PierAplicacaoMobileResponse.h"
#import "PierAplicacaoMobileUpdateValue_.h"
#import "PierAplicacaoRequest.h"
#import "PierAplicacaoResponse.h"
#import "PierArquivoAUDResponse.h"
#import "PierArquivoAjusteLoteResponse.h"
#import "PierArquivoDetalheResponse.h"
#import "PierArquivoDetalhesPersist.h"
#import "PierArquivoParametroAUDResponse.h"
#import "PierArquivoParametroResponse.h"
#import "PierArquivoPersist.h"
#import "PierArquivoResponse.h"
#import "PierAtendimentoClienteResponse.h"
#import "PierAtribuirAssinaturaClientePersist.h"
#import "PierAuthToken.h"
#import "PierAutorizacaoOnUsRequest.h"
#import "PierAvisoViagemResponse.h"
#import "PierBancoResponse.h"
#import "PierBasePartialUpdateValue_.h"
#import "PierBasePersistValue_.h"
#import "PierBaseResponse.h"
#import "PierBaseUpdateValue_.h"
#import "PierBeneficioPagamentoAtrasoResponse.h"
#import "PierBinChavePersist.h"
#import "PierBinChaveUpdate.h"
#import "PierBinResponse.h"
#import "PierBodyAccessToken.h"
#import "PierBoletoEmailRequest.h"
#import "PierBoletoListarResponse.h"
#import "PierBoletoRequest.h"
#import "PierBoletoResponse.h"
#import "PierCampanhaPersist.h"
#import "PierCampanhaResponse.h"
#import "PierCampanhaUpdateValue_.h"
#import "PierCampoCodificadoDescricaoResponse.h"
#import "PierCancelamentoTransacaoOnUsRequest.h"
#import "PierCancelamentoTransacaoPorIdCartaoRequest.h"
#import "PierCartaoDetalheResponse.h"
#import "PierCartaoEmbossingRequest.h"
#import "PierCartaoEmbossingResponse.h"
#import "PierCartaoEmissorResponse.h"
#import "PierCartaoImpressaoProvisorioResponse.h"
#import "PierCartaoImpressaoResponse.h"
#import "PierCartaoMultiAppImpressaoResponse.h"
#import "PierCartaoMultiAppPersistValue_.h"
#import "PierCartaoPayAtualizarChaveResponse.h"
#import "PierCartaoPayCadastroResponse.h"
#import "PierCartaoPayConfirmarChaveResponse.h"
#import "PierCartaoPayDetalheResponse.h"
#import "PierCartaoPayKeyUpdate.h"
#import "PierCartaoPayPersist.h"
#import "PierCartaoPayResponse.h"
#import "PierCartaoPayUpdate.h"
#import "PierCartaoResponse.h"
#import "PierCdtDetalheOportunidadeAUD.h"
#import "PierCdtTipoResolucaoContestacao.h"
#import "PierChaveCriptografiaRequest.h"
#import "PierChaveCriptografiaResponse.h"
#import "PierCodigoChargebackResponse.h"
#import "PierCodigoSegurancaEMAILPersist.h"
#import "PierCodigoSegurancaResponse.h"
#import "PierCodigoSegurancaSMSPersist.h"
#import "PierCodigoSegurancaSMSRequest.h"
#import "PierCompraContestadaCartaoDetalheResponse.h"
#import "PierCompraContestadaCartaoResponse.h"
#import "PierCompraContestadaTransacaoResponse.h"
#import "PierCompraResponse.h"
#import "PierConfiguracaoEmailPersist.h"
#import "PierConfiguracaoEmailResponse.h"
#import "PierConfiguracaoRegistroCobrancaPersist.h"
#import "PierConfiguracaoRegistroCobrancaResponse.h"
#import "PierConfiguracaoRotativoDetalheResponse.h"
#import "PierConfiguracaoRotativoPersist.h"
#import "PierConsultaCadastroEstabelecimentoDTO.h"
#import "PierContaBancariaPortadorPersistValue_.h"
#import "PierContaBancariaPortadorResponse.h"
#import "PierContaBancariaPortadorUpdateValue_.h"
#import "PierContaDebitoRecorrentePersistValue_.h"
#import "PierContaDebitoRecorrenteResponse.h"
#import "PierContaDetalheResponse.h"
#import "PierContaHistoricoPagamentoResponse.h"
#import "PierContaMultiAppPersistValue_.h"
#import "PierContaMultiAppResponse.h"
#import "PierContaPersistValue_.h"
#import "PierContaResponse.h"
#import "PierContestarCompraRequest.h"
#import "PierControleSegurancaDispositivoPersistencia_.h"
#import "PierControleSegurancaDispositivoResponse.h"
#import "PierControleSegurancaDispositivoUpdateValor_.h"
#import "PierControleTentativaCadastroResponse.h"
#import "PierControleVencimentoResponse.h"
#import "PierConvenioPersist.h"
#import "PierConvenioResponse.h"
#import "PierDadosCartaoImpressaoResponse.h"
#import "PierDadosCartaoResponse.h"
#import "PierDadosPortadorRequest.h"
#import "PierDesfazimentoTransacaoOnUsRequest.h"
#import "PierDetalheAjusteLoteResponse.h"
#import "PierDetalheAjusteLoteUpdate.h"
#import "PierDetalheOperacaoResponse.h"
#import "PierDetalheOportunidadePersistValue_.h"
#import "PierDetalheOportunidadeResponse.h"
#import "PierDetalheOportunidadeUpdateValue_.h"
#import "PierDetalhesFaturaConsignadaResponse.h"
#import "PierDetalhesFaturaResponse.h"
#import "PierDispositivoPersistValue_.h"
#import "PierDispositivoResponse.h"
#import "PierDividaClienteResponse.h"
#import "PierDocumentoDetalhadoResponse.h"
#import "PierDocumentoDetalheResponse.h"
#import "PierDocumentoIntegracaoResponse.h"
#import "PierDocumentoParametrosRequest.h"
#import "PierDocumentoResponse.h"
#import "PierDocumentoTemplatePersist.h"
#import "PierDocumentoTemplateResponse.h"
#import "PierEmissorPierResponse.h"
#import "PierEmprestimoPessoalRequest.h"
#import "PierEmprestimoPessoalResponse.h"
#import "PierEnderecoAprovadoPersistValue_.h"
#import "PierEnderecoAprovadoResponse.h"
#import "PierEnderecoResponse.h"
#import "PierEntidadeResponse.h"
#import "PierEstabelecimentoPersist.h"
#import "PierEstabelecimentoResponse.h"
#import "PierEstabelecimentoUpdate.h"
#import "PierEstagioCartaoResponse.h"
#import "PierEstagioCartaoUpdate_.h"
#import "PierExtraInfo.h"
#import "PierFantasiaBasicaResponse.h"
#import "PierFaqResponse.h"
#import "PierFaturaConsignadaDetalheResponse.h"
#import "PierFaturaConsignadaResponse.h"
#import "PierFaturaDetalheResponse.h"
#import "PierFaturaFechadaResponse.h"
#import "PierFaturaResponse.h"
#import "PierGradePendenteRequest.h"
#import "PierGrupoChargebackResponse.h"
#import "PierGrupoEconomicoDTO.h"
#import "PierGrupoEconomicoResponse.h"
#import "PierGrupoOrigemComercialResponse.h"
#import "PierHistoricoAssessoriaResponse.h"
#import "PierHistoricoAtrasoFaturaResponse.h"
#import "PierHistoricoEventosResponse.h"
#import "PierHistoricoImpressaoCartaoResponse.h"
#import "PierHistoricoPagamentoResponse.h"
#import "PierHistoricoTelefoneResponse.h"
#import "PierInscricaoAPNResponse.h"
#import "PierInscricaoApnPersistencia_.h"
#import "PierIntegracaoEmissorPersist.h"
#import "PierIntegracaoEmissorResponse.h"
#import "PierIntegrarArquivoRequest.h"
#import "PierIntegrarDocumentoRequest.h"
#import "PierJobResponse.h"
#import "PierLancamentoFaturaResponse.h"
#import "PierLimiteDisponibilidadeResponse.h"
#import "PierLogAcessoUsuarioPersistencia_.h"
#import "PierLogAcessoUsuarioResposta_.h"
#import "PierLoteCartoesPrePagosResponse.h"
#import "PierMCCResponse.h"
#import "PierMapOfstringAndstring.h"
#import "PierMaquinetaPersist.h"
#import "PierMaquinetaResponse.h"
#import "PierMaquinetaUpdate.h"
#import "PierMoedaResponse.h"
#import "PierNotificacaoEmailRequest.h"
#import "PierNotificacaoPushResponse.h"
#import "PierNotificacaoResponse.h"
#import "PierNotificacaoSMSResponse.h"
#import "PierOperacaoCredorPersist.h"
#import "PierOperacaoCredorResponse.h"
#import "PierOperacaoCredorUpdate.h"
#import "PierOperacaoResponse.h"
#import "PierOperadoraResponse.h"
#import "PierOportunidadeAUDResponse.h"
#import "PierOportunidadePersistValue_.h"
#import "PierOportunidadeResponse.h"
#import "PierOportunidadeUpdateValue_.h"
#import "PierOrigemComercialPersist.h"
#import "PierOrigemComercialResponse.h"
#import "PierOrigemComercialUpdate.h"
#import "PierPageAcordoResponse.h"
#import "PierPageAjusteResponse.h"
#import "PierPageAnuidadeResponse.h"
#import "PierPageAplicacaoMobileResponse.h"
#import "PierPageAplicacaoResponse.h"
#import "PierPageArquivoAUDResponse.h"
#import "PierPageArquivoAjusteLoteResponse.h"
#import "PierPageArquivoResponse.h"
#import "PierPageAtendimentoClienteResponse.h"
#import "PierPageAvisoViagemResponse.h"
#import "PierPageBancoResponse.h"
#import "PierPageBaseResponse.h"
#import "PierPageBinResponse.h"
#import "PierPageBoletoListarResponse.h"
#import "PierPageCampanhaResponse.h"
#import "PierPageCampoCodificadoDescricaoResponse.h"
#import "PierPageCartaoPayResponse.h"
#import "PierPageCartaoResponse.h"
#import "PierPageCodigoChargebackResponse.h"
#import "PierPageCodigoSegurancaResponse.h"
#import "PierPageCompraContestadaCartaoResponse.h"
#import "PierPageCompraContestadaTransacaoResponse.h"
#import "PierPageCompraResponse.h"
#import "PierPageConfiguracaoEmailResponse.h"
#import "PierPageConfiguracaoRotativoResponse.h"
#import "PierPageContaBancariaPortadorResponse.h"
#import "PierPageContaDebitoRecorrenteResponse.h"
#import "PierPageContaDetalheResponse.h"
#import "PierPageContaHistoricoPagamentoResponse.h"
#import "PierPageContaResponse.h"
#import "PierPageControleSegurancaDispositivoResponse.h"
#import "PierPageControleVencimentoResponse.h"
#import "PierPageConvenioResponse.h"
#import "PierPageDetalheAjusteLoteResponse.h"
#import "PierPageDispositivoResponse.h"
#import "PierPageDocumentoResponse.h"
#import "PierPageDocumentoTemplateResponse.h"
#import "PierPageEmissorPierResponse.h"
#import "PierPageEnderecoResponse.h"
#import "PierPageEntidadeResponse.h"
#import "PierPageEstabelecimentoResponse.h"
#import "PierPageEstagioCartaoResponse.h"
#import "PierPageFantasiaBasicaResponse.h"
#import "PierPageFaqResponse.h"
#import "PierPageFaturaConsignadaResponse.h"
#import "PierPageFaturaFechadaResponse.h"
#import "PierPageFaturaResponse.h"
#import "PierPageGrupoChargebackResponse.h"
#import "PierPageGrupoEconomicoResponse.h"
#import "PierPageGrupoOrigemComercialResponse.h"
#import "PierPageHistoricoAssessoriaResponse.h"
#import "PierPageHistoricoAtrasoFaturaResponse.h"
#import "PierPageHistoricoEventosResponse.h"
#import "PierPageHistoricoPagamentoResponse.h"
#import "PierPageInscricaoAPNResponse.h"
#import "PierPageJobResponse.h"
#import "PierPageLoteCartoesPrePagosResponse.h"
#import "PierPageMCCResponse.h"
#import "PierPageMaquinetaResponse.h"
#import "PierPageMoedaResponse.h"
#import "PierPageOperacaoCredorResponse.h"
#import "PierPageOperacaoResponse.h"
#import "PierPageOperadoraResponse.h"
#import "PierPageOportunidadeAUDResponse.h"
#import "PierPageOportunidadeResponse.h"
#import "PierPageOrigemComercialResponse.h"
#import "PierPagePaisResponse.h"
#import "PierPagePerfilResponse.h"
#import "PierPagePermissaoResponse.h"
#import "PierPagePessoaDetalheResponse.h"
#import "PierPagePessoaResponse.h"
#import "PierPagePlanoParcelamentoResponse.h"
#import "PierPagePlataformaMobileResponse.h"
#import "PierPagePortadorResponse.h"
#import "PierPageProdutoResponse.h"
#import "PierPagePromotorResponse.h"
#import "PierPagePropostaResponse.h"
#import "PierPagePushResponse.h"
#import "PierPageRiscoFraudeResponseValue_.h"
#import "PierPageSMSEnvioResponse.h"
#import "PierPageSMSResponse.h"
#import "PierPageStatusArquivoResponse.h"
#import "PierPageStatusCartaoResponse.h"
#import "PierPageStatusContaResponse.h"
#import "PierPageStatusContestacaoResponse.h"
#import "PierPageStatusImpressaoResponse.h"
#import "PierPageStatusOportunidadeAUDResponse.h"
#import "PierPageStatusOportunidadeResponse.h"
#import "PierPageStatusPropostaResponse.h"
#import "PierPageTaxasRefinanciamentoResponse.h"
#import "PierPageTelefoneEstabelecimentoResponse.h"
#import "PierPageTelefoneResponse.h"
#import "PierPageTemplateNotificacaoResponse.h"
#import "PierPageTerminalResponse.h"
#import "PierPageTipoAjusteResponse.h"
#import "PierPageTipoArquivoResponse.h"
#import "PierPageTipoBoletoResponse.h"
#import "PierPageTipoCampanhaResponse.h"
#import "PierPageTipoChaveResponse.h"
#import "PierPageTipoDebitoRecorrenteResponse.h"
#import "PierPageTipoEnderecoResponse.h"
#import "PierPageTipoEstabelecimentoResponse.h"
#import "PierPageTipoFaturamentoPorContaResponse.h"
#import "PierPageTipoFaturamentoResponse.h"
#import "PierPageTipoOportunidadeAUDResponse.h"
#import "PierPageTipoOportunidadeResponse.h"
#import "PierPageTipoOrigemComercialResponse.h"
#import "PierPageTipoResolucaoContestacaoResponse.h"
#import "PierPageTipoTelefoneResponse.h"
#import "PierPageTipoTemplateResponse.h"
#import "PierPageTipoTerminalResponse.h"
#import "PierPageTokenResponse.h"
#import "PierPageTransacaoNaoProcessadaResponse.h"
#import "PierPageTransacaoProcessadaNaoProcessadaResponse.h"
#import "PierPageTransacaoResponse.h"
#import "PierPageTransacoesCorrentesResponse.h"
#import "PierPageTransferenciaBancariaResponse.h"
#import "PierPageTransferenciaCreditoContaBancariaResponse.h"
#import "PierPageTransferenciaResponse.h"
#import "PierPageUsuarioContasResponse.h"
#import "PierPageUsuarioResponse.h"
#import "PierPageUsuarioTokenResponse.h"
#import "PierPageVinculoEstabelecimentoAdquirenteResponse.h"
#import "PierPageVinculoOperacaoResponse.h"
#import "PierPageWebHookResponse.h"
#import "PierPaisResponse.h"
#import "PierParametroEmissorResponse.h"
#import "PierParametroProdutoResponse.h"
#import "PierParcelamentoTransferenciaResponse.h"
#import "PierPerfilPersist.h"
#import "PierPerfilResponse.h"
#import "PierPerfilUpdate.h"
#import "PierPermissaoPersist.h"
#import "PierPermissaoResponse.h"
#import "PierPermissaoUpdate.h"
#import "PierPessoaDetalheResponse.h"
#import "PierPessoaFisicaAprovadaPersistValue_.h"
#import "PierPessoaFisicaAprovadaResponse.h"
#import "PierPessoaJuridicaAprovadaPersist.h"
#import "PierPessoaJuridicaAprovadaResponse.h"
#import "PierPessoaResponse.h"
#import "PierPlanoCampanhaPersist.h"
#import "PierPlanoCampanhaResponse.h"
#import "PierPlanoCampanhaUpdateValue_.h"
#import "PierPlanoParcelamentoEmprestimoResponse.h"
#import "PierPlanoParcelamentoResponse.h"
#import "PierPlanoParcelamentoTransferenciaCreditoContaBancariaRequest.h"
#import "PierPlanoParcelamentoTransferenciaCreditoContaBancariaResponse.h"
#import "PierPlataformaMobilePersistValue_.h"
#import "PierPlataformaMobileResponse.h"
#import "PierPlataformaMobileUpdateValue_.h"
#import "PierPortadorResponse.h"
#import "PierProdutoDetalhesResponse.h"
#import "PierProdutoOrigemResponse.h"
#import "PierProdutoResponse.h"
#import "PierPromotorResponse.h"
#import "PierPropostaResponse.h"
#import "PierPropriedadeDocumentoRequest.h"
#import "PierPushAPNSPersistValue_.h"
#import "PierPushFCMGCMPersistValue_.h"
#import "PierReferenciaComercialAprovadoPersistValue_.h"
#import "PierReferenciaComercialAprovadoResponse.h"
#import "PierReferenciaIdPersist.h"
#import "PierRiscoFraudeDetalhadoResponse.h"
#import "PierRiscoFraudeResponseValue_.h"
#import "PierSMSEnvioResponse.h"
#import "PierSMSPersistValue_.h"
#import "PierSecure3dRequest.h"
#import "PierSensibilizarSaldoGlobalUpdateValue_.h"
#import "PierSocioAprovadoPersistValue_.h"
#import "PierSocioAprovadoResponse.h"
#import "PierStatusArquivoResponse.h"
#import "PierStatusCartaoResponse.h"
#import "PierStatusContaResponse.h"
#import "PierStatusContestacaoResponse.h"
#import "PierStatusImpressaoResponse.h"
#import "PierStatusOportunidadeAUDResponse.h"
#import "PierStatusOportunidadePersistValue_.h"
#import "PierStatusOportunidadeResponse.h"
#import "PierStatusPropostaResponse.h"
#import "PierStatusPropostaUpdate.h"
#import "PierTaxaAntecipacaoRequest.h"
#import "PierTaxaJurosContaListaResponse.h"
#import "PierTaxaJurosContaPersistValue_.h"
#import "PierTaxaJurosContaResponse.h"
#import "PierTaxasRefinanciamentoResponse.h"
#import "PierTelefoneAdicionalPersist.h"
#import "PierTelefoneAdicionalUpdate.h"
#import "PierTelefoneEstabelecimentoPersist.h"
#import "PierTelefoneEstabelecimentoResponse.h"
#import "PierTelefoneEstabelecimentoUpdate.h"
#import "PierTelefonePessoaAprovadaPersistValue_.h"
#import "PierTelefonePessoaAprovadaResponse.h"
#import "PierTelefoneResponse.h"
#import "PierTemplateNotificacaoDetalheResponse.h"
#import "PierTemplateNotificacaoResponse.h"
#import "PierTerminalPersist.h"
#import "PierTerminalResponse.h"
#import "PierTerminalUpdateValue_.h"
#import "PierTipoAjusteResponse.h"
#import "PierTipoArquivoResponse.h"
#import "PierTipoBoletoResponse.h"
#import "PierTipoCampanhaResponse.h"
#import "PierTipoChaveResponse.h"
#import "PierTipoDebitoRecorrenteResponse.h"
#import "PierTipoEnderecoResponse.h"
#import "PierTipoEstabelecimentoResponse.h"
#import "PierTipoFaturamentoPersistValue_.h"
#import "PierTipoFaturamentoPorContaPersistValue_.h"
#import "PierTipoFaturamentoPorContaResponse.h"
#import "PierTipoFaturamentoResponse.h"
#import "PierTipoOperacaoResponse.h"
#import "PierTipoOportunidadeAUDResponse.h"
#import "PierTipoOportunidadePersistValue_.h"
#import "PierTipoOportunidadeResponse.h"
#import "PierTipoOrigemComercialResponse.h"
#import "PierTipoResolucaoResponse.h"
#import "PierTipoTelefoneResponse.h"
#import "PierTipoTemplateRequest.h"
#import "PierTipoTemplateResponse.h"
#import "PierTipoTerminalResponse.h"
#import "PierTipoTransacaoAjusteResponse.h"
#import "PierTokenPartialUpdateValue_.h"
#import "PierTokenPersistValue_.h"
#import "PierTokenResponse.h"
#import "PierTokenUpdateValue_.h"
#import "PierTransacaoCorrenteResponse.h"
#import "PierTransacaoNaoProcessadaResponse.h"
#import "PierTransacaoOnUsPorIdCartaoRequest.h"
#import "PierTransacaoOnUsRequest.h"
#import "PierTransacaoOnUsResponse.h"
#import "PierTransacaoPayQueryRequest.h"
#import "PierTransacaoPayQueryResponse.h"
#import "PierTransacaoPaySecureRequest.h"
#import "PierTransacaoProcessadaNaoProcessadaResponse.h"
#import "PierTransacoesCorrentesResponse.h"
#import "PierTransferenciaBancariaPersistValue_.h"
#import "PierTransferenciaBancariaResponse.h"
#import "PierTransferenciaCreditoContaBancariaListaResponse.h"
#import "PierTransferenciaCreditoContaBancariaPersistValue_.h"
#import "PierTransferenciaCreditoContaBancariaResponse.h"
#import "PierTransferenciaDetalheResponse.h"
#import "PierTransferenciaResponse.h"
#import "PierUsuarioContasResponse.h"
#import "PierUsuarioLdapPersist.h"
#import "PierUsuarioLdapUpdate.h"
#import "PierUsuarioPersistencia_.h"
#import "PierUsuarioResponse.h"
#import "PierUsuarioSenhaFortePersistencia_.h"
#import "PierUsuarioTokenPersistencia_.h"
#import "PierUsuarioTokenResponse.h"
#import "PierUsuarioUpdateValue_.h"
#import "PierValidaCVVRequest.h"
#import "PierValidaCartaoResponse.h"
#import "PierValidaSenhaCartaoResponse.h"
#import "PierVencimentoUpdate.h"
#import "PierVinculoCartoesResponse.h"
#import "PierVinculoEstabelecimentoAdquirentePersist.h"
#import "PierVinculoEstabelecimentoAdquirenteResponse.h"
#import "PierVinculoOperacaoPersist.h"
#import "PierVinculoOperacaoResponse.h"
#import "PierWebHookPersistValue_.h"
#import "PierWebHookResponse.h"


@class PierConfiguration;

/**
 * A key for `NSError` user info dictionaries.
 *
 * The corresponding value is the parsed response body for an HTTP error.
 */
extern NSString *const PierResponseObjectErrorKey;

/**
 * Log debug message macro
 */
#define PierDebugLog(format, ...) [PierApiClient debugLog:[NSString stringWithFormat:@"%s", __PRETTY_FUNCTION__] message: format, ##__VA_ARGS__];

@interface PierApiClient : AFHTTPRequestOperationManager

@property(nonatomic, assign) NSURLRequestCachePolicy cachePolicy;
@property(nonatomic, assign) NSTimeInterval timeoutInterval;
@property(nonatomic, readonly) NSOperationQueue* queue;

/// In order to ensure the HTTPResponseHeaders are correct, it is recommended to initialize one PierApiClient instance per thread.
@property(nonatomic, readonly) NSDictionary* HTTPResponseHeaders;

/**
 * Clears Cache
 */
+(void)clearCache;

/**
 * Turns on cache
 *
 * @param enabled If the cached is enable, must be `YES` or `NO`
 */
+(void)setCacheEnabled:(BOOL) enabled;

/**
 * Gets the request queue size
 *
 * @return The size of `queuedRequests` static variable.
 */
+(unsigned long)requestQueueSize;

/**
 * Sets the client unreachable
 *
 * @param state off line state, must be `YES` or `NO`
 */
+(void) setOfflineState:(BOOL) state;

/**
 * Gets if the client is unreachable
 *
 * @return The client offline state
 */
+(bool) getOfflineState;

/**
 * Sets the client reachability, this may be overridden by the reachability manager if reachability changes
 *
 * @param The client reachability.
 */
+(void) setReachabilityStatus:(AFNetworkReachabilityStatus) status;

/**
 * Gets the client reachability
 *
 * @return The client reachability.
 */
+(AFNetworkReachabilityStatus) getReachabilityStatus;

/**
 * Gets the next request id
 *
 * @return The next executed request id.
 */
+(NSNumber*) nextRequestId;

/**
 * Generates request id and add it to the queue
 *
 * @return The next executed request id.
 */
+(NSNumber*) queueRequest;

/**
 * Removes request id from the queue
 *
 * @param requestId The request which will be removed.
 */
+(void) cancelRequest:(NSNumber*)requestId;

/**
 * Gets URL encoded NSString
 *
 * @param unescaped The string which will be escaped.
 *
 * @return The escaped string.
 */
+(NSString*) escape:(id)unescaped;

/**
 * Customizes the behavior when the reachability changed
 *
 * @param changeBlock The block will be executed when the reachability changed.
 */
+(void) setReachabilityChangeBlock:(void(^)(int))changeBlock;

/**
 * Sets the api client reachability strategy
 */
- (void)configureCacheReachibility;

/**
 * Detects Accept header from accepts NSArray
 *
 * @param accepts NSArray of header
 *
 * @return The Accept header
 */
+(NSString *) selectHeaderAccept:(NSArray *)accepts;

/**
 * Detects Content-Type header from contentTypes NSArray
 *
 * @param contentTypes NSArray of header
 *
 * @return The Content-Type header
 */
+(NSString *) selectHeaderContentType:(NSArray *)contentTypes;

/**
 * Sets header for request
 *
 * @param value The header value
 * @param forKey The header key
 */
-(void)setHeaderValue:(NSString*) value
               forKey:(NSString*) forKey;

/**
 * Updates header parameters and query parameters for authentication
 *
 * @param headers The header parameter will be udpated, passed by pointer to pointer.
 * @param querys The query parameters will be updated, passed by pointer to pointer.
 * @param authSettings The authentication names NSArray.
 */
- (void) updateHeaderParams:(NSDictionary **)headers
                queryParams:(NSDictionary **)querys
           WithAuthSettings:(NSArray *)authSettings;

/**
 * Deserializes the given data to Objective-C object.
 *
 * @param data The data will be deserialized.
 * @param class The type of objective-c object.
 */
- (id) deserialize:(id) data class:(NSString *) class;

/**
 * Logs request and response
 *
 * @param operation AFHTTPRequestOperation for the HTTP request.
 * @param request   The HTTP request.
 * @param error     The error of the HTTP request.
 */
- (void)logResponse:(AFHTTPRequestOperation *)operation
         forRequest:(NSURLRequest *)request
              error:(NSError *)error;

/**
 * Performs request
 *
 * @param path Request url.
 * @param method Request method.
 * @param pathParams Request path parameters.
 * @param queryParams Request query parameters.
 * @param body Request body.
 * @param headerParams Request header parameters.
 * @param authSettings Request authentication names.
 * @param requestContentType Request content-type.
 * @param responseContentType Response content-type.
 * @param completionBlock The block will be executed when the request completed.
 *
 * @return The request id.
 */
-(NSNumber*) requestWithPath:(NSString*) path
                      method:(NSString*) method
                  pathParams:(NSDictionary *) pathParams
                 queryParams:(NSDictionary*) queryParams
                  formParams:(NSDictionary *) formParams
                       files:(NSDictionary *) files
                        body:(id) body
                headerParams:(NSDictionary*) headerParams
                authSettings:(NSArray *) authSettings
          requestContentType:(NSString*) requestContentType
         responseContentType:(NSString*) responseContentType
                responseType:(NSString *) responseType
             completionBlock:(void (^)(id, NSError *))completionBlock;

/**
 * Sanitize object for request
 *
 * @param object The query/path/header/form/body param to be sanitized.
 */
- (id) sanitizeForSerialization:(id) object;

/**
 * Custom security policy
 *
 * @return AFSecurityPolicy
 */
- (AFSecurityPolicy *) customSecurityPolicy;

/**
 * Convert parameter to NSString
 */
- (NSString *) parameterToString: (id) param;

/**
 * Log debug message
 */
+(void)debugLog:(NSString *)method message:(NSString *)format, ...;

@end
