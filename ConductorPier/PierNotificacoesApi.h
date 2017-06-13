#import <Foundation/Foundation.h>
#import "PierSMS.h"
#import "PierPagePush.h"
#import "PierPageSMS.h"
#import "PierPushFCMEGCM.h"
#import "PierNotificacaoSMSResponse.h"
#import "PierPushAPNS.h"
#import "PierNotificacaoSMSBody.h"
#import "PierObject.h"
#import "PierApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface PierNotificacoesApi: NSObject

@property(nonatomic, assign)PierApiClient *apiClient;

-(instancetype) initWithApiClient:(PierApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(PierNotificacoesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(PierNotificacoesApi*) sharedAPI;
///
///
/// Atualizar SMS
/// Esse recurso permite atualizar o status do SMS do emissor
///
/// @param nsu Seu n\u00C3\u00BAmero
/// @param status Status
/// @param data Data
/// @param textoStatus TextoStatus
/// @param operadora Operadora
/// 
///
/// @return PierSMS*
-(NSNumber*) atualizarSMSUsingPOSTWithNsu: (NSString*) nsu
    status: (NSString*) status
    data: (NSString*) data
    textoStatus: (NSString*) textoStatus
    operadora: (NSString*) operadora
    completionHandler: (void (^)(PierSMS* output, NSError* error)) handler;


///
///
/// Listar Push
/// Esse recurso permite listar os Pushes do emissor
///
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param dataEnvio Apresenta a data e em que o registro foi enviado para o dispositivo.
/// @param tipoEvento Nome do tipoEvento da notifica\u00C3\u00A7\u00C3\u00A3o
/// @param status Status de envio da notifica\u00C3\u00A7\u00C3\u00A3o
/// @param plataforma Plataforma de Push notifications.
/// @param protocolo N\u00C3\u00BAmero do protocolo de envio de notifica\u00C3\u00A7\u00C3\u00B5es
/// 
///
/// @return PierPagePush*
-(NSNumber*) listarPushUsingGETWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    dataEnvio: (NSString*) dataEnvio
    tipoEvento: (NSString*) tipoEvento
    status: (NSString*) status
    plataforma: (NSString*) plataforma
    protocolo: (NSString*) protocolo
    completionHandler: (void (^)(PierPagePush* output, NSError* error)) handler;


///
///
/// Listar SMS
/// Esse recurso permite listar os SMS do emissor
///
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param dataInclusao Apresenta a data e em que o registro foi inclu\u00C3\u00ADdo na base para ser enviado
/// @param tipoEvento Nome do tipoEvento da notifica\u00C3\u00A7\u00C3\u00A3o
/// @param status Status de envio da notifica\u00C3\u00A7\u00C3\u00A3o
/// @param operadora Nome da operadora a qual a notifica\u00C3\u00A7\u00C3\u00A3o foi enviada.
/// @param protocolo N\u00C3\u00BAmero do protocolo de envio de notifica\u00C3\u00A7\u00C3\u00B5es
/// @param nsu Apresenta o nsu da notifica\u00C3\u00A7\u00C3\u00A3o
/// 
///
/// @return PierPageSMS*
-(NSNumber*) listarSMSUsingGETWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    dataInclusao: (NSString*) dataInclusao
    tipoEvento: (NSString*) tipoEvento
    status: (NSString*) status
    operadora: (NSString*) operadora
    protocolo: (NSString*) protocolo
    nsu: (NSNumber*) nsu
    completionHandler: (void (^)(PierPageSMS* output, NSError* error)) handler;


///
///
/// Responder SMS
/// Esse recurso permite atualizar a resposta do SMS, fornecida pedo usu\u00C3\u00A1rio
///
/// @param nsu Seu n\u00C3\u00BAmero
/// @param data Data
/// @param resposta TextoStatus
/// 
///
/// @return PierSMS*
-(NSNumber*) responderSMSUsingPOSTWithNsu: (NSString*) nsu
    data: (NSString*) data
    resposta: (NSString*) resposta
    completionHandler: (void (^)(PierSMS* output, NSError* error)) handler;


///
///
/// Enviar Push FCM
/// Esse recurso permite enviar Push para um determinado dipositivo movel atrav\u00C3\u00A9s da plataforma FCM (Firebase Cloud Messaging).
///
/// @param pushPersists pushPersists
/// 
///
/// @return PierNotificacaoSMSResponse*
-(NSNumber*) salvarPushFCMUsingPOSTWithPushPersists: (NSArray<PierPushFCMEGCM>*) pushPersists
    completionHandler: (void (^)(PierNotificacaoSMSResponse* output, NSError* error)) handler;


///
///
/// Enviar Push GCM
/// Esse recurso permite enviar Push para um determinado dipositivo movel atrav\u00C3\u00A9s da plataforma GCM (Google Cloud Messaging).
///
/// @param pushPersists pushPersists
/// 
///
/// @return PierNotificacaoSMSResponse*
-(NSNumber*) salvarPushGCMUsingPOSTWithPushPersists: (NSArray<PierPushFCMEGCM>*) pushPersists
    completionHandler: (void (^)(PierNotificacaoSMSResponse* output, NSError* error)) handler;


///
///
/// Enviar Push APNS
/// Esse recurso permite enviar Push para um determinado dipositivo movel atrav\u00C3\u00A9s da plataforma APNS (Apple Push Notification Service).
///
/// @param pushPersists pushPersists
/// 
///
/// @return PierNotificacaoSMSResponse*
-(NSNumber*) salvarPushUsingPOSTWithPushPersists: (NSArray<PierPushAPNS>*) pushPersists
    completionHandler: (void (^)(PierNotificacaoSMSResponse* output, NSError* error)) handler;


///
///
/// Enviar SMS
/// Esse recurso permite enviar uma lista de SMS.
///
/// @param listaSMS listaSMS
/// 
///
/// @return PierNotificacaoSMSResponse*
-(NSNumber*) salvarSMSUsingPOSTWithListaSMS: (NSArray<PierNotificacaoSMSBody>*) listaSMS
    completionHandler: (void (^)(PierNotificacaoSMSResponse* output, NSError* error)) handler;



@end
