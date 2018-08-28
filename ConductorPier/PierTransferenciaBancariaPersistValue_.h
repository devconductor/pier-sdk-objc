#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierTransferenciaBancariaPersistValue_
@end

@interface PierTransferenciaBancariaPersistValue_ : PierObject

/* {{{transferencia_bancaria_persist_valor_compra_value}}} 
 */
@property(nonatomic) NSNumber* valorCompra;
/* {{{transferencia_bancaria_persist_valor_value}}} 
 */
@property(nonatomic) NSNumber* valor;
/* {{{transferencia_bancaria_persist_documento_favorecido_value}}} 
 */
@property(nonatomic) NSString* documentoFavorecido;
/* {{{transferencia_bancaria_persist_banco_value}}} 
 */
@property(nonatomic) NSNumber* banco;
/* {{{transferencia_bancaria_persist_numero_agencia_value}}} 
 */
@property(nonatomic) NSString* numeroAgencia;
/* {{{transferencia_bancaria_persist_digito_agencia_value}}} [optional]
 */
@property(nonatomic) NSString* digitoAgencia;
/* {{{transferencia_bancaria_persist_numero_conta_value}}} 
 */
@property(nonatomic) NSString* numeroConta;
/* {{{transferencia_bancaria_persist_digito_conta_value}}} [optional]
 */
@property(nonatomic) NSString* digitoConta;
/* {{{transferencia_bancaria_persist_flag_conta_poupanca_value}}} 
 */
@property(nonatomic) NSNumber* flagContaPoupanca;
/* {{{transferencia_bancaria_persist_nome_favorecido_value}}} 
 */
@property(nonatomic) NSString* nomeFavorecido;

@end