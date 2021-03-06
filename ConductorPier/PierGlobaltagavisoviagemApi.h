#import <Foundation/Foundation.h>
#import "PierAvisoViagemResponse.h"
#import "PierPageAvisoViagemResponse.h"
#import "PierObject.h"
#import "PierApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface PierGlobaltagavisoviagemApi: NSObject

@property(nonatomic, assign)PierApiClient *apiClient;

-(instancetype) initWithApiClient:(PierApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(PierGlobaltagavisoviagemApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(PierGlobaltagavisoviagemApi*) sharedAPI;
///
///
/// {{{aviso_viagem_resource_consultar}}}
/// {{{aviso_viagem_resource_consultar_notes}}}
///
/// @param _id {{{aviso_viagem_resource_consultar_param_id}}}
/// 
///
/// @return PierAvisoViagemResponse*
-(NSNumber*) consultarUsingGET8WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierAvisoViagemResponse* output, NSError* error)) handler;


///
///
/// {{{aviso_viagem_resource_desabilitar}}}
/// {{{aviso_viagem_resource_desabilitar_notes}}}
///
/// @param _id {{{aviso_viagem_resource_desabilitar_param_id}}}
/// 
///
/// @return PierAvisoViagemResponse*
-(NSNumber*) desabilitarUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierAvisoViagemResponse* output, NSError* error)) handler;


///
///
/// {{{aviso_viagem_resource_habilitar}}}
/// {{{aviso_viagem_resource_habilitar_notes}}}
///
/// @param _id {{{aviso_viagem_resource_habilitar_param_id}}}
/// 
///
/// @return PierAvisoViagemResponse*
-(NSNumber*) habilitarUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierAvisoViagemResponse* output, NSError* error)) handler;


///
///
/// {{{aviso_viagem_resource_listar}}}
/// {{{aviso_viagem_resource_listar_notes}}}
///
/// @param sort {{{global_menssagem_sort_sort}}}
/// @param page {{{global_menssagem_sort_page_value}}}
/// @param limit {{{global_menssagem_sort_limit}}}
/// @param idCartao {{{aviso_viagem_request_id_cartao_value}}}
/// @param codigoPais {{{aviso_viagem_request_codigo_pais_value}}}
/// @param dataInicio {{{aviso_viagem_request_data_inicio_value}}}
/// @param dataFim {{{aviso_viagem_request_data_fim_value}}}
/// @param flagAtivo {{{aviso_viagem_request_flag_ativo_value}}}
/// 
///
/// @return PierPageAvisoViagemResponse*
-(NSNumber*) listarUsingGET9WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idCartao: (NSNumber*) idCartao
    codigoPais: (NSString*) codigoPais
    dataInicio: (NSString*) dataInicio
    dataFim: (NSString*) dataFim
    flagAtivo: (NSNumber*) flagAtivo
    completionHandler: (void (^)(PierPageAvisoViagemResponse* output, NSError* error)) handler;


///
///
/// {{{aviso_viagem_resource_salvar}}}
/// {{{aviso_viagem_resource_salvar_notes}}}
///
/// @param idCartao {{{aviso_viagem_persist_id_cartao_value}}}
/// @param codigoPais {{{aviso_viagem_persist_codigo_pais_value}}}
/// @param dataInicio {{{aviso_viagem_persist_data_inicio_value}}}
/// @param dataFim {{{aviso_viagem_persist_data_fim_value}}}
/// 
///
/// @return PierAvisoViagemResponse*
-(NSNumber*) salvarUsingPOST3WithIdCartao: (NSNumber*) idCartao
    codigoPais: (NSString*) codigoPais
    dataInicio: (NSString*) dataInicio
    dataFim: (NSString*) dataFim
    completionHandler: (void (^)(PierAvisoViagemResponse* output, NSError* error)) handler;



@end
