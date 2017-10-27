#import <Foundation/Foundation.h>
#import "PierTipoTemplateRequest.h"
#import "PierTipoTemplateResponse.h"
#import "PierDocumentoTemplatePersist.h"
#import "PierDocumentoTemplateResponse.h"
#import "PierDocumentoDetalhadoResponse.h"
#import "PierDocumentoIntegracaoResponse.h"
#import "PierIntegrarDocumentoRequest.h"
#import "PierPageDocumentoResponse.h"
#import "PierPageDocumentoTemplateResponse.h"
#import "PierPageTipoTemplateResponse.h"
#import "PierDocumentoParametrosRequest.h"
#import "PierObject.h"
#import "PierApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface PierDocumentoApi: NSObject

@property(nonatomic, assign)PierApiClient *apiClient;

-(instancetype) initWithApiClient:(PierApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(PierDocumentoApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(PierDocumentoApi*) sharedAPI;
///
///
/// Altera o tipo de template
/// Esse recurso permite alterar os dados do tipo de template.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do tipo de template (id).
/// @param persist persist
/// 
///
/// @return PierTipoTemplateResponse*
-(NSNumber*) alterarUsingPUT9WithId: (NSNumber*) _id
    persist: (PierTipoTemplateRequest*) persist
    completionHandler: (void (^)(PierTipoTemplateResponse* output, NSError* error)) handler;


///
///
/// Atualizar templates dos documentos
/// Esse recurso permite atualizar templates dos documentos.
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do documento template (id).
/// @param persist persist
/// 
///
/// @return PierDocumentoTemplateResponse*
-(NSNumber*) atualizarUsingPUT1WithId: (NSNumber*) _id
    persist: (PierDocumentoTemplatePersist*) persist
    completionHandler: (void (^)(PierDocumentoTemplateResponse* output, NSError* error)) handler;


///
///
/// Consultar tipo de template
/// Esse recurso permite consultar um determinado tipo de template a partir do id recebido e do id do emissor.
///
/// @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do tipo de template (id).
/// 
///
/// @return PierTipoTemplateResponse*
-(NSNumber*) consultarUsingGET28WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTipoTemplateResponse* output, NSError* error)) handler;


///
///
/// Consulta documentos
/// Esse recurso permite consultar um documento espec\u00C3\u00ADfico a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do documento (id).
/// 
///
/// @return PierDocumentoDetalhadoResponse*
-(NSNumber*) consultarUsingGET8WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierDocumentoDetalhadoResponse* output, NSError* error)) handler;


///
///
/// Consultar templates dos documentos
/// Esse recurso permite consultar templates dos documentos.
///
/// @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do documento template (id).
/// 
///
/// @return PierDocumentoTemplateResponse*
-(NSNumber*) consultarUsingGET9WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierDocumentoTemplateResponse* output, NSError* error)) handler;


///
///
/// Integra um arquivo a reposit\u00C3\u00B3rios remotos.
/// Este recurso permite integrar um documento ao reposit\u00C3\u00B3rio pre-configurado.
///
/// @param integrarDocumentoRequest integrarDocumentoRequest
/// 
///
/// @return PierDocumentoIntegracaoResponse*
-(NSNumber*) integrarUsingPOSTWithIntegrarDocumentoRequest: (PierIntegrarDocumentoRequest*) integrarDocumentoRequest
    completionHandler: (void (^)(PierDocumentoIntegracaoResponse* output, NSError* error)) handler;


///
///
/// Lista documentos
/// Esse recurso permite listar documentos.
///
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param idTemplateDocumento C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do template do documento.
/// @param nome Nome do documento.
/// @param extensao Extensao do documento.
/// 
///
/// @return PierPageDocumentoResponse*
-(NSNumber*) listarUsingGET11WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idTemplateDocumento: (NSNumber*) idTemplateDocumento
    nome: (NSString*) nome
    extensao: (NSString*) extensao
    completionHandler: (void (^)(PierPageDocumentoResponse* output, NSError* error)) handler;


///
///
/// Lista os templates dos documentos
/// Esse recurso permite listar os templates dos documentos.
///
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// @param idTipoTemplate C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo do template.
/// 
///
/// @return PierPageDocumentoTemplateResponse*
-(NSNumber*) listarUsingGET12WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idTipoTemplate: (NSNumber*) idTipoTemplate
    completionHandler: (void (^)(PierPageDocumentoTemplateResponse* output, NSError* error)) handler;


///
///
/// Lista os tipos de templates
/// Esse recurso permite listar os tipos de templates associados ao emissor.
///
/// @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros.
/// @param page P\u00C3\u00A1gina solicitada (Default = 0)
/// @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50)
/// 
///
/// @return PierPageTipoTemplateResponse*
-(NSNumber*) listarUsingGET32WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageTipoTemplateResponse* output, NSError* error)) handler;


///
///
/// Cadastra os tipos de templates
/// Esse recurso permite cadastrar tipos de templates.
///
/// @param persist persist
/// 
///
/// @return PierTipoTemplateResponse*
-(NSNumber*) salvarUsingPOST18WithPersist: (PierTipoTemplateRequest*) persist
    completionHandler: (void (^)(PierTipoTemplateResponse* output, NSError* error)) handler;


///
///
/// Cadastra documentos
/// Esse recurso permite cadastrar documentos.
///
/// @param persist persist
/// 
///
/// @return PierDocumentoDetalhadoResponse*
-(NSNumber*) salvarUsingPOST6WithPersist: (PierDocumentoParametrosRequest*) persist
    completionHandler: (void (^)(PierDocumentoDetalhadoResponse* output, NSError* error)) handler;


///
///
/// Cadastra os templates dos documentos
/// Esse recurso permite cadastrar templates dos documentos.
///
/// @param persist persist
/// 
///
/// @return PierDocumentoTemplateResponse*
-(NSNumber*) salvarUsingPOST7WithPersist: (PierDocumentoTemplatePersist*) persist
    completionHandler: (void (^)(PierDocumentoTemplateResponse* output, NSError* error)) handler;



@end
