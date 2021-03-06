#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierCartaoPayPersist
@end

@interface PierCartaoPayPersist : PierObject

/* {{{cartao_pay_persist_numero_cartao_value}}} 
 */
@property(nonatomic) NSString* numeroCartao;
/* {{{cartao_pay_persist_data_validade_value}}} [optional]
 */
@property(nonatomic) NSString* dataValidade;
/* {{{cartao_pay_persist_cvv_value}}} [optional]
 */
@property(nonatomic) NSString* cvv;
/* {{{cartao_pay_persist_numero_receita_federal_value}}} [optional]
 */
@property(nonatomic) NSString* numeroReceitaFederal;
/* {{{cartao_pay_persist_nome_impresso_value}}} [optional]
 */
@property(nonatomic) NSString* nomeImpresso;
/* {{{cartao_pay_persist_chave_publica_device_value}}} 
 */
@property(nonatomic) NSString* chavePublicaDevice;

@end
