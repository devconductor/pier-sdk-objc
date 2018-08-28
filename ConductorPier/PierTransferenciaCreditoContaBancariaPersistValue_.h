#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierTransferenciaCreditoContaBancariaPersistValue_
@end

@interface PierTransferenciaCreditoContaBancariaPersistValue_ : PierObject

/* {{{transferencia_credito_conta_bancaria_persist_nsu_origem_value}}} 
 */
@property(nonatomic) NSNumber* nsuOrigem;
/* {{{transferencia_credito_conta_bancaria_persist_id_cartao_value}}} 
 */
@property(nonatomic) NSNumber* idCartao;
/* {{{transferencia_credito_conta_bancaria_persist_id_conta_bancaria_value}}} 
 */
@property(nonatomic) NSNumber* idContaBancaria;
/* {{{transferencia_credito_conta_bancaria_persist_valor_value}}} 
 */
@property(nonatomic) NSNumber* valor;
/* {{{transferencia_credito_conta_bancaria_persist_numero_parcelas_value}}} 
 */
@property(nonatomic) NSNumber* numeroParcelas;
/* {{{transferencia_credito_conta_bancaria_persist_numero_meses_carencia_value}}} 
 */
@property(nonatomic) NSNumber* numeroMesesCarencia;
/* {{{transferencia_credito_conta_bancaria_persist_data_hora_terminal_value}}} 
 */
@property(nonatomic) NSString* dataHoraTerminal;
/* {{{transferencia_credito_conta_bancaria_persist_terminal_requisitante_value}}} 
 */
@property(nonatomic) NSString* terminalRequisitante;
/* {{{transferencia_credito_conta_bancaria_persist_numero_estabelecimento_value}}} 
 */
@property(nonatomic) NSString* numeroEstabelecimento;

@end