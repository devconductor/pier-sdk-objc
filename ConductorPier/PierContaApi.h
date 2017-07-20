#import <Foundation/Foundation.h>
#import "PierAjusteResponse.h"
#import "PierLimiteDisponibilidadeResponse.h"
#import "PierContaResponse.h"
#import "PierBoletoResponse.h"
#import "PierDividaClienteResponse.h"
#import "PierDetalhesFaturaConsignadaResponse.h"
#import "PierFaturaConsignadaDetalheResponse.h"
#import "PierDetalhesFaturaResponse.h"
#import "PierPageTaxasRefinanciamentoResponse.h"
#import "PierTransferenciaBancariaResponse.h"
#import "PierPageTransferenciaResponse.h"
#import "PierContaDetalheResponse.h"
#import "PierCartaoImpressaoResponse.h"
#import "PierPageFaturaConsignadaResponse.h"
#import "PierPageFaturaResponse.h"
#import "PierPageHistoricoEventosResponse.h"
#import "PierPageHistoricoAssessoriaResponse.h"
#import "PierPageHistoricoAtrasoFaturaResponse.h"
#import "PierPageTransacoesCorrentesResponse.h"
#import "PierPageTransferenciaBancariaResponse.h"
#import "PierPageContaResponse.h"
#import "PierPageTransacaoResponse.h"
#import "PierTransferenciaBancariaPersist.h"
#import "PierObject.h"
#import "PierApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface PierContaApi: NSObject

@property(nonatomic, assign)PierApiClient *apiClient;

-(instancetype) initWithApiClient:(PierApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(PierContaApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(PierContaApi*) sharedAPI;
///
///
/// Lan\u00C3\u00A7a um ajuste para a conta do id informado
/// Este recurso insere um ajuste para a conta do id informado
///
/// @param _id Id Conta
/// @param idTipoAjuste C\u00C3\u00B3digo identificador do tipo de ajuste.
/// @param dataAjuste Data do ajuste.
/// @param valorAjuste Valor do ajuste
/// 
///
/// @return PierAjusteResponse*
-(NSNumber*) ajustarContaUsingPOSTWithId: (NSNumber*) _id
    idTipoAjuste: (NSNumber*) idTipoAjuste
    dataAjuste: (NSString*) dataAjuste
    valorAjuste: (NSNumber*) valorAjuste
    completionHandler: (void (^)(PierAjusteResponse* output, NSError* error)) handler;


///
///
/// Realiza a altera\u00C3\u00A7\u00C3\u00A3o dos limites da conta
/// Esse recurso permite realizar a altera\u00C3\u00A7\u00C3\u00A3o dos Limites de uma determinada Conta.
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// @param limiteGlobal Apresenta o valor do limite de cr\u00C3\u00A9dito que o portador do cart\u00C3\u00A3o possui.
/// @param limiteCompra Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador possui para uso exclusivo em Compras Nacionais.
/// @param limiteParcelado Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador possui para realizar transa\u00C3\u00A7\u00C3\u00B5es de compras parceladas.
/// @param limiteParcelas Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que portador pode acumular a partir da soma das parcelas das compras que forem realizadas nesta modalidade.
/// @param limiteSaqueGlobal Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador pode utilizar para realizar transa\u00C3\u00A7\u00C3\u00B5es de Saque Nacional.
/// @param limiteSaquePeriodo Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador pode utilizar para realizar transa\u00C3\u00A7\u00C3\u00B5es de Saque Nacional dentro de cada ciclo de faturamento.
/// @param limiteConsignado Quando utilizado pelo emissor, este campo apresenta o valor da margem de cr\u00C3\u00A9dito que ele poder\u00C3\u00A1 utilizar para ser cobrado de forma consignada (desconto em folha) em seu sal\u00C3\u00A1rio/vencimentos.
/// @param limiteInternacionalCompra Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador possui para uso exclusivo em Compras Internacionais.
/// @param limiteInternacionalParcelado Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador possui para realizar transa\u00C3\u00A7\u00C3\u00B5es Internacionais de Compras Parceladas.
/// @param limiteInternacionalParcelas Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que portador pode acumular a partir da soma das parcelas das compras internacionais que forem realizadas nesta modalidade.
/// @param limiteInternacionalSaqueGlobal Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador pode utilizar para realizar transa\u00C3\u00A7\u00C3\u00B5es de Saque Internacional.
/// @param limiteInternacionalSaquePeriodo Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador pode utilizar para realizar transa\u00C3\u00A7\u00C3\u00B5es de Saque Internacional dentro de cada ciclo de faturamento.
/// @param limiteMaximo Valor m\u00C3\u00A1ximo do limite de cr\u00C3\u00A9dito para realizar transa\u00C3\u00A7\u00C3\u00B5es.
/// 
///
/// @return PierLimiteDisponibilidadeResponse*
-(NSNumber*) alterarLimiteUsingPUTWithId: (NSNumber*) _id
    limiteGlobal: (NSNumber*) limiteGlobal
    limiteCompra: (NSNumber*) limiteCompra
    limiteParcelado: (NSNumber*) limiteParcelado
    limiteParcelas: (NSNumber*) limiteParcelas
    limiteSaqueGlobal: (NSNumber*) limiteSaqueGlobal
    limiteSaquePeriodo: (NSNumber*) limiteSaquePeriodo
    limiteConsignado: (NSNumber*) limiteConsignado
    limiteInternacionalCompra: (NSNumber*) limiteInternacionalCompra
    limiteInternacionalParcelado: (NSNumber*) limiteInternacionalParcelado
    limiteInternacionalParcelas: (NSNumber*) limiteInternacionalParcelas
    limiteInternacionalSaqueGlobal: (NSNumber*) limiteInternacionalSaqueGlobal
    limiteInternacionalSaquePeriodo: (NSNumber*) limiteInternacionalSaquePeriodo
    limiteMaximo: (NSNumber*) limiteMaximo
    completionHandler: (void (^)(PierLimiteDisponibilidadeResponse* output, NSError* error)) handler;


///
///
/// Realiza a altera\u00C3\u00A7\u00C3\u00A3o de uma Pessoa tilular da conta
/// Esta m\u00C3\u00A9todo permite altera a pessoa de uma conta.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Conta (id)
/// @param idPessoa C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o de uma Pessoa (id).
/// 
///
/// @return PierContaResponse*
-(NSNumber*) alterarTitularUsingPOSTWithId: (NSNumber*) _id
    idPessoa: (NSNumber*) idPessoa
    completionHandler: (void (^)(PierContaResponse* output, NSError* error)) handler;


///
///
/// Realiza a altera\u00C3\u00A7\u00C3\u00A3o do dia de vencimento das faturas da conta
/// Esse recurso permite alterar o vencimento de uma conta especifica.
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// @param novoDiaVencimento Novo dia de vencimento.
/// 
///
/// @return PierContaResponse*
-(NSNumber*) alterarVencimentoUsingPUTWithId: (NSNumber*) _id
    novoDiaVencimento: (NSNumber*) novoDiaVencimento
    completionHandler: (void (^)(PierContaResponse* output, NSError* error)) handler;


///
///
/// Atribuir Anuidade
/// Esse recurso permite configurar qual a regra de Anuidade que ser\u00C3\u00A1 atribu\u00C3\u00ADda a uma determinada Conta.
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// @param idAnuidade Identificador da anuidade
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param dDD DDD do celular
/// @param celular N\u00C3\u00BAmero do celular
/// @param idOperadora Identificador da operadora do celular
/// @param idOrigemComercial Identificador da origem comercial
/// 
///
/// @return NSObject*
-(NSNumber*) ativarAnuidadeUsingPOSTWithId: (NSNumber*) _id
    idAnuidade: (NSNumber*) idAnuidade
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    dDD: (NSString*) dDD
    celular: (NSString*) celular
    idOperadora: (NSNumber*) idOperadora
    idOrigemComercial: (NSNumber*) idOrigemComercial
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;


///
///
///  Ativa o servi\u00C3\u00A7o de envio de fatura por email
/// Este recurso ativa o servi\u00C3\u00A7o de envio de fatura por email
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// 
///
/// @return NSObject*
-(NSNumber*) ativarEnvioFaturaEmailUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;


///
///
/// Realiza o bloqueio de uma determinada Conta
/// Este m\u00C3\u00A9todo permite a realiza\u00C3\u00A7\u00C3\u00A3o do bloqueio de uma determinada conta a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// @param idStatus C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Novo Status Conta.
/// 
///
/// @return PierContaResponse*
-(NSNumber*) bloquearUsingPOST1WithId: (NSNumber*) _id
    idStatus: (NSNumber*) idStatus
    completionHandler: (void (^)(PierContaResponse* output, NSError* error)) handler;


///
///
/// Realiza o cancelamento de uma determinada Conta
/// Este m\u00C3\u00A9todo permite a realiza\u00C3\u00A7\u00C3\u00A3o do cancelamento de uma determinada conta a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// @param idStatus C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Novo Status Conta.
/// 
///
/// @return PierContaResponse*
-(NSNumber*) cancelarUsingPOST1WithId: (NSNumber*) _id
    idStatus: (NSNumber*) idStatus
    completionHandler: (void (^)(PierContaResponse* output, NSError* error)) handler;


///
///
/// Consulta os dados de um determinado boleto da fatura
/// Este recurso consulta um boleto da fatura
///
/// @param _id Id Conta
/// 
///
/// @return PierBoletoResponse*
-(NSNumber*) consultarBoletoEmitidoUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierBoletoResponse* output, NSError* error)) handler;


///
///
/// Consulta a d\u00C3\u00ADvida atualizada do cliente
/// Este recurso consulta a d\u00C3\u00ADvida atualizada do cliente
///
/// @param _id Id Conta
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param dataVencimento Data do vencimento
/// @param idEscritorioCobranca C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do escrit\u00C3\u00B3rio de cobran\u00C3\u00A7a
/// 
///
/// @return PierDividaClienteResponse*
-(NSNumber*) consultarDividaAtualizadaClienteUsingGETWithId: (NSNumber*) _id
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    dataVencimento: (NSString*) dataVencimento
    idEscritorioCobranca: (NSNumber*) idEscritorioCobranca
    completionHandler: (void (^)(PierDividaClienteResponse* output, NSError* error)) handler;


///
///
/// Consultar a fatura consignadas abertas da conta
/// Atrav\u00C3\u00A9s desta opera\u00C3\u00A7\u00C3\u00A3o os Emissores ou Portadores poder\u00C3\u00A3o consultar a fatura consignada em aberto
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// @param dataVencimento Data Vencimento
/// 
///
/// @return PierDetalhesFaturaConsignadaResponse*
-(NSNumber*) consultarFaturaConsignadaAbertaUsingGETWithId: (NSNumber*) _id
    dataVencimento: (NSString*) dataVencimento
    completionHandler: (void (^)(PierDetalhesFaturaConsignadaResponse* output, NSError* error)) handler;


///
///
/// Apresenta dados de uma determinada fatura consignada
/// Atrav\u00C3\u00A9s desta opera\u00C3\u00A7\u00C3\u00A3o os Emissores ou Portadores poder\u00C3\u00A3o consultar uma fatura, atrav\u00C3\u00A9s do id da conta e o id da fatura.
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// @param idFatura C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da fatura (id_fatura).
/// 
///
/// @return PierFaturaConsignadaDetalheResponse*
-(NSNumber*) consultarFaturaConsignadaUsingGETWithId: (NSNumber*) _id
    idFatura: (NSNumber*) idFatura
    completionHandler: (void (^)(PierFaturaConsignadaDetalheResponse* output, NSError* error)) handler;


///
///
/// Consultar Fatura da Conta
/// Atrav\u00C3\u00A9s desta opera\u00C3\u00A7\u00C3\u00A3o os Emissores ou Portadores poder\u00C3\u00A3o consultar os detalhes de uma fatura vinculados a uma determinada conta.
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// @param dataVencimento Data Vencimento.
/// 
///
/// @return PierDetalhesFaturaResponse*
-(NSNumber*) consultarFaturaUsingGETWithId: (NSNumber*) _id
    dataVencimento: (NSString*) dataVencimento
    completionHandler: (void (^)(PierDetalhesFaturaResponse* output, NSError* error)) handler;


///
///
/// Consultar Lan\u00C3\u00A7amentos Futuros da Fatura de uma Conta
/// Atrav\u00C3\u00A9s desta opera\u00C3\u00A7\u00C3\u00A3o os Emissores ou Portadores poder\u00C3\u00A3o consultar os detalhes dos lan\u00C3\u00A7amentos futuros de uma fatura vinculados a uma determinada conta.
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// @param dataVencimento Data Vencimento
/// 
///
/// @return PierDetalhesFaturaResponse*
-(NSNumber*) consultarLancamentosFuturosFaturaUsingGETWithId: (NSNumber*) _id
    dataVencimento: (NSString*) dataVencimento
    completionHandler: (void (^)(PierDetalhesFaturaResponse* output, NSError* error)) handler;


///
///
/// Apresenta os limites da conta
/// Este m\u00C3\u00A9todo permite consultar os Limites configurados para uma determinada Conta, a partir do c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
///
/// @param _id Id Conta
/// 
///
/// @return PierLimiteDisponibilidadeResponse*
-(NSNumber*) consultarLimiteDisponibilidadeUsingGET1WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierLimiteDisponibilidadeResponse* output, NSError* error)) handler;


///
///
/// Permite consultar a partir do ID da conta as taxas e tarifas
/// Esta opera\u00C3\u00A7\u00C3\u00A3o tem como objetivo permitir que os Emissores consultem as taxas e tarifas da conta
///
/// @param _id ID da conta a ser consultada.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// 
///
/// @return PierPageTaxasRefinanciamentoResponse*
-(NSNumber*) consultarTaxasTarifasUsingGETWithId: (NSNumber*) _id
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageTaxasRefinanciamentoResponse* output, NSError* error)) handler;


///
///
/// Consultar uma transfer\u00C3\u00AAncia banc\u00C3\u00A1ria para um banco
/// Este recurso permite consultar os detalhes de uma determinada transfer\u00C3\u00AAncia de cr\u00C3\u00A9dito realizada para uma conta banc\u00C3\u00A1ria. De modo geral, esta opera\u00C3\u00A7\u00C3\u00A3o poder\u00C3\u00A1 ser utilizada para uma consulta simples destes detalhes ou para realizar a montagem de um comprovante de 2\u00C2\u00AA via de transfer\u00C3\u00AAncia entre contas.
///
/// @param _id Id Conta
/// @param idTransferencia Id Transfer\u00C3\u00AAncia
/// @param idContaBancariaDestino C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta banc\u00C3\u00A1ria de destino (id)
/// 
///
/// @return PierTransferenciaBancariaResponse*
-(NSNumber*) consultarUsingGET24WithId: (NSNumber*) _id
    idTransferencia: (NSNumber*) idTransferencia
    idContaBancariaDestino: (NSNumber*) idContaBancariaDestino
    completionHandler: (void (^)(PierTransferenciaBancariaResponse* output, NSError* error)) handler;


///
///
/// Consulta os detalhes de uma determinada transfer\u00C3\u00AAncia
/// Este m\u00C3\u00A9todo permite consultar os detalhes de uma determinada transfer\u00C3\u00AAncia de cr\u00C3\u00A9dito realizada entre contas.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// @param idTransferencia C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da transfer\u00C3\u00AAncia (id_transferencia).
/// 
///
/// @return PierPageTransferenciaResponse*
-(NSNumber*) consultarUsingGET25WithId: (NSNumber*) _id
    idTransferencia: (NSNumber*) idTransferencia
    completionHandler: (void (^)(PierPageTransferenciaResponse* output, NSError* error)) handler;


///
///
/// Apresenta dados de uma determinada conta
/// Este m\u00C3\u00A9todo permite consultar dados de uma determinada conta a partir de seu codigo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// 
///
/// @return PierContaDetalheResponse*
-(NSNumber*) consultarUsingGET5WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierContaDetalheResponse* output, NSError* error)) handler;


///
///
/// Desativa o servi\u00C3\u00A7o de envio de fatura por email
/// Este recurso desativa o servi\u00C3\u00A7o de envio de fatura por email
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// 
///
/// @return NSObject*
-(NSNumber*) desativarEnvioFaturaEmailUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;


///
///
/// Gera um boleto de recarga
/// Este recurso gera um boleto de recarga
///
/// @param _id Id Conta
/// @param valor Atributo que representa o valor do Boleto Emitido
/// @param dataVencimento Atributo que representa a data de vencimento do boleto
/// 
///
/// @return PierBoletoResponse*
-(NSNumber*) gerarBoletoRecargaUsingPOSTWithId: (NSNumber*) _id
    valor: (NSNumber*) valor
    dataVencimento: (NSString*) dataVencimento
    completionHandler: (void (^)(PierBoletoResponse* output, NSError* error)) handler;


///
///
/// Realiza a gera\u00C3\u00A7\u00C3\u00A3o de um novo cart\u00C3\u00A3o para impress\u00C3\u00A3o avulsa
/// Este recurso permite que seja gerado um novo Cart\u00C3\u00A3o para um determinado Portador que esteja vinculado a uma Conta. Para isso, ser\u00C3\u00A1 preciso informar o c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da Conta (id), o idPessoa do Portador e o idTipoPlastico do Cart\u00C3\u00A3o que dever\u00C3\u00A1 ser gerado para impress\u00C3\u00A3o. Esta funcionalidade poder\u00C3\u00A1 ser utilizada para realizar a impress\u00C3\u00A3o de cart\u00C3\u00B5es em Lojas, Quiosques, Escrit\u00C3\u00B3rios, Terminais de Auto Atendimento, ou outro local que o Emissor escolher, desde que se possua uma impressora de Cart\u00C3\u00B5es habilidade para o fazer, no local.
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// @param idPessoa C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da pessoa (id).
/// @param idTipoPlastico C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do TipoPlastico (id).
/// 
///
/// @return PierCartaoImpressaoResponse*
-(NSNumber*) gerarCartaoUsingPOSTWithId: (NSNumber*) _id
    idPessoa: (NSNumber*) idPessoa
    idTipoPlastico: (NSNumber*) idTipoPlastico
    completionHandler: (void (^)(PierCartaoImpressaoResponse* output, NSError* error)) handler;


///
///
/// Realiza a gera\u00C3\u00A7\u00C3\u00A3o de um cart\u00C3\u00A3o virtual
/// Este recurso permite que seja gerado um Cart\u00C3\u00A3o virtual para um determinado Portador que esteja vinculado a uma Conta. Para isso, ser\u00C3\u00A1 preciso informar o c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da Conta (id). Esta funcionalidade poder\u00C3\u00A1 ser utilizada para realizar a cria\u00C3\u00A7\u00C3\u00A3o de cart\u00C3\u00B5es virtuaes atraves de um app.
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// @param dataValidade Data de Validade
/// 
///
/// @return PierCartaoImpressaoResponse*
-(NSNumber*) gerarCartaoVirtualUsingPOSTWithId: (NSNumber*) _id
    dataValidade: (NSString*) dataValidade
    completionHandler: (void (^)(PierCartaoImpressaoResponse* output, NSError* error)) handler;


///
///
/// Lista as faturas consignadas da conta
/// Atrav\u00C3\u00A9s desta opera\u00C3\u00A7\u00C3\u00A3o os Emissores ou Portadores poder\u00C3\u00A3o consultar todo o Hist\u00C3\u00B3rico de Faturas vinculados a uma determinada Conta, independentemente do valor delas.
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param dataVencimento Apresenta a data de vencimento da fatura.
/// 
///
/// @return PierPageFaturaConsignadaResponse*
-(NSNumber*) listarFaturasConsignadasUsingGETWithId: (NSNumber*) _id
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    dataVencimento: (NSString*) dataVencimento
    completionHandler: (void (^)(PierPageFaturaConsignadaResponse* output, NSError* error)) handler;


///
///
/// Lista as faturas da conta
/// Atrav\u00C3\u00A9s desta opera\u00C3\u00A7\u00C3\u00A3o os Emissores ou Portadores poder\u00C3\u00A3o consultar todo o Hist\u00C3\u00B3rico de Faturas vinculados a uma determinada Conta, independentemente do valor delas.
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param dataVencimento Data de Vencimento da Fatura.
/// 
///
/// @return PierPageFaturaResponse*
-(NSNumber*) listarFaturasUsingGETWithId: (NSNumber*) _id
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    dataVencimento: (NSString*) dataVencimento
    completionHandler: (void (^)(PierPageFaturaResponse* output, NSError* error)) handler;


///
///
/// Lista o hist\u00C3\u00B3rico de altera\u00C3\u00A7\u00C3\u00B5es de limites da conta
/// Este recurso consulta o hist\u00C3\u00B3rico com as altera\u00C3\u00A7\u00C3\u00B5es de limites da conta informada
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// 
///
/// @return PierPageHistoricoEventosResponse*
-(NSNumber*) listarHistoricoAlteracoesLimitesUsingGETWithId: (NSNumber*) _id
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageHistoricoEventosResponse* output, NSError* error)) handler;


///
///
/// Lista o hist\u00C3\u00B3rico de entradas/sa\u00C3\u00ADdas de assessorias de cobran\u00C3\u00A7a
/// Permite listar todos os registros de entrada e sa\u00C3\u00ADda da Conta em arquivos de integra\u00C3\u00A7\u00C3\u00A3o com empresas de assessorias de cobran\u00C3\u00A7a a partir do c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (idConta).
///
/// @param _id Id Conta
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// 
///
/// @return PierPageHistoricoAssessoriaResponse*
-(NSNumber*) listarHistoricoAssessoriaUsingGETWithId: (NSNumber*) _id
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageHistoricoAssessoriaResponse* output, NSError* error)) handler;


///
///
/// Lista o historico de atrasos das faturas
/// Este recurso lista o hist\u00C3\u00B3rico do pagamento de faturas em atraso
///
/// @param _id Id Conta
/// 
///
/// @return PierPageHistoricoAtrasoFaturaResponse*
-(NSNumber*) listarHistoricoAtrasosFaturasUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierPageHistoricoAtrasoFaturaResponse* output, NSError* error)) handler;


///
///
/// Lista as transa\u00C3\u00A7\u00C3\u00B5es n\u00C3\u00A3o processadas da conta
/// Este m\u00C3\u00A9todo permite que sejam listadas todas as transa\u00C3\u00A7\u00C3\u00B5es n\u00C3\u00A3o processadas da Conta.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param dataInicio Data de in\u00C3\u00ADcio da consulta do extrato no formato yyyy-MM-dd (Par\u00C3\u00A2mentro Ignorado se dataFim n\u00C3\u00A3o for definida).
/// @param dataFim Data fim da consulta do extrato no formato yyyy-MM-dd  (Par\u00C3\u00A2mentro Ignorado se dataInicio n\u00C3\u00A3o for definida).
/// 
///
/// @return PierPageTransacoesCorrentesResponse*
-(NSNumber*) listarNaoProcessadasUsingGETWithId: (NSNumber*) _id
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    dataInicio: (NSString*) dataInicio
    dataFim: (NSString*) dataFim
    completionHandler: (void (^)(PierPageTransacoesCorrentesResponse* output, NSError* error)) handler;


///
///
/// Lista as transa\u00C3\u00A7\u00C3\u00B5es processadas da conta
/// Este m\u00C3\u00A9todo permite que sejam listadas todas as transa\u00C3\u00A7\u00C3\u00B5es processadas da Conta.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param dataVencimento Data de vencimento do extrato no formato yyyy-MM-dd.
/// @param dataInicio Data de in\u00C3\u00ADcio da consulta do extrato no formato yyyy-MM-dd (Ignorado quando o par\u00C3\u00A2mentro dataVencimento \u00C3\u00A9 usado).
/// @param dataFim Data fim da consulta do extrato no formato yyyy-MM-dd  (Ignorado quando o par\u00C3\u00A2mentro dataVencimento \u00C3\u00A9 usado).
/// 
///
/// @return PierPageTransacoesCorrentesResponse*
-(NSNumber*) listarProcessadasUsingGETWithId: (NSNumber*) _id
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    dataVencimento: (NSString*) dataVencimento
    dataInicio: (NSString*) dataInicio
    dataFim: (NSString*) dataFim
    completionHandler: (void (^)(PierPageTransacoesCorrentesResponse* output, NSError* error)) handler;


///
///
/// Listar as transfer\u00C3\u00AAncias banc\u00C3\u00A1rias realizadas
/// Este recurso tem como objetivo permitir que o portador de um Cart\u00C3\u00A3o possa consultar uma lista das Transfer\u00C3\u00AAncias Banc\u00C3\u00A1rias para os Favorecidos cadastrados.
///
/// @param _id Id Conta
/// @param idContaBancariaDestino C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta banc\u00C3\u00A1ria de destino (id)
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// 
///
/// @return PierPageTransferenciaBancariaResponse*
-(NSNumber*) listarUsingGET28WithId: (NSNumber*) _id
    idContaBancariaDestino: (NSNumber*) idContaBancariaDestino
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageTransferenciaBancariaResponse* output, NSError* error)) handler;


///
///
/// Lista as transfer\u00C3\u00AAncias realizadas pela conta
/// Este m\u00C3\u00A9todo permite que sejam listadas as transfer\u00C3\u00AAncias realizadas pela conta existentes na base do emissor.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da conta (id).
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param idTransferencia C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da transfer\u00C3\u00AAncia (id).
/// @param idContaOrigem C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta em que o valor ser\u00C3\u00A1 debitado para a transfer\u00C3\u00AAncia. (id).
/// @param idContaDestino C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta em que o valor ser\u00C3\u00A1 creditado para a transfer\u00C3\u00AAncia. (id).
/// @param valorTransferencia Valor estabelecido para ser transferido.
/// @param dataTransferencia Data estabelecida para ocorrer a transfer\u00C3\u00AAncia.
/// 
///
/// @return PierPageTransferenciaResponse*
-(NSNumber*) listarUsingGET29WithId: (NSNumber*) _id
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idTransferencia: (NSNumber*) idTransferencia
    idContaOrigem: (NSNumber*) idContaOrigem
    idContaDestino: (NSNumber*) idContaDestino
    valorTransferencia: (NSNumber*) valorTransferencia
    dataTransferencia: (NSString*) dataTransferencia
    completionHandler: (void (^)(PierPageTransferenciaResponse* output, NSError* error)) handler;


///
///
/// Lista contas existentes na base de dados do Emissor
/// Este recurso permite listar contas existentes na base de dados do Emissor.
///
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param idProduto C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do produto ao qual a conta faz parte. (id).
/// @param idOrigemComercial C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Origem Comercial (id) que deu origem a Conta.
/// @param idPessoa C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa Titular da Conta (id).
/// @param idStatusConta C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto a qual o cart\u00C3\u00A3o pertence (id).
/// @param diaVencimento Apresenta o dia de vencimento.
/// @param melhorDiaCompra Apresenta o melhor dia de compra.
/// @param dataStatusConta Apresenta a data em que o idStatusConta atual fora atribu\u00C3\u00ADdo para ela.
/// @param dataCadastro Apresenta a data em que o cart\u00C3\u00A3o foi gerado.
/// @param dataUltimaAlteracaoVencimento Apresenta a data da ultima altera\u00C3\u00A7\u00C3\u00A3o de vencimento.
/// 
///
/// @return PierPageContaResponse*
-(NSNumber*) listarUsingGET7WithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    idProduto: (NSNumber*) idProduto
    idOrigemComercial: (NSNumber*) idOrigemComercial
    idPessoa: (NSNumber*) idPessoa
    idStatusConta: (NSNumber*) idStatusConta
    diaVencimento: (NSNumber*) diaVencimento
    melhorDiaCompra: (NSNumber*) melhorDiaCompra
    dataStatusConta: (NSString*) dataStatusConta
    dataCadastro: (NSString*) dataCadastro
    dataUltimaAlteracaoVencimento: (NSString*) dataUltimaAlteracaoVencimento
    completionHandler: (void (^)(PierPageContaResponse* output, NSError* error)) handler;


///
///
/// Realiza a reativa\u00C3\u00A7\u00C3\u00A3o de contas.
/// Este recurso permite reativar contas. Para isso, ser\u00C3\u00A1 preciso informar o c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da Conta (id).
///
/// @param _id Id Conta
/// 
///
/// @return NSObject*
-(NSNumber*) reativarUsingPOST1WithId: (NSNumber*) _id
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;


///
///
/// Permite listar uma linha do tempo com os eventos da conta
/// Esta opera\u00C3\u00A7\u00C3\u00A3o tem como objetivo permitir a listagem, em formato de timeline, dos eventos vinculados a uma detemrinada conta. Transa\u00C3\u00A7\u00C3\u00B5es, fechamento da fatura, pagamentos, gera\u00C3\u00A7\u00C3\u00A3o de cart\u00C3\u00B5es e altera\u00C3\u00A7\u00C3\u00A3o de limite s\u00C3\u00A3o exemplos de eventos contemplados por esta funcionalidade. Neste m\u00C3\u00A9todo, as opera\u00C3\u00A7\u00C3\u00B5es s\u00C3\u00A3o ordenadas de forma decrescente.
///
/// @param _id Id Conta
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// 
///
/// @return PierPageTransacaoResponse*
-(NSNumber*) transacoesUsingGETWithId: (NSNumber*) _id
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageTransacaoResponse* output, NSError* error)) handler;


///
///
/// Realizar transfer\u00C3\u00AAncia banc\u00C3\u00A1ria do cart\u00C3\u00A3o para contas banc\u00C3\u00A1rias
/// Este recurso tem como objetivo permitir que o portador de um cart\u00C3\u00A3o possa realizar a transfer\u00C3\u00AAncia de cr\u00C3\u00A9dito para uma conta banc\u00C3\u00A1ria. Assim, o valor do cr\u00C3\u00A9dito somado a tarifa para transfer\u00C3\u00AAncia, quando praticada pelo emissor, ser\u00C3\u00A1 debitado da conta de origem, se houver saldo suficiente, e ser\u00C3\u00A1 creditado na conta banc\u00C3\u00A1ria de destino.
///
/// @param _id Id Conta
/// @param transferenciaBancariaPersist transferenciaBancariaPersist
/// 
///
/// @return PierTransferenciaBancariaResponse*
-(NSNumber*) transferirUsingPOSTWithId: (NSNumber*) _id
    transferenciaBancariaPersist: (PierTransferenciaBancariaPersist*) transferenciaBancariaPersist
    completionHandler: (void (^)(PierTransferenciaBancariaResponse* output, NSError* error)) handler;


///
///
/// Realiza uma transfer\u00C3\u00AAncia de Cr\u00C3\u00A9dito para outro cliente do mesmo Emissor
/// Este m\u00C3\u00A9todo permite que um portador de um cart\u00C3\u00A3o possa realizar auma transfer\u00C3\u00AAncia de cr\u00C3\u00A9dito para outro cliente do mesmo emissor.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da conta do cliente portador do cart\u00C3\u00A3o que ser\u00C3\u00A1 debitado (id).
/// @param idContaDestino C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do cliente portador do cart\u00C3\u00A3o que ser\u00C3\u00A1 creditado (id).
/// @param valorTransferencia Valor da Transfer\u00C3\u00AAncia.
/// 
///
/// @return PierPageTransferenciaResponse*
-(NSNumber*) transferirUsingPOST1WithId: (NSNumber*) _id
    idContaDestino: (NSNumber*) idContaDestino
    valorTransferencia: (NSNumber*) valorTransferencia
    completionHandler: (void (^)(PierPageTransferenciaResponse* output, NSError* error)) handler;



@end
