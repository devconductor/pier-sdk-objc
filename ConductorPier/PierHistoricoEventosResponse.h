#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierHistoricoEventosResponse
@end

@interface PierHistoricoEventosResponse : PierObject

/* {{{historico_eventos_response_id_historico_value}}} 
 */
@property(nonatomic) NSNumber* idHistorico;
/* {{{historico_eventos_response_data_historico_value}}} 
 */
@property(nonatomic) NSString* dataHistorico;
/* {{{historico_eventos_response_tipo_historico_value}}} 
 */
@property(nonatomic) NSString* tipoHistorico;
/* {{{historico_eventos_response_valor_anterior_value}}} [optional]
 */
@property(nonatomic) NSString* valorAnterior;
/* {{{historico_eventos_response_valor_atribuido_value}}} 
 */
@property(nonatomic) NSString* valorAtribuido;

@end
