#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierFaturaResponse
@end

@interface PierFaturaResponse : PierObject

/* C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta. [optional]
 */
@property(nonatomic) NSNumber* idConta;
/* Situa\u00C3\u00A7\u00C3\u00A3o de Processamento da fatura. [optional]
 */
@property(nonatomic) NSString* situacaoProcessamento;
/* Status de pagamento efetuado. [optional]
 */
@property(nonatomic) NSNumber* pagamentoEfetuado;
/* Data de vencimento da fatura. [optional]
 */
@property(nonatomic) NSString* dataVencimentoFatura;
/* Data de vencimento real da fatura. [optional]
 */
@property(nonatomic) NSString* dataVencimentoReal;
/* Data de fechamento da fatura. [optional]
 */
@property(nonatomic) NSString* dataFechamento;
/* Valor total da fatura. [optional]
 */
@property(nonatomic) NSNumber* valorTotal;
/* Valor do pagamento m\u00C3\u00ADnimo. [optional]
 */
@property(nonatomic) NSNumber* valorPagamentoMinimo;

@end
