#import <Foundation/Foundation.h>
#import "PierEstagioCartaoResponse.h"
#import "PierStatusCartaoResponse.h"
#import "PierStatusContaResponse.h"
#import "PierStatusImpressaoResponse.h"
#import "PierPageEstagioCartaoResponse.h"
#import "PierPageStatusCartaoResponse.h"
#import "PierPageStatusContaResponse.h"
#import "PierPageStatusImpressaoResponse.h"
#import "PierObject.h"
#import "PierApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface PierStatusParametrosApi: NSObject

@property(nonatomic, assign)PierApiClient *apiClient;

-(instancetype) initWithApiClient:(PierApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(PierStatusParametrosApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(PierStatusParametrosApi*) sharedAPI;
///
///
/// Apresenta os dados de um determinado Estagio Cart\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite consultar os par\u00C3\u00A2metros de um determinado Est\u00C3\u00A1gio de Entrega do Cart\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Est\u00C3\u00A1gio de Entrega do Cart\u00C3\u00A3o (id).
/// 
///
/// @return PierEstagioCartaoResponse*
-(NSNumber*) consultarEstagioCartaoUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierEstagioCartaoResponse* output, NSError* error)) handler;


///
///
/// Apresenta os dados de um determinado Status Cart\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite consultar os par\u00C3\u00A2metros de um determinado Status de Cart\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Est\u00C3\u00A1gio de Entrega do Cart\u00C3\u00A3o (id).
/// 
///
/// @return PierStatusCartaoResponse*
-(NSNumber*) consultarStatusCartaoUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierStatusCartaoResponse* output, NSError* error)) handler;


///
///
/// Apresenta os dados de um determinado Status Conta
/// Este m\u00C3\u00A9todo permite consultar os par\u00C3\u00A2metros de um determinado Status Conta a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status da Conta (id).
/// 
///
/// @return PierStatusContaResponse*
-(NSNumber*) consultarUsingGET13WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierStatusContaResponse* output, NSError* error)) handler;


///
///
/// Apresenta os dados de um determinado Status Impress\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite consultar os par\u00C3\u00A2metros de um determinado Status de Impress\u00C3\u00A3o do Cart\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status de Impress\u00C3\u00A3o do Cart\u00C3\u00A3o (id).
/// 
///
/// @return PierStatusImpressaoResponse*
-(NSNumber*) consultarUsingGET14WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierStatusImpressaoResponse* output, NSError* error)) handler;


///
///
/// Lista as op\u00C3\u00A7\u00C3\u00B5es de Est\u00C3\u00A1gios do Cart\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite que sejam listadas as op\u00C3\u00A7\u00C3\u00B5es de Est\u00C3\u00A1gio de Entrega que podem ser atribu\u00C3\u00ADdas aos Cart\u00C3\u00B5es.
///
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param _id Id do est\u00C3\u00A1gio cart\u00C3\u00A3o
/// @param nome Nome do est\u00C3\u00A1gio cart\u00C3\u00A3o
/// 
///
/// @return PierPageEstagioCartaoResponse*
-(NSNumber*) listarEstagiosCartoesUsingGETWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    nome: (NSString*) nome
    completionHandler: (void (^)(PierPageEstagioCartaoResponse* output, NSError* error)) handler;


///
///
/// Lista as op\u00C3\u00A7\u00C3\u00B5es de Status do Cart\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite que sejam listadas as possibilidades de Status que podem ser atribu\u00C3\u00ADdas aos Cart\u00C3\u00B5es.
///
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status do Cart\u00C3\u00A3o (id) 
/// @param nome Nome atribu\u00C3\u00ADdo ao Status de Entrega do Cart\u00C3\u00A3o.
/// @param flagCancelaCartao Quando ativa, indica que ao ser atribu\u00C3\u00ADdo um idStatusCartao com essa caracter\u00C3\u00ADstica, o cart\u00C3\u00A3o ter\u00C3\u00A1 o seu idStatusCartao alterado para o que fora escolhido. Caso contr\u00C3\u00A1rio, o idStatusCartao s\u00C3\u00B3 ser\u00C3\u00A1 alterado ap\u00C3\u00B3s o desbloqueio de um novo cart\u00C3\u00A3o do mesmo Portador e Conta.
/// @param flagCancelaNoDesbloqueio Quando ativa, indica que o cart\u00C3\u00A3o ativo que o portador possuir na mesma conta do cart\u00C3\u00A3o a ser desbloqueado, e que o status dele possua essa caracter\u00C3\u00ADstica, dever\u00C3\u00A1 ser cancelado quando um novo cart\u00C3\u00A3o for desbloqueado.
/// @param idStatusDestinoDesbloqueio Indica qual o idStatusCartao que ser\u00C3\u00A1 atribu\u00C3\u00ADdo aos cart\u00C3\u00B5es que forem cancelados devido ao desbloqueio de um novo cart\u00C3\u00A3o.
/// @param idStatusDestinoConta Indica qual o idStatusCartao que ser\u00C3\u00A1 atribu\u00C3\u00ADdo a conta, caso ela seja cancelada devido ao bloqueio de um cart\u00C3\u00A3o quando for utilizado um idStatusCartao no processo de Bloqueio que possua essa caracter\u00C3\u00ADstica.
/// @param flagCobraTarifa Quando ativa, indica que cart\u00C3\u00B5es que tiverem um idStatusCartao atribu\u00C3\u00ADdo com essa caracter\u00C3\u00ADstica, incluir\u00C3\u00A3o a cobran\u00C3\u00A7a de uma tarifa para a conta de acordo com os valores definidos nos par\u00C3\u00A2metros do emissor.
/// @param flagPermiteNovaViaCartao Par\u00C3\u00A2metro que define se o status do cart\u00C3\u00A3o permite a solicita\u00C3\u00A7\u00C3\u00A3o de uma nova via, sendo: 0: Inativo e 1: Ativo.
/// @param flagPermiteDesbloqueio Par\u00C3\u00A2metro que define se o status do cart\u00C3\u00A3o permite o desbloqueio, sendo: 0: Inativo e 1: Ativo.
/// 
///
/// @return PierPageStatusCartaoResponse*
-(NSNumber*) listarStatusCartoesUsingGETWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    nome: (NSString*) nome
    flagCancelaCartao: (NSNumber*) flagCancelaCartao
    flagCancelaNoDesbloqueio: (NSNumber*) flagCancelaNoDesbloqueio
    idStatusDestinoDesbloqueio: (NSNumber*) idStatusDestinoDesbloqueio
    idStatusDestinoConta: (NSNumber*) idStatusDestinoConta
    flagCobraTarifa: (NSNumber*) flagCobraTarifa
    flagPermiteNovaViaCartao: (NSNumber*) flagPermiteNovaViaCartao
    flagPermiteDesbloqueio: (NSNumber*) flagPermiteDesbloqueio
    completionHandler: (void (^)(PierPageStatusCartaoResponse* output, NSError* error)) handler;


///
///
/// Lista os Status Contas cadastrados para o Emissor
/// Este m\u00C3\u00A9todo permite que sejam listados os Status Contas existentes na base de dados do Emissor.
///
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status da Conta (id).
/// @param nome Nome atribu\u00C3\u00ADdo ao Status da Conta.
/// @param flagAlteraLimite Par\u00C3\u00A2metro que define se o Status da Conta permite realizar a Altera\u00C3\u00A7\u00C3\u00A3o de Limites do Portador, sendo: 0: Inativo e 1: Ativo.
/// @param mensagemConsultaNegada Apresenta o texto com o motivo que ser\u00C3\u00A1 apresentado na resposta as opera\u00C3\u00A7\u00C3\u00B5es de Listar e Consultar LimitesDisponibilidades.
/// @param flagPermiteNovaViaCartao Par\u00C3\u00A2metro que define se o Status da conta permite a solicita\u00C3\u00A7\u00C3\u00A3o de um novo cart\u00C3\u00A3o, sendo: 0: Inativo e 1: Ativo.
/// @param flagFazTransferencia Par\u00C3\u00A2metro que define se o Status da conta permite fazer transferencia, sendo: 0: Inativo e 1: Ativo.
/// @param flagRecebeTransferencia Par\u00C3\u00A2metro que define se o Status da conta permite receber transferencia, sendo: 0: Inativo e 1: Ativo.
/// 
///
/// @return PierPageStatusContaResponse*
-(NSNumber*) listarUsingGET20WithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    nome: (NSString*) nome
    flagAlteraLimite: (NSNumber*) flagAlteraLimite
    mensagemConsultaNegada: (NSString*) mensagemConsultaNegada
    flagPermiteNovaViaCartao: (NSNumber*) flagPermiteNovaViaCartao
    flagFazTransferencia: (NSNumber*) flagFazTransferencia
    flagRecebeTransferencia: (NSNumber*) flagRecebeTransferencia
    completionHandler: (void (^)(PierPageStatusContaResponse* output, NSError* error)) handler;


///
///
/// Lista as op\u00C3\u00A7\u00C3\u00B5es de Status Impress\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite que sejam listadas as op\u00C3\u00A7\u00C3\u00B5es de Status Impress\u00C3\u00A3o que podem ser atribu\u00C3\u00ADdas aos Cart\u00C3\u00B5es.
///
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param _id Id do est\u00C3\u00A1gio cart\u00C3\u00A3o
/// @param nome Nome do status impress\u00C3\u00A3o
/// 
///
/// @return PierPageStatusImpressaoResponse*
-(NSNumber*) listarUsingGET21WithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    nome: (NSString*) nome
    completionHandler: (void (^)(PierPageStatusImpressaoResponse* output, NSError* error)) handler;



@end
