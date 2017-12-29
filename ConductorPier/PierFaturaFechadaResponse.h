#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierFaturaFechadaResponse
@end

@interface PierFaturaFechadaResponse : PierObject

/* C\u00C3\u00B3digo identificador da fatura. [optional]
 */
@property(nonatomic) NSNumber* _id;
/* C\u00C3\u00B3digo identificador da conta. [optional]
 */
@property(nonatomic) NSNumber* idConta;
/* C\u00C3\u00B3digo identificador da conta a qual a fatura se refere. [optional]
 */
@property(nonatomic) NSNumber* flagEmiteFatura;
/* Data de vencimento da fatura. [optional]
 */
@property(nonatomic) NSString* dataVencimentoFatura;
/* Valor para pagamento total da fatura. [optional]
 */
@property(nonatomic) NSNumber* valorTotalFatura;
/* Valor total da fatura anterior. [optional]
 */
@property(nonatomic) NSNumber* valorFaturaAnterior;
/* Valor m\u00C3\u00ADnimo para pagamento da fatura. [optional]
 */
@property(nonatomic) NSNumber* valorPagamentoMinimo;
/* Valor total das compras nacionais lan\u00C3\u00A7adas na fatura. [optional]
 */
@property(nonatomic) NSNumber* totalComprasNacionais;
/* Valor total das compras internacionais lan\u00C3\u00A7adas na fatura. [optional]
 */
@property(nonatomic) NSNumber* totalComprasInternacionas;
/* Valor total dos saques nacionais lan\u00C3\u00A7ados na fatura. [optional]
 */
@property(nonatomic) NSNumber* totalSaquesNacionais;
/* Valor total dos saques internacionais lan\u00C3\u00A7ados na fatura. [optional]
 */
@property(nonatomic) NSNumber* totalSaquesInternacionais;
/* Valor total dos d\u00C3\u00A9bitos nacionais lan\u00C3\u00A7ados na fatura. [optional]
 */
@property(nonatomic) NSNumber* totalDebitosNacionais;
/* Valor total dos d\u00C3\u00A9bitos recorrentes lan\u00C3\u00A7ados na fatura. [optional]
 */
@property(nonatomic) NSNumber* totalDebitosRecorrentes;
/* Valor total dos d\u00C3\u00A9bitos internacionais lan\u00C3\u00A7ados na fatura. [optional]
 */
@property(nonatomic) NSNumber* totalDebitosInternacionais;
/* Valor total dos d\u00C3\u00A9bitos diversos nacionais lan\u00C3\u00A7ados na fatura. [optional]
 */
@property(nonatomic) NSNumber* totalDebitosDiversosNacionais;
/* Valor total dos d\u00C3\u00A9bitos diversos opcionais lan\u00C3\u00A7ados na fatura. [optional]
 */
@property(nonatomic) NSNumber* totalDebitosOpcionais;
/* Valor total dos pagamentos lan\u00C3\u00A7ados na fatura. [optional]
 */
@property(nonatomic) NSNumber* totalPagamentos;
/* Valor total dos cr\u00C3\u00A9ditos nacionais lan\u00C3\u00A7ados na fatura. [optional]
 */
@property(nonatomic) NSNumber* totalCreditosNacionais;
/* Valor total dos ajustes lan\u00C3\u00A7ados na fatura. [optional]
 */
@property(nonatomic) NSNumber* totalAjustes;
/* Valor total das tarifas lan\u00C3\u00A7adas na fatura. [optional]
 */
@property(nonatomic) NSNumber* totalTarifas;
/* Valor total da multa lan\u00C3\u00A7ada na fatura. [optional]
 */
@property(nonatomic) NSNumber* totalMulta;
/* Valor total dos juros de mora lan\u00C3\u00A7ados na fatura. [optional]
 */
@property(nonatomic) NSNumber* totalJuros;
/* Valor percentual da taxa de juros rotativos. [optional]
 */
@property(nonatomic) NSNumber* taxaRotativo;
/* Valor percentual da taxa de saque. [optional]
 */
@property(nonatomic) NSNumber* taxaSaque;
/* Valor m\u00C3\u00A1ximo percentual da taxa de encargos para o pr\u00C3\u00B3ximo per\u00C3\u00ADodo. [optional]
 */
@property(nonatomic) NSNumber* taxaMaximaProximoPeriodo;
/* Apresenta a soma de todos os seguros cobrados na fatura do cliente. 
 */
@property(nonatomic) NSNumber* totalServicos;
/* Apresenta a soma de todos os valores parcelados + compras nacionais. 
 */
@property(nonatomic) NSNumber* totalParceladoNacionais;
/* Apresenta a soma de todos os valores parcelados + compras internacionais. 
 */
@property(nonatomic) NSNumber* totalParceladoInternacionais;

@end
