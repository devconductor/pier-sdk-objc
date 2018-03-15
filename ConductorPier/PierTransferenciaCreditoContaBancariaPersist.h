#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierTransferenciaCreditoContaBancariaPersist
@end

@interface PierTransferenciaCreditoContaBancariaPersist : PierObject

/* Representa o N\u00FAmero Sequencial \u00DAnico que identifica a transa\u00E7\u00E3o no sistema que a originou. 
 */
@property(nonatomic) NSNumber* nsuOrigem;
/* Representa o Identificador do Cartao. 
 */
@property(nonatomic) NSNumber* idCartao;
/* Representa o Identificador da conta banc\u00E1ria. 
 */
@property(nonatomic) NSNumber* idContaBancaria;
/* Representa o Valor da transfer\u00EAncia. 
 */
@property(nonatomic) NSNumber* valor;
/* Representa o N\u00FAmero de Parcelas pelo qual o valor da transfer\u00EAncia ser\u00E1 dividido. 
 */
@property(nonatomic) NSNumber* numeroParcelas;
/* Representa o N\u00FAmero de Meses concedido como car\u00EAncia. 
 */
@property(nonatomic) NSNumber* numeroMesesCarencia;
/* Representa a Data e hora do terminal requisitante. 
 */
@property(nonatomic) NSString* dataHoraTerminal;
/* Representa a identifica\u00E7\u00E3o do terminal requisitante. 
 */
@property(nonatomic) NSString* terminalRequisitante;
/* Representa a identifica\u00E7\u00E3o do n\u00FAmero do estabelecimento. 
 */
@property(nonatomic) NSString* numeroEstabelecimento;

@end
