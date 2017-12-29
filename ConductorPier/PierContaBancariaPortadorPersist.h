#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierContaBancariaPortadorPersist
@end

@interface PierContaBancariaPortadorPersist : PierObject

/* C\u00C3\u00B3digo identificador da conta cart\u00C3\u00A3o 
 */
@property(nonatomic) NSNumber* idConta;
/* Descri\u00C3\u00A7\u00C3\u00A3o da ag\u00C3\u00AAncia [optional]
 */
@property(nonatomic) NSString* nomeAgencia;
/* C\u00C3\u00B3digo do banco 
 */
@property(nonatomic) NSNumber* banco;
/* N\u00C3\u00BAmero da ag\u00C3\u00AAncia 
 */
@property(nonatomic) NSString* numeroAgencia;
/* D\u00C3\u00ADgito da ag\u00C3\u00AAncia [optional]
 */
@property(nonatomic) NSString* digitoAgencia;
/* N\u00C3\u00BAmero da conta 
 */
@property(nonatomic) NSString* numeroConta;
/* D\u00C3\u00ADgito da conta [optional]
 */
@property(nonatomic) NSString* digitoConta;
/* Sinaliza se conta banc\u00C3\u00A1ria est\u00C3\u00A1 ativa ou n\u00C3\u00A3o (1: Ativa, 0: Inativa) 
 */
@property(nonatomic) NSNumber* flagAtivo;
/* Sinaliza se origem \u00C3\u00A9 DOC (1: DOC, 0: TED) 
 */
@property(nonatomic) NSNumber* flagContaOrigemDoc;
/* C\u00C3\u00B3digo da pessoa 
 */
@property(nonatomic) NSNumber* idPessoaFisica;
/* Sinaliza se conta banc\u00C3\u00A1ria \u00C3\u00A9 poupan\u00C3\u00A7a (1: Poupan\u00C3\u00A7a, 0: Conta corrente) 
 */
@property(nonatomic) NSNumber* flagContaPoupanca;
/* Nome do favorecido [optional]
 */
@property(nonatomic) NSString* favorecido;
/* Documento do favorecido [optional]
 */
@property(nonatomic) NSString* numeroReceiraFederal;
/* Titularidade da conta (1:Portador \u00C3\u00A9 o titular, 0: Portador n\u00C3\u00A3o \u00C3\u00A9 o t\u00C3\u00ADtular [optional]
 */
@property(nonatomic) NSNumber* titularidade;

@end