#import <Foundation/Foundation.h>
#import "PierParametroProdutoResponse.h"
#import "PierTaxaAntecipacaoRequest.h"
#import "PierAntecipacaoResponse.h"
#import "PierPageCompraResponse.h"
#import "PierAntecipacaoSimuladaResponse.h"
#import "PierAntecipacaoSimuladaLoteResponse.h"
#import "PierObject.h"
#import "PierApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface PierAntecipacaoApi: NSObject

@property(nonatomic, assign)PierApiClient *apiClient;

-(instancetype) initWithApiClient:(PierApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(PierAntecipacaoApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(PierAntecipacaoApi*) sharedAPI;
///
///
/// Configura a Taxa de Antecipa\u00C3\u00A7\u00C3\u00A3o de um Produto
/// Este recurso permite configurar a Taxa de Antecipa\u00C3\u00A7\u00C3\u00A3o de um Produto, a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param _id Id Produto
/// @param taxaAntecipacaoRequest taxaAntecipacaoRequest
/// 
///
/// @return PierParametroProdutoResponse*
-(NSNumber*) configurarTaxaAntecipacaoUsingPOSTWithId: (NSNumber*) _id
    taxaAntecipacaoRequest: (PierTaxaAntecipacaoRequest*) taxaAntecipacaoRequest
    completionHandler: (void (^)(PierParametroProdutoResponse* output, NSError* error)) handler;


///
///
/// Consulta a Taxa de Antecipa\u00C3\u00A7\u00C3\u00A3o de um Produto
/// Este recurso permite consultar a Taxa de Antecipa\u00C3\u00A7\u00C3\u00A3o de um Produto, a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param _id Id Produto
/// @param tipoTransacao Tipo da Transa\u00C3\u00A7\u00C3\u00A3o (ON-US ou OFF-US)
/// 
///
/// @return PierParametroProdutoResponse*
-(NSNumber*) consultarTaxaAntecipacaoUsingGETWithId: (NSNumber*) _id
    tipoTransacao: (NSString*) tipoTransacao
    completionHandler: (void (^)(PierParametroProdutoResponse* output, NSError* error)) handler;


///
///
/// Faz a efetiva\u00C3\u00A7\u00C3\u00A3o da antecipa\u00C3\u00A7\u00C3\u00A3o
/// M\u00C3\u00A9todo responsavel pela efetiva\u00C3\u00A7\u00C3\u00A3o da antecipa\u00C3\u00A7\u00C3\u00A3o, cujo desconto \u00C3\u00A9 calculado baseado na data da \u00C3\u00BAltima parcela em aberto.
///
/// @param idConta C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Conta.
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do evento.
/// @param quantidadeParcelas Quantidade de parcelas para serem antecipadas.
/// @param complemento Dados complementares sobre a realiza\u00C3\u00A7\u00C3\u00A3o da transa\u00C3\u00A7\u00C3\u00A3o.
/// 
///
/// @return PierAntecipacaoResponse*
-(NSNumber*) efetivarAntecipacaoUsingPOSTWithIdConta: (NSNumber*) idConta
    _id: (NSNumber*) _id
    quantidadeParcelas: (NSNumber*) quantidadeParcelas
    complemento: (NSString*) complemento
    completionHandler: (void (^)(PierAntecipacaoResponse* output, NSError* error)) handler;


///
///
/// Faz a efetiva\u00C3\u00A7\u00C3\u00A3o da antecipa\u00C3\u00A7\u00C3\u00A3o
/// M\u00C3\u00A9todo responsavel pela efetiva\u00C3\u00A7\u00C3\u00A3o de todas as compras antecip\u00C3\u00A1veis com todas as parcelas de uma conta.
///
/// @param idConta C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Conta.
/// @param complemento Dados complementares sobre a realiza\u00C3\u00A7\u00C3\u00A3o da transa\u00C3\u00A7\u00C3\u00A3o.
/// 
///
/// @return PierAntecipacaoResponse*
-(NSNumber*) efetivarAntecipacoesUsingPOSTWithIdConta: (NSNumber*) idConta
    complemento: (NSString*) complemento
    completionHandler: (void (^)(PierAntecipacaoResponse* output, NSError* error)) handler;


///
///
/// Listar compras com parcelas antecip\u00C3\u00A1veis
/// Lista as compras antecip\u00C3\u00A1veis de uma conta.
///
/// @param idConta C\u00C3\u00B3digo identificador da conta da Compra.
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param idCompra C\u00C3\u00B3digo identificador da Compra.
/// @param parcelada Indica se a compra \u00C3\u00A9 parcelada.
/// @param juros Indica se a compra \u00C3\u00A9 com ou sem juros.
/// @param tipoOrigemTransacao Indica se a compra \u00C3\u00A9 ON-US ou OFF-US
/// 
///
/// @return PierPageCompraResponse*
-(NSNumber*) listarUsingGET8WithIdConta: (NSNumber*) idConta
    sort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idCompra: (NSNumber*) idCompra
    parcelada: (NSNumber*) parcelada
    juros: (NSNumber*) juros
    tipoOrigemTransacao: (NSString*) tipoOrigemTransacao
    completionHandler: (void (^)(PierPageCompraResponse* output, NSError* error)) handler;


///
///
/// Simular antecipa\u00C3\u00A7\u00C3\u00A3o de parcelas
/// Simula a antecipa\u00C3\u00A7\u00C3\u00A3o de parcelas de um evento, listando todos os planos de parcelamento dispon\u00C3\u00ADveis, cujo desconto \u00C3\u00A9 calculado baseado na data da \u00C3\u00BAltima parcela em aberto.
///
/// @param idConta C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta.
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do evento.
/// @param complemento Dados complementares sobre a realiza\u00C3\u00A7\u00C3\u00A3o da transa\u00C3\u00A7\u00C3\u00A3o.
/// 
///
/// @return PierAntecipacaoSimuladaResponse*
-(NSNumber*) simularAntecipacaoUsingGETWithIdConta: (NSNumber*) idConta
    _id: (NSNumber*) _id
    complemento: (NSString*) complemento
    completionHandler: (void (^)(PierAntecipacaoSimuladaResponse* output, NSError* error)) handler;


///
///
/// Simular antecipa\u00C3\u00A7\u00C3\u00A3o de todas as parcelas antecip\u00C3\u00A1veis
/// O recurso permite realizar a simula\u00C3\u00A7\u00C3\u00A3o da antecipa\u00C3\u00A7\u00C3\u00A3o de todas as compras antecip\u00C3\u00A1veis de todas as parcelas de uma determinada conta.
///
/// @param idConta C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta.
/// @param complemento Dados complementares sobre a realiza\u00C3\u00A7\u00C3\u00A3o da transa\u00C3\u00A7\u00C3\u00A3o.
/// 
///
/// @return PierAntecipacaoSimuladaLoteResponse*
-(NSNumber*) simularAntecipacoesUsingGETWithIdConta: (NSNumber*) idConta
    complemento: (NSString*) complemento
    completionHandler: (void (^)(PierAntecipacaoSimuladaLoteResponse* output, NSError* error)) handler;



@end
