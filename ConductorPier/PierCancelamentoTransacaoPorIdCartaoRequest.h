#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierCancelamentoTransacaoPorIdCartaoRequest
@end

@interface PierCancelamentoTransacaoPorIdCartaoRequest : PierObject

/* N\u00C3\u00BAmero Sequencial \u00C3\u009Anico que identifica a transa\u00C3\u00A7\u00C3\u00A3o no sistema que a originou. 
 */
@property(nonatomic) NSString* nsuOrigem;
/* N\u00C3\u00BAmero Sequencial \u00C3\u009Anico que identifica a transa\u00C3\u00A7\u00C3\u00A3o no sistema a ser cancelada. 
 */
@property(nonatomic) NSString* nsuOrigemTransacaoCancelada;
/* C\u00C3\u00B3digo de Processamento que identifica o Tipo da Transa\u00C3\u00A7\u00C3\u00A3o. 
 */
@property(nonatomic) NSString* codigoProcessamento;
/* Apresenta a data e hora local da transa\u00C3\u00A7\u00C3\u00A3o a ser cancelada yyyy-MM-dd'T'HH:mm:ss.SSSZ. Ex: 2000-10-31T01:30:00.000-05:00 
 */
@property(nonatomic) NSString* dataHoraTransacaoCancelada;
/* N\u00C3\u00BAmero Sequencial \u00C3\u009Anico do HOST que identifica a transa\u00C3\u00A7\u00C3\u00A3o no sistema que autorizou. 
 */
@property(nonatomic) NSString* nsuAutorizacaoTransacaoCancelada;
/* Valor da transa\u00C3\u00A7\u00C3\u00A3o com duas casas decimais para os centavos. 
 */
@property(nonatomic) NSNumber* valorTransacao;
/* N\u00C3\u00BAmero do Estabelecimento (N\u00C3\u00BAmero+DV). 
 */
@property(nonatomic) NSNumber* numeroEstabelecimento;
/* Apresenta a data e hora local da consulta yyyy-MM-dd'T'HH:mm:ss.SSSZ. Ex: 2000-10-31T01:30:00.000-05:00 
 */
@property(nonatomic) NSString* dataHoraTerminal;
/* Apresenta a identifica\u00C3\u00A7\u00C3\u00A3o do terminal requisitante 
 */
@property(nonatomic) NSString* terminalRequisitante;
/* N\u00C3\u00BAmero de Parcelas. 
 */
@property(nonatomic) NSNumber* numeroParcelas;

@end
