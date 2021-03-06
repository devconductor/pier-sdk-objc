#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierUsuarioResponse
@end

@interface PierUsuarioResponse : PierObject

/* {{{usuario_response_id_value}}} [optional]
 */
@property(nonatomic) NSNumber* _id;
/* {{{usuario_response_nome_value}}} [optional]
 */
@property(nonatomic) NSString* nome;
/* {{{usuario_response_login_value}}} 
 */
@property(nonatomic) NSString* login;
/* {{{usuario_response_id_emissor_value}}} [optional]
 */
@property(nonatomic) NSNumber* idEmissor;
/* {{{usuario_response_cpf_value}}} [optional]
 */
@property(nonatomic) NSString* cpf;
/* {{{usuario_response_email_value}}} 
 */
@property(nonatomic) NSString* email;
/* {{{usuario_response_status_value}}} [optional]
 */
@property(nonatomic) NSString* status;
/* {{{usuario_response_data_criacao_value}}} [optional]
 */
@property(nonatomic) NSString* dataCriacao;
/* {{{usuario_response_data_modificacao_value}}} [optional]
 */
@property(nonatomic) NSString* dataModificacao;
/* {{{usuario_response_tentativas_incorretas_value}}} [optional]
 */
@property(nonatomic) NSNumber* tentativasIncorretas;
/* {{{usuario_response_bloquear_acesso_descricao}}} [optional]
 */
@property(nonatomic) NSNumber* bloquearAcesso;

@end
