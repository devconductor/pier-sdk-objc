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

@interface PierStatusParametroApi: NSObject

@property(nonatomic, assign)PierApiClient *apiClient;

-(instancetype) initWithApiClient:(PierApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(PierStatusParametroApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(PierStatusParametroApi*) sharedAPI;
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
-(NSNumber*) consultarUsingGET26WithId: (NSNumber*) _id
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
-(NSNumber*) consultarUsingGET27WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierStatusImpressaoResponse* output, NSError* error)) handler;


///
///
/// Lista as op\u00C3\u00A7\u00C3\u00B5es de Est\u00C3\u00A1gios do Cart\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite que sejam listadas as op\u00C3\u00A7\u00C3\u00B5es de Est\u00C3\u00A1gio de Entrega que podem ser atribu\u00C3\u00ADdas aos Cart\u00C3\u00B5es.
///
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param _id Id do est\u00C3\u00A1gio cart\u00C3\u00A3o
/// @param nome Nome do est\u00C3\u00A1gio cart\u00C3\u00A3o
/// 
///
/// @return PierPageEstagioCartaoResponse*
-(NSNumber*) listarEstagiosCartoesUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    nome: (NSString*) nome
    completionHandler: (void (^)(PierPageEstagioCartaoResponse* output, NSError* error)) handler;


///
///
/// Lista as op\u00C3\u00A7\u00C3\u00B5es de Status do Cart\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite que sejam listadas as possibilidades de Status que podem ser atribu\u00C3\u00ADdas aos Cart\u00C3\u00B5es.
///
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status do Cart\u00C3\u00A3o (id) 
/// @param nome Nome atribu\u00C3\u00ADdo ao Status de Entrega do Cart\u00C3\u00A3o.
/// @param permiteDesbloquear Par\u00C3\u00A2metro que define se o status do cart\u00C3\u00A3o permite a reativa\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o, sendo: 0: Inativo e 1: Ativo.
/// @param permiteAtribuirComoBloqueio Par\u00C3\u00A2metro que define se o status do cart\u00C3\u00A3o permite a reativa\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o, sendo: 0: Inativo e 1: Ativo.
/// @param permiteAtribuirComoCancelamento Par\u00C3\u00A2metro que define se o status do cart\u00C3\u00A3o permite a reativa\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o, sendo: 0: Inativo e 1: Ativo.
/// @param cobrarTarifaAoEmitirNovaVia Par\u00C3\u00A2metro que define se o status do cart\u00C3\u00A3o permite a reativa\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o, sendo: 0: Inativo e 1: Ativo.
/// 
///
/// @return PierPageStatusCartaoResponse*
-(NSNumber*) listarStatusCartoesUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    nome: (NSString*) nome
    permiteDesbloquear: (NSNumber*) permiteDesbloquear
    permiteAtribuirComoBloqueio: (NSNumber*) permiteAtribuirComoBloqueio
    permiteAtribuirComoCancelamento: (NSNumber*) permiteAtribuirComoCancelamento
    cobrarTarifaAoEmitirNovaVia: (NSNumber*) cobrarTarifaAoEmitirNovaVia
    completionHandler: (void (^)(PierPageStatusCartaoResponse* output, NSError* error)) handler;


///
///
/// Lista os tipos de transa\u00C3\u00A7\u00C3\u00B5es
/// Esse recurso permite listar os tipos de transa\u00C3\u00A7\u00C3\u00B5es dispon\u00C3\u00ADveis.
///
/// 
///
/// @return NSArray* /* NSObject */
-(NSNumber*) listarTiposEventosTransacoesUsingGETWithCompletionHandler: 
    (void (^)(NSArray* /* NSObject */ output, NSError* error)) handler;


///
///
/// Lista os Status Contas cadastrados para o Emissor
/// Este m\u00C3\u00A9todo permite que sejam listados os Status Contas existentes na base de dados do Emissor.
///
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status da Conta (id).
/// @param nome Nome atribu\u00C3\u00ADdo ao Status da Conta.
/// @param permiteAlterarVencimento Par\u00C3\u00A2metro que define se o Status da conta permite a solicita\u00C3\u00A7\u00C3\u00A3o da altera\u00C3\u00A7\u00C3\u00A3o do Dia para Vencimento das Faturas, sendo: 0: Inativo e 1: Ativo.
/// @param permiteAlterarLimite Par\u00C3\u00A2metro que define se o Status da conta permite altera\u00C3\u00A7\u00C3\u00A3o de Limites, sendo: 0: Inativo e 1: Ativo.
/// @param permiteEmitirNovaViaCartao Par\u00C3\u00A2metro que define se o Status da conta permite solicitar uma nova via de Cart\u00C3\u00A3o, sendo: 0: Inativo e 1: Ativo.
/// @param permiteFazerTransferencia Par\u00C3\u00A2metro que define se o Status da conta permite originar Transfer\u00C3\u00AAncias de Cr\u00C3\u00A9dito para outras Contas do mesmo Emissor ou para uma Conta Banc\u00C3\u00A1ria, sendo: 0: Inativo e 1: Ativo.
/// @param permiteReceberTransferencia Par\u00C3\u00A2metro que define se o Status da conta permite  receber Transfer\u00C3\u00AAncias de Cr\u00C3\u00A9dito originadas de outras Contas do mesmo emissor, sendo: 0: Inativo e 1: Ativo.
/// @param permiteCriarAcordoCobranca Par\u00C3\u00A2metro que define se o Status da conta permite ter um Acordo de Cobran\u00C3\u00A7a de D\u00C3\u00ADvida criado para ela, sendo: 0: Inativo e 1: Ativo.
/// @param permiteAtribuirComoBloqueio Par\u00C3\u00A2metro que define se o Status da conta permite ser atribu\u00C3\u00ADdo para Bloquear temporariamente uma Conta, sendo: 0: Inativo e 1: Ativo.
/// @param permiteDesbloquear Par\u00C3\u00A2metro que define se o Status da conta permite ser desbloqueada, sendo: 0: Inativo e 1: Ativo.
/// @param permiteAtribuirComoCancelamento Par\u00C3\u00A2metro que define se o Status da conta permite ser atribu\u00C3\u00ADdo para realizar o cancelamento definitivo de uma conta, sendo: 0: Inativo e 1: Ativo.
/// 
///
/// @return PierPageStatusContaResponse*
-(NSNumber*) listarUsingGET33WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    nome: (NSString*) nome
    permiteAlterarVencimento: (NSNumber*) permiteAlterarVencimento
    permiteAlterarLimite: (NSNumber*) permiteAlterarLimite
    permiteEmitirNovaViaCartao: (NSNumber*) permiteEmitirNovaViaCartao
    permiteFazerTransferencia: (NSNumber*) permiteFazerTransferencia
    permiteReceberTransferencia: (NSNumber*) permiteReceberTransferencia
    permiteCriarAcordoCobranca: (NSNumber*) permiteCriarAcordoCobranca
    permiteAtribuirComoBloqueio: (NSNumber*) permiteAtribuirComoBloqueio
    permiteDesbloquear: (NSNumber*) permiteDesbloquear
    permiteAtribuirComoCancelamento: (NSNumber*) permiteAtribuirComoCancelamento
    completionHandler: (void (^)(PierPageStatusContaResponse* output, NSError* error)) handler;


///
///
/// Lista as op\u00C3\u00A7\u00C3\u00B5es de Status Impress\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite que sejam listadas as op\u00C3\u00A7\u00C3\u00B5es de Status Impress\u00C3\u00A3o que podem ser atribu\u00C3\u00ADdas aos Cart\u00C3\u00B5es.
///
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param _id Id do est\u00C3\u00A1gio cart\u00C3\u00A3o
/// @param nome Nome do status impress\u00C3\u00A3o
/// 
///
/// @return PierPageStatusImpressaoResponse*
-(NSNumber*) listarUsingGET34WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    nome: (NSString*) nome
    completionHandler: (void (^)(PierPageStatusImpressaoResponse* output, NSError* error)) handler;



@end
