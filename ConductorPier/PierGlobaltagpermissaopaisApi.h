#import <Foundation/Foundation.h>
#import "PierPaisResponse.h"
#import "PierPagePaisResponse.h"
#import "PierObject.h"
#import "PierApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface PierGlobaltagpermissaopaisApi: NSObject

@property(nonatomic, assign)PierApiClient *apiClient;

-(instancetype) initWithApiClient:(PierApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(PierGlobaltagpermissaopaisApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(PierGlobaltagpermissaopaisApi*) sharedAPI;
///
///
/// {{{permissao_pais_resource_consultar_pais}}}
/// {{{permissao_pais_resource_consultar_pais_notes}}}
///
/// @param _id {{{permissao_pais_resource_consultar_pais_param_id}}}
/// 
///
/// @return PierPaisResponse*
-(NSNumber*) consultarPaisUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierPaisResponse* output, NSError* error)) handler;


///
///
/// {{{enum_resource_listar_continentes}}}
/// {{{enum_resource_listar_continentes_notes}}}
///
/// 
///
/// @return NSArray* /* NSObject */
-(NSNumber*) listarContinentesUsingGETWithCompletionHandler: 
    (void (^)(NSArray* /* NSObject */ output, NSError* error)) handler;


///
///
/// {{{permissao_pais_resource_listar_paises}}}
/// {{{permissao_pais_resource_listar_paises_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param codigo {{{pais_request_codigo_value}}}
/// @param sigla {{{pais_request_sigla_value}}}
/// @param descricao {{{pais_request_descricao_value}}}
/// @param continente {{{pais_request_continente_value}}}
/// @param flagAtivo {{{pais_request_flag_ativo_value}}}
/// 
///
/// @return PierPagePaisResponse*
-(NSNumber*) listarPaisesUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    codigo: (NSString*) codigo
    sigla: (NSString*) sigla
    descricao: (NSString*) descricao
    continente: (NSString*) continente
    flagAtivo: (NSNumber*) flagAtivo
    completionHandler: (void (^)(PierPagePaisResponse* output, NSError* error)) handler;



@end
