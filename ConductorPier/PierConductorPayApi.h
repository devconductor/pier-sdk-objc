#import <Foundation/Foundation.h>
#import "PierCartaoPayAtualizarChaveResponse.h"
#import "PierCartaoPayResponse.h"
#import "PierCartaoPayUpdate.h"
#import "PierCartaoPayConfirmarChaveResponse.h"
#import "PierCartaoPayKeyUpdate.h"
#import "PierCartaoPayDetalheResponse.h"
#import "PierPageCartaoPayResponse.h"
#import "PierCartaoPayCadastroResponse.h"
#import "PierCartaoPayPersist.h"
#import "PierObject.h"
#import "PierApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface PierConductorPayApi: NSObject

@property(nonatomic, assign)PierApiClient *apiClient;

-(instancetype) initWithApiClient:(PierApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(PierConductorPayApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(PierConductorPayApi*) sharedAPI;
///
///
/// Atualiza a chave de gera\u00C3\u00A7\u00C3\u00A3o de transa\u00C3\u00A7\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite atualizar a chave de gera\u00C3\u00A7\u00C3\u00A3o de transa\u00C3\u00A7\u00C3\u00A3o de um dispositivo a partir do seu identificador (id).
///
/// @param deviceId Device id criptografado
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o (id).
/// 
///
/// @return PierCartaoPayAtualizarChaveResponse*
-(NSNumber*) atualizarChaveUsingPOSTWithDeviceId: (NSString*) deviceId
    _id: (NSNumber*) _id
    completionHandler: (void (^)(PierCartaoPayAtualizarChaveResponse* output, NSError* error)) handler;


///
///
/// Atualiza os dados do cart\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite atualizar os dados do cart\u00C3\u00A3o tokenizados de um dispositivo a partir do seu identificador (id).
///
/// @param deviceId Device id criptografado
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o (id).
/// @param update update
/// 
///
/// @return PierCartaoPayResponse*
-(NSNumber*) atualizarUsingPUTWithDeviceId: (NSString*) deviceId
    _id: (NSNumber*) _id
    update: (PierCartaoPayUpdate*) update
    completionHandler: (void (^)(PierCartaoPayResponse* output, NSError* error)) handler;


///
///
/// Confirma a atualiza\u00C3\u00A7\u00C3\u00A3o da chave de transa\u00C3\u00A7\u00C3\u00A3o
/// Este met\u00C3\u00B3do recebe confirma\u00C3\u00A7\u00C3\u00A3o de atualiza\u00C3\u00A7\u00C3\u00A3o de chave transa\u00C3\u00A7\u00C3\u00A3o.
///
/// @param deviceId Device id criptografado
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o (id).
/// @param update update
/// 
///
/// @return PierCartaoPayConfirmarChaveResponse*
-(NSNumber*) confirmaAtualizacaoChaveUsingPOSTWithDeviceId: (NSString*) deviceId
    _id: (NSNumber*) _id
    update: (PierCartaoPayKeyUpdate*) update
    completionHandler: (void (^)(PierCartaoPayConfirmarChaveResponse* output, NSError* error)) handler;


///
///
/// Apresenta os dados de um determinado cart\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite consultar as informa\u00C3\u00A7\u00C3\u00B5es de um determinado cart\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param deviceId Device id criptografado
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o (id).
/// 
///
/// @return PierCartaoPayDetalheResponse*
-(NSNumber*) consultarUsingGET6WithDeviceId: (NSString*) deviceId
    _id: (NSNumber*) _id
    completionHandler: (void (^)(PierCartaoPayDetalheResponse* output, NSError* error)) handler;


///
///
/// Lista os c\u00C3\u00B3digos de resposta dos recursos de transa\u00C3\u00A7\u00C3\u00A3o e consulta de conta
/// Este m\u00C3\u00A9todo retorna a lista dos c\u00C3\u00B3digos de resposta das transa\u00C3\u00A7\u00C3\u00B5es e consulta de saque realizada no Pay.
///
/// 
///
/// @return NSArray* /* NSObject */
-(NSNumber*) listarCodigosRespostaUsingGETWithCompletionHandler: 
    (void (^)(NSArray* /* NSObject */ output, NSError* error)) handler;


///
///
/// Lista os modos entradas
/// Este recurso permite listar os modos de entrada para transa\u00C3\u00A7\u00C3\u00A3o
///
/// 
///
/// @return NSArray* /* NSObject */
-(NSNumber*) listarModosEntradaUsingGETWithCompletionHandler: 
    (void (^)(NSArray* /* NSObject */ output, NSError* error)) handler;


///
///
/// Lista as opera\u00C3\u00A7\u00C3\u00B5es
/// Este recurso permite listar as opera\u00C3\u00A7\u00C3\u00B5es disponiveis de transa\u00C3\u00A7\u00C3\u00A3o
///
/// 
///
/// @return NSArray* /* NSObject */
-(NSNumber*) listarOperacoesUsingGETWithCompletionHandler: 
    (void (^)(NSArray* /* NSObject */ output, NSError* error)) handler;


///
///
/// Lista os tipos de terminais
/// Este m\u00C3\u00A9todo retorna a lista dos tipos de terminais.
///
/// 
///
/// @return NSArray* /* NSObject */
-(NSNumber*) listarTiposTerminaisUsingGETWithCompletionHandler: 
    (void (^)(NSArray* /* NSObject */ output, NSError* error)) handler;


///
///
/// Lista os tipos de transa\u00C3\u00A7\u00C3\u00B5es
/// Este m\u00C3\u00A9todo retorna a lista dos tipos de transa\u00C3\u00A7\u00C3\u00B5es realizadas no Pay.
///
/// 
///
/// @return NSArray* /* NSObject */
-(NSNumber*) listarTiposTransacoesUsingGETWithCompletionHandler: 
    (void (^)(NSArray* /* NSObject */ output, NSError* error)) handler;


///
///
/// Lista os cart\u00C3\u00B5es cadastrados
/// Este m\u00C3\u00A9todo permite listar os cart\u00C3\u00B5es cadastrado em um dispositivo.
///
/// @param deviceId Device id criptografado
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param status Status do cart\u00C3\u00A3o tokenizado
/// @param numeroCartao Numero do cart\u00C3\u00A3o tokenizado
/// 
///
/// @return PierPageCartaoPayResponse*
-(NSNumber*) listarUsingGET7WithDeviceId: (NSString*) deviceId
    sort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    status: (NSString*) status
    numeroCartao: (NSString*) numeroCartao
    completionHandler: (void (^)(PierPageCartaoPayResponse* output, NSError* error)) handler;


///
///
/// Cria\u00C3\u00A7\u00C3\u00A3o de cart\u00C3\u00A3o
/// Este met\u00C3\u00B3do permite a tokeniza\u00C3\u00A7\u00C3\u00A3o de um cart\u00C3\u00A3o a partir dos seus dados impressos.
///
/// @param deviceId Device id criptografado
/// @param persist persist
/// 
///
/// @return PierCartaoPayCadastroResponse*
-(NSNumber*) salvarUsingPOST5WithDeviceId: (NSString*) deviceId
    persist: (PierCartaoPayPersist*) persist
    completionHandler: (void (^)(PierCartaoPayCadastroResponse* output, NSError* error)) handler;



@end
