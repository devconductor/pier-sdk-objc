#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierBoletoListarResponse
@end

@interface PierBoletoListarResponse : PierObject

/* {{{boleto_response_id_value}}} [optional]
 */
@property(nonatomic) NSNumber* _id;
/* {{{boleto_response_id_conta_value}}} [optional]
 */
@property(nonatomic) NSNumber* idConta;
/* {{{boleto_response_nosso_numero_value}}} [optional]
 */
@property(nonatomic) NSString* nossoNumero;
/* {{{boleto_response_data_vencimento_value}}} [optional]
 */
@property(nonatomic) NSString* dataVencimento;
/* {{{boleto_response_valor_boleto_value}}} [optional]
 */
@property(nonatomic) NSNumber* valorBoleto;
/* {{{boleto_response_id_tipo_boleto_value}}} [optional]
 */
@property(nonatomic) NSNumber* idTipoBoleto;

@end
