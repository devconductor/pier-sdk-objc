#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierControleTentativaCadastroResponse
@end

@interface PierControleTentativaCadastroResponse : PierObject

/* {{{controle_tentativa_cadastro_resposta_cpf_descricao}}} [optional]
 */
@property(nonatomic) NSString* cpf;
/* {{{controle_tentativa_cadastro_resposta_login_descricao}}} [optional]
 */
@property(nonatomic) NSString* login;
/* {{{controle_tentativa_cadastro_resposta_tentativas_descricao}}} [optional]
 */
@property(nonatomic) NSNumber* tentativas;

@end
