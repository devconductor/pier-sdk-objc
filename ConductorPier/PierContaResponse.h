#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierContaResponse
@end

@interface PierContaResponse : PierObject

/* C\u00F3digo de identifica\u00E7\u00E3o de conta (id). [optional]
 */
@property(nonatomic) NSNumber* _id;
/* C\u00F3digo de identifica\u00E7\u00E3o do produto ao qual a conta faz parte. (id). [optional]
 */
@property(nonatomic) NSNumber* idProduto;
/* C\u00F3digo de Identifica\u00E7\u00E3o da Origem Comercial (id) que deu origem a Conta. [optional]
 */
@property(nonatomic) NSNumber* idOrigemComercial;
/* C\u00F3digo de Identifica\u00E7\u00E3o da Pessoa Titular da Conta (id). [optional]
 */
@property(nonatomic) NSNumber* idPessoa;
/* C\u00F3digo de Identifica\u00E7\u00E3o do status atribuido a conta. [optional]
 */
@property(nonatomic) NSNumber* idStatusConta;
/* Apresenta o dia de vencimento. [optional]
 */
@property(nonatomic) NSNumber* diaVencimento;
/* Apresenta o melhor dia de compra. [optional]
 */
@property(nonatomic) NSNumber* melhorDiaCompra;
/* Apresenta a data em que o idStatusConta atual fora atribu\u00EDdo para ela. [optional]
 */
@property(nonatomic) NSString* dataStatusConta;
/* Apresenta a data em que o cart\u00E3o foi gerado. [optional]
 */
@property(nonatomic) NSString* dataCadastro;
/* Apresenta a data da ultima altera\u00E7\u00E3o de vencimento. [optional]
 */
@property(nonatomic) NSString* dataUltimaAlteracaoVencimento;
/* Apresenta o valor da renda comprovada [optional]
 */
@property(nonatomic) NSNumber* valorRenda;

@end
