#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierAdesaoPagamentoSabadoResponse
@end

@interface PierAdesaoPagamentoSabadoResponse : PierObject

/* {{{adesao_pagamento_sabado_resposta_data_cadastro_descricao}}} [optional]
 */
@property(nonatomic) NSString* dataCadastro;
/* {{{adesao_pagamento_sabado_resposta_data_vencimento_descricao}}} [optional]
 */
@property(nonatomic) NSString* dataVencimento;
/* {{{adesao_pagamento_sabado_resposta_id_descricao}}} [optional]
 */
@property(nonatomic) NSNumber* _id;
/* {{{adesao_pagamento_sabado_resposta_id_conta_descricao}}} [optional]
 */
@property(nonatomic) NSNumber* idConta;

@end