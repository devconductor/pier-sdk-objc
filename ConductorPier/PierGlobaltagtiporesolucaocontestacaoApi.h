#import <Foundation/Foundation.h>
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
