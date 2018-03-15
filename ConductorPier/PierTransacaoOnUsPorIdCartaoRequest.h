#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierTransacaoOnUsPorIdCartaoRequest
@end

@interface PierTransacaoOnUsPorIdCartaoRequest : PierObject

/* N\u00FAmero Sequencial \u00DAnico que identifica a transa\u00E7\u00E3o no sistema que a originou. 
 */
@property(nonatomic) NSString* nsuOrigem;
/* C\u00F3digo de Processamento que identifica o Tipo da Transa\u00E7\u00E3o. 
 */
@property(nonatomic) NSString* codigoProcessamento;
/* Valor da transa\u00E7\u00E3o com duas casas decimais para os centavos. 
 */
@property(nonatomic) NSNumber* valorTransacao;
/* N\u00FAmero do Estabelecimento (N\u00FAmero+DV). 
 */
@property(nonatomic) NSNumber* numeroEstabelecimento;
/* Apresenta a data e hora local da consulta yyyy-MM-dd'T'HH:mm:ss.SSSZ. Ex: 2000-10-31T01:30:00.000-05:00 
 */
@property(nonatomic) NSString* dataHoraTerminal;
/* Apresenta a identifica\u00E7\u00E3o do terminal requisitante 
 */
@property(nonatomic) NSString* terminalRequisitante;
/* N\u00FAmero de Parcelas. 
 */
@property(nonatomic) NSNumber* numeroParcelas;

@end
