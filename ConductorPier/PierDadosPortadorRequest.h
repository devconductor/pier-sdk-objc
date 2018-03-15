#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierDadosPortadorRequest
@end

@interface PierDadosPortadorRequest : PierObject

/* N\u00FAmero do cart\u00E3o. 
 */
@property(nonatomic) NSString* cartao;
/* N\u00FAmero do CPF. 
 */
@property(nonatomic) NSString* cpf;
/* Nome do portador. [optional]
 */
@property(nonatomic) NSString* nome;
/* Data de nascimento do portador do cart\u00E3o. [optional]
 */
@property(nonatomic) NSString* dataNascimento;
/* CEP da resid\u00EAncia do portador da conta. 
 */
@property(nonatomic) NSString* cepResidencial;
/* E-mail do portador do cart\u00E3o. 
 */
@property(nonatomic) NSString* email;
/* DDD do n\u00FAmero de telefone do portador do cart\u00E3o. [optional]
 */
@property(nonatomic) NSString* ddd;
/* N\u00FAmero do telefone do portador do cart\u00E3o. [optional]
 */
@property(nonatomic) NSString* telefone;

@end
