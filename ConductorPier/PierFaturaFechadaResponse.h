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

/* {{{fatura_fechada_response_id_value}}} [optional]
 */
@property(nonatomic) NSNumber* _id;
/* {{{fatura_fechada_response_id_conta_value}}} [optional]
 */
@property(nonatomic) NSNumber* idConta;
/* {{{fatura_fechada_response_flag_emite_fatura_value}}} [optional]
 */
@property(nonatomic) NSNumber* flagEmiteFatura;
/* {{{fatura_fechada_response_data_vencimento_fatura_value}}} [optional]
 */
@property(nonatomic) NSString* dataVencimentoFatura;
/* {{{fatura_fechada_response_valor_total_fatura_value}}} [optional]
 */
@property(nonatomic) NSNumber* valorTotalFatura;
/* {{{fatura_fechada_response_valor_fatura_anterior_value}}} [optional]
 */
@property(nonatomic) NSNumber* valorFaturaAnterior;
/* {{{fatura_fechada_response_valor_pagamento_minimo_value}}} [optional]
 */
@property(nonatomic) NSNumber* valorPagamentoMinimo;
/* {{{fatura_fechada_response_total_compras_nacionais_value}}} [optional]
 */
@property(nonatomic) NSNumber* totalComprasNacionais;
/* {{{fatura_fechada_response_total_compras_internacionas_value}}} [optional]
 */
@property(nonatomic) NSNumber* totalComprasInternacionas;
/* {{{fatura_fechada_response_total_saques_nacionais_value}}} [optional]
 */
@property(nonatomic) NSNumber* totalSaquesNacionais;
/* {{{fatura_fechada_response_total_saques_internacionais_value}}} [optional]
 */
@property(nonatomic) NSNumber* totalSaquesInternacionais;
/* {{{fatura_fechada_response_total_debitos_nacionais_value}}} [optional]
 */
@property(nonatomic) NSNumber* totalDebitosNacionais;
/* {{{fatura_fechada_response_total_debitos_recorrentes_value}}} [optional]
 */
@property(nonatomic) NSNumber* totalDebitosRecorrentes;
/* {{{fatura_fechada_response_total_debitos_internacionais_value}}} [optional]
 */
@property(nonatomic) NSNumber* totalDebitosInternacionais;
/* {{{fatura_fechada_response_total_debitos_diversos_nacionais_value}}} [optional]
 */
@property(nonatomic) NSNumber* totalDebitosDiversosNacionais;
/* {{{fatura_fechada_response_total_debitos_opcionais_value}}} [optional]
 */
@property(nonatomic) NSNumber* totalDebitosOpcionais;
/* {{{fatura_fechada_response_total_pagamentos_value}}} [optional]
 */
@property(nonatomic) NSNumber* totalPagamentos;
/* {{{fatura_fechada_response_total_creditos_nacionais_value}}} [optional]
 */
@property(nonatomic) NSNumber* totalCreditosNacionais;
/* {{{fatura_fechada_response_total_ajustes_value}}} [optional]
 */
@property(nonatomic) NSNumber* totalAjustes;
/* {{{fatura_fechada_response_total_tarifas_value}}} [optional]
 */
@property(nonatomic) NSNumber* totalTarifas;
/* {{{fatura_fechada_response_total_multa_value}}} [optional]
 */
@property(nonatomic) NSNumber* totalMulta;
/* {{{fatura_fechada_response_total_juros_value}}} [optional]
 */
@property(nonatomic) NSNumber* totalJuros;
/* {{{fatura_fechada_response_taxa_rotativo_value}}} [optional]
 */
@property(nonatomic) NSNumber* taxaRotativo;
/* {{{fatura_fechada_response_taxa_saque_value}}} [optional]
 */
@property(nonatomic) NSNumber* taxaSaque;
/* {{{fatura_fechada_response_taxa_maxima_proximo_periodo_value}}} [optional]
 */
@property(nonatomic) NSNumber* taxaMaximaProximoPeriodo;
/* {{{fatura_fechada_response_total_servicos_value}}} 
 */
@property(nonatomic) NSNumber* totalServicos;
/* {{{fatura_fechada_response_total_parcelado_nacionais_value}}} 
 */
@property(nonatomic) NSNumber* totalParceladoNacionais;
/* {{{fatura_fechada_response_total_parcelado_internacionais_value}}} 
 */
@property(nonatomic) NSNumber* totalParceladoInternacionais;

@end
