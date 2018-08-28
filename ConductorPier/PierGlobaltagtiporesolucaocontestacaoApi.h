#import <Foundation/Foundation.h>
#import "PierPageStatusContestacaoResponse.h"
#import "PierPageTipoResolucaoContestacaoResponse.h"
#import "PierObject.h"
#import "PierApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface PierGlobaltagtiporesolucaocontestacaoApi: NSObject

@property(nonatomic, assign)PierApiClient *apiClient;

-(instancetype) initWithApiClient:(PierApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(PierGlobaltagtiporesolucaocontestacaoApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(PierGlobaltagtiporesolucaocontestacaoApi*) sharedAPI;
///
///
/// {{{status_contestacao_resource_listar_status_contestacao}}}
/// {{{status_contestacao_resource_listar_status_contestacao_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param idStatusContestacao {{{status_contestacao_request_idstatuscontestacao_value}}}
/// @param idStatusContestacaoOrigem {{{status_contestacao_request_idstatuscontestacaoOrigem_value}}}
/// @param descricao {{{status_contestacao_request_descricao_value}}}
/// @param flagPermiteAlteracao {{{status_contestacao_request_flagpermitealteracao_value}}}
/// @param flagSistema {{{status_contestacao_request_flagsistema_value}}}
/// 
///
/// @return PierPageStatusContestacaoResponse*
-(NSNumber*) listarStatusContestacaoUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idStatusContestacao: (NSNumber*) idStatusContestacao
    idStatusContestacaoOrigem: (NSNumber*) idStatusContestacaoOrigem
    descricao: (NSString*) descricao
    flagPermiteAlteracao: (NSNumber*) flagPermiteAlteracao
    flagSistema: (NSNumber*) flagSistema
    completionHandler: (void (^)(PierPageStatusContestacaoResponse* output, NSError* error)) handler;


///
///
/// {{{tipo_resolucao_contestacao_resource_listar_tipo_contestacao}}}
/// {{{tipo_resolucao_contestacao_resource_listar_tipo_resolucao_contestacao_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param idTipoResolucaoContestacao {{{tipo_resolucao_contestacao_request_idTipoResolucaoContestacao_value}}}
/// @param descricao {{{tipo_resolucao_contestacao_request_descricao_value}}}
/// 
///
/// @return PierPageTipoResolucaoContestacaoResponse*
-(NSNumber*) listarTipoResolucaoContestacaoUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idTipoResolucaoContestacao: (NSNumber*) idTipoResolucaoContestacao
    descricao: (NSString*) descricao
    completionHandler: (void (^)(PierPageTipoResolucaoContestacaoResponse* output, NSError* error)) handler;



@end