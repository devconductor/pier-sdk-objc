#import <Foundation/Foundation.h>
#import "PierAtendimentoCliente.h"
#import "PierRiscoFraudeDetalhadoResponse.h"
#import "PierPageAtendimentoClientes.h"
#import "PierRiscoFraudeResponsePage.h"
#import "PierObject.h"
#import "PierApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface PierRiscoFraudeApi: NSObject

@property(nonatomic, assign)PierApiClient *apiClient;

-(instancetype) initWithApiClient:(PierApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(PierRiscoFraudeApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(PierRiscoFraudeApi*) sharedAPI;
///
///
/// Apresenta os dados de um determinado Atendimento
/// Este m\u00C3\u00A9todo permite consultar os par\u00C3\u00A2metros de um determinado Atendimento a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (idAtendimento).
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do atendimento cliente (id).
/// 
///
/// @return PierAtendimentoCliente*
-(NSNumber*) consultarUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierAtendimentoCliente* output, NSError* error)) handler;


///
///
/// Consultar uma transa\u00C3\u00A7\u00C3\u00A3o classificada com risco de fraude
/// Consulta os detalhes de uma transa\u00C3\u00A7\u00C3\u00A3o classificada com risco de fraude.
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do risco de fraude
/// 
///
/// @return PierRiscoFraudeDetalhadoResponse*
-(NSNumber*) consultarUsingGET7WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierRiscoFraudeDetalhadoResponse* output, NSError* error)) handler;


///
///
/// Receber Risco Fraude
/// Receber risco fraude
///
/// @param detalhadoResponses detalhadoResponses
/// 
///
/// @return NSString*
-(NSNumber*) informarRiscoFraudeUsingPOSTWithDetalhadoResponses: (NSArray<PierRiscoFraudeDetalhadoResponse>*) detalhadoResponses
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


///
///
/// Lista todos os atendimentos
/// Este m\u00C3\u00A9todo permite que sejam listados todos os Registro de Atendimento, independente do Tipo.
///
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100)
/// @param idAtendimento C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Atendimento (id)
/// @param idTipoAtendimento C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo de Atendimento (id)
/// @param idConta C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o de conta (id).
/// @param nomeAtendente Apresenta o nome do Atendente que registrou o Atendimento.
/// @param dataAtendimento Apresenta a data em que o Atendimento foi realizado.
/// 
///
/// @return PierPageAtendimentoClientes*
-(NSNumber*) listarUsingGETWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    idAtendimento: (NSNumber*) idAtendimento
    idTipoAtendimento: (NSNumber*) idTipoAtendimento
    idConta: (NSNumber*) idConta
    nomeAtendente: (NSString*) nomeAtendente
    dataAtendimento: (NSDate*) dataAtendimento
    completionHandler: (void (^)(PierPageAtendimentoClientes* output, NSError* error)) handler;


///
///
/// Listar as transa\u00C3\u00A7\u00C3\u00B5es com resolu\u00C3\u00A7\u00C3\u00A3o de risco fraude pendente
/// Este recurso permite que sejam listados os riscos de fraudes existentes
///
/// @param idConta Id Conta
/// @param confirmacaoFraude Confirma\u00C3\u00A7\u00C3\u00A3o da fraude
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100)
/// 
///
/// @return PierRiscoFraudeResponsePage*
-(NSNumber*) listarUsingGET8WithIdConta: (NSNumber*) idConta
    confirmacaoFraude: (NSString*) confirmacaoFraude
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierRiscoFraudeResponsePage* output, NSError* error)) handler;


///
///
/// Negar autenticidade da transa\u00C3\u00A7\u00C3\u00A3o com risco de fraude
/// Nega a realiza\u00C3\u00A7\u00C3\u00A3o da transa\u00C3\u00A7\u00C3\u00A3o classificada com risco de fraude.
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do risco de fraude
/// 
///
/// @return PierRiscoFraudeDetalhadoResponse*
-(NSNumber*) negarUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierRiscoFraudeDetalhadoResponse* output, NSError* error)) handler;


///
///
/// Reconhecer a transa\u00C3\u00A7\u00C3\u00A3o com risco de fraude
/// Confirma a autenticidade da transa\u00C3\u00A7\u00C3\u00A3o classificada com risco de fraude.
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do risco de fraude
/// 
///
/// @return PierRiscoFraudeDetalhadoResponse*
-(NSNumber*) reconhecerUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierRiscoFraudeDetalhadoResponse* output, NSError* error)) handler;


///
///
/// Cadastro um novo Atendimento do tipo Gen\u00C3\u00A9rico para uma Conta
/// 
///
/// @param idConta C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Conta a qual o Atendimento est\u00C3\u00A1 associado
/// @param conteudoAtendimento Apresenta as informa\u00C3\u00A7\u00C3\u00B5es que foram utilizadas para consultar, cadastrar ou alterar informa\u00C3\u00A7\u00C3\u00B5es relacionadas ao Atendimento.
/// @param detalhesAtendimento Apresenta os detalhes lan\u00C3\u00A7ados pelo sistema ou pelo Atendente durante relacionados ao Atendimento.
/// @param nomeAtendente Apresenta o nome do Atendente que registrou o Atendimento.
/// @param dataAtendimento Apresenta a data em que o Atendimento foi realizado.
/// @param dataAgendamento Quando utilizado, de acordo com o Tipo de Atendimento, apresenta a data para processamento ou a data para retorno do Atendimento.
/// @param dataHoraInicioAtendimento Apresenta a data e hora em que o Atendimento foi iniciado. Quando utilizado, serve para medir a performance dos Atendimentos.
/// @param dataHoraFimAtendimento Apresenta a data e hora em que o Atendimento foi iniciado. Quando utilizado, serve para medir a performance dos Atendimentos.
/// 
///
/// @return PierAtendimentoCliente*
-(NSNumber*) salvarUsingPOSTWithIdConta: (NSNumber*) idConta
    conteudoAtendimento: (NSString*) conteudoAtendimento
    detalhesAtendimento: (NSString*) detalhesAtendimento
    nomeAtendente: (NSString*) nomeAtendente
    dataAtendimento: (NSDate*) dataAtendimento
    dataAgendamento: (NSDate*) dataAgendamento
    dataHoraInicioAtendimento: (NSDate*) dataHoraInicioAtendimento
    dataHoraFimAtendimento: (NSDate*) dataHoraFimAtendimento
    completionHandler: (void (^)(PierAtendimentoCliente* output, NSError* error)) handler;



@end