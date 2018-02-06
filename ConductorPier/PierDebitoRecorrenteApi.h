#import <Foundation/Foundation.h>
#import "PierPageTipoDebitoRecorrenteResponse.h"
#import "PierObject.h"
#import "PierApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface PierDebitoRecorrenteApi: NSObject

@property(nonatomic, assign)PierApiClient *apiClient;

-(instancetype) initWithApiClient:(PierApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(PierDebitoRecorrenteApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(PierDebitoRecorrenteApi*) sharedAPI;
///
///
/// Lista os d\u00C3\u00A9bitos recorrentes de uma Conta
/// A entidade D\u00C3\u00A9bito Recorrente trata dos registros contratados por um determinado cliente (idConta) onde a cobran\u00C3\u00A7a dele se d\u00C3\u00A1 de forma cont\u00C3\u00ADnua, consistindo em uma \u00E2\u0080\u009Cassinatura\u00E2\u0080\u009D ou pagamento de mensalidades. Isso significa que, enquanto o servi\u00C3\u00A7o continuar a ser prestado, o cliente dever\u00C3\u00A1 continuar realizando os pagamentos. A determina\u00C3\u00A7\u00C3\u00A3o de quanto tempo essa rela\u00C3\u00A7\u00C3\u00A3o ir\u00C3\u00A1 durar \u00C3\u00A9 feita em contrato. Na maioria das vezes, existe um per\u00C3\u00ADodo m\u00C3\u00ADnimo e, caso o servi\u00C3\u00A7o seja cancelado ou o pagamento n\u00C3\u00A3o seja realizado, o status do D\u00C3\u00A9bito Recorrente ter\u00C3\u00A1 a FlagAtivo com valor false. Assim, este m\u00C3\u00A9todo lista todas as opera\u00C3\u00A7\u00C3\u00B5es de D\u00C3\u00A9bitos Recorrentes que um determinado idConta j\u00C3\u00A1 contratou, esteja ele ativo ou n\u00C3\u00A3o.
///
/// @param idConta C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da Conta (id)
/// @param idTipoDebitoRecorrente C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo de d\u00C3\u00A9bito recorrente (id)
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param dataHoraInicio Data inicio do d\u00C3\u00A9bito recorrente.
/// @param dataHoraFim Data fim do d\u00C3\u00A9bito recorrente.
/// @param ativo Identifica se o d\u00C3\u00A9bito recorrente est\u00C3\u00A1 ativo.
/// @param dataHoraUltimoPagamento Data do \u00C3\u00BAltimo pagamento efetuado.
/// 
///
/// @return PierPageTipoDebitoRecorrenteResponse*
-(NSNumber*) listarUsingGET13WithIdConta: (NSNumber*) idConta
    idTipoDebitoRecorrente: (NSNumber*) idTipoDebitoRecorrente
    sort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    dataHoraInicio: (NSString*) dataHoraInicio
    dataHoraFim: (NSString*) dataHoraFim
    ativo: (NSNumber*) ativo
    dataHoraUltimoPagamento: (NSString*) dataHoraUltimoPagamento
    completionHandler: (void (^)(PierPageTipoDebitoRecorrenteResponse* output, NSError* error)) handler;


///
///
/// Listar Tipos Debitos Recorrentes
/// Para os emissores que utilizam a entidade Debitos Recorrentes precisam previamente solicitar a Conductor o cadastro de quais Tipos eles poder\u00C3\u00A3o comercializar. Por isso, este recurso tem como objetivo apresentar todos os Tipos de D\u00C3\u00A9bitos Recorrentes que est\u00C3\u00A3o cadastrados para um determinado Emissor, independente do status dele.
///
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo de d\u00C3\u00A9bito recorrente (id).
/// @param descricao Descri\u00C3\u00A7\u00C3\u00A3o do tipo de d\u00C3\u00A9bito recorrente.
/// @param valor Valor do tipo de d\u00C3\u00A9bito recorrente.
/// @param flagAtivo Flag que identifica se o tipo d\u00C3\u00A9bito recorrente est\u00C3\u00A1 ativo.
/// 
///
/// @return PierPageTipoDebitoRecorrenteResponse*
-(NSNumber*) listarUsingGET39WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    descricao: (NSString*) descricao
    valor: (NSNumber*) valor
    flagAtivo: (NSNumber*) flagAtivo
    completionHandler: (void (^)(PierPageTipoDebitoRecorrenteResponse* output, NSError* error)) handler;



@end
