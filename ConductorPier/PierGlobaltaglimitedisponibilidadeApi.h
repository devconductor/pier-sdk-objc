#import <Foundation/Foundation.h>
#import "PierLimiteDisponibilidadeResponse.h"
#import "PierObject.h"
#import "PierApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface PierGlobaltaglimitedisponibilidadeApi: NSObject

@property(nonatomic, assign)PierApiClient *apiClient;

-(instancetype) initWithApiClient:(PierApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(PierGlobaltaglimitedisponibilidadeApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(PierGlobaltaglimitedisponibilidadeApi*) sharedAPI;
///
///
/// {{{limite_disponibilidade_resource_alterar}}}
/// {{{limite_disponibilidade_resource_alterar_notes}}}
///
/// @param idConta {{{limite_disponibilidade_update_id_conta_value}}}
/// @param limiteGlobal {{{limite_disponibilidade_persist_limite_global_value}}}
/// @param limiteCompra {{{limite_disponibilidade_persist_limite_compra_value}}}
/// @param limiteParcelado {{{limite_disponibilidade_persist_limite_parcelado_value}}}
/// @param limiteParcelas {{{limite_disponibilidade_persist_limite_parcelas_value}}}
/// @param limiteSaqueGlobal {{{limite_disponibilidade_persist_limite_saque_global_value}}}
/// @param limiteSaquePeriodo {{{limite_disponibilidade_persist_limite_saque_periodo_value}}}
/// @param limiteConsignado {{{limite_disponibilidade_persist_limite_consignado_value}}}
/// @param limiteInternacionalCompra {{{limite_disponibilidade_persist_limite_internacional_compra_value}}}
/// @param limiteInternacionalParcelado {{{limite_disponibilidade_persist_limite_internacional_parcelado_value}}}
/// @param limiteInternacionalParcelas {{{limite_disponibilidade_persist_limite_internacional_parcelas_value}}}
/// @param limiteInternacionalSaqueGlobal {{{limite_disponibilidade_persist_limite_internacional_saque_global_value}}}
/// @param limiteInternacionalSaquePeriodo {{{limite_disponibilidade_persist_limite_internacional_saque_periodo_value}}}
/// @param limiteMaximo {{{limite_disponibilidade_persist_limite_maximo_value}}}
/// 
///
/// @return PierLimiteDisponibilidadeResponse*
-(NSNumber*) alterarUsingPUT9WithIdConta: (NSNumber*) idConta
    limiteGlobal: (NSNumber*) limiteGlobal
    limiteCompra: (NSNumber*) limiteCompra
    limiteParcelado: (NSNumber*) limiteParcelado
    limiteParcelas: (NSNumber*) limiteParcelas
    limiteSaqueGlobal: (NSNumber*) limiteSaqueGlobal
    limiteSaquePeriodo: (NSNumber*) limiteSaquePeriodo
    limiteConsignado: (NSNumber*) limiteConsignado
    limiteInternacionalCompra: (NSNumber*) limiteInternacionalCompra
    limiteInternacionalParcelado: (NSNumber*) limiteInternacionalParcelado
    limiteInternacionalParcelas: (NSNumber*) limiteInternacionalParcelas
    limiteInternacionalSaqueGlobal: (NSNumber*) limiteInternacionalSaqueGlobal
    limiteInternacionalSaquePeriodo: (NSNumber*) limiteInternacionalSaquePeriodo
    limiteMaximo: (NSNumber*) limiteMaximo
    completionHandler: (void (^)(PierLimiteDisponibilidadeResponse* output, NSError* error)) handler;


///
///
/// {{{limite_disponibilidade_resource_consultar}}}
/// {{{limite_disponibilidade_resource_consultar_notes}}}
///
/// @param idConta {{{limite_disponibilidade_resource_consultar_param_id_conta}}}
/// 
///
/// @return PierLimiteDisponibilidadeResponse*
-(NSNumber*) consultarUsingGET22WithIdConta: (NSNumber*) idConta
    completionHandler: (void (^)(PierLimiteDisponibilidadeResponse* output, NSError* error)) handler;



@end
