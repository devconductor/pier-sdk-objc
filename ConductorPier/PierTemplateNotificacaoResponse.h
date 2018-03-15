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

/* C\u00F3digo Identificador. [optional]
 */
@property(nonatomic) NSNumber* _id;
/* C\u00F3digo de identifica\u00E7\u00E3o da configra\u00E7\u00E3o de e-mail. [optional]
 */
@property(nonatomic) NSNumber* idConfiguracaoEmail;
/* Tipo do layout de e-mail. [optional]
 */
@property(nonatomic) NSString* tipoLayout;
/* Tipo da notifica\u00E7\u00E3o. [optional]
 */
@property(nonatomic) NSString* tipoNotificacao;
/* Template padr\u00E3o. [optional]
 */
@property(nonatomic) NSString* templatePadrao;
/* Remetente. [optional]
 */
@property(nonatomic) NSString* remetente;
/* Assunto do e-mail. [optional]
 */
@property(nonatomic) NSString* assunto;
/* Data da inclus\u00E3o. [optional]
 */
@property(nonatomic) NSString* dataInclusao;
/* Data altera\u00E7\u00E3o. [optional]
 */
@property(nonatomic) NSString* dataAlteracao;

@end
