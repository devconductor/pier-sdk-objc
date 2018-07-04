#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierTemplateNotificacaoResponse
@end

@interface PierTemplateNotificacaoResponse : PierObject

/* {{{template_notificacao_response_id_value}}} [optional]
 */
@property(nonatomic) NSNumber* _id;
/* {{{template_notificacao_response_id_configuracao_email_value}}} [optional]
 */
@property(nonatomic) NSNumber* idConfiguracaoEmail;
/* {{{template_notificacao_response_tipo_layout_value}}} [optional]
 */
@property(nonatomic) NSString* tipoLayout;
/* {{{template_notificacao_response_tipo_notificacao_value}}} [optional]
 */
@property(nonatomic) NSString* tipoNotificacao;
/* {{{template_notificacao_response_template_padrao_value}}} [optional]
 */
@property(nonatomic) NSString* templatePadrao;
/* {{{template_notificacao_response_remetente_value}}} [optional]
 */
@property(nonatomic) NSString* remetente;
/* {{{template_notificacao_response_assunto_value}}} [optional]
 */
@property(nonatomic) NSString* assunto;
/* {{{template_notificacao_response_data_inclusao_value}}} [optional]
 */
@property(nonatomic) NSString* dataInclusao;
/* {{{template_notificacao_response_data_alteracao_value}}} [optional]
 */
@property(nonatomic) NSString* dataAlteracao;

@end
