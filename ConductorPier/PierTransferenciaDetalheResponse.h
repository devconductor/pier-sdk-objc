#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierTransferenciaDetalheResponse
@end

@interface PierTransferenciaDetalheResponse : PierObject

/* {{{transferencia_detalhe_response_id_value}}} [optional]
 */
@property(nonatomic) NSNumber* _id;
/* {{{transferencia_detalhe_response_data_transferencia_value}}} [optional]
 */
@property(nonatomic) NSString* dataTransferencia;
/* {{{transferencia_detalhe_response_id_conta_origem_value}}} [optional]
 */
@property(nonatomic) NSNumber* idContaOrigem;
/* {{{transferencia_detalhe_response_nome_pessoa_origem_value}}} [optional]
 */
@property(nonatomic) NSString* nomePessoaOrigem;
/* {{{transferencia_detalhe_response_id_conta_destino_value}}} [optional]
 */
@property(nonatomic) NSNumber* idContaDestino;
/* {{{transferencia_detalhe_response_nome_pessoa_destino_value}}} [optional]
 */
@property(nonatomic) NSString* nomePessoaDestino;
/* {{{transferencia_detalhe_response_valor_transferencia_value}}} [optional]
 */
@property(nonatomic) NSNumber* valorTransferencia;
/* {{{transferencia_detalhe_response_valor_tarifa_value}}} [optional]
 */
@property(nonatomic) NSNumber* valorTarifa;

@end
