#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierBasePersistValue_
@end

@interface PierBasePersistValue_ : PierObject

/* {{{base_dto_servidor_value}}} 
 */
@property(nonatomic) NSString* servidor;
/* {{{base_dto_usuario_value}}} 
 */
@property(nonatomic) NSString* usuario;
/* {{{base_dto_senha_value}}} 
 */
@property(nonatomic) NSString* senha;
/* {{{base_dto_nome_base_value}}} 
 */
@property(nonatomic) NSString* nomeBase;
/* {{{base_dto_criado_por_value}}} 
 */
@property(nonatomic) NSString* criadoPor;
/* {{{base_dto_domain_value}}} [optional]
 */
@property(nonatomic) NSString* domain;
/* {{{base_dto_senha_criptografada_value}}} 
 */
@property(nonatomic) NSNumber* senhaCriptografada;
/* {{{base_dto_nome_base_controle_acesso_value}}} 
 */
@property(nonatomic) NSString* nomeBaseControleAcesso;
/* {{{base_dto_id_emissor_value}}} [optional]
 */
@property(nonatomic) NSNumber* idEmissor;
/* {{{base_dto_servidor_controle_acesso_value}}} 
 */
@property(nonatomic) NSString* servidorControleAcesso;
/* {{{base_dto_nome_base_usuarios_value}}} 
 */
@property(nonatomic) NSString* nomeBaseUsuarios;
/* {{{base_dto_servidor_usuarios_value}}} 
 */
@property(nonatomic) NSString* servidorUsuarios;
/* {{{base_dto_flag_cluster_value}}} 
 */
@property(nonatomic) NSNumber* flagCluster;

@end
