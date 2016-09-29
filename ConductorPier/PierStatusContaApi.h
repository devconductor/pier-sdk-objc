#import <Foundation/Foundation.h>
#import "PierStatusConta.h"
#import "PierPageStatusContas.h"
#import "PierObject.h"
#import "PierApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface PierStatusContaApi: NSObject

@property(nonatomic, assign)PierApiClient *apiClient;

-(instancetype) initWithApiClient:(PierApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(PierStatusContaApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(PierStatusContaApi*) sharedAPI;
///
///
/// Apresenta os dados de um determinado Status Conta
/// Este m\u00C3\u00A9todo permite consultar os par\u00C3\u00A2metros de um determinado Status Conta a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param idStatusConta C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status da Conta (id).
/// 
///
/// @return PierStatusConta*
-(NSNumber*) consultarUsingGET2WithIdStatusConta: (NSNumber*) idStatusConta
    completionHandler: (void (^)(PierStatusConta* output, NSError* error)) handler;


///
///
/// Lista os Status Contas cadastrados para o Emissor 
/// Este m\u00C3\u00A9todo permite que sejam listados os Status Contas existentes na base de dados do Emissor.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status da Conta (id).
/// @param nome Nome atribu\u00C3\u00ADdo ao Status da Conta.
/// @param flagAlteraLimite Par\u00C3\u00A2metro que define se o Status da Conta permite realizar a Altera\u00C3\u00A7\u00C3\u00A3o de Limites do Portador, sendo: 0: Inativo e 1: Ativo.
/// @param mensagemConsultaNegada Apresenta o texto com o motivo que ser\u00C3\u00A1 apresentado na resposta as opera\u00C3\u00A7\u00C3\u00B5es de Listar e Consultar LimitesDisponibilidades.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100)
/// 
///
/// @return PierPageStatusContas*
-(NSNumber*) listarUsingGET2WithId: (NSNumber*) _id
    nome: (NSString*) nome
    flagAlteraLimite: (NSNumber*) flagAlteraLimite
    mensagemConsultaNegada: (NSString*) mensagemConsultaNegada
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageStatusContas* output, NSError* error)) handler;



@end
