#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierAcordoDetalheResponse
@end

@interface PierAcordoDetalheResponse : PierObject

/* {{{acordo_response_id_value}}} [optional]
 */
@property(nonatomic) NSNumber* _id;
/* {{{acordo_response_id_conta_value}}} [optional]
 */
@property(nonatomic) NSNumber* idConta;
/* {{{acordo_response_status_acordo_value}}} [optional]
 */
@property(nonatomic) NSNumber* statusAcordo;
/* {{{acordo_response_valor_acordo_value}}} [optional]
 */
@property(nonatomic) NSNumber* valorAcordo;
/* {{{acordo_response_data_acordo_value}}} [optional]
 */
@property(nonatomic) NSString* dataAcordo;
/* {{{acordo_response_quantidade_parcelas_value}}} [optional]
 */
@property(nonatomic) NSNumber* quantidadeParcelas;
/* {{{acordo_response_saldo_atual_final_value}}} [optional]
 */
@property(nonatomic) NSNumber* saldoAtualFinal;
/* {{{acordo_response_dias_em_atraso_value}}} [optional]
 */
@property(nonatomic) NSNumber* diasEmAtraso;
/* {{{acordo_detalhe_response_status_conta_value}}} [optional]
 */
@property(nonatomic) NSNumber* statusConta;
/* {{{acordo_detalhe_response_assessoria_atual_value}}} [optional]
 */
@property(nonatomic) NSString* assessoriaAtual;
/* {{{acordo_detalhe_response_total_pagamentos_value}}} [optional]
 */
@property(nonatomic) NSNumber* totalPagamentos;
/* {{{acordo_detalhe_response_data_vencimento_cobranca_value}}} [optional]
 */
@property(nonatomic) NSString* dataVencimentoCobranca;
/* {{{acordo_detalhe_response_data_quebra_acordo_value}}} [optional]
 */
@property(nonatomic) NSString* dataQuebraAcordo;
/* {{{acordo_detalhe_response_valor_parcela1_value}}} [optional]
 */
@property(nonatomic) NSNumber* valorParcela1;
/* {{{acordo_detalhe_response_valor_parcela_n_value}}} [optional]
 */
@property(nonatomic) NSNumber* valorParcelaN;
/* {{{acordo_detalhe_response_parcela_pedida_value}}} [optional]
 */
@property(nonatomic) NSNumber* parcelaPedida;
/* {{{acordo_detalhe_response_vencimento_parcela_pedida_value}}} [optional]
 */
@property(nonatomic) NSString* vencimentoParcelaPedida;

@end
