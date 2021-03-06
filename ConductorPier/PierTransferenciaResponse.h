#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierTransferenciaResponse
@end

@interface PierTransferenciaResponse : PierObject

/* {{{transferencia_response_id_value}}} [optional]
 */
@property(nonatomic) NSNumber* _id;
/* {{{transferencia_response_data_transferencia_value}}} [optional]
 */
@property(nonatomic) NSString* dataTransferencia;
/* {{{transferencia_response_id_conta_origem_value}}} [optional]
 */
@property(nonatomic) NSNumber* idContaOrigem;
/* {{{transferencia_response_id_conta_destino_value}}} [optional]
 */
@property(nonatomic) NSNumber* idContaDestino;
/* {{{transferencia_response_valor_transferencia_value}}} [optional]
 */
@property(nonatomic) NSNumber* valorTransferencia;

@end
