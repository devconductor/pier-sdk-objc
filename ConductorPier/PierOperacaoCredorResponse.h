#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierOperacaoCredorResponse
@end

@interface PierOperacaoCredorResponse : PierObject

/* Apresenta o id da OperacaoCredor. [optional]
 */
@property(nonatomic) NSNumber* _id;
/* Apresenta o id da Opera\u00E7\u00E3o. [optional]
 */
@property(nonatomic) NSNumber* idOperacao;
/* Apresenta o id do Credor. [optional]
 */
@property(nonatomic) NSNumber* idCredor;
/* Apresenta o id do produto. [optional]
 */
@property(nonatomic) NSNumber* idProduto;
/* Remunera\u00E7\u00E3o Percentual. [optional]
 */
@property(nonatomic) NSNumber* remuneracaoPercentual;
/* Remunera\u00E7\u00E3o Fixa. [optional]
 */
@property(nonatomic) NSNumber* remuneracaoFixa;
/* Periodicidade (DIARIO(1), SEMANAL(2), MENSAL(3), DECENDIAL(4), QUINZENAL(5)). [optional]
 */
@property(nonatomic) NSString* periodicidade;
/* Vencimento da primeira parcela. [optional]
 */
@property(nonatomic) NSNumber* vencimentoPrimeiraParcela;
/* Dias afastamento. [optional]
 */
@property(nonatomic) NSNumber* diasAfastamento;
/* Fator multiplicador (FORA_AGENDA(0), AGENDA(1)). [optional]
 */
@property(nonatomic) NSString* fatorMultiplicador;
/* Flag taxa fixada. [optional]
 */
@property(nonatomic) NSNumber* flagTaxaFixada;
/* Plano m\u00EDnimo da regra. [optional]
 */
@property(nonatomic) NSNumber* planoMinimo;
/* Plano m\u00E1ximo da regra. [optional]
 */
@property(nonatomic) NSNumber* planoMaximo;

@end
