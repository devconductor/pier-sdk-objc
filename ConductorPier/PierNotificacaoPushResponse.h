#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierNotificacaoPushResponse
@end

@interface PierNotificacaoPushResponse : PierObject

/* {{{notificacao_push_response_data_envio_value}}} [optional]
 */
@property(nonatomic) NSString* dataEnvio;
/* {{{notificacao_push_response_id_emissor_value}}} [optional]
 */
@property(nonatomic) NSNumber* idEmissor;
/* {{{notificacao_push_response_tipo_evento_value}}} [optional]
 */
@property(nonatomic) NSString* tipoEvento;
/* {{{notificacao_push_response_status_value}}} [optional]
 */
@property(nonatomic) NSString* status;
/* {{{notificacao_push_response_id_pessoa_value}}} 
 */
@property(nonatomic) NSNumber* idPessoa;
/* {{{notificacao_push_response_id_conta_value}}} 
 */
@property(nonatomic) NSNumber* idConta;
/* {{{notificacao_push_response_token_dispositivo_value}}} 
 */
@property(nonatomic) NSString* tokenDispositivo;
/* {{{notificacao_push_response_titulo_value}}} 
 */
@property(nonatomic) NSString* titulo;
/* {{{notificacao_push_response_conteudo_value}}} 
 */
@property(nonatomic) NSString* conteudo;
/* {{{notificacao_push_response_plataforma_value}}} [optional]
 */
@property(nonatomic) NSString* plataforma;
/* {{{notificacao_push_response_protocolo_value}}} [optional]
 */
@property(nonatomic) NSString* protocolo;

@end
